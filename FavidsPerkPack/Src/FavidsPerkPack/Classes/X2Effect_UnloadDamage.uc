class X2Effect_UnloadDamage extends X2Effect_Persistent;

function int GetAttackingDamageModifier(XComGameState_Effect EffectState, XComGameState_Unit Attacker, Damageable TargetDamageable, XComGameState_Ability AbilityState, const out EffectAppliedData AppliedData, const int CurrentDamage, optional XComGameState NewGameState)
{
    local float ExtraDamage;

    if(AbilityState.GetMyTemplateName() == 'F_Unload' || AbilityState.GetMyTemplateName() == 'F_Unload2')
    {
		if (class'XComGameStateContext_Ability'.static.IsHitResultHit(AppliedData.AbilityResultContext.HitResult))
		{
			ExtraDamage = -1 * (float(CurrentDamage) * class'X2Ability_Favid'.default.UNLOAD_DAMAGE_MODIFIER);
		}
    }

    return int(ExtraDamage);
}