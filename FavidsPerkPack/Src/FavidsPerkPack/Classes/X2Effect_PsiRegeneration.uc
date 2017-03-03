class X2Effect_PsiRegeneration extends X2Effect_Regeneration;

var name HasExperiencedRegenerationName;

var int HealAmount_CV;
var int MaxHealAmount_CV;
var int HealAmount_MG;
var int MaxHealAmount_MG;
var int HealAmount_BM;
var int MaxHealAmount_BM;

function bool PsiRegenerationTicked(X2Effect_Persistent PersistentEffect, const out EffectAppliedData ApplyEffectParameters, XComGameState_Effect kNewEffectState, XComGameState NewGameState, bool FirstApplication)
{
	local XComGameState_Unit OldTargetState, NewTargetState, SourceUnitState;
	local UnitValue HealthRegenerated;
	local int AmountToHeal, Healed, NewHealthRegenerated, HealAmount, MaxHealAmount;
	
	OldTargetState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(ApplyEffectParameters.TargetStateObjectRef.ObjectID));
	SourceUnitState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(ApplyEffectParameters.SourceStateObjectRef.ObjectID));

	HealAmount = getHealAmount(SourceUnitState);
	MaxHealAmount = getMaxHealAmount(SourceUnitState);

	if (HealthRegeneratedName != '' && MaxHealAmount > 0)
	{
		OldTargetState.GetUnitValue(HealthRegeneratedName, HealthRegenerated);

		// If the unit has already been healed the maximum number of times, do not regen
		if (HealthRegenerated.fValue >= MaxHealAmount)
		{
			return false;
		}
		else
		{
			// Ensure the unit is not healed for more than the maximum allowed amount
			AmountToHeal = min(HealAmount, (MaxHealAmount - HealthRegenerated.fValue));
		}
	}
	else
	{
		// If no value tracking for health regenerated is set, heal for the default amount
		AmountToHeal = HealAmount;
	}	

	// Perform the heal
	NewTargetState = XComGameState_Unit(NewGameState.CreateStateObject(OldTargetState.Class, OldTargetState.ObjectID));
	NewTargetState.ModifyCurrentStat(estat_HP, AmountToHeal);
	NewGameState.AddStateObject(NewTargetState);

	if (EventToTriggerOnHeal != '')
	{
		`XEVENTMGR.TriggerEvent(EventToTriggerOnHeal, NewTargetState, NewTargetState, NewGameState);
	}

	// If this health regen is being tracked, save how much the unit was healed
	if (HealthRegeneratedName != '')
	{
		Healed = NewTargetState.GetCurrentStat(eStat_HP) - OldTargetState.GetCurrentStat(eStat_HP);
		if (Healed > 0)
		{
			NewHealthRegenerated = HealthRegenerated.fValue + Healed;
			NewTargetState.SetUnitFloatValue(HealthRegeneratedName, NewHealthRegenerated, eCleanup_BeginTactical);

			// Return true to remove the effect if this has healed the max amount
			if(NewHealthRegenerated >= MaxHealAmount)
			{
				return true;
			}
		}
	}

	return false;
}

private function int getHealAmount(XComGameState_Unit SourceUnitState)
{
	local XComGameState_Item SecondaryWeaponItem;
	local X2WeaponTemplate	SecondaryWeapon;

	SecondaryWeaponItem = SourceUnitState.GetSecondaryWeapon();

	SecondaryWeapon = X2WeaponTemplate(SecondaryWeaponItem.GetMyTemplate());

	switch(SecondaryWeapon.WeaponTech)
	{
		case 'conventional':
			return HealAmount_CV;
		case 'magnetic':
			return HealAmount_MG;
		case 'beam':
			return HealAmount_BM;
		default:
			return 10;
	}
}

private function int getMaxHealAmount(XComGameState_Unit SourceUnitState)
{
	local XComGameState_Item SecondaryWeaponItem;
	local X2WeaponTemplate	SecondaryWeapon;

	SecondaryWeaponItem = SourceUnitState.GetSecondaryWeapon();

	SecondaryWeapon = X2WeaponTemplate(SecondaryWeaponItem.GetMyTemplate());

	switch(SecondaryWeapon.WeaponTech)
	{
		case 'conventional':
			return MaxHealAmount_CV;
		case 'magnetic':
			return MaxHealAmount_MG;
		case 'beam':
			return MaxHealAmount_BM;
		default:
			return 100;
	}
}

simulated protected function OnEffectAdded(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState, XComGameState_Effect NewEffectState)
{
	local XComGameState_Unit TargetUnitState;

	TargetUnitState = XComGameState_Unit(kNewTargetState);
	TargetUnitState.SetUnitFloatValue(HasExperiencedRegenerationName, 1, eCleanup_BeginTactical);

	super.OnEffectAdded(ApplyEffectParameters, kNewTargetState, NewGameState, NewEffectState);
}

defaultproperties
{
	EffectName="Regeneration"
	EffectTickedFn=PsiRegenerationTicked
}