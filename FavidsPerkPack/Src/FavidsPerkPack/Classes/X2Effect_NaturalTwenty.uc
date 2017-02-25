class X2Effect_NaturalTwenty extends X2Effect_Persistent;

function bool ChangeHitResultForAttacker(XComGameState_Unit Attacker, XComGameState_Unit TargetUnit, XComGameState_Ability AbilityState, const EAbilityHitResult CurrentResult, out EAbilityHitResult NewHitResult)
{
	if (CurrentResult == eHit_Success || CurrentResult == eHit_Graze)
	{
		NewHitResult = eHit_Crit;
		return true;
	}

	return false;
}

function bool AllowReactionFireCrit(XComGameState_Unit UnitState, XComGameState_Unit TargetState) 
{ 
	return true; 
}

DefaultProperties
{
	EffectName = "F_NaturalTwenty"
	DuplicateResponse = eDupe_Refresh
}