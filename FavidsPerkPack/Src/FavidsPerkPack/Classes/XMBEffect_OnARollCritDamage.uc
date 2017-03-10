class XMBEffect_OnARollCritDamage extends XMBEffect_BonusDamageByDamageType; 

function int GetDamageBonus(XComGameState_Effect EffectState, XComGameState_Unit Attacker, Damageable TargetDamageable, XComGameState_Ability AbilityState, const out EffectAppliedData AppliedData, const int CurrentDamage, optional XComGameState NewGameState)
{
	if (AppliedData.AbilityResultContext.HitResult == eHit_Crit)
	{
		return DamageBonus;
	}

	return 0;
}