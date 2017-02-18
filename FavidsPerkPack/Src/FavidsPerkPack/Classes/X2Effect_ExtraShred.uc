class X2Effect_ExtraShred extends X2Effect_Persistent;

var int BonusShred;

function int GetExtraShredValue(XComGameState_Effect EffectState, XComGameState_Unit Attacker, Damageable TargetDamageable, XComGameState_Ability AbilityState, const out EffectAppliedData AppliedData)
{
	local XComGameState_Item SourceWeapon;
	local X2GrenadeTemplate GrenadeTemplate;

	SourceWeapon = AbilityState.GetSourceWeapon();

	if (SourceWeapon != none)
	{
		GrenadeTemplate = X2GrenadeTemplate(SourceWeapon.GetMyTemplate());

		if (GrenadeTemplate == none)
		{
			GrenadeTemplate = X2GrenadeTemplate(SourceWeapon.GetLoadedAmmoTemplate(AbilityState));
		}

		if (GrenadeTemplate != none && GrenadeTemplate.bAllowVolatileMix)
		{
			return BonusShred;
		}
	}
	return 0;
}

DefaultProperties
{
	DuplicateResponse = eDupe_Ignore
}