//---------------------------------------------------------------------------------------
//  FILE:   XComDownloadableContentInfo_FavidsPerkPack.uc                                    
//           
//	Use the X2DownloadableContentInfo class to specify unique mod behavior when the 
//  player creates a new campaign or loads a saved game.
//  
//---------------------------------------------------------------------------------------
//  Copyright (c) 2016 Firaxis Games, Inc. All rights reserved.
//---------------------------------------------------------------------------------------

class X2DownloadableContentInfo_FavidsPerkPack extends X2DownloadableContentInfo;

/// <summary>
/// This method is run if the player loads a saved game that was created prior to this DLC / Mod being installed, and allows the 
/// DLC / Mod to perform custom processing in response. This will only be called once the first time a player loads a save that was
/// create without the content installed. Subsequent saves will record that the content was installed.
/// </summary>
static event OnLoadedSavedGame()
{}

/// <summary>
/// Called when the player starts a new campaign while this DLC / Mod is installed
/// </summary>
static event InstallNewCampaign(XComGameState StartState)
{}

/// <summary>
/// Called after the Templates have been created (but before they are validated) while this DLC / Mod is installed.
/// </summary>
static event OnPostTemplatesCreated()
{
	PatchAbilitiesForImposition();
	PatchAbilitiesForHavoc();
}

// Update abilities to function with the Imposition ability where necessary
private static function PatchAbilitiesForImposition()
{
	local X2DataTemplate DataTemplate;
	local X2AbilityTemplate AbilityTemplate;

	foreach class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager().IterateTemplates(DataTemplate, none)
	{
		AbilityTemplate = X2AbilityTemplate(DataTemplate);
		if (AbilityTemplate != none)
		{
			UpdateAbilityForImpositionEffect(AbilityTemplate);
		}
	}
}

// We'll piggy-back off the holo-targeting effect - this way, any ability that applies holo-targeting will also apply Imposition
private static function UpdateAbilityForImpositionEffect(X2AbilityTemplate Template)
{
	local X2Effect_HoloTarget HoloTargetEffect;
	local int i;
	
	for (i = 0; i < Template.AbilityTargetEffects.Length; i++)
	{
		HoloTargetEffect = X2Effect_HoloTarget(Template.AbilityTargetEffects[i]);
		if (HoloTargetEffect != none)
		{
			Template.AddTargetEffect(class'X2Ability_Favid'.static.ImpositionEffect());
			break;
		}
	}

	for (i = 0; i < Template.AbilityMultiTargetEffects.Length; i++)
	{
		HoloTargetEffect = X2Effect_HoloTarget(Template.AbilityMultiTargetEffects[i]);
		if (HoloTargetEffect != none)
		{
			Template.AddMultiTargetEffect(class'X2Ability_Favid'.static.ImpositionEffect());
			break;
		}
	}
}

