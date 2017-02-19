class X2Effect_Concentration extends X2Effect_Persistent;

function bool ChangeHitResultForAttacker(XComGameState_Unit Attacker, XComGameState_Unit TargetUnit, XComGameState_Ability AbilityState, const EAbilityHitResult CurrentResult, out EAbilityHitResult NewHitResult)
{
	if (CurrentResult == eHit_Graze)
	{
		NewHitResult = eHit_Success;
		return true;
	}

	return false;
}

DefaultProperties
{
	EffectName = "Concentration"
	DuplicateResponse = eDupe_Refresh
}