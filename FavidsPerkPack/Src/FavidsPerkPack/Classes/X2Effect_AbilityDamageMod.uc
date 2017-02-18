class X2Effect_AbilityDamageMod extends X2Effect_Persistent;

var float DamageMultiplier;
var float AddDamage;
var name AbilityName;

function int GetAttackingDamageModifier(XComGameState_Effect EffectState, XComGameState_Unit Attacker, Damageable TargetDamageable, XComGameState_Ability AbilityState, const out EffectAppliedData AppliedData, const int CurrentDamage, optional XComGameState NewGameState)
{
	local float ExtraDamage;

	if (AbilityState.GetMyTemplateName() == AbilityName)
	{
		ExtraDamage = CurrentDamage * DamageMultiplier;
		ExtraDamage += AddDamage;
	}
	return int(ExtraDamage);
}

defaultproperties
{
	DamageMultiplier = 0.0f;
	AddDamage = 0;
}