static function logIfDebugEnabled(string message)
{
	if(class'X2Ability_Favid'.default.FAVID_DEBUG_LOGGING)
	{
		`LOG(message);
	}
}

static function PatchAbilitiesForHavoc()
{
	PatchAbilityForHavoc('Suppression');
	PatchAbilityForHavoc('LMGSuppression');
	PatchAbilityForHavoc('AreaSuppression');
	PatchAbilityForHavoc('Suppression_LW');
	PatchAbilityForHavoc('ShadowOps_RifleSuppression');
}

static function PatchAbilityForHavoc(name AbilityName)
{
	local X2AbilityTemplate Template;
	local X2Effect_HavocDamage TargetEffect;

	Template = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager().FindAbilityTemplate(AbilityName);

	if (Template != none)
	{
		TargetEffect = new class'X2Effect_HavocDamage';
		TargetEffect.RequiredAbility = 'F_Havoc';
		Template.AddTargetEffect(TargetEffect);
		Template.AddMultiTargetEffect(TargetEffect);
		Template.bAllowAmmoEffects = false;					// TODO figure out how to make this only true when the user has Havoc
		Template.bAllowBonusWeaponEffects = false;
	}
}

static function bool AbilityTagExpandHandler(string InString, out string OutString)
{
	local name Type;

	Type = name(InString);
	switch(Type)
	{
		case 'EYESTRAIN_AIM_BONUS':
			OutString = string(class'X2Ability_Favid'.default.EYESTRAIN_AIM_BONUS);
			return true;
		case 'EYESTRAIN_CHARGES':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.EYESTRAIN_CHARGES, "charge", "charges");
			return true;
		case 'EYESTRAIN_DURATION':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.EYESTRAIN_DURATION, "turn", "turns");
			return true;
		case 'FREEFIRE_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.FREEFIRE_COOLDOWN);
			return true;
		case 'CHIPAWAY_SHRED_CV':
			OutString = string(class'X2Ability_Favid'.default.CHIPAWAY_SHRED_CV);
			return true;
		case 'CHIPAWAY_SHRED_LS':
			OutString = string(class'X2Ability_Favid'.default.CHIPAWAY_SHRED_LS);
			return true;
		case 'CHIPAWAY_SHRED_MG':
			OutString = string(class'X2Ability_Favid'.default.CHIPAWAY_SHRED_MG);
			return true;
		case 'CHIPAWAY_SHRED_CL':
			OutString = string(class'X2Ability_Favid'.default.CHIPAWAY_SHRED_CL);
			return true;
		case 'CHIPAWAY_SHRED_BM':
			OutString = string(class'X2Ability_Favid'.default.CHIPAWAY_SHRED_BM);
			return true;
		case 'CHIPAWAY_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.CHIPAWAY_COOLDOWN);
			return true;
		case 'CHIPAWAY_AMMO_COST':
			OutString = string(class'X2Ability_Favid'.default.CHIPAWAY_AMMO_COST);
			return true;
		case 'SPOT_DURATION':
			OutString = string(class'X2Ability_Favid'.default.SPOT_DURATION);
			return true;
		case 'SPOT_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.SPOT_COOLDOWN);
			return true;
		case 'SPOT_RANGE':
			OutString = string(class'X2Ability_Favid'.default.SPOT_RANGE);
			return true;
		case 'SPOT_RADIUS':
			OutString = string(class'X2Ability_Favid'.default.SPOT_RADIUS);
			return true;
		case 'REACTIONPROTOCOL_CHARGES':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.REACTIONPROTOCOL_CHARGES, "charge", "charges");
			return true;
		case 'SNIPERSEYE_AIM_BONUS':
			OutString = string(class'X2Ability_Favid'.default.SNIPERSEYE_AIM_BONUS);
			return true;
		case 'BATTLEVISION_AIM_BONUS':
			OutString = string(class'X2Ability_Favid'.default.BATTLEVISION_AIM_BONUS);
			return true;
		case 'BATTLEVISION_VALUE_MAX':
			OutString = string(class'X2Ability_Favid'.default.BATTLEVISION_AIM_BONUS * class'X2Ability_Favid'.default.BATTLEVISION_SCALE_MAX);
			return true;
		case 'ENTRENCHED_DEFENSE_BONUS':
			OutString = getInversedValueString(class'X2Ability_Favid'.default.ENTRENCHED_DEFENSE_BONUS);
			return true;
		case 'EXPOSEWEAKNESS_DAMAGEMODIFIER':
			OutString = string(class'X2Ability_Favid'.default.EXPOSEWEAKNESS_DAMAGEMODIFIER);
			return true;
		case 'EXPOSEWEAKNESS_DURATION':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.EXPOSEWEAKNESS_DURATION, "turn", "turns");
			return true;
		case 'EXPOSEWEAKNESS_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.EXPOSEWEAKNESS_COOLDOWN);
			return true;
		case 'DISABLINGSHOT_STUN_ACTIONS':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.DISABLINGSHOT_STUN_ACTIONS, "action point", "action points");
			return true;
		case 'DISABLINGSHOT_AMMO_COST':
			OutString = string(class'X2Ability_Favid'.default.DISABLINGSHOT_AMMO_COST);
			return true;
		case 'DISABLINGSHOT_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.DISABLINGSHOT_COOLDOWN);
			return true;
		case 'RESUPPLY_CHARGES':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.RESUPPLY_CHARGES, "charge", "charges");
			return true;
		case 'RESUPPLY_ENDTURN':
			OutString = getEndTurnString(class'X2Ability_Favid'.default.RESUPPLY_ENDTURN);
			return true;
		case 'BULLETTIME_DEFENSE_BONUS':
			OutString = string(class'X2Ability_Favid'.default.BULLETTIME_DEFENSE_BONUS);
			return true;
		case 'BULLETTIME_DURATION':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.BULLETTIME_DURATION, "turn", "turns");
			return true;
		case 'BULLETTIME_CHARGES':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.BULLETTIME_CHARGES, "charge", "charges");
			return true;
		case 'PREDATOR_AIM_BONUS':
			OutString = string(class'X2Ability_Favid'.default.PREDATOR_AIM_BONUS);
			return true;
		case 'STANDYOURGROUND_AIM_BONUS':
			OutString = string(class'X2Ability_Favid'.default.STANDYOURGROUND_AIM_BONUS);
			return true;
		case 'STANDYOURGROUND_REQUIRED_ACTION_POINTS_SPENT':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.STANDYOURGROUND_REQUIRED_ACTION_POINTS_SPENT, "action point", "action points");
			return true;
		case 'BULLETPROOF_ARMOR':
			OutString = string(class'X2Ability_Favid'.default.BULLETPROOF_ARMOR);
			return true;
		case 'BULLETPROOF_SHIELD':
			OutString = string(class'X2Ability_Favid'.default.BULLETPROOF_SHIELD);
			return true;
		case 'CUTSTHROUGHSTEEL_SHRED_CV':
			OutString = string(class'X2Ability_Favid'.default.CUTSTHROUGHSTEEL_SHRED_CV);
			return true;
		case 'CUTSTHROUGHSTEEL_SHRED_MG':
			OutString = string(class'X2Ability_Favid'.default.CUTSTHROUGHSTEEL_SHRED_MG);
			return true;
		case 'CUTSTHROUGHSTEEL_SHRED_BM':
			OutString = string(class'X2Ability_Favid'.default.CUTSTHROUGHSTEEL_SHRED_BM);
			return true;
		case 'CUTSTHROUGHSTEEL_CRIT_BONUS':
			OutString = string(class'X2Ability_Favid'.default.CUTSTHROUGHSTEEL_CRIT_BONUS);
			return true;
		case 'INTHEZONE_MAX_REFUNDS_PER_TURN':
			OutString = getInTheZoneRefundString(class'X2Ability_Favid'.default.INTHEZONE_MAX_REFUNDS_PER_TURN);
			return true;
		case 'INGOODHEALTH_AIM_BONUS':
			OutString = string(class'X2Ability_Favid'.default.INGOODHEALTH_AIM_BONUS);
			return true;
		case 'INGOODHEALTH_DAMAGE_BONUS':
			OutString = string(class'X2Ability_Favid'.default.INGOODHEALTH_DAMAGE_BONUS);
			return true;
		case 'GENJI_CRITICAL_CHANCE':
			OutString = string(class'X2Ability_Favid'.default.GENJI_CRITICAL_CHANCE);
			return true;
		case 'MOMENTUM_AIM_BONUS':
			OutString = string(class'X2Ability_Favid'.default.MOMENTUM_AIM_BONUS);
			return true;
		case 'MOMENTUM_CRIT_BONUS':
			OutString = string(class'X2Ability_Favid'.default.MOMENTUM_CRIT_BONUS);
			return true;
		case 'MOMENTUM_DAMAGE_BONUS':
			OutString = string(class'X2Ability_Favid'.default.MOMENTUM_DAMAGE_BONUS);
			return true;
		case 'SLASHANDDASH_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.SLASHANDDASH_COOLDOWN);
			return true;
		case 'LOCKNLOAD_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.LOCKNLOAD_COOLDOWN);
			return true;
		case 'SALTINTHEWOUND_DAMAGE_BONUS':
			OutString = string(class'X2Ability_Favid'.default.SALTINTHEWOUND_DAMAGE_BONUS);
			return true;
		case 'THEBIGGERTHEYARE_AIM_BONUS':
			OutString = string(class'X2Ability_Favid'.default.THEBIGGERTHEYARE_AIM_BONUS);
			return true;
		case 'RECHARGE_COOLDOWN_AMOUNT':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.RECHARGE_COOLDOWN_AMOUNT, "turn", "turns");
			return true;
		case 'STRENGTHINNUMBERS_AIM_BONUS':
			OutString = string(class'X2Ability_Favid'.default.STRENGTHINNUMBERS_AIM_BONUS);
			return true;
		case 'STRENGTHINNUMBERS_SCALE_MAX':
			OutString = string(class'X2Ability_Favid'.default.STRENGTHINNUMBERS_AIM_BONUS * class'X2Ability_Favid'.default.STRENGTHINNUMBERS_SCALE_MAX);
			return true;
		case 'PIERCETHEVEIL_DAMAGE_BONUS':
			OutString = string(class'X2Ability_Favid'.default.PIERCETHEVEIL_DAMAGE_BONUS);
			return true;
		case 'PIERCETHEVEIL_AIM_BONUS':
			OutString = string(class'X2Ability_Favid'.default.PIERCETHEVEIL_AIM_BONUS);
			return true;
		case 'PIERCETHEVEIL_ARMOR_PIERCING':
			OutString = string(class'X2Ability_Favid'.default.PIERCETHEVEIL_ARMOR_PIERCING);
			return true;
		case 'PIERCETHEVEIL_DURATION':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.PIERCETHEVEIL_DURATION, "turn", "turns");
			return true;
		case 'PIERCETHEVEIL_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.PIERCETHEVEIL_COOLDOWN);
			return true;
		case 'PIERCETHEVEIL_INCREASE_COOLDOWN_AMOUNT':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.PIERCETHEVEIL_INCREASE_COOLDOWN_AMOUNT, "turn", "turns");
			return true;
		case 'IMPOSITION_AIM_BONUS':
			OutString = string(class'X2Ability_Favid'.default.IMPOSITION_AIM_BONUS);
			return true;
		case 'UNLOAD_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.UNLOAD_COOLDOWN);
			return true;
		case 'UNLOAD_DAMAGE_MODIFIER':
			OutString = getOneMinusFloatValueString(class'X2Ability_Favid'.default.UNLOAD_DAMAGE_MODIFIER);
			return true;
		case 'MAIM_AMMO_COST':
			OutString = string(class'X2Ability_Favid'.default.MAIM_AMMO_COST);
			return true;
		case 'MAIM_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.MAIM_COOLDOWN);
			return true;
		case 'NATURALTWENTY_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.NATURALTWENTY_COOLDOWN);
			return true;
		case 'IGNITE_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.IGNITE_COOLDOWN);
			return true;
		case 'IGNITE_BURN_DAMAGE_BASE':
			OutString = string(class'X2Ability_Favid'.default.IGNITE_BURN_DAMAGE_BASE);
			return true;
		case 'IGNITE_BURN_DAMAGE_SPREAD':
			OutString = string(class'X2Ability_Favid'.default.IGNITE_BURN_DAMAGE_SPREAD);
			return true;
		case 'MINDBLAST_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.MINDBLAST_COOLDOWN);
			return true;
		case 'MINDBLAST_STUN_ACTIONS':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.MINDBLAST_STUN_ACTIONS, "action", "actions");
			return true;
		case 'OLYMPICDASH_MOBILITY':
			OutString = string(class'X2Ability_Favid'.default.OLYMPICDASH_MOBILITY);
			return true;
		case 'OLYMPICDASH_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.OLYMPICDASH_COOLDOWN);
			return true;
		case 'OLYMPICDASH_DURATION':
			OutString = getStringBasedOnValue(class'X2Ability_Favid'.default.OLYMPICDASH_DURATION, "turn", "turns");
			return true;
		case 'REGENERATION_HEALAMOUNT_CV':
			OutString = string(class'X2Ability_Favid'.default.REGENERATION_HEALAMOUNT_CV);
			return true;
		case 'REGENERATION_HEALAMOUNT_MG':
			OutString = string(class'X2Ability_Favid'.default.REGENERATION_HEALAMOUNT_MG);
			return true;
		case 'REGENERATION_HEALAMOUNT_BM':
			OutString = string(class'X2Ability_Favid'.default.REGENERATION_HEALAMOUNT_BM);
			return true;
		case 'REGENERATION_MAXHEALAMOUNT_CV':
			OutString = string(class'X2Ability_Favid'.default.REGENERATION_MAXHEALAMOUNT_CV);
			return true;
		case 'REGENERATION_MAXHEALAMOUNT_MG':
			OutString = string(class'X2Ability_Favid'.default.REGENERATION_MAXHEALAMOUNT_MG);
			return true;
		case 'REGENERATION_MAXHEALAMOUNT_BM':
			OutString = string(class'X2Ability_Favid'.default.REGENERATION_MAXHEALAMOUNT_BM);
			return true;
		case 'REGENERATION_COOLDOWN':
			OutString = string(class'X2Ability_Favid'.default.REGENERATION_COOLDOWN);
			return true;
		case 'HAVOC_DAMAGE_SINGLE':
			OutString = string(class'X2Ability_Favid'.default.HAVOC_DAMAGE_SINGLE);
			return true;
		case 'HAVOC_DAMAGE_MULTIPLE':
			OutString = string(class'X2Ability_Favid'.default.HAVOC_DAMAGE_MULTIPLE);
			return true;
		case 'LICKYOURWOUNDS_HEALAMOUNT':
			OutString = string(class'X2Ability_Favid'.default.LICKYOURWOUNDS_HEALAMOUNT);
			return true;
		case 'LICKYOURWOUNDS_MAXHEALAMOUNT':
			OutString = string(class'X2Ability_Favid'.default.LICKYOURWOUNDS_MAXHEALAMOUNT);
			return true;
		case 'ONAROLL_CRIT_BONUS':
			OutString = string(class'X2Ability_Favid'.default.ONAROLL_CRIT_BONUS);
			return true;
		case 'ONAROLL_CRIT_DAMAGE_BONUS':
			OutString = string(class'X2Ability_Favid'.default.ONAROLL_CRIT_DAMAGE_BONUS);
			return true;
		case 'ONAROLL_MAX_STACKS':
			OutString = string(class'X2Ability_Favid'.default.ONAROLL_MAX_STACKS);
			return true;
		default: 
			return false;
	}
}

private static function string getStringBasedOnValue(int value, string single, string plural)
{
	if(value > 1)
	{
		return string(value) @ plural;
	}

	return string(value) @ single;
}

private static function string getEndTurnString(bool value)
{
	if(value)
	{
		return "Ends the user's turn when used.";
	}

	return "Does not end the user's turn when used as a first action.";
}

private static function string getInTheZoneRefundString(int maxRefunds)
{
	if(maxRefunds == 0)
	{
		return "Can activate an unlimited number of times per turn.";
	}
	else if(maxRefunds == 1)
	{
		return "Can activate 1 time per turn.";
	}
	
	return "Can activate" @ string(maxRefunds) @ "times per turn.";
}

private static function string getOneMinusFloatValueString(float modifier)
{
	local float result;
	local string returnString;

	result = 1 - modifier;
	returnString = string(int(result * 100)) $ "%";

	return returnString;
}

private static function string getInversedValueString(int value)
{
	return string(-1 * value);
}