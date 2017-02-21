class X2Effect_ReactionProtocol extends X2Effect_CoveringFire;

simulated protected function OnEffectAdded(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState, XComGameState_Effect NewEffectState)
{
	local XComGameState_Unit TargetUnit;

	TargetUnit = XComGameState_Unit(kNewTargetState);
	if (TargetUnit != none)
	{
		TargetUnit.ReserveActionPoints.AddItem(class'X2CharacterTemplateManager'.default.OverwatchReserveActionPoint);
	}
}

function bool AllowReactionFireCrit(XComGameState_Unit UnitState, XComGameState_Unit TargetState) 
{ 
	return true; 
}

function ModifyReactionFireSuccess(XComGameState_Unit UnitState, XComGameState_Unit TargetState, out int Modifier)
{
	local XComGameStateHistory History;
	local StateObjectReference CoolUnderPressureRef;
	local XComGameState_Ability CoolUnderPressureState;

	History = `XCOMHISTORY;

	CoolUnderPressureRef = UnitState.FindAbility('CoolUnderPressure');
	CoolUnderPressureState = XComGameState_Ability(History.GetGameStateForObjectID(CoolUnderPressureRef.ObjectID));

	// Only grant the reaction fire bonus for units that don't already have Cool Under Pressure
	if(CoolUnderPressureState == none)
	{
		Modifier = class'X2Ability_SpecialistAbilitySet'.default.UNDER_PRESSURE_BONUS;
	}
}

DefaultProperties
{
	DuplicateResponse = eDupe_Ignore
	AbilityToActivate = 'OverwatchShot'
}