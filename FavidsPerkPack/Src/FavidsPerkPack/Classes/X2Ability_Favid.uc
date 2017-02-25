class X2Ability_Favid extends XMBAbility config (Favid_Ability);

var config int EYESTRAIN_AIM_BONUS;
var config int EYESTRAIN_CHARGES;
var config int EYESTRAIN_DURATION;
var config bool EYESTRAIN_AWC;
var config int FREEFIRE_COOLDOWN;
var config bool FREEFIRE_AWC;
var config int CHIPAWAY_SHRED_CV;
var config int CHIPAWAY_SHRED_LS;
var config int CHIPAWAY_SHRED_MG;
var config int CHIPAWAY_SHRED_CL;
var config int CHIPAWAY_SHRED_BM;
var config int CHIPAWAY_COOLDOWN;
var config int CHIPAWAY_AMMO_COST;
var config bool CHIPAWAY_AWC;
var config bool CONCENTRATION_AWC;
var config int SPOT_RANGE;
var config int SPOT_RADIUS;
var config int SPOT_DURATION;
var config int SPOT_COOLDOWN;
var config bool SPOT_AWC;
var config int REACTIONPROTOCOL_CHARGES;
var config bool REACTIONPROTOCOL_AWC;
var config int IMPOSITION_AIM_BONUS;
var config int IMPOSITION_DURATION;
var config bool IMPOSITION_AWC;
var config int SNIPERSEYE_AIM_BONUS;
var config bool SNIPERSEYE_AWC;
var config int UNLOAD_AIM_BONUS;
var config bool UNLOAD_ALLOW_CRIT;
var config float UNLOAD_DAMAGE_MODIFIER;
var config int UNLOAD_COOLDOWN;
var config bool UNLOAD_AWC;
var config int BATTLEVISION_AIM_BONUS;
var config int BATTLEVISION_SCALE_MAX;
var config bool BATTLEVISION_AWC;
var config int ENTRENCHED_DEFENSE_BONUS;
var config bool ENTRENCHED_AWC;
var config int MAIM_AMMO_COST;
var config int MAIM_COOLDOWN;
var config int MAIM_DURATION;
var config bool MAIM_AWC;
var config int EXPOSEWEAKNESS_DAMAGEMODIFIER;
var config int EXPOSEWEAKNESS_DURATION;
var config int EXPOSEWEAKNESS_COOLDOWN;
var config bool EXPOSEWEAKNESS_AWC;
var config bool QUICKFEET_AWC;
var config int DISABLINGSHOT_COOLDOWN;
var config int DISABLINGSHOT_STUN_ACTIONS;
var config int DISABLINGSHOT_AMMO_COST;
var config bool DISABLINGSHOT_AWC;
var config int RESUPPLY_CHARGES;
var config bool RESUPPLY_ENDTURN;
var config bool RESUPPLY_AWC;
var config int BULLETTIME_DEFENSE_BONUS;
var config int BULLETTIME_DURATION;
var config int BULLETTIME_CHARGES;
var config bool BULLETTIME_AWC;
var config int PREDATOR_AIM_BONUS;
var config bool PREDATOR_AWC;
var config int BULLETPROOF_SHIELD;
var config int BULLETPROOF_ARMOR;
var config bool BULLETPROOF_AWC;
var config bool ARMEDTOTHETEETH_AWC;
var config int STANDYOURGROUND_AIM_BONUS;
var config int STANDYOURGROUND_REQUIRED_ACTION_POINTS_SPENT;
var config bool STANDYOURGROUND_AWC;
var config int CUTSTHROUGHSTEEL_SHRED_CV;
var config int CUTSTHROUGHSTEEL_SHRED_MG;
var config int CUTSTHROUGHSTEEL_SHRED_BM;
var config int CUTSTHROUGHSTEEL_CRIT_BONUS;
var config bool CUTSTHROUGHSTEEL_AWC;
var config int INTHEZONE_MAX_REFUNDS_PER_TURN;
var config bool INTHEZONE_AWC;
var config int LIVINGVIRUS_AIM_BONUS;
var config int LIVINGVIRUS_CRIT_BONUS;
var config int LIVINGVIRUS_DEFENSE_BONUS;
var config bool LIVINGVIRUS_AWC;
var config int MAYHEM_DAMAGE_T1;
var config int MAYHEM_DAMAGE_T2;
var config int MAYHEM_DAMAGE_T3;
var config int MAYHEM_DAMAGE;
var config bool MAYHEM_AWC;
var config int SPRINTER_MOBILITY;
var config int SPRINTER_DURATION;
var config int SPRINTER_COOLDOWN;
var config bool SPRINTER_AWC;
var config int INGOODHEALTH_AIM_BONUS;
var config int INGOODHEALTH_DAMAGE_BONUS;
var config bool INGOODHEALTH_AWC;
var config int GENJI_CRITICAL_CHANCE;
var config bool GENJI_AWC;
var config int MOMENTUM_AIM_BONUS;
var config int MOMENTUM_CRIT_BONUS;
var config int MOMENTUM_DAMAGE_BONUS;
var config bool MOMENTUM_AWC;
var config int SLASHANDDASH_COOLDOWN;
var config bool SLASHANDDASH_AWC;
var config bool TRENCHWARFARE_AWC;
var config bool LOCKNLOAD_AWC;
var config int LOCKNLOAD_COOLDOWN;
var config int SALTINTHEWOUND_DAMAGE_BONUS;
var config bool SALTINTHEWOUND_AWC;
var config int THEBIGGERTHEYARE_AIM_BONUS;
var config bool THEBIGGERTHEYARE_AWC;
var config bool MINDBLAST_AWC;
var config int MINDBLAST_COOLDOWN;
var config int MINDBLAST_STUN_ACTIONS;
var config int EMPOWEREDBLAST_RUPTURE;
var config bool EMPOWEREDBLAST_AWC;
var config int STRENGTHINNUMBERS_AIM_BONUS;
var config int STRENGTHINNUMBERS_SCALE_MAX;
var config bool STRENGTHINNUMBERS_AWC;
var config int RECHARGE_COOLDOWN_AMOUNT;
var config bool RECHARGE_AWC;
var config int PIERCETHEVEIL_AIM_BONUS;
var config int PIERCETHEVEIL_DAMAGE_BONUS;
var config int PIERCETHEVEIL_ARMOR_PIERCING;
var config int PIERCETHEVEIL_DURATION;
var config int PIERCETHEVEIL_INCREASE_COOLDOWN_AMOUNT;
var config int PIERCETHEVEIL_COOLDOWN;
var config bool PIERCETHEVEIL_AWC;
var config int IGNITE_COOLDOWN;
var config bool IGNITE_AWC;
var config int NATURALTWENTY_COOLDOWN;
var config bool NATURALTWENTY_AWC;

static function array<X2DataTemplate> CreateTemplates()
{
	local array<X2DataTemplate> Templates;

	Templates.AddItem(EyeStrain());
	Templates.AddItem(FreeFire());
	Templates.AddItem(ChipAway());
	Templates.AddItem(Concentration());
	Templates.AddItem(Spot());
	Templates.AddItem(ReactionProtocol());
	Templates.AddItem(Imposition());
	Templates.AddItem(SnipersEye());
	Templates.AddItem(Unload());
	Templates.AddItem(Unload2());
	Templates.AddItem(UnloadDamageBonus());
	Templates.AddItem(BattleVision());
	Templates.AddItem(Entrenched());
	Templates.AddItem(Maim());
	Templates.AddItem(ExposeWeakness());
	Templates.AddItem(QuickFeet());
	Templates.AddItem(DisablingShot());
	Templates.AddItem(Resupply());
	Templates.AddItem(BulletTime());
	Templates.AddItem(Predator());
	Templates.AddItem(BulletProof());
	Templates.AddItem(ArmedToTheTeeth());
	Templates.AddItem(StandYourGround());
	Templates.AddItem(CutsThroughSteel());
	Templates.AddItem(InTheZone());
	//Templates.AddItem(LivingVirus());				// TODO rework
	//Templates.AddItem(Mayhem());					// TODO rework
	//Templates.AddItem(Sprinter());					// TODO rework
	Templates.AddItem(InGoodHealth());
	Templates.AddItem(RemoveInGoodHealth());
	Templates.AddItem(Genji());
	Templates.AddItem(Momentum());
	Templates.AddItem(SlashAndDash());
	Templates.AddItem(SlashAndDashActivator());
	Templates.AddItem(TrenchWarfare());
	Templates.AddItem(LockNLoad());
	Templates.AddItem(LockNLoadActivator());
	Templates.AddItem(SaltInTheWound());
	Templates.AddItem(TheBiggerTheyAre());
	Templates.AddItem(MindBlast());
	Templates.AddItem(EmpoweredBlast());
	Templates.AddItem(StrengthInNumbers());
	Templates.AddItem(Recharge());
	Templates.AddItem(PierceTheVeil());
	Templates.AddItem(Ignite());
	Templates.AddItem(NaturalTwenty());
	Templates.AddItem(PierceTheVeil());

	Templates.AddItem(ShootAnyone());
	
	return Templates;
}

