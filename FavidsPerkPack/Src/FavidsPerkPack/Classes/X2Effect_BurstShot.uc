class X2Effect_BurstShot extends X2Effect_Persistent config(Favid_Weapons);

var float DamageMultiplier;
var config array<int> GUNNER_SECONDARY_RANGE_TABLES;

function int GetAttackingDamageModifier(XComGameState_Effect EffectState, XComGameState_Unit Attacker, Damageable TargetDamageable, XComGameState_Ability AbilityState, const out EffectAppliedData AppliedData, const int CurrentDamage, optional XComGameState NewGameState)
{
	local float ExtraDamage;

	if (AbilityState.GetMyTemplateName() == 'F_PoweredShot' || AbilityState.GetMyTemplateName() == 'F_Fireworks')
	{
		ExtraDamage = CurrentDamage * DamageMultiplier;
	}

	return int(ExtraDamage);
}

function GetToHitModifiers(XComGameState_Effect EffectState, XComGameState_Unit Attacker, XComGameState_Unit Target, XComGameState_Ability AbilityState, class<X2AbilityToHitCalc> ToHitType, bool bMelee, bool bFlanking, bool bIndirectFire, out array<ShotModifierInfo> ShotModifiers)
{
	local ShotModifierInfo		ShotInfo;
    local int					Tiles, Modifier, PistolRangeCounter;
	local X2AbilityTemplate     Template;

	if(AbilityState.GetMyTemplateName() == 'F_PoweredShot' || AbilityState.GetMyTemplateName() == 'F_Fireworks')
	{
		Tiles = Attacker.TileDistanceBetween(Target);
		
		PistolRangeCounter = class'X2Item_DefaultWeapons'.default.SHORT_CONVENTIONAL_RANGE[tiles] * -1;
		Modifier = default.GUNNER_SECONDARY_RANGE_TABLES[Tiles] + PistolRangeCounter;

		Template = AbilityState.GetMyTemplate();

		ShotInfo.Value = Modifier;
		ShotInfo.ModType = eHit_Success;
        ShotInfo.Reason = Template.LocFriendlyName;
        ShotModifiers.AddItem(ShotInfo);
    }    
}