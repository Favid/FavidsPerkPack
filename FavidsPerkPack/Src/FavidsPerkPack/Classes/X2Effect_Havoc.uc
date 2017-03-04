class X2Effect_Havoc extends X2Effect_BonusWeaponDamage;

var array<name> AllowedAbilities;
var int SingleTargetDamage;
var int MultipleTargetDamage;

function int GetAttackingDamageModifier(XComGameState_Effect EffectState, XComGameState_Unit Attacker, Damageable TargetDamageable, XComGameState_Ability AbilityState, const out EffectAppliedData AppliedData, const int CurrentDamage, optional XComGameState NewGameState)
{ 
	logIfDebugEnabled("H: HitResult: " $ string(AppliedData.AbilityResultContext.HitResult));
	logIfDebugEnabled("H: Matching Weapon: " $ string(AbilityState.SourceWeapon == EffectState.ApplyEffectParameters.ItemStateObjectRef ));
	logIfDebugEnabled("H: AbilityStateTemplateName: " $ string(AbilityState.GetMyTemplateName()));
	logIfDebugEnabled("H: IsAllowedAbility: " $ string(AllowedAbilities.Find(AbilityState.GetMyTemplateName()) != INDEX_NONE));

	if (AppliedData.AbilityResultContext.HitResult < eHit_Miss 
		&& AbilityState.SourceWeapon == EffectState.ApplyEffectParameters.ItemStateObjectRef 
		&& AllowedAbilities.Find(AbilityState.GetMyTemplateName()) != INDEX_NONE)
	{	
		if(AbilityState.GetMyTemplateName() == 'AreaSuppression')
		{
			logIfDebugEnabled("H: MultipleTargetDamage: " $ string(MultipleTargetDamage));
			return MultipleTargetDamage;
		}
		else
		{
			logIfDebugEnabled("H: SingleTargetDamage: " $ string(SingleTargetDamage));
			return SingleTargetDamage;
		}
	}

	return 0; 
}

static function logIfDebugEnabled(string message)
{
	if(class'X2Ability_Favid'.default.FAVID_DEBUG_LOGGING)
	{
		`LOG(message);
	}
}

DefaultProperties
{
	AllowedAbilities(0) = "Suppression"
	AllowedAbilities(1) = "LMGSuppression"
	AllowedAbilities(2) = "AreaSuppression"
	AllowedAbilities(3) = "Suppression_LW"
	AllowedAbilities(4) = "ShadowOps_RifleSuppression"
}