// Eye Strain
// (AbilityName="F_EyeStrain", ApplyToWeaponSlot=eInvSlot_Unknown)
// Activated ability that does not cost an action. Grants Squadsight and an aim bonus until the beginning of your next turn. Charge-based.
static function X2AbilityTemplate EyeStrain()
{
	local X2AbilityTemplate Template;
	local X2Effect_PersistentStatChange AimEffect;
	local X2Effect_Squadsight SquadsightEffect;

	// Create a persistent stat change effect that grants an aim bonus
	AimEffect = new class'X2Effect_PersistentStatChange';
	AimEffect.EffectName = 'F_EyeStrainAim';
	AimEffect.AddPersistentStatChange(eStat_Offense, default.EYESTRAIN_AIM_BONUS);
	
	// Prevent the effect from applying to a unit more than once
	AimEffect.DuplicateResponse = eDupe_Refresh;

	// The effect lasts for two turns
	AimEffect.BuildPersistentEffect(default.EYESTRAIN_DURATION, false, true, false, eGameRule_PlayerTurnBegin);
	
	// Add a visualization that plays a flyover over the target unit
	AimEffect.VisualizationFn = EffectFlyOver_Visualization;
	
	// Activated ability that targets user
	Template = SelfTargetActivated('F_EyeStrain', "img:///UILibrary_FavidsPerkPack.UIPerk_Focus", default.EYESTRAIN_AWC, AimEffect, class'UIUtilities_Tactical'.const.CLASS_CORPORAL_PRIORITY, eCost_Free);
	
	// Let's give them squadsight, too
	SquadsightEffect = new class'X2Effect_Squadsight';
	SquadsightEffect.BuildPersistentEffect(default.EYESTRAIN_DURATION, false, true, false, eGameRule_PlayerTurnBegin);
	SquadsightEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage,,,Template.AbilitySourceName);
	Template.AddTargetEffect(SquadsightEffect);
	
	// Cannot be used while burning, etc.
	Template.AddShooterEffectExclusions();

	// Charges
	AddCharges(Template, default.EYESTRAIN_CHARGES);

	return Template;
}

// Free Fire
// (AbilityName="F_FreeFire", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Fire your primary weapon as a free action. Cooldown-based.
static function X2AbilityTemplate FreeFire()
{
	local X2AbilityTemplate Template;

	// Create a standard attack that doesn't cost an action.
	Template = Attack('F_FreeFire', "img:///UILibrary_FavidsPerkPack.UIPerk_FreeFire", default.FREEFIRE_AWC, none, class'UIUtilities_Tactical'.const.CLASS_CORPORAL_PRIORITY, eCost_Free, 1);
	
	// Cooldown
	AddCooldown(Template, default.FREEFIRE_COOLDOWN);

	return Template;
}

// Chip Away
// (AbilityName="F_ChipAway", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Fire a shot that shreds additional armor. Cooldown-based.
static function X2AbilityTemplate ChipAway()
{
	local X2AbilityTemplate Template;

	// Create the template using a helper function
	Template = Attack('F_ChipAway', "img:///UILibrary_FavidsPerkPack.UIPerk_ChipAway", default.CHIPAWAY_AWC, none, class'UIUtilities_Tactical'.const.CLASS_CAPTAIN_PRIORITY, eCost_WeaponConsumeAll, default.CHIPAWAY_AMMO_COST);

	// Cooldown
	AddCooldown(Template, default.CHIPAWAY_COOLDOWN);
	
	// Add a secondary ability to provide bonuses on the shot
	AddSecondaryAbility(Template, ChipAwayBonuses());

	return Template;
}

static function X2AbilityTemplate ChipAwayBonuses()
{
	local X2AbilityTemplate Template;
	local XMBEffect_ConditionalBonus Effect;
	local XMBCondition_AbilityName Condition;

	// Create a conditional bonus effect
	Effect = new class'XMBEffect_ConditionalBonus';
	Effect.EffectName = 'F_ChipAwayBonuses';

	// The bonus adds shred damage dependent on tech level
	Effect.AddShredModifier(default.CHIPAWAY_SHRED_CV, eHit_Success, 'conventional');
	Effect.AddShredModifier(default.CHIPAWAY_SHRED_LS, eHit_Success, 'laser_lw');
	Effect.AddShredModifier(default.CHIPAWAY_SHRED_MG, eHit_Success, 'magnetic');
	Effect.AddShredModifier(default.CHIPAWAY_SHRED_CL, eHit_Success, 'coilgun_lw');
	Effect.AddShredModifier(default.CHIPAWAY_SHRED_BM, eHit_Success, 'beam');
	
	// The bonus only applies to the Chip Away ability
	Condition = new class'XMBCondition_AbilityName';
	Condition.IncludeAbilityNames.AddItem('F_ChipAway');
	Effect.AbilityTargetConditions.AddItem(Condition);

	// Create the template using a helper function
	Template = Passive('F_ChipAwayBonuses', "img:///UILibrary_FavidsPerkPack.UIPerk_ChipAway", false, Effect);

	// The Chip Away ability will show up as an active ability, so hide the icon for the passive damage effect
	HidePerkIcon(Template);

	return Template;
}

// Concentration
// (AbilityName="F_Concentration", ApplyToWeaponSlot=eInvSlot_Unknown)
// Your grazing shots are automatically upgraded to normal hits. Passive.
static function X2AbilityTemplate Concentration()
{
	local X2AbilityTemplate Template;
	local X2Effect_Concentration ConcentrationEffect;

	// Concentration Effect
	ConcentrationEffect = new class'X2Effect_Concentration';

	// Create the template using a helper function
	Template = Passive('F_Concentration', "img:///UILibrary_FavidsPerkPack.UIPerk_Concentration", default.CONCENTRATION_AWC, ConcentrationEffect);

	return Template;
}

// Spot
// (AbilityName="F_Spot", ApplyToWeaponSlot=eInvSlot_Unknown)
// Visually scan a small area, highlighting any enemies in the radius, even if you lose line of sight. Also immediately reveals Faceless and Chryssalids in the area of effect.
static function X2AbilityTemplate Spot()
{
	local X2AbilityTemplate Template;
	local X2Effect_ScanningProtocol     EnemyScanningEffect;
	local X2Effect_ScanningProtocol     CivilianScanningEffect;
	local X2Condition_UnitProperty		CivilianProperty;
	local X2AbilityTarget_Cursor		CursorTarget;
	local X2AbilityMultiTarget_Radius	RadiusMultiTarget;

	// Start with the targeted debuff template
	Template = TargetedDebuff('F_Spot', "img:///UILibrary_FavidsPerkPack.UIPerk_Spot", default.SPOT_AWC, none, class'UIUtilities_Tactical'.const.CLASS_SERGEANT_PRIORITY, eCost_Single);
	Template.Hostility = eHostility_Neutral;
	Template.AbilityTargetConditions.Length = 0;

	// Cursor target
	CursorTarget = new class'X2AbilityTarget_Cursor';
	CursorTarget.FixedAbilityRange = default.SPOT_RANGE;
	Template.AbilityTargetStyle = CursorTarget;
	
	// Circular target radius
	RadiusMultiTarget = new class'X2AbilityMultiTarget_Radius';
	RadiusMultiTarget.fTargetRadius = default.SPOT_RADIUS;
	RadiusMultiTarget.bIgnoreBlockingCover = true;
	Template.AbilityMultiTargetStyle = RadiusMultiTarget;

	// Same as grenade targetting, but doesn't use grenade path
	Template.TargetingMethod = class'X2TargetingMethod_GremlinAOE';
	
	// Always remain concealed
	Template.ConcealmentRule = eConceal_Always;
	Template.bSilentAbility = true;

	// Effect on enemies
	EnemyScanningEffect = new class'X2Effect_ScanningProtocol';
	EnemyScanningEffect.BuildPersistentEffect(default.SPOT_DURATION, false, true, false, eGameRule_PlayerTurnEnd);
	EnemyScanningEffect.TargetConditions.AddItem(default.LivingHostileUnitOnlyProperty);
	Template.AddMultiTargetEffect(EnemyScanningEffect);

	// Effect on civilans, so we can reveal them if they're Faceless
	CivilianScanningEffect = new class'X2Effect_ScanningProtocol';
	CivilianScanningEffect.BuildPersistentEffect(default.SPOT_DURATION, false, true, false, eGameRule_PlayerTurnEnd);
	CivilianProperty = new class'X2Condition_UnitProperty';
	CivilianProperty.ExcludeNonCivilian = true;
	CivilianProperty.ExcludeHostileToSource = false;
	CivilianProperty.ExcludeFriendlyToSource = false;
	CivilianScanningEffect.TargetConditions.AddItem(CivilianProperty);
	Template.AddMultiTargetEffect(CivilianScanningEffect);	

	// Cooldown
	AddCooldown(Template, default.SPOT_COOLDOWN);
	
	return Template;
}

// Reaction Protocol
// (AbilityName="F_ReactionProtocol", ApplyToWeaponSlot=eInvSlot_SecondaryWeapon)
// Grant a Covering Fire overwatch shot to an ally while also giving them the effects of Cool Under Pressure. Charge-based.
static function X2AbilityTemplate ReactionProtocol()
{
	local X2AbilityTemplate                     Template;
	local X2Condition_UnitProperty				UnitCondition;
	local X2Effect_ReactionProtocol				ReactionProtocolEffect;

	// Create effect that grants a covering fire reaction shot and cool under pressure bonuses
	ReactionProtocolEffect = new class'X2Effect_ReactionProtocol';
	ReactionProtocolEffect.EffectName = 'F_ReactionProtocol';
	ReactionProtocolEffect.BuildPersistentEffect(1, false, false, false, eGameRule_PlayerTurnBegin);

	// Typical ally requirements
	UnitCondition = new class'X2Condition_UnitProperty';
	UnitCondition.ExcludeHostileToSource = true;
	UnitCondition.ExcludeFriendlyToSource = false;
	UnitCondition.ExcludeDead = true;
	ReactionProtocolEffect.TargetConditions.AddItem(UnitCondition);
	
	// Create a targeted buff that affects allies
	Template = TargetedBuff('F_ReactionProtocol', "img:///UILibrary_FavidsPerkPack.UIPerk_OverwatchProtocol", default.REACTIONPROTOCOL_AWC, ReactionProtocolEffect, class'UIUtilities_Tactical'.const.CLASS_CAPTAIN_PRIORITY, eCost_Single);

	// Charges
	AddCharges(Template, default.REACTIONPROTOCOL_CHARGES);

	// Add the Gremlin visualization
	Template.PostActivationEvents.AddItem('ItemRecalled');
	Template.CustomSelfFireAnim = 'NO_DefenseProtocol';
	Template.BuildNewGameStateFn = class'X2Ability_SpecialistAbilitySet'.static.AttachGremlinToTarget_BuildGameState;
	Template.BuildVisualizationFn = class'X2Ability_SpecialistAbilitySet'.static.GremlinSingleTarget_BuildVisualization;

	return Template;
}

