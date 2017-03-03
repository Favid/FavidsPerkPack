class X2Effect_ThousandsToGo extends X2Effect_Persistent;

function RegisterForEvents(XComGameState_Effect EffectGameState)
{
	local X2EventManager EventMgr;
	local XComGameState_Unit UnitState;
	local Object EffectObj;

	EventMgr = `XEVENTMGR;

	EffectObj = EffectGameState;
	UnitState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(EffectGameState.ApplyEffectParameters.SourceStateObjectRef.ObjectID));

	EventMgr.RegisterForEvent(EffectObj, 'ThousandsToGo', EffectGameState.TriggerAbilityFlyover, ELD_OnStateSubmitted, , UnitState);
}

function bool PostAbilityCostPaid(XComGameState_Effect EffectState, XComGameStateContext_Ability AbilityContext, XComGameState_Ability kAbility, XComGameState_Unit SourceUnit, XComGameState_Item AffectWeapon, XComGameState NewGameState, const array<name> PreCostActionPoints, const array<name> PreCostReservePoints)
{
	local XComGameStateHistory					History;
	local XComGameState_Unit					TargetUnit;
	local X2EventManager						EventMgr;
	local XComGameState_Ability					AbilityState;
	local UnitValue								CountUnitValue;

	//  if under the effect of Serial, let that handle restoring the full action cost
	if (SourceUnit.IsUnitAffectedByEffectName(class'X2Effect_Serial'.default.EffectName))
		return false;

	// if we already hit the max number of refunds, return false
	SourceUnit.GetUnitValue('ThousandsToGo_RefundsThisTurn', CountUnitValue);
	if (CountUnitValue.fValue >= 1)
	{
		return false;
	}

	//  match the weapon associated with In The Zone to the attacking weapon
	if (kAbility.SourceWeapon == EffectState.ApplyEffectParameters.ItemStateObjectRef)
	{
		History = `XCOMHISTORY;
		TargetUnit = XComGameState_Unit(NewGameState.GetGameStateForObjectID(AbilityContext.InputContext.PrimaryTarget.ObjectID));
		if (!AbilityState.IsMeleeAbility() && TargetUnit != none)
		{
			if (TargetUnit.IsEnemyUnit(SourceUnit) && !TargetUnit.IsAlive())
			{
				if (SourceUnit.NumActionPoints() < 2 && PreCostActionPoints.Length > 0) 
				{
					AbilityState = XComGameState_Ability(History.GetGameStateForObjectID(EffectState.ApplyEffectParameters.AbilityStateObjectRef.ObjectID));
					if (AbilityState != none)
					{
						SourceUnit.ActionPoints.AddItem(class'X2CharacterTemplateManager'.default.RunAndGunActionPoint);
						SourceUnit.SetUnitFloatValue('ThousandsToGo_RefundsThisTurn', 1, eCleanup_BeginTurn);
						EventMgr = `XEVENTMGR;
						EventMgr.TriggerEvent('ThousandsToGo', AbilityState, SourceUnit, NewGameState);
						return true;
					}
				}
			}
		}
	}

	return false;
}