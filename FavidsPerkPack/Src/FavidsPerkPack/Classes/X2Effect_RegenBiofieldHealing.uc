class X2Effect_RegenBiofieldHealing extends X2Effect_Persistent;

var int HealAmount;
var int MaxHealAmount;
var name HealthRegeneratedName;
var name EventToTriggerOnHeal;

function bool RegenerationTicked(X2Effect_Persistent PersistentEffect, const out EffectAppliedData ApplyEffectParameters, XComGameState_Effect kNewEffectState, XComGameState NewGameState, bool FirstApplication)
{
	local XComGameState_Unit OldTargetState, NewTargetState, OldSourceState;
	local UnitValue HealthRegenerated;
	local UnitValue HasHealedThisTurn;
	local int AmountToHeal, Healed;
	local string FullName;
	
	OldTargetState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(ApplyEffectParameters.TargetStateObjectRef.ObjectID));
	OldSourceState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(ApplyEffectParameters.SourceStateObjectRef.ObjectID));
	FullName = OldTargetState.GetFullName();

	// Only let this proc once per turn
	OldTargetState.GetUnitValue('F_HasHealedThisTurn', HasHealedThisTurn);
	`log(FullName $ ": HasHealedThisTurn: " $ string(HasHealedThisTurn.fValue));
	if (HasHealedThisTurn.fValue > 0)
	{
		`log(FullName $ ": Exiting because already healed this turn.");
		return false;
	}

	if(OldTargetState.GetCurrentStat(eStat_HP) >= OldTargetState.GetMaxStat(eStat_HP))
	{
		`log(FullName $ ": Exiting because health is at max.");
		return false;
	}

	if (HealthRegeneratedName != '' && MaxHealAmount > 0)
	{
		OldTargetState.GetUnitValue(HealthRegeneratedName, HealthRegenerated);
		`log(FullName $ ": HealthRegenerated: " $ string(HealthRegenerated.fValue));

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
			NewTargetState.SetUnitFloatValue(HealthRegeneratedName, HealthRegenerated.fValue + Healed, eCleanup_BeginTactical);
			NewTargetState.SetUnitFloatValue('F_HasHealedThisTurn', 1, eCleanup_BeginTurn);
		}
	}

	return false;
}

simulated function AddX2ActionsForVisualization_Tick(XComGameState VisualizeGameState, out VisualizationTrack BuildTrack, const int TickIndex, XComGameState_Effect EffectState)
{
	local XComGameState_Unit OldUnit, NewUnit;
	local X2Action_PlaySoundAndFlyOver SoundAndFlyOver;
	local int Healed;
	local UnitValue HasHealedThisTurn;

	OldUnit = XComGameState_Unit(BuildTrack.StateObject_OldState);
	NewUnit = XComGameState_Unit(BuildTrack.StateObject_NewState);

	Healed = NewUnit.GetCurrentStat(eStat_HP) - OldUnit.GetCurrentStat(eStat_HP);
	
	//testing
	OldUnit.GetUnitValue('F_HasHealedThisTurn', HasHealedThisTurn);
	`log("AddX2ActionsForVisualization_Tick: " $ OldUnit.GetFullName() $ ": HasHealedThisTurn: " $ string(HasHealedThisTurn.fValue) $ " TickIndex: " $ string(TickIndex));

	
	if( Healed > 0 )
	{
		SoundAndFlyOver = X2Action_PlaySoundAndFlyOver(class'X2Action_PlaySoundAndFlyOver'.static.AddToVisualizationTrack(BuildTrack, VisualizeGameState.GetContext()));
		SoundAndFlyOver.SetSoundAndFlyOverParameters(None, "+" $ Healed, '', eColor_Good);
	}
}

defaultproperties
{
	EffectName="Regeneration"
	EffectTickedFn=RegenerationTicked
}