// Imposition
// (AbilityName="F_Imposition", ApplyToWeaponSlot=eInvSlot_Unknown)
// Firing at enemy with the unit's primary weapon lowers the target's aim until next turn. Passive.
static function X2AbilityTemplate Imposition()
{
	local X2AbilityTemplate Template;

	// Start with the passive template
	Template = Passive('F_Imposition', "img:///UILibrary_FavidsPerkPack.UIPerk_Imposition", default.IMPOSITION_AWC, none);
	
	return Template;
}

static function X2Effect_Imposition ImpositionEffect()
{
	local X2Effect_Imposition		Effect;
	local X2Condition_AbilityProperty Condition;

	Effect = new class'X2Effect_Imposition';
	Effect.BuildPersistentEffect(default.IMPOSITION_DURATION, false, false, false, eGameRule_PlayerTurnBegin);
	Effect.bRemoveWhenTargetDies = true;
	Effect.bUseSourcePlayerState = true;
	Effect.bApplyOnMiss = true;
	
	// TODO figure out how to do this without hardcoding
	Effect.SetDisplayInfo(ePerkBuff_Penalty, "Imposition", "This unit suffers " $ string(default.IMPOSITION_AIM_BONUS) $ " aim until the beginning of the player's next turn.", "img:///UILibrary_FavidsPerkPack.UIPerk_Imposition", true);
	Effect.VisualizationFn = EffectFlyOver_Visualization_Imposition;
	Effect.DuplicateResponse = eDupe_Ignore;
	
	Condition = new class'X2Condition_AbilityProperty';
	Condition.OwnerHasSoldierAbilities.AddItem('F_Imposition');
	Effect.TargetConditions.AddItem(Condition);

	return Effect;
}

// Sniper's Eye
// (AbilityName="F_SnipersEye", ApplyToWeaponSlot=eInvSlot_Unknown)
// You gain an aim bonus against enemies in full cover. Passive.
static function X2AbilityTemplate SnipersEye()
{
	local X2AbilityTemplate Template;
	local XMBEffect_ConditionalBonus Effect;

	// Create a conditional bonus effect
	Effect = new class'XMBEffect_ConditionalBonus';

	// Add the aim bonus
	Effect.AddToHitModifier(default.SNIPERSEYE_AIM_BONUS);

	// Target must be in full cover
	Effect.AbilityTargetConditions.AddItem(default.FullCoverCondition);
	
	// Create the template using a helper function
	Template = Passive('F_SnipersEye', "img:///UILibrary_FavidsPerkPack.UIPerk_SnipersEye", default.SNIPERSEYE_AWC, Effect, false);

	return Template;
}

// Unload
// (AbilityName="F_Unload", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Fire with the unit's primary weapon until out of ammo or the target is dead. Shots cannot critical. Cooldown-based.
static function X2AbilityTemplate Unload()
{
	local X2AbilityTemplate					Template;
	local X2AbilityCost_Ammo				AmmoCost;
	local X2AbilityToHitCalc_StandardAim    ToHitCalc;

	// Start with basic attack template, with a 0 ammo cost because we're going to do that in a very specific way on our own
	Template = Attack('F_Unload', "img:///UILibrary_FavidsPerkPack.UIPerk_Unload", default.UNLOAD_AWC, none, class'UIUtilities_Tactical'.const.CLASS_COLONEL_PRIORITY, eCost_WeaponConsumeAll, 0);
	
	// Cooldown
	AddCooldown(Template, default.UNLOAD_COOLDOWN);

	// Require 2 ammo to be present so that at least two shots can be taken
	AmmoCost = new class'X2AbilityCost_Ammo';
	AmmoCost.iAmmo = 2;
	AmmoCost.bFreeCost = true;
	Template.AbilityCosts.AddItem(AmmoCost);

	// Actually charge 1 ammo for this shot. Follow-up shots will charge the extra ammo
	AmmoCost = new class'X2AbilityCost_Ammo';
	AmmoCost.iAmmo = 1;
	Template.AbilityCosts.AddItem(AmmoCost);

	// Custom aim bonus/malus and potentially disallow critical hits
	ToHitCalc = new class'X2AbilityToHitCalc_StandardAim';
	ToHitCalc.BuiltInHitMod = default.UNLOAD_AIM_BONUS;
	ToHitCalc.bAllowCrit = default.UNLOAD_ALLOW_CRIT;
	Template.AbilityToHitCalc = ToHitCalc;
	Template.AbilityToHitOwnerOnMissCalc = ToHitCalc;

	// Now set the ability up for triggering the follow-up shots
	Template.AdditionalAbilities.AddItem('F_Unload2');
	Template.PostActivationEvents.AddItem('F_Unload2');

	// This should grant the damage modification effect that only applies to Unload
	Template.AdditionalAbilities.AddItem('F_UnloadDamage');

	// So that the Codex and Avatar can't teleport between shots
	Template.bPreventsTargetTeleport = true;

	return Template;
}

static function X2AbilityTemplate Unload2()
{
	local X2AbilityTemplate					Template;
	local X2AbilityToHitCalc_StandardAim    ToHitCalc;
	local X2AbilityTrigger_EventListener    Trigger;

	// Start with basic attack template
	Template = Attack('F_Unload2', "img:///UILibrary_FavidsPerkPack.UIPerk_Unload", false, none, class'UIUtilities_Tactical'.const.CLASS_COLONEL_PRIORITY, eCost_None, 1);
	
	// Custom aim bonus/malus and potentially disallow critical hits
	ToHitCalc = new class'X2AbilityToHitCalc_StandardAim';
	ToHitCalc.BuiltInHitMod = default.UNLOAD_AIM_BONUS;
	ToHitCalc.bAllowCrit = default.UNLOAD_ALLOW_CRIT;
	Template.AbilityToHitCalc = ToHitCalc;
	Template.AbilityToHitOwnerOnMissCalc = ToHitCalc;

	// Remove the activate ability trigger added by the Attack helper function
	Template.AbilityTriggers.Length = 0;

	// Set the ability to trigger with a listener
	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.EventID = 'F_Unload2';
	Trigger.ListenerData.Filter = eFilter_Unit;
	Trigger.ListenerData.EventFn = class'XComGameState_Ability'.static.RapidFireListener;
	Template.AbilityTriggers.AddItem(Trigger);

	// Now set the ability up for triggering the follow-up shots
	Template.AdditionalAbilities.AddItem('F_Unload2');
	Template.PostActivationEvents.AddItem('F_Unload2');
	Template.CinescriptCameraType = "StandardGunFiring";

	// We don't want this ability to actually show up to the user
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;

	// So that the Codex and Avatar can't teleport between shots
	Template.bPreventsTargetTeleport = true;

	// Show a flyover for each follow-up shot
	Template.bShowActivation = true;
	
	return Template;
}

static function X2AbilityTemplate UnloadDamageBonus()
{
	local X2AbilityTemplate			Template;
	local X2Effect_UnloadDamage		DamageEffect;

	// The effect that modifies the damage of the Unload abilities
	DamageEffect = new class'X2Effect_UnloadDamage';
    DamageEffect.BuildPersistentEffect(1, true, false, false);

	// Create the template using a helper function
	Template = Passive('F_UnloadDamage', "img:///UILibrary_FavidsPerkPack.UIPerk_Unload", false, DamageEffect);

	// The Unload ability will show up as an active ability, so hide the icon for the passive damage effect
	HidePerkIcon(Template);

    return Template;
}

// Battle Vision
// (AbilityName="F_BattleVision", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Gain aim for each enemy you can see, up to a specified maximum. Passive.
static function X2AbilityTemplate BattleVision()
{
	local XMBEffect_ConditionalBonus Effect;
	local XMBValue_Visibility Value;
	 
	// Create a value that will count the number of visible units
	Value = new class'XMBValue_Visibility';

	// Only count enemy units
	Value.bCountEnemies = true;

	// Create a conditional bonus effect
	Effect = new class'XMBEffect_ConditionalBonus';

	// The effect adds Aim per enemy unit
	Effect.AddToHitModifier(default.BATTLEVISION_AIM_BONUS, eHit_Success);

	// The effect scales with the number of visible enemy units, to a maximum
	Effect.ScaleValue = Value;
	Effect.ScaleMax = default.BATTLEVISION_SCALE_MAX;
	
	// Effect only applies to matching weapon
	Effect.AbilityTargetConditions.AddItem(default.MatchingWeaponCondition);

	// Create the template using a helper function
	return Passive('F_BattleVision', "img:///UILibrary_FavidsPerkPack.UIPerk_Confidence", default.BATTLEVISION_AWC, Effect);
}

// Entrenched
// (AbilityName="F_Entrenched", ApplyToWeaponSlot=eInvSlot_Unknown)
// Full cover provides additional defense. Passive.
static function X2AbilityTemplate Entrenched()
{
	local X2AbilityTemplate Template;
	local XMBEffect_ConditionalBonus Effect;

	// Create a conditional bonus effect
	Effect = new class'XMBEffect_ConditionalBonus';

	// Bonus gives a defense bonus
	Effect.AddToHitAsTargetModifier(default.ENTRENCHED_DEFENSE_BONUS);

	// Add the condition to the bonus
	Effect.AbilityShooterConditions.AddItem(default.FullCoverCondition);
	Effect.AbilityTargetConditionsAsTarget.AddItem(default.FullCoverCondition);

	// Create the template using a helper function
	Template = Passive('F_Entrenched', "img:///UILibrary_FavidsPerkPack.UIPerk_Entrenched", default.ENTRENCHED_AWC, Effect);

	return Template;
}

