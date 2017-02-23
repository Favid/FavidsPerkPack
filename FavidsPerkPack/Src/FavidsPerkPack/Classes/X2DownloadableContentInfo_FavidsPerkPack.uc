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
	local X2DataTemplate DataTemplate;
	local X2AbilityTemplate AbilityTemplate;

	foreach class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager().IterateTemplates(DataTemplate, none)
	{
		AbilityTemplate = X2AbilityTemplate(DataTemplate);
		if (AbilityTemplate != none)
		{
			UpdateForImpositionEffect(AbilityTemplate);
		}
	}

	PatchAreaSuppressionMayhem();
}

// We'll piggy-back off the holotargeting effect - this way, any ability that applies holo-targeting will also apply Imposition
private static function UpdateForImpositionEffect(X2AbilityTemplate Template)
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

static function PatchAreaSuppressionMayhem()
{
	local X2AbilityTemplate Template;
	local X2Effect_MayhemDamage TargetEffect;

	Template = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager().FindAbilityTemplate('AreaSuppression');

	if (Template != none)
	{
		TargetEffect = new class'X2Effect_MayhemDamage';
		TargetEffect.RequiredAbility = 'F_Mayhem';
		Template.AddTargetEffect(TargetEffect);
		Template.AddMultiTargetEffect(TargetEffect);
		Template.bAllowAmmoEffects = false;					// TODO figure out how to make this only true when the user has Mayhem
		Template.bAllowBonusWeaponEffects = true;
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
			OutString = string(class'X2Ability_Favid'.default.EYESTRAIN_CHARGES);
			if(class'X2Ability_Favid'.default.EYESTRAIN_CHARGES > 1)
			{
				OutString = string(class'X2Ability_Favid'.default.EYESTRAIN_CHARGES) @ "charges";
			}
			else
			{
				OutString = string(class'X2Ability_Favid'.default.EYESTRAIN_CHARGES) @ "charge";
			}
			return true;
		case 'EYESTRAIN_DURATION':
			OutString = string(class'X2Ability_Favid'.default.EYESTRAIN_DURATION);
			if(class'X2Ability_Favid'.default.EYESTRAIN_DURATION > 1)
			{
				OutString = string(class'X2Ability_Favid'.default.EYESTRAIN_DURATION) @ "turns";
			}
			else
			{
				OutString = string(class'X2Ability_Favid'.default.EYESTRAIN_DURATION) @ "turn";
			}
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
			OutString = string(class'X2Ability_Favid'.default.ENTRENCHED_DEFENSE_BONUS);
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