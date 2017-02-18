class X2Effect_Mayhem extends X2Effect_BonusWeaponDamage;

var array<name> AllowedAbilities;

function int GetAttackingDamageModifier(XComGameState_Effect EffectState, XComGameState_Unit Attacker, Damageable TargetDamageable, XComGameState_Ability AbilityState, const out EffectAppliedData AppliedData, const int CurrentDamage, optional XComGameState NewGameState)
{ 
	if (AppliedData.AbilityResultContext.HitResult < eHit_Miss && AbilityState.SourceWeapon == EffectState.ApplyEffectParameters.ItemStateObjectRef)
		return BonusDmg;

	return 0; 
}

function bool PostAbilityCostPaid(XComGameState_Effect EffectState, XComGameStateContext_Ability AbilityContext, XComGameState_Ability kAbility, XComGameState_Unit SourceUnit, XComGameState_Item AffectWeapon, XComGameState NewGameState, const array<name> PreCostActionPoints, const array<name> PreCostReservePoints)
{
	local X2EventManager EventMgr;
	local XComGameState_Ability AbilityState;       //  used for looking up our source ability (Guardian), not the incoming one that was activated

	AbilityState = XComGameState_Ability(`XCOMHISTORY.GetGameStateForObjectID(EffectState.ApplyEffectParameters.AbilityStateObjectRef.ObjectID));
	if (AbilityState != none && AllowedAbilities.Find(kAbility.GetMyTemplate().DataName) != INDEX_NONE && AbilityState.SourceWeapon == EffectState.ApplyEffectParameters.ItemStateObjectRef)
	{
		EventMgr = `XEVENTMGR;
		EventMgr.TriggerEvent('MayhemBonusDamage', AbilityState, SourceUnit, NewGameState);
	}
	return false;
}

DefaultProperties
{
	AllowedAbilities(0) = "Suppression"
	AllowedAbilities(1) = "LMGSuppression"
	AllowedAbilities(2) = "AreaSuppression"
	AllowedAbilities(3) = "Suppression_LW"
}