// Maim
// (AbilityName="F_Maim", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Fire a shot that immobilizes the target until the end of their next turn. Cooldown-based.
static function X2AbilityTemplate Maim()
{
	local X2AbilityTemplate Template;
	local X2Effect_Maim Effect;
	
	// Create the template using a helper function
	Template = Attack('F_Maim', "img:///UILibrary_FavidsPerkPack.UIPerk_Maim", default.MAIM_AWC, none, class'UIUtilities_Tactical'.const.CLASS_LIEUTENANT_PRIORITY, eCost_WeaponConsumeAll, default.MAIM_AMMO_COST);

	// Cooldown
	AddCooldown(Template, default.MAIM_COOLDOWN);

	// Effect
	Effect = new class'X2Effect_Maim';
	Effect.EffectName = 'F_MaimBonuses';
	Effect.DuplicateResponse = eDupe_Refresh;
	Effect.BuildPersistentEffect(default.MAIM_DURATION, false, true, , eGameRule_PlayerTurnBegin);
	Effect.AddPersistentStatChange(eStat_Mobility, 0, MODOP_Multiplication);
	Effect.SetDisplayInfo(ePerkBuff_Penalty, Template.LocFriendlyName, Template.LocLongDescription, Template.IconImage, true, , Template.AbilitySourceName);
	Effect.VisualizationFn = EffectFlyOver_Visualization;
	Template.AddTargetEffect(Effect);

	return Template;
}

// Expose Weakness
// (AbilityName="F_ExposeWeakness", ApplyToWeaponSlot=eInvSlot_Unknown)
// Increases damage taken by the targetted unit for a few turns. Cooldown-based.
static function X2AbilityTemplate ExposeWeakness()
{
	local X2AbilityTemplate				Template;
	local X2Effect_WeaknessExposed		WeaknessExposedEffect;
	
	// Weakness Exposed Effect
	WeaknessExposedEffect = new class 'X2Effect_WeaknessExposed';
	WeaknessExposedEffect.DamageModifier = default.EXPOSEWEAKNESS_DAMAGEMODIFIER;
	WeaknessExposedEffect.BuildPersistentEffect(default.EXPOSEWEAKNESS_DURATION, false, true, false, eGameRule_PlayerTurnEnd);
	WeaknessExposedEffect.bRemoveWhenTargetDies = true;

	// Start with the targeted debuff template
	Template = TargetedDebuff('F_ExposeWeakness', "img:///UILibrary_FavidsPerkPack.UIPerk_ExposeWeakness", default.EXPOSEWEAKNESS_AWC, WeaknessExposedEffect, class'UIUtilities_Tactical'.const.CLASS_SERGEANT_PRIORITY, eCost_Single);
	
	// Cooldown
	AddCooldown(Template, default.EXPOSEWEAKNESS_COOLDOWN);

	// Cannot be used while burning, etc.
	Template.AddShooterEffectExclusions();
	
	// Always remain concealed
	Template.ConcealmentRule = eConceal_Always;
	Template.bSilentAbility = true;

	return Template;
}

// Quick Feet
// (AbilityName="F_QuickFeet", ApplyToWeaponSlot=eInvSlot_Unknown)
// Refunds one action point when you are revealed from concealment via your own action. Passive.
static function X2AbilityTemplate QuickFeet()
{
	local X2AbilityTemplate						Template;
	local X2Effect_QuickFeet               QuickFeetEffect;
	
	// Quick Feet Effect
	QuickFeetEffect = new class'X2Effect_QuickFeet';
	QuickFeetEffect.EffectName = 'F_QuickFeet';
	QuickFeetEffect.BuildPersistentEffect(1, true, false, false);

	// Create the template using a helper function
	Template = Passive('F_QuickFeet', "img:///UILibrary_FavidsPerkPack.UIPerk_QuickFeet", default.QUICKFEET_AWC, QuickFeetEffect);

	return Template;
}

// Disabling Shot
// (AbilityName="F_DisablingShot", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Primary weapon shot that, if it hits, stuns the target. Cannot critically hit. Cooldown-based.
static function X2AbilityTemplate DisablingShot()
{
	local X2AbilityTemplate Template;
	local X2Effect_Stunned					StunnedEffect;

	// Create the template using a helper function
	Template = Attack('F_DisablingShot', "img:///UILibrary_FavidsPerkPack.UIPerk_DisablingShot", default.DISABLINGSHOT_AWC, none, class'UIUtilities_Tactical'.const.CLASS_SERGEANT_PRIORITY, eCost_WeaponConsumeAll, default.DISABLINGSHOT_AMMO_COST);
	
	// Create Stun effect
	StunnedEffect = class'X2StatusEffects'.static.CreateStunnedStatusEffect(default.DISABLINGSHOT_STUN_ACTIONS, 100, false);
	StunnedEffect.bRemoveWhenSourceDies = false;
	Template.AddTargetEffect(StunnedEffect);
	
	// Remove ability to crit
	X2AbilityToHitCalc_StandardAim(Template.AbilityToHitCalc).bAllowCrit = false;
	X2AbilityToHitCalc_StandardAim(Template.AbilityToHitOwnerOnMissCalc).bAllowCrit = false;

	// Cooldown
	AddCooldown(Template, default.DISABLINGSHOT_COOLDOWN);

	return Template;
}

// Resupply
// (AbilityName="F_Resupply", ApplyToWeaponSlot=eInvSlot_SecondaryWeapon)
// Refill the ammo of all allies. Charge-based.
static function X2AbilityTemplate Resupply()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2AbilityCharges                  Charges;
	local X2AbilityCost_Charges             ChargeCost;
	local X2AbilityMultiTarget_AllAllies	MultiTargetingStyle;
	local X2Effect_Resupply					EffectResupply;
	local X2Condition_UnitProperty			UnitPropertyCondition;
	local X2Condition_WantsReload			ReloadCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_Resupply');

	// Charges
	Charges = new class'X2AbilityCharges';
	Charges.InitialCharges = default.RESUPPLY_CHARGES;
	Template.AbilityCharges = Charges;

	ChargeCost = new class'X2AbilityCost_Charges';
	ChargeCost.NumCharges = 1;
	Template.AbilityCosts.AddItem(ChargeCost);

	// Action Points
	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 1;
	ActionPointCost.bConsumeAllPoints = default.RESUPPLY_ENDTURN;
	Template.AbilityCosts.AddItem(ActionPointCost);

	Template.AbilityToHitCalc = default.DeadEye;

	// Conditions
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AddShooterEffectExclusions();
	Template.bLimitTargetIcons = true;

	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	
	// This ability self-targets the user, and pulls in everyone on the squad (including the user) as multi-targets
	Template.AbilityTargetStyle = default.SelfTarget;
	MultiTargetingStyle = new class'X2AbilityMultiTarget_AllAllies';
	MultiTargetingStyle.bAllowSameTarget = true;
	MultiTargetingStyle.NumTargetsRequired = 1; //At least someone must want reload
	Template.AbilityMultiTargetStyle = MultiTargetingStyle;

	// Targets must want a reload
	ReloadCondition = new class 'X2Condition_WantsReload';
	ReloadCondition.PrimaryWantsReload = true;
	Template.AbilityMultiTargetConditions.AddItem(ReloadCondition);

	// Targets must be alive
	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeDead = true;
	UnitPropertyCondition.ExcludeFriendlyToSource = false;
	Template.AbilityMultiTargetConditions.AddItem(UnitPropertyCondition);

	// Add resupply effect
	EffectResupply = new class'X2Effect_Resupply';
	EffectResupply.TargetConditions.AddItem(default.LivingTargetUnitOnlyProperty);
	Template.AddMultiTargetEffect(EffectResupply);
	
	// Typical path to build gamestate, but a (very crazy) special-case visualization
	Template.BuildNewGameStateFn = class'X2Ability_SpecialistAbilitySet'.static.SendGremlinToOwnerLocation_BuildGameState;
	Template.BuildVisualizationFn = class'X2Ability_SpecialistAbilitySet'.static.GremlinRestoration_BuildVisualization;
	Template.bSkipFireAction = true;
	Template.bShowActivation = true;
	Template.bStationaryWeapon = true;
	Template.bSkipPerkActivationActions = true;
	Template.PostActivationEvents.AddItem('ItemRecalled');

	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_Resupply";
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_HideSpecificErrors;
	Template.HideErrors.AddItem('AA_CannotAfford_ActionPoints');
	Template.HideErrors.AddItem('AA_ValueCheckFailed');
	Template.Hostility = eHostility_Defensive;
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_COLONEL_PRIORITY;
	Template.TargetingMethod = class'X2TargetingMethod_GremlinAOE';

	Template.ActivationSpeech = 'Reloading';

	Template.bCrossClassEligible = default.RESUPPLY_AWC;

	return Template;
}

// Bullet Time
// (AbilityName="F_BulletTime", ApplyToWeaponSlot=eInvSlot_Unknown)
// Activated ability that grants a huge defense bonus to the unit until the end of the enemy's next turn. Charge based.
static function X2AbilityTemplate BulletTime()
{
	local X2Effect_PersistentStatChange Effect;
	local X2AbilityTemplate Template;

	// Create a persistent stat change effect that grants an aim bonus
	Effect = new class'X2Effect_PersistentStatChange';
	Effect.EffectName = 'F_BulletTimeDefense';
	Effect.AddPersistentStatChange(eStat_Defense, default.BULLETTIME_DEFENSE_BONUS);
	
	// Prevent the effect from applying to a unit more than once
	Effect.DuplicateResponse = eDupe_Refresh;

	// The effect lasts for two turns
	Effect.BuildPersistentEffect(default.BULLETTIME_DURATION, false, true, false, eGameRule_PlayerTurnBegin);
	
	// Add a visualization that plays a flyover over the target unit
	Effect.VisualizationFn = EffectFlyOver_Visualization;
	
	// Activated ability that targets user
	Template = SelfTargetActivated('F_BulletTime', "img:///UILibrary_FavidsPerkPack.UIPerk_BulletTime", default.BULLETTIME_AWC, Effect, class'UIUtilities_Tactical'.const.CLASS_COLONEL_PRIORITY, eCost_Free);
	
	// Cannot be used while burning, etc.
	Template.AddShooterEffectExclusions();

	// Charges
	AddCharges(Template, default.BULLETTIME_CHARGES);

	return Template;
}

