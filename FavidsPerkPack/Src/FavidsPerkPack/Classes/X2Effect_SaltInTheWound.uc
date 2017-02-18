class X2Effect_SaltInTheWound extends X2Effect_Persistent;

var int BonusDamage;

function int GetAttackingDamageModifier(XComGameState_Effect EffectState, XComGameState_Unit Attacker, Damageable TargetDamageable, XComGameState_Ability AbilityState, const out EffectAppliedData AppliedData, const int CurrentDamage, optional XComGameState NewGameState)
{
	local XComGameState_Unit TargetUnit;

	TargetUnit = XComGameState_Unit(TargetDamageable);

	foreach TargetUnit.AffectedByEffectNames(EffectName)
	{
		if(EffectName == class'X2StatusEffects'.default.BurningName || EffectName == class'X2StatusEffects'.default.AcidBurningName || EffectName == class'X2StatusEffects'.default.PoisonedName)
		{
			return BonusDamage;
		}
	}

	return 0;
}

DefaultProperties
{
	DuplicateResponse = eDupe_Ignore
}