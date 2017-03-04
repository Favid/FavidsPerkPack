class X2Effect_Havoc extends X2Effect_BonusWeaponDamage;

var array<name> AllowedAbilities;
var int SingleTargetDamage;
var int MultipleTargetDamage;

function int GetAttackingDamageModifier(XComGameState_Effect EffectState, XComGameState_Unit Attacker, Damageable TargetDamageable, XComGameState_Ability AbilityState, const out EffectAppliedData AppliedData, const int CurrentDamage, optional XComGameState NewGameState)
{ 
	local int HavocDamage, TargetRemainingHp;
	local XComGameState_Unit Target;

	HavocDamage = 0;

	if (AppliedData.AbilityResultContext.HitResult < eHit_Miss 
		&& AbilityState.SourceWeapon == EffectState.ApplyEffectParameters.ItemStateObjectRef 
		&& AllowedAbilities.Find(AbilityState.GetMyTemplateName()) != INDEX_NONE)
	{	
		if(AbilityState.GetMyTemplateName() == 'AreaSuppression')
		{
			HavocDamage = MultipleTargetDamage;
		}
		else
		{
			HavocDamage = SingleTargetDamage;
		}

		Target = XComGameState_Unit(TargetDamageable);

		TargetRemainingHp = Target.GetCurrentStat(eStat_HP) - HavocDamage;

		// Don't kill target - if Havoc will kill, instead deal just enough damage to leave target at 1 HP
		if(TargetRemainingHp <= 0)
		{
			if(Target.GetCurrentStat(eStat_HP) == 1)
			{
				HavocDamage = 0;
			}
			else
			{
				HavocDamage = Target.GetCurrentStat(eStat_HP) - (Target.GetCurrentStat(eStat_HP) - 1);
			}
		}
	}

	return HavocDamage; 
}

DefaultProperties
{
	AllowedAbilities(0) = "Suppression"
	AllowedAbilities(1) = "LMGSuppression"
	AllowedAbilities(2) = "AreaSuppression"
	AllowedAbilities(3) = "Suppression_LW"
	AllowedAbilities(4) = "ShadowOps_RifleSuppression"
}