// Predator
// (AbilityName="F_Predator", ApplyToWeaponSlot=eInvSlot_Unknown)
// Grants an aim bonus on enemies that are flanked or out of cover. Passive.
static function X2AbilityTemplate Predator()
{
	local XMBEffect_ConditionalBonus Effect;

	// Create a conditional bonus
	Effect = new class'XMBEffect_ConditionalBonus';

	// The bonus adds the hit chance
	Effect.AddToHitModifier(default.PREDATOR_AIM_BONUS, eHit_Success);

	// The bonus only applies while flanking
	Effect.AbilityTargetConditions.AddItem(default.FlankedCondition);

	// Create the template using a helper function
	return Passive('F_Predator', "img:///UILibrary_FavidsPerkPack.UIPerk_Predator", default.PREDATOR_AWC, Effect);
}

// Armed To The Teeth
// (AbilityName="F_ArmedToTheTeeth", ApplyToWeaponSlot=eInvSlot_Unknown)
// Grants an ammo only utility slot. Passive.
static function X2AbilityTemplate ArmedToTheTeeth()
{
	// Create the template using a helper function - XcomGameData.ini sets this perk as unlocking the ammo pocket
	return Passive('F_ArmedToTheTeeth', "img:///UILibrary_FavidsPerkPack.UIPerk_ArmedToTheTeeth", default.ARMEDTOTHETEETH_AWC, none);
}

// Bullet Proof
// (AbilityName="F_BulletProof", ApplyToWeaponSlot=eInvSlot_Unknown)
// Grants a bonus to Shields and Armor. Passive.
static function X2AbilityTemplate BulletProof()
{
	local X2Effect_PersistentStatChange Effect;

	// Create a persistent stat change effect that grants shield and armor bonus
	Effect = new class'X2Effect_PersistentStatChange';
	Effect.EffectName = 'F_BulletProofBonus';
	Effect.AddPersistentStatChange(eStat_ShieldHP, default.BULLETPROOF_SHIELD);
	Effect.AddPersistentStatChange(eStat_ArmorMitigation, default.BULLETPROOF_ARMOR);

	// Create the template using a helper function
	return Passive('F_BulletProof', "img:///UILibrary_FavidsPerkPack.UIPerk_BulletProof", default.BULLETPROOF_AWC, Effect);
}

// Stand Your Ground
// (AbilityName="F_StandYourGround", ApplyToWeaponSlot=eInvSlot_Unknown)
// Firing with more than one action point remaining confers an aim bonus. Passive.
static function X2AbilityTemplate StandYourGround()
{
	local XMBEffect_ConditionalBonus Effect;
	local X2AbilityTemplate Template;
	local XMBCondition_ActionPointsRemaining Condition;

	// Require that the activated ability costs 1 action point, but actually spent at least 2
	Condition = new class'XMBCondition_ActionPointsRemaining';
	Condition.PointsRequired = default.STANDYOURGROUND_REQUIRED_ACTION_POINTS_SPENT;

	// Create a persistent stat change effect that grants an aim bonus
	Effect = new class'XMBEffect_ConditionalBonus';
	Effect.EffectName = 'F_StandYourGroundAim';
	Effect.AddToHitModifier(default.STANDYOURGROUND_AIM_BONUS, eHit_Success);

	// The bonus only applies while you have 2 action points
	Effect.AbilityTargetConditionsAsTarget.AddItem(Condition);
	Effect.AbilityShooterConditions.AddItem(Condition);
	
	// Create the template using a helper function
	Template = Passive('F_StandYourGround', "img:///UILibrary_FavidsPerkPack.UIPerk_StandYourGround", default.STANDYOURGROUND_AWC, Effect);

	// Show a flyover when activated
	Template.bShowActivation = true;

	return Template;
}

// Cuts Through Steel
// (AbilityName="F_CutsThroughSteel", ApplyToWeaponSlot=eInvSlot_SecondaryWeapon)
// Sword attacks against robotic enemies shred armor and have increased critical chance. Passive.
static function X2AbilityTemplate CutsThroughSteel()
{
	local X2AbilityTemplate					    Template;
	local XMBEffect_ConditionalBonus			Effect;
	local XMBCondition_AbilityProperty			MeleeCondition;
	local X2Condition_UnitProperty				RoboticCondition;

	// Create a conditional bonus effect
	Effect = new class'XMBEffect_ConditionalBonus';
	Effect.AddShredModifier(default.CUTSTHROUGHSTEEL_SHRED_CV, eHit_Success, 'conventional');
	Effect.AddShredModifier(default.CUTSTHROUGHSTEEL_SHRED_MG, eHit_Success, 'magnetic');
	Effect.AddShredModifier(default.CUTSTHROUGHSTEEL_SHRED_BM, eHit_Success, 'beam');
	Effect.AddToHitModifier(default.CUTSTHROUGHSTEEL_CRIT_BONUS, eHit_Crit);
	
	// Only melee attacks
	MeleeCondition = new class'XMBCondition_AbilityProperty';
	MeleeCondition.bRequireMelee = true;
	Effect.AbilityTargetConditions.AddItem(MeleeCondition);
	
	// Only against robots
	RoboticCondition = new class'X2Condition_UnitProperty';
	RoboticCondition.ExcludeOrganic = true;
	Effect.AbilityTargetConditions.AddItem(RoboticCondition);

	Template = Passive('F_CutsThroughSteel', "img:///UILibrary_FavidsPerkPack.UIPerk_CutsThroughSteel", default.CUTSTHROUGHSTEEL_AWC, Effect, false, false);
	
	return Template;		
}

// In The Zone
// (AbilityName="F_InTheZone", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Killing a flanked target refunds one action point. Passive.
static function X2AbilityTemplate InTheZone()
{
	local X2AbilityTemplate						Template;
	local X2Effect_InTheZone               InTheZoneEffect;

	InTheZoneEffect = new class'X2Effect_InTheZone';
	InTheZoneEffect.EffectName = 'F_InTheZone';
	InTheZoneEffect.BuildPersistentEffect(1, true, false, false);
	InTheZoneEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.LocLongDescription, Template.IconImage, true,,Template.AbilitySourceName);
	InTheZoneEffect.MaxRefundsPerTurn = default.INTHEZONE_MAX_REFUNDS_PER_TURN;

	Template = Passive('F_InTheZone', "img:///UILibrary_FavidsPerkPack.UIPerk_InTheZone", default.INTHEZONE_AWC, InTheZoneEffect, false, false);

	return Template;
}

// Living Virus
// (AbilityName="F_LivingVirus", ApplyToWeaponSlot=eInvSlot_Unknown)
// Grants increased aim, critical chance, and defense against robotic enemies.
static function X2AbilityTemplate LivingVirus()
{
	local X2AbilityTemplate Template;
	local XMBEffect_ConditionalBonus OffenseEffect;
	local XMBEffect_ConditionalBonus DefenseEffect;
	local X2Condition_UnitProperty Condition;

	// Create a conditional bonus effect
	OffenseEffect = new class'XMBEffect_ConditionalBonus';

	// Add the aim and crit bonuses
	OffenseEffect.AddToHitModifier(default.LIVINGVIRUS_AIM_BONUS, eHit_Success);
	OffenseEffect.AddToHitModifier(default.LIVINGVIRUS_CRIT_BONUS, eHit_Crit);

	// Only against robots
	Condition = new class'X2Condition_UnitProperty';
	Condition.ExcludeOrganic = true;
	Condition.ExcludeDead = false;
	Condition.ExcludeFriendlyToSource = true;
	Condition.ExcludeHostileToSource = false;
	OffenseEffect.AbilityTargetConditions.AddItem(Condition);
	
	// Create the template using a helper function
	Template = Passive('F_LivingVirus', "img:///UILibrary_FavidsPerkPack.UIPerk_LivingVirus", default.LIVINGVIRUS_AWC, OffenseEffect, false);

	// Create a conditional bonus effect
	DefenseEffect = new class'XMBEffect_ConditionalBonus';

	// Bonus gives a defense bonus
	DefenseEffect.AddToHitAsTargetModifier(default.LIVINGVIRUS_DEFENSE_BONUS * -1);

	// Add the condition to the bonus
	DefenseEffect.AbilityTargetConditions.AddItem(Condition);

	// Add the effect to the ability
	DefenseEffect.BuildPersistentEffect(1, true, false, false);
	DefenseEffect.SetDisplayInfo(ePerkBuff_Bonus, Template.LocFriendlyName, Template.LocHelpText, Template.IconImage, false,,Template.AbilitySourceName);
	DefenseEffect.bHideWhenNotRelevant = true;
	Template.AddTargetEffect(DefenseEffect);

	return Template;
}

// Mayhem
// (AbilityName="F_Mayhem", ApplyToWeaponSlot=eInvSlot_Unknown)
// Area Suppression now does 1/2/3 damage to the primary target based on weapon tier. Can shred armor and apply ammo effects.
//static function X2AbilityTemplate Mayhem()
//{
	//local X2AbilityTemplate Template;
	//local XMBEffect_ConditionalBonus Effect;
	//local XMBCondition_AbilityName Condition;
//
	//// Create a conditional bonus effect
	//Effect = new class'XMBEffect_ConditionalBonus';
	//Effect.EffectName = 'F_Mayhem';
//
	//// The bonus adds damage dependent on tech level
	//Effect.AddDamageModifier(default.MAYHEM_DAMAGE_T1, eHit_Success, 'conventional');
	//Effect.AddDamageModifier(default.MAYHEM_DAMAGE_T2, eHit_Success, 'magnetic');
	//Effect.AddDamageModifier(default.MAYHEM_DAMAGE_T3, eHit_Success, 'beam');
