class X2Effect_OnARollCritDamage extends X2Effect_Persistent;

var int BonusDamage;

function int GetAttackingDamageModifier(XComGameState_Effect EffectState, XComGameState_Unit Attacker, Damageable TargetDamageable, XComGameState_Ability AbilityState, const out EffectAppliedData AppliedData, const int CurrentDamage, optional XComGameState NewGameState)
{
	local XComGameState_Item SourceWeapon;

	if (AppliedData.AbilityResultContext.HitResult == eHit_Crit)
	{
		return BonusDamage;
	}

	return 0;
}

DefaultProperties
{
	DuplicateResponse = eDupe_Allow
}