//
	//// The bonus only applies to the Chip Away ability
	//Condition = new class'XMBCondition_AbilityName';
	//Condition.IncludeAbilityNames.AddItem('Suppression_LW');
	//Condition.IncludeAbilityNames.AddItem('Suppression');
	//Condition.IncludeAbilityNames.AddItem('AreaSuppression');
	//Effect.AbilityTargetConditions.AddItem(Condition);
//
	//// Create the template using a helper function
	//Template = Passive('F_Mayhem', "img:///UILibrary_FavidsPerkPack.UIPerk_Mayhem", default.MAYHEM_AWC, Effect, false);
//
	//return Template;
//}

static function X2AbilityTemplate Mayhem()
{
	local X2AbilityTemplate						Template;
	local X2AbilityTargetStyle                  TargetStyle;
	local X2AbilityTrigger						Trigger;
	local X2Effect_Mayhem						Mayhem;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_Mayhem');
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_Mayhem";

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;

	Template.AbilityToHitCalc = default.DeadEye;

	TargetStyle = new class'X2AbilityTarget_Self';
	Template.AbilityTargetStyle = TargetStyle;

	Trigger = new class'X2AbilityTrigger_UnitPostBeginPlay';
	Template.AbilityTriggers.AddItem(Trigger);

	Mayhem = new class'X2Effect_Mayhem';
	Mayhem.BuildPersistentEffect(1, true, true, true);
	Mayhem.BonusDmg = default.MAYHEM_DAMAGE;
	Mayhem.EffectName = 'F_Mayhem';
	Mayhem.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage,,,Template.AbilitySourceName);
	Template.AddTargetEffect(Mayhem);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	//  NOTE: No visualization on purpose!
	
	Template.bCrossClassEligible = default.MAYHEM_AWC;

	return Template;
}

// Sprinter
// (AbilityName="F_Sprinter", ApplyToWeaponSlot=eInvSlot_Unknown)
// Free action. Grants 4 mobility for the rest of the turn. 3 turn cooldown.
static function X2AbilityTemplate Sprinter()
{
	local X2AbilityTemplate Template;
	local X2Effect_PersistentStatChange Effect;

	// Create a persistent stat change effect that grants an aim bonus
	Effect = new class'X2Effect_PersistentStatChange';
	Effect.EffectName = 'F_SprinterMobility';
	Effect.AddPersistentStatChange(eStat_Mobility, default.SPRINTER_MOBILITY);
	
	// Prevent the effect from applying to a unit more than once
	Effect.DuplicateResponse = eDupe_Refresh;

	// The effect lasts for one turn
	Effect.BuildPersistentEffect(default.SPRINTER_DURATION, false, true, false, eGameRule_PlayerTurnBegin);
	
	// Add a visualization that plays a flyover over the target unit
	Effect.VisualizationFn = EffectFlyOver_Visualization;
	
	// Activated ability that targets user
	Template = SelfTargetActivated('F_Sprinter', "img:///UILibrary_FavidsPerkPack.UIPerk_Sprinter", default.SPRINTER_AWC, Effect, class'UIUtilities_Tactical'.const.CLASS_CORPORAL_PRIORITY, eCost_Free);
	
	// Cannot be used while burning, etc.
	Template.AddShooterEffectExclusions();

	// Cooldown
	AddCooldown(Template, default.SPRINTER_COOLDOWN);

	return Template;
}

// In Good Health
// (AbilityName="F_InGoodHealth", ApplyToWeaponSlot=eInvSlot_Unknown)
// Grants increased aim and damage while this unit is at full health. The bonus is removed when the unit takes damage the first time during a mission. Passive.
static function X2AbilityTemplate InGoodHealth()
{
	local X2AbilityTemplate						Template;	
	local X2Effect_PersistentStatChange			AimBonus;
	local X2Effect_InGoodHealthDamage			DamageBonus;
	local X2Effect_Persistent					PassiveEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_InGoodHealth');
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_InGoodHealth";
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.Hostility = eHostility_Neutral;
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.AbilityToHitCalc = default.DeadEye;
    Template.AbilityTargetStyle = default.SelfTarget;
	Template.bDisplayInUITooltip = true;
	Template.bDisplayInUITacticalText = true;
	Template.bCrossClassEligible = default.INGOODHEALTH_AWC;
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);
	Template.bShowActivation = true;
	Template.bSkipFireAction = true;

	// Add aim bonus effect
	AimBonus = new class'X2Effect_PersistentStatChange';
	AimBonus.BuildPersistentEffect(1,true,true,false);
	AimBonus.SetDisplayInfo (ePerkBuff_Bonus,Template.LocFriendlyName, Template.GetMyHelpText(), Template.IconImage,,, Template.AbilitySourceName); 
	AimBonus.AddPersistentStatChange (eStat_Offense, float (default.INGOODHEALTH_AIM_BONUS));
	AimBonus.EffectName='InGoodHealthAimEffect';
	Template.AddTargetEffect(AimBonus);

	// Add damage bonus effect
	DamageBonus = new class'X2Effect_InGoodHealthDamage';
	DamageBonus.BonusDamage = default.INGOODHEALTH_DAMAGE_BONUS;
	DamageBonus.BuildPersistentEffect(1,true,true,false);
	DamageBonus.EffectName='InGoodHealthDamageEffect';
	Template.AddTargetEffect(DamageBonus);
	
	// Add dummy passive effect for the perk icon
	PassiveEffect = new class'X2Effect_Persistent';
	PassiveEffect.EffectName = name("F_InGoodHealth_Passive");
	PassiveEffect.BuildPersistentEffect(1, true, false, false);
	PassiveEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.LocLongDescription, Template.IconImage, true,,Template.AbilitySourceName);
	Template.AddTargetEffect(PassiveEffect);

	Template.AdditionalAbilities.AddItem('RemoveInGoodHealth');
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;  

	Return Template;
}

static function X2AbilityTemplate RemoveInGoodHealth()
{
	local X2AbilityTemplate						Template;
	local X2AbilityTrigger_EventListener		EventListener;
	local X2Effect_RemoveEffects				RemoveEffect;
	local X2Condition_UnitEffects				RequireEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'RemoveInGoodHealth');	
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_InGoodHealth";
	Template.Hostility = eHostility_Neutral;
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.AbilityToHitCalc = default.DeadEye;
    Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);

	EventListener = new class'X2AbilityTrigger_EventListener';
	EventListener.ListenerData.EventID = 'UnitTakeEffectDamage';
	EventListener.ListenerData.EventFn = class'XComGameState_Ability'.static.AbilityTriggerEventListener_Self;
	EventListener.ListenerData.Deferral = ELD_OnStateSubmitted;
	EventListener.ListenerData.Filter = eFilter_Unit;
	Template.AbilityTriggers.AddItem(EventListener);

	Template.bShowActivation = true;
	Template.bSkipFireAction = true;

	RequireEffect = new class'X2Condition_UnitEffects';
    RequireEffect.AddRequireEffect('InGoodHealthAimEffect', 'AA_InGoodHealthAimEffectPresent');
    RequireEffect.AddRequireEffect('InGoodHealthDamageEffect', 'AA_InGoodHealthDamageEffectPresent');
	Template.AbilityTargetConditions.AddItem(RequireEffect);

	RemoveEffect = new class'X2Effect_RemoveEffects';
	RemoveEffect.EffectNamesToRemove.AddItem('InGoodHealthAimEffect');
	RemoveEffect.EffectNamesToRemove.AddItem('InGoodHealthDamageEffect');
	Template.AddTargetEffect(RemoveEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;

	Return Template;
}

// Genji
// (AbilityName="F_Genji", ApplyToWeaponSlot=eInvSlot_SecondaryWeapon)
// Swords have increased critical chance. Passive.
static function X2AbilityTemplate Genji()
{
	local X2AbilityTemplate						Template;
	local XMBEffect_ConditionalBonus CritChanceModEffect;

	CritChanceModEffect = new class'XMBEffect_ConditionalBonus';
	CritChanceModEffect.AddToHitModifier(default.GENJI_CRITICAL_CHANCE, eHit_Crit);
	CritChanceModEffect.AbilityTargetConditions.AddItem(default.MatchingWeaponCondition);

	Template = Passive('F_Genji', "img:///UILibrary_FavidsPerkPack.UIPerk_Genji", default.GENJI_AWC, CritChanceModEffect, false, false);

	return Template;
}

// Momentum
// (AbilityName="F_Momentum", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Grants increased aim, critical chance, and damage with your primary weapon if you have moved this turn. Passive.
static function X2AbilityTemplate Momentum()
{
	local X2AbilityTemplate Template;
	local XMBEffect_ConditionalBonus OffenseEffect;
	local X2Condition_UnitValue Condition;

	// Create a conditional bonus effect
	OffenseEffect = new class'XMBEffect_ConditionalBonus';

	// Add the aim, crit, and damage bonuses
	OffenseEffect.AddToHitModifier(default.MOMENTUM_AIM_BONUS, eHit_Success);
	OffenseEffect.AddToHitModifier(default.MOMENTUM_CRIT_BONUS, eHit_Crit);
	OffenseEffect.AddDamageModifier(default.MOMENTUM_DAMAGE_BONUS);

	// Only if you have moved this turn
	Condition = new class'X2Condition_UnitValue';
	Condition.AddCheckValue('MovesThisTurn', 0, eCheck_GreaterThan);
	OffenseEffect.AbilityShooterConditions.AddItem(Condition);

	// Must match weapon type
	OffenseEffect.AbilityShooterConditions.AddItem(default.MatchingWeaponCondition);
	
	// Create the template using a helper function
	Template = Passive('F_Momentum', "img:///UILibrary_FavidsPerkPack.UIPerk_Momentum", default.MOMENTUM_AWC, OffenseEffect, true, true);

	return Template;
}

// Slash and Dash
// (AbilityName="F_SlashAndDash", ApplyToWeaponSlot=eInvSlot_Unknown)
// Free action. After your next sword attack this turn, gain a free move. Cooldown-based.
static function X2AbilityTemplate SlashAndDash()
{
	local X2AbilityTemplate		Template;
	local X2Effect_SlashAndDash	Effect;
	
	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_SlashAndDash');
	
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_SlashAndDash";

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);
	
	Effect = new class'X2Effect_SlashAndDash';
	Effect.EffectName = 'F_SlashAndDash';
	Effect.DuplicateResponse = eDupe_Ignore;
	Effect.BuildPersistentEffect(1, true, false);
	Effect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage,,, Template.AbilitySourceName);
	Template.AddTargetEffect(Effect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	Template.bCrossClassEligible = default.SLASHANDDASH_AWC;
	
	Template.AdditionalAbilities.AddItem('F_SlashAndDashActivator');

	return Template;
}

static function X2AbilityTemplate SlashAndDashActivator()
{
	local X2AbilityTemplate Template;
	local X2Effect_Persistent SlashAndDashActivatorEffect;

	// Activated ability that targets user
	Template = SelfTargetActivated('F_SlashAndDashActivator', "img:///UILibrary_FavidsPerkPack.UIPerk_SlashAndDash", false, none, class'UIUtilities_Tactical'.const.CLASS_CORPORAL_PRIORITY, eCost_Free);

	SlashAndDashActivatorEffect = new class'X2Effect_Persistent';
	SlashAndDashActivatorEffect.EffectName = 'F_SlashAndDashActivator';
	SlashAndDashActivatorEffect.BuildPersistentEffect(1, false, true, false, eGameRule_PlayerTurnEnd);
	SlashAndDashActivatorEffect.VisualizationFn = EffectFlyOver_Visualization;
	SlashAndDashActivatorEffect.SetDisplayInfo(ePerkBuff_Bonus, Template.LocFriendlyName, Template.LocLongDescription, Template.IconImage, true,,Template.AbilitySourceName);
	
	Template.AddTargetEffect(SlashAndDashActivatorEffect);

	// Cannot be used while burning, etc.
	Template.AddShooterEffectExclusions();
	
	// Cooldown
	AddCooldown(Template, default.SLASHANDDASH_COOLDOWN);

	return Template;
}

// Trench Warfare
// (AbilityName="F_TrenchWarfare", ApplyToWeaponSlot=eInvSlot_Unknown)
// If you get at least one kill during your turn, automatically hunker down at the end of it. Passive.
static function X2AbilityTemplate TrenchWarfare()
{
	local X2AbilityTemplate								Template;
	local X2Effect_TrenchWarfare	Effect;
	
	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_TrenchWarfare');
	
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_TrenchWarfare";

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	Effect = new class'X2Effect_TrenchWarfare';
	Effect.EffectName = 'F_TrenchWarfare';
	Effect.DuplicateResponse = eDupe_Ignore;
	Effect.BuildPersistentEffect(1, true, false);
	Effect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage,,, Template.AbilitySourceName);
	Template.AddTargetEffect(Effect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	Template.bCrossClassEligible = default.TRENCHWARFARE_AWC;
	
	return Template;
}

// Lock N' Load
// (AbilityName="F_LockNLoad", ApplyToWeaponSlot=eInvSlot_Unknown)
// Activated ability that does not cost an action point. Until the beginning of next turn, your ammo will be refunded after each shot you take. Cooldown-based.
static function X2AbilityTemplate LockNLoad()
{
	local X2AbilityTemplate		Template;
	local X2Effect_LockNLoad	Effect;
	
	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_LockNLoad');
	
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_LockNLoad";

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	Effect = new class'X2Effect_LockNLoad';
	Effect.EffectName = 'F_LockNLoad';
	Effect.DuplicateResponse = eDupe_Ignore;
	Effect.BuildPersistentEffect(1, true, false);
	Effect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage,,, Template.AbilitySourceName);
	Template.AddTargetEffect(Effect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;

	Template.bCrossClassEligible = default.LOCKNLOAD_AWC;
	
	Template.AdditionalAbilities.AddItem('F_LockNLoadActivator');

	return Template;
}

static function X2AbilityTemplate LockNLoadActivator()
{
	local X2AbilityTemplate Template;
	local X2Effect_Persistent LockNLoadActivatorEffect;

	// Activated ability that targets user
	Template = SelfTargetActivated('F_LockNLoadActivator', "img:///UILibrary_FavidsPerkPack.UIPerk_LockNLoad", false, none, class'UIUtilities_Tactical'.const.CLASS_CORPORAL_PRIORITY, eCost_Free);

	LockNLoadActivatorEffect = new class'X2Effect_Persistent';
	LockNLoadActivatorEffect.EffectName = 'F_LockNLoadActivator';
	LockNLoadActivatorEffect.BuildPersistentEffect(1, false, true, false, eGameRule_PlayerTurnBegin);
	LockNLoadActivatorEffect.VisualizationFn = EffectFlyOver_Visualization;
	LockNLoadActivatorEffect.SetDisplayInfo(ePerkBuff_Bonus, Template.LocFriendlyName, Template.LocLongDescription, Template.IconImage, true,,Template.AbilitySourceName);
	
	Template.AddTargetEffect(LockNLoadActivatorEffect);

	// Cannot be used while burning, etc.
	Template.AddShooterEffectExclusions();
	
	// Cooldown
	AddCooldown(Template, default.LOCKNLOAD_COOLDOWN);

	return Template;
}

// Salt In The Wound
// (AbilityName="F_SaltInTheWound", ApplyToWeaponSlot=eInvSlot_Unknown)
// All attacks deal increased damage to enemies that are Poisoned, Burning, or Acid Burning. Passive.
static function X2AbilityTemplate SaltInTheWound()
{
	local X2AbilityTemplate						Template;	
	local X2Effect_SaltInTheWound				DamageBonus;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_SaltInTheWound');
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_SaltInTheWound";
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.Hostility = eHostility_Neutral;
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.AbilityToHitCalc = default.DeadEye;
    Template.AbilityTargetStyle = default.SelfTarget;
	Template.bDisplayInUITooltip = true;
	Template.bDisplayInUITacticalText = true;
	Template.bCrossClassEligible = default.SALTINTHEWOUND_AWC;
	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);
	Template.bShowActivation = true;
	Template.bSkipFireAction = true;

	// Add damage bonus effect
	DamageBonus = new class'X2Effect_SaltInTheWound';
	DamageBonus.BonusDamage = default.SALTINTHEWOUND_DAMAGE_BONUS;
	DamageBonus.BuildPersistentEffect(1,true,false,false);
	DamageBonus.SetDisplayInfo (ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyHelpText(), Template.IconImage,,, Template.AbilitySourceName); 
	DamageBonus.EffectName='F_SaltInTheWound';
	Template.AddTargetEffect(DamageBonus);
	
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;  

	Return Template;
}

// The Bigger They Are
// (AbilityName="F_TheBiggerTheyAre", ApplyToWeaponSlot=eInvSlot_Unknown)
// Grants increased aim against targets that cannot take cover. Passive.
static function X2AbilityTemplate TheBiggerTheyAre()
{
	local X2AbilityTemplate Template;
	local XMBEffect_ConditionalBonus Effect;

	// Create a conditional bonus effect
	Effect = new class'XMBEffect_ConditionalBonus';

	// Add the aim bonus
	Effect.AddToHitModifier(default.THEBIGGERTHEYARE_AIM_BONUS);

	// Target must not be allowed to take cover (like MECs and Drones)
	Effect.AbilityTargetConditions.AddItem(default.CantTakeCoverCondition);
	
	// Create the template using a helper function
	Template = Passive('F_TheBiggerTheyAre', "img:///UILibrary_FavidsPerkPack.UIPerk_TheBiggerTheyAre", default.THEBIGGERTHEYARE_AWC, Effect, false);

	return Template;
}

// Mind Blast
// (AbilityName="F_MindBlast", ApplyToWeaponSlot=eInvSlot_SecondaryWeapon)
// Deal a small amount of damage based on secondary weapon tier and remove action points from the target for next turn. Cooldown-based.
// TODO Find way to not hard-code damage values in the translation file
static function X2AbilityTemplate MindBlast()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2Condition_UnitProperty          TargetProperty;
	local X2Effect_ApplyWeaponDamage        WeaponDamageEffect;
	local X2AbilityCooldown                 Cooldown;
	local X2Effect_Stunned					StunnedEffect;
	local X2Effect_ApplyWeaponDamage		RuptureEffect;
	local X2Condition_AbilityProperty		EmpoweredEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_MindBlast');

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_SQUADDIE_PRIORITY;

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.MINDBLAST_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	Template.AbilityToHitCalc = default.DeadEye;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AddShooterEffectExclusions();

	TargetProperty = new class'X2Condition_UnitProperty';
	TargetProperty.ExcludeRobotic = true;
	TargetProperty.FailOnNonUnits = true;
	Template.AbilityTargetConditions.AddItem(TargetProperty);
	Template.AbilityTargetConditions.AddItem(default.GameplayVisibilityCondition);

	WeaponDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	WeaponDamageEffect.bIgnoreBaseDamage = true;
	WeaponDamageEffect.DamageTag = 'F_MindBlast';
	WeaponDamageEffect.bBypassShields = true;
	WeaponDamageEffect.bIgnoreArmor = true;
	Template.AddTargetEffect(WeaponDamageEffect);

	StunnedEffect = class'X2StatusEffects'.static.CreateStunnedStatusEffect(default.MINDBLAST_STUN_ACTIONS, 100, false);
	StunnedEffect.bRemoveWhenSourceDies = false;
	Template.AddTargetEffect(StunnedEffect);

	//  Rupture effect if the caster has Schism
	RuptureEffect = new class'X2Effect_ApplyWeaponDamage';
	RuptureEffect.EffectDamageValue.Rupture = default.EMPOWEREDBLAST_RUPTURE;
	RuptureEffect.bIgnoreArmor = true;
	EmpoweredEffect = new class'X2Condition_AbilityProperty';
	EmpoweredEffect.OwnerHasSoldierAbilities.AddItem('F_EmpoweredBlast');
	RuptureEffect.TargetConditions.AddItem(EmpoweredEffect);
	Template.AddTargetEffect(RuptureEffect);

	Template.AbilityTargetStyle = default.SimpleSingleTarget;
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.Hostility = eHostility_Offensive;

	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_MindBlast";
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.AbilitySourceName = 'eAbilitySource_Psionic';
	Template.bShowActivation = false;
	Template.CustomFireAnim = 'HL_Psi_ProjectileMedium';

	Template.ActivationSpeech = 'Mindblast';

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.CinescriptCameraType = "Psionic_FireAtUnit";

	Template.bCrossClassEligible = default.MINDBLAST_AWC;

	return Template;
}

// Empowered Blast
// (AbilityName="F_EmpoweredBlast", ApplyToWeaponSlot=eInvSlot_Unknown)
// Mind Blast now applies Rupture to the target.
static function X2AbilityTemplate EmpoweredBlast()
{
	return Passive('F_EmpoweredBlast', "img:///UILibrary_FavidsPerkPack.UIPerk_EmpoweredBlast", default.EMPOWEREDBLAST_AWC, none);
}

// Strength in Numbers
// (AbilityName="F_StrengthInNumbers", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Gain aim for each ally you can see, up to a specified maximum. Passive.
static function X2AbilityTemplate StrengthInNumbers()
{
	local XMBEffect_ConditionalBonus Effect;
	local XMBValue_Visibility Value;
	 
	// Create a value that will count the number of visible units
	Value = new class'XMBValue_Visibility';

	// Only count ally units
	Value.bCountXcom = true;

	// Create a conditional bonus effect
	Effect = new class'XMBEffect_ConditionalBonus';

	// The effect adds Aim per enemy unit
	Effect.AddToHitModifier(default.STRENGTHINNUMBERS_AIM_BONUS, eHit_Success);

	// The effect scales with the number of visible enemy units, to a maximum of 5 (for +50 Dodge).
	Effect.ScaleValue = Value;
	Effect.ScaleMax = default.STRENGTHINNUMBERS_SCALE_MAX;
	
	// Effect only applies to matching weapon
	Effect.AbilityTargetConditions.AddItem(default.MatchingWeaponCondition);

	// Create the template using a helper function
	return Passive('F_StrengthInNumbers', "img:///UILibrary_FavidsPerkPack.UIPerk_StrengthInNumbers", default.STRENGTHINNUMBERS_AWC, Effect);
}

// Recharge
// (AbilityName="F_Recharge", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Killing an enemy with your primary weapon reduces the cooldown of all abilities. Passive.
static function X2AbilityTemplate Recharge()
{
	local X2AbilityTemplate Template;
	local X2Effect_ReduceCooldowns Effect;

	// Create an effect that reduces all cooldowns
	Effect = new class'X2Effect_ReduceCooldowns';
	Effect.Amount = default.RECHARGE_COOLDOWN_AMOUNT;
	Effect.ReduceAll = false;
	
	// Effect only applies to matching weapon
	Effect.TargetConditions.AddItem(default.MatchingWeaponCondition);

	// Create a triggered ability that activates whenever the unit gets a kill
	Template = SelfTargetTrigger('F_Recharge', "img:///UILibrary_FavidsPerkPack.UIPerk_Recharge", default.RECHARGE_AWC, Effect, 'KillMail');

	// Trigger abilities don't appear as passives. Add a passive ability icon.
	AddIconPassive(Template);

	return Template;
}

// Pierce The Veil
// (AbilityName="F_PierceTheVeil", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Activated ability that confers bonus aim, damage, and armor piercing to organic targets with your primary weapon, while increasing the cooldown of all of your other abilities. Cooldown-based.
static function X2AbilityTemplate PierceTheVeil()
{
	local XMBEffect_ConditionalBonus ShootingEffect;
	local X2AbilityTemplate Template;
	local X2Condition_UnitProperty				OrganicCondition;
	local X2Effect_IncreaseCooldowns CooldownEffect;
	local XMBCondition_AbilityName Condition;

	// Create a stat change effect that grants an aim bonus, damage bonus, and armor piercing bonus
	ShootingEffect = new class'XMBEffect_ConditionalBonus';
	ShootingEffect.EffectName = 'F_PierceTheVeilBonuses';
	ShootingEffect.AddToHitModifier(default.PIERCETHEVEIL_AIM_BONUS);
	ShootingEffect.AddDamageModifier(default.PIERCETHEVEIL_DAMAGE_BONUS);
	ShootingEffect.AddArmorPiercingModifier(default.PIERCETHEVEIL_ARMOR_PIERCING);

	// Only against organics 
	OrganicCondition = new class'X2Condition_UnitProperty';
	OrganicCondition.ExcludeRobotic = true;
	ShootingEffect.AbilityTargetConditions.AddItem(OrganicCondition);

	// Only with the associated weapon
	ShootingEffect.AbilityTargetConditions.AddItem(default.MatchingWeaponCondition);

	// Prevent the effect from applying to a unit more than once
	ShootingEffect.DuplicateResponse = eDupe_Refresh;

	// The effect lasts for one turn
	ShootingEffect.BuildPersistentEffect(default.PIERCETHEVEIL_DURATION, false, true, false, eGameRule_PlayerTurnBegin);
	
	// Add a visualization that plays a flyover over the target unit
	ShootingEffect.VisualizationFn = EffectFlyOver_Visualization;
	
	// Activated ability that targets user
	Template = SelfTargetActivated('F_PierceTheVeil', "img:///UILibrary_FavidsPerkPack.UIPerk_AmplifiedShot", default.PIERCETHEVEIL_AWC, ShootingEffect, class'UIUtilities_Tactical'.const.CLASS_COLONEL_PRIORITY, eCost_Free);
	
	// Cannot be used while burning, etc.
	Template.AddShooterEffectExclusions();

	// Cooldown
	AddCooldown(Template, default.PIERCETHEVEIL_COOLDOWN);

	// Now the effect to increase cooldowns
	CooldownEffect = new class'X2Effect_IncreaseCooldowns';
	CooldownEffect.Amount = default.PIERCETHEVEIL_INCREASE_COOLDOWN_AMOUNT;
	CooldownEffect.IncreaseAll = false;
	CooldownEffect.OnlyAlreadyOnCooldown = false;
	Template.AddTargetEffect(CooldownEffect);

	return Template;
}

// Ingite
// (AbilityName="F_Ingite", ApplyToWeaponSlot=eInvSlot_SecondaryWeapon)
// Light an organic enemy on fire. Cooldown-based.
static function X2AbilityTemplate Ignite()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2Condition_UnitProperty          TargetProperty;
	local X2Effect_ApplyWeaponDamage        WeaponDamageEffect;
	local X2AbilityCooldown                 Cooldown;
	local X2Effect_Burning					BurningEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_Ignite');

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_SQUADDIE_PRIORITY;

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.IGNITE_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	Template.AbilityToHitCalc = default.DeadEye;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AddShooterEffectExclusions();

	TargetProperty = new class'X2Condition_UnitProperty';
	TargetProperty.ExcludeRobotic = true;
	TargetProperty.FailOnNonUnits = true;
	Template.AbilityTargetConditions.AddItem(TargetProperty);
	Template.AbilityTargetConditions.AddItem(default.GameplayVisibilityCondition);

	BurningEffect = class'X2StatusEffects'.static.CreateBurningStatusEffect(2, 1);
	BurningEffect.bRemoveWhenSourceDies = false;
	Template.AddTargetEffect(BurningEffect);

	Template.AbilityTargetStyle = default.SimpleSingleTarget;
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);
	Template.Hostility = eHostility_Offensive;

	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_Ignite";
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.AbilitySourceName = 'eAbilitySource_Psionic';
	Template.bShowActivation = false;
	Template.CustomFireAnim = 'HL_Psi_ProjectileMedium';

	Template.ActivationSpeech = 'Mindblast';

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.CinescriptCameraType = "Psionic_FireAtUnit";

	Template.bCrossClassEligible = default.IGNITE_AWC;

	return Template;
}

// Natural Twenty
// (AbilityName="F_NaturalTwenty", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// While active, all shots that hit normally are automatically upgraded to critical hits. Cooldown-based.
static function X2AbilityTemplate NaturalTwenty()
{
	local X2Effect_NaturalTwenty Effect;
	local X2AbilityTemplate Template;

	// Create the effect to guarentee crits on successful shots
	Effect = new class'X2Effect_NaturalTwenty';

	// The effect lasts for one turn
	Effect.BuildPersistentEffect(1, false, true, false, eGameRule_PlayerTurnBegin);
	
	// Add a visualization that plays a flyover over the target unit
	Effect.VisualizationFn = EffectFlyOver_Visualization;
	
	// Activated ability that targets user
	Template = SelfTargetActivated('F_NaturalTwenty', "img:///UILibrary_FavidsPerkPack.UIPerk_command", default.NATURALTWENTY_AWC, Effect, class'UIUtilities_Tactical'.const.CLASS_COLONEL_PRIORITY, eCost_Free);
	
	// Add cooldown
	AddCooldown(Template, default.NATURALTWENTY_COOLDOWN);

	return Template;
}

static function X2AbilityTemplate ShootAnyone()
{
	local X2AbilityTemplate Template;
	local X2Condition_Visibility            VisibilityCondition;

	// Create a standard attack that doesn't cost an action.
	Template = Attack('F_ShootAnyone', "img:///UILibrary_FavidsPerkPack.UIPerk_FreeFire", false, none, class'UIUtilities_Tactical'.const.CLASS_COLONEL_PRIORITY, eCost_Free, 1);

	VisibilityCondition = new class'X2Condition_Visibility';
	VisibilityCondition.bRequireGameplayVisible = true;
	VisibilityCondition.bAllowSquadsight = true;

	Template.AbilityTargetConditions.Length = 0;
	Template.AbilityTargetConditions.AddItem(VisibilityCondition);
	Template.AbilityTargetConditions.AddItem(default.LivingTargetOnlyProperty);

	return Template;
}