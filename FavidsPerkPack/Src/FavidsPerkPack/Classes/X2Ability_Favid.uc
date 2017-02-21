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
var config int UNLOAD_DAMAGE_BONUS;
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
var config int SUBSONICROUND_CHARGES;
var config bool SUBSONICROUND_AWC;
var config int INTHEZONE_MAX_REFUNDS_PER_TURN;
var config bool INTHEZONE_AWC;
var config int VANISH_COOLDOWN;
var config bool VANISH_AWC;
var config float BURSTSHOT_DAMAGE_MULTIPLIER;
var config bool BURSTSHOT_AWC;
var config int FLUSH_COOLDOWN;
var config int FLUSH_AIM_BONUS;
var config bool FLUSH_AWC;
var config int LIVINGVIRUS_AIM_BONUS;
var config int LIVINGVIRUS_CRIT_BONUS;
var config int LIVINGVIRUS_DEFENSE_BONUS;
var config bool LIVINGVIRUS_AWC;
var config int SABOTROUND_ENV_DAMAGE;
var config int SABOTROUND_COOLDOWN;
var config int SABOTROUND_AMMO_COST;
var config int SABOTROUND_DAMAGE_BONUS_T1;
var config int SABOTROUND_DAMAGE_BONUS_T2;
var config int SABOTROUND_DAMAGE_BONUS_T3;
var config bool SABOTROUND_AWC;
var config bool DECOY_AWC;
var config int MAYHEM_DAMAGE_T1;
var config int MAYHEM_DAMAGE_T2;
var config int MAYHEM_DAMAGE_T3;
var config int MAYHEM_DAMAGE;
var config bool MAYHEM_AWC;
var config bool READYFORANYTHING_AWC;
var config int SPRINTER_MOBILITY;
var config int SPRINTER_DURATION;
var config int SPRINTER_COOLDOWN;
var config bool SPRINTER_AWC;
var config int FORESIGHT_CHARGES;
var config bool FORESIGHT_AWC;
var config int INGOODHEALTH_AIM_BONUS;
var config int INGOODHEALTH_DAMAGE_BONUS;
var config bool INGOODHEALTH_AWC;
var config int GENJI_CRITICAL_CHANCE;
var config bool GENJI_AWC;
var config int HONINGIN_AIM_BONUS;
var config int HONINGIN_CRIT_BONUS;
var config bool HONINGIN_AWC;
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
var config int AMPLIFIEDSHOT_CRIT_BONUS;
var config int AMPLIFIEDSHOT_DAMAGE_BONUS_T1;
var config int AMPLIFIEDSHOT_DAMAGE_BONUS_T2;
var config int AMPLIFIEDSHOT_DAMAGE_BONUS_T3;
var config bool AMPLIFIEDSHOT_AWC;
var config int IGNITE_COOLDOWN;
var config bool IGNITE_AWC;
var config int NATURALTWENTY_CRIT_BONUS;
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
	Templates.AddItem(Imposition());				// TODO finish
	Templates.AddItem(SnipersEye());
	Templates.AddItem(Unload());					// TODO finish
	Templates.AddItem(Unload2());
	Templates.AddItem(BattleVision());
	Templates.AddItem(Entrenched());
	Templates.AddItem(Maim());						// TODO rework
	Templates.AddItem(Fireworks());					// TODO rework
	Templates.AddItem(ExposeWeakness());
	Templates.AddItem(QuickFeet());
	Templates.AddItem(DisablingShot());
	Templates.AddItem(Resupply());
	Templates.AddItem(BulletTime());
	Templates.AddItem(Predator());
	Templates.AddItem(BulletProof());
	Templates.AddItem(ArmedToTheTeeth());
	Templates.AddItem(StandYourGround());			// Applies twice - verify
	Templates.AddItem(CutsThroughSteel());
	Templates.AddItem(SubsonicRound());				// TODO rework
	Templates.AddItem(InTheZone());
	Templates.AddItem(Vanish());
	Templates.AddItem(VanishTrigger());
	Templates.AddItem(PoweredShot());
	Templates.AddItem(PoweredShotBonuses());
	Templates.AddItem(Flush());
	Templates.AddItem(FlushDamage());
	Templates.AddItem(LivingVirus());
	Templates.AddItem(SabotRound());
	Templates.AddItem(SabotRoundDamage());
	Templates.AddItem(Decoy());
	Templates.AddItem(Mayhem());
	Templates.AddItem(ReadyForAnything());
	Templates.AddItem(Sprinter());
	Templates.AddItem(Foresight());
	Templates.AddItem(InGoodHealth());
	Templates.AddItem(RemoveInGoodHealth());
	Templates.AddItem(Genji());
	Templates.AddItem(HoningIn());
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
	Templates.AddItem(AmplifiedShot());				// TODO fix LW2 compatibility
	Templates.AddItem(Ignite());
	Templates.AddItem(NaturalTwenty());

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
// Fire a shot that shreds 2/4/6 armor based on weapon tier. Uses 2 ammo. 3 turn cooldown.
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
	Effect.AddShredModifier(default.CHIPAWAY_SHRED_CL , eHit_Success, 'coilgun_lw');
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
// Your grazing shots are automatically upgraded to normal hits.
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
// Grant a Covering Fire overwatch shot to an ally while also giving them the effects of Cool Under Pressure. Charge based.
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
// Firing at enemy with the unit's Primary Weapon lowers the target's Hit Chance until next turn.
static function X2AbilityTemplate Imposition()
{
	// Start with the passive template
	return Passive('F_Imposition', "img:///UILibrary_FavidsPerkPack.UIPerk_Imposition", default.IMPOSITION_AWC, none);
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
	
	Effect.SetDisplayInfo(ePerkBuff_Penalty, "Imposition", "This unit suffers -10 Aim until the beginning of the player's next turn.", "img:///UILibrary_FavidsPerkPack.UIPerk_Imposition", true);
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
// Fire with the unit's primary weapon until out of ammo or the target is dead.
static function X2AbilityTemplate Unload()
{
	local X2AbilityTemplate					Template;
	local X2AbilityCost_ActionPoints		AbilityActionPointCost;
	local X2AbilityCost_Ammo				AmmoCost;
	local X2AbilityToHitCalc_StandardAim    ToHitCalc;
	local X2AbilityCooldown                 Cooldown;
	local X2Effect_ApplyWeaponDamage        WeaponDamageEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_Unload');

	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_COLONEL_PRIORITY;
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_Unload";
	Template.AbilityConfirmSound = "TacticalUI_ActivateAbility";

	Template.TargetingMethod = class'X2TargetingMethod_OverTheShoulder';
	Template.bUsesFiringCamera = true;
	Template.CinescriptCameraType = "StandardGunFiring";	

	AbilityActionPointCost = new class'X2AbilityCost_ActionPoints';
	AbilityActionPointCost.iNumPoints = 1;
	AbilityActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(AbilityActionPointCost);

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.UNLOAD_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	//  require 2 ammo to be present so that at least two shots can be taken
	AmmoCost = new class'X2AbilityCost_Ammo';
	AmmoCost.iAmmo = 2;
	AmmoCost.bFreeCost = true;
	Template.AbilityCosts.AddItem(AmmoCost);
	//  actually charge 1 ammo for this shot. followup shot will charge the extra ammo.
	AmmoCost = new class'X2AbilityCost_Ammo';
	AmmoCost.iAmmo = 1;
	Template.AbilityCosts.AddItem(AmmoCost);
	
	ToHitCalc = new class'X2AbilityToHitCalc_StandardAim';
	ToHitCalc.BuiltInHitMod = default.UNLOAD_AIM_BONUS;
	ToHitCalc.bAllowCrit = default.UNLOAD_ALLOW_CRIT;
	Template.AbilityToHitCalc = ToHitCalc;
	Template.AbilityToHitOwnerOnMissCalc = ToHitCalc;
	
	Template.AbilityTargetStyle = default.SimpleSingleTarget;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AddShooterEffectExclusions();

	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);
	Template.AbilityTargetConditions.AddItem(default.GameplayVisibilityCondition);

	// Applies holo-targetting and other ammo effects
	Template.AddTargetEffect(class'X2Ability_GrenadierAbilitySet'.static.HoloTargetEffect());
	Template.AssociatedPassives.AddItem('HoloTargeting');
	Template.AddTargetEffect(class'X2Ability'.default.WeaponUpgradeMissDamage);
	Template.bAllowAmmoEffects = true;
	Template.bAllowBonusWeaponEffects = true;

	// Applies shredder and a damage bonus/malice
	WeaponDamageEffect = class'X2Ability_GrenadierAbilitySet'.static.ShredderDamageEffect();
	WeaponDamageEffect.EffectDamageValue.Damage = default.UNLOAD_DAMAGE_BONUS;
	Template.AddTargetEffect(WeaponDamageEffect);

	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;

	Template.AdditionalAbilities.AddItem('F_Unload2');
	Template.PostActivationEvents.AddItem('F_Unload2');
	Template.CinescriptCameraType = "StandardGunFiring";

	Template.bPreventsTargetTeleport = true;

	Template.bCrossClassEligible = default.UNLOAD_AWC;

	return Template;
}

static function X2AbilityTemplate Unload2()
{
	local X2AbilityTemplate					Template;
	local X2AbilityCost_Ammo				AmmoCost;
	local X2AbilityToHitCalc_StandardAim    ToHitCalc;
	local X2AbilityTrigger_EventListener    Trigger;
	local X2Effect_ApplyWeaponDamage		WeaponDamageEffect;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_Unload2');

	AmmoCost = new class'X2AbilityCost_Ammo';
	AmmoCost.iAmmo = 1;
	Template.AbilityCosts.AddItem(AmmoCost);

	ToHitCalc = new class'X2AbilityToHitCalc_StandardAim';
	ToHitCalc.BuiltInHitMod = default.UNLOAD_AIM_BONUS;
	ToHitCalc.bAllowCrit = default.UNLOAD_ALLOW_CRIT;
	Template.AbilityToHitCalc = ToHitCalc;
	Template.AbilityToHitOwnerOnMissCalc = ToHitCalc;

	Template.AbilityTargetStyle = default.SimpleSingleTarget;

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AddShooterEffectExclusions();

	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);

	Template.AddTargetEffect(class'X2Ability_GrenadierAbilitySet'.static.HoloTargetEffect());
	Template.AssociatedPassives.AddItem('HoloTargeting');
	Template.AddTargetEffect(class'X2Ability'.default.WeaponUpgradeMissDamage);
	Template.bAllowAmmoEffects = true;
	Template.bAllowBonusWeaponEffects = true;

	WeaponDamageEffect = class'X2Ability_GrenadierAbilitySet'.static.ShredderDamageEffect();
	WeaponDamageEffect.EffectDamageValue.Damage = default.UNLOAD_DAMAGE_BONUS;
	Template.AddTargetEffect(WeaponDamageEffect);

	Trigger = new class'X2AbilityTrigger_EventListener';
	Trigger.ListenerData.Deferral = ELD_OnStateSubmitted;
	Trigger.ListenerData.EventID = 'F_Unload2';
	Trigger.ListenerData.Filter = eFilter_Unit;
	Trigger.ListenerData.EventFn = class'XComGameState_Ability'.static.RapidFireListener;
	Template.AbilityTriggers.AddItem(Trigger);

	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_COLONEL_PRIORITY;
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_Unload";

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.BuildInterruptGameStateFn = TypicalAbility_BuildInterruptGameState;

	Template.PostActivationEvents.AddItem('F_Unload2');
	Template.bShowActivation = true;
	Template.CinescriptCameraType = "StandardGunFiring";

	return Template;
}

// Battle Vision
// (AbilityName="F_BattleVision", ApplyToWeaponSlot=eInvSlot_Unknown)
// Gain 3 aim for each enemy you can see, up to a maximum of 15 aim.
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

	// Create the template using a helper function
	return Passive('F_BattleVision', "img:///UILibrary_FavidsPerkPack.UIPerk_Confidence", default.BATTLEVISION_AWC, Effect);
}

// Entrenched
// (AbilityName="F_Entrenched", ApplyToWeaponSlot=eInvSlot_Unknown)
// Full cover provides additional defense.
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
// Fire a shot that immobilizes the target until the end of their next turn.
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
	Effect.BuildPersistentEffect(default.MAIM_DURATION, false, true, , eGameRule_PlayerTurnEnd);
	Effect.AddPersistentStatChange(eStat_Mobility, 0, MODOP_Multiplication);
	Effect.SetDisplayInfo(ePerkBuff_Penalty, Template.LocFriendlyName, Template.LocLongDescription, Template.IconImage, true, , Template.AbilitySourceName);
	Effect.VisualizationFn = EffectFlyOver_Visualization;
	Template.AddTargetEffect(Effect);

	return Template;
}

// Fireworks
// (AbilityName="F_Fireworks", ApplyToWeaponSlot=eInvSlot_SecondaryWeapon)
// Once per turn, free pistol shot on enemies that move within 4 tiles.
static function X2AbilityTemplate Fireworks()
{
	local X2AbilityTemplate Template;
	local X2AbilityToHitCalc_StandardAim ToHit;
	local X2Effect_ApplyWeaponDamage		WeaponDamageEffect;

	WeaponDamageEffect = new class'X2Effect_ApplyWeaponDamage';

	// Create the template using a helper function
	Template = Attack('F_Fireworks', "img:///UILibrary_FavidsPerkPack.UIPerk_Fireworks", false, WeaponDamageEffect, class'UIUtilities_Tactical'.const.CLASS_SERGEANT_PRIORITY, eCost_None);
	
	// Reaction fire shouldn't show up as an activatable ability, it should be a passive instead
	HidePerkIcon(Template);
	AddIconPassive(Template);

	// Set the shot to be considered reaction fire
	ToHit = new class'X2AbilityToHitCalc_StandardAim';
	ToHit.bReactionFire = true;
	Template.AbilityToHitCalc = ToHit;

	// Remove the default trigger of being activated by the player
	Template.AbilityTriggers.Length = 0;

	// Add a trigger that activates the ability on movement
	AddMovementTrigger(Template);

	// Restrict the shot to units within 4 tiles
	Template.AbilityTargetConditions.AddItem(TargetWithinTiles(4));

	// Since the attack has no cost, if we don't do anything else, it will be able to attack many
	// times per turn (until we run out of ammo). AddPerTargetCooldown uses an X2Effect_Persistent
	// that does nothing to mark our target unit, and a condition to prevent taking a second 
	// attack on a marked target in the same turn.
	AddPerTargetCooldown(Template, 1);

	return Template;
}

// Expose Weakness
// (AbilityName="F_ExposeWeakness", ApplyToWeaponSlot=eInvSlot_Unknown)
// Increases damage taken by the targetted unit for a few turns.
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
// Refunds one action point when you are revealed from concealment via your own action.
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
// Primary weapon shot that, if it hits, stuns the target. Cannot critically hit.
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
// Refill the ammo of all allies.
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
// Grants an ammo only utility slot.
static function X2AbilityTemplate ArmedToTheTeeth()
{
	// Create the template using a helper function - XcomGameData.ini sets this perk as unlocking the ammo pocket
	return Passive('F_ArmedToTheTeeth', "img:///UILibrary_FavidsPerkPack.UIPerk_ArmedToTheTeeth", default.ARMEDTOTHETEETH_AWC, none);
}

// Bullet Proof
// (AbilityName="F_BulletProof", ApplyToWeaponSlot=eInvSlot_Unknown)
// Grants a bonus to Shields and Armor
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
// Firing with more than one action point remaining confers an aim bonus.
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
// Sword attacks against robotic enemies shred armor and have increased Critical Chance.
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

// Subsonic Round
// (AbilityName="F_SubsonicRound", ApplyToWeaponSlot=eInvSlot_SecondaryWeapon)
// Fire a pistol shot that does not reveal the user.
static function X2AbilityTemplate SubsonicRound()
{
	local X2AbilityTemplate					Template;

	// Create the template using a helper function
	Template = Attack('F_SubsonicRound', "img:///UILibrary_FavidsPerkPack.UIPerk_SubsonicRound", default.SUBSONICROUND_AWC, none, class'UIUtilities_Tactical'.const.STANDARD_PISTOL_SHOT_PRIORITY, eCost_WeaponConsumeAll, 0);
	
	// Always remain concealed
	Template.ConcealmentRule = eConceal_Always;
	Template.bSilentAbility = true;

	// Charges
	AddCharges(Template, default.SUBSONICROUND_CHARGES);

	Template.OverrideAbilities.AddItem('PistolOverwatch');

	return Template;
}

// In The Zone
// (AbilityName="F_InTheZone", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Killing a flanked target refunds one Action Point.
static function X2AbilityTemplate InTheZone()
{
	local X2AbilityTemplate						Template;
	local X2Effect_InTheZone               InTheZoneEffect;

	// Icon Properties
	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_InTheZone');
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_InTheZone";

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;

	// Setup Passive
	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.bIsPassive = true;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	// Effect
	InTheZoneEffect = new class'X2Effect_InTheZone';
	InTheZoneEffect.EffectName = 'F_InTheZone';
	InTheZoneEffect.BuildPersistentEffect(1, true, false, false);
	InTheZoneEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.LocLongDescription, Template.IconImage, true,,Template.AbilitySourceName);
	InTheZoneEffect.MaxRefundsPerTurn = default.INTHEZONE_MAX_REFUNDS_PER_TURN;
	Template.AddTargetEffect(InTheZoneEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	//  NOTE: No visualization on purpose!

	Template.bCrossClassEligible = default.INTHEZONE_AWC;

	return Template;
}

// Vanish
// (AbilityName="F_Vanish", ApplyToWeaponSlot=eInvSlot_Unknown)
// Gain concealment when out of enemy view. 2 turn cooldown. Passive.
static function X2AbilityTemplate Vanish()
{
	local X2AbilityTemplate						Template;
	Template = PurePassive('F_Vanish', "img:///UILibrary_FavidsPerkPack.UIPerk_Vanish", true);
	Template.AdditionalAbilities.AddItem('ShadowOps_VanishTrigger');

	return Template;
}

static function X2AbilityTemplate VanishTrigger()
{
	local X2AbilityTemplate						Template;
	local X2Effect_RangerStealth                StealthEffect;
	local X2Condition_NotVisibleToEnemies		VisibilityCondition;
	local X2AbilityTrigger_EventListener		EventListener;
	local X2AbilityCooldown						Cooldown;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'ShadowOps_VanishTrigger');

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_Vanish";

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.VANISH_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	EventListener = new class'X2AbilityTrigger_EventListener';
	EventListener.ListenerData.Deferral = ELD_OnStateSubmitted;
	EventListener.ListenerData.EventID = 'PlayerTurnBegun';
	EventListener.ListenerData.EventFn = class'XComGameState_Ability'.static.AbilityTriggerEventListener_Self;
	EventListener.ListenerData.Filter = eFilter_Player;
	Template.AbilityTriggers.AddItem(EventListener);

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AbilityShooterConditions.AddItem(new class'X2Condition_Stealth');

	VisibilityCondition = new class'X2Condition_NotVisibleToEnemies';
	Template.AbilityShooterConditions.AddItem(VisibilityCondition);

	StealthEffect = new class'X2Effect_RangerStealth';
	StealthEffect.BuildPersistentEffect(1, true, true, false, eGameRule_PlayerTurnEnd);
	StealthEffect.SetDisplayInfo(ePerkBuff_Bonus, Template.LocFriendlyName, Template.GetMyHelpText(), Template.IconImage, true);
	StealthEffect.bRemoveWhenTargetConcealmentBroken = true;
	Template.AddTargetEffect(StealthEffect);

	Template.AddTargetEffect(class'X2Effect_Spotted'.static.CreateUnspottedEffect());

	Template.ActivationSpeech = 'ActivateConcealment';
	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;
	Template.bSkipFireAction = true;

	Template.bCrossClassEligible = default.VANISH_AWC;

	return Template;
}

// Burst Shot
// (AbilityName="F_PoweredShot", ApplyToWeaponSlot=eInvSlot_SecondaryWeapon)
// Fire a pistol shot that is more damaging than a regular shot, but has less range.
static function X2AbilityTemplate PoweredShot()
{
	local X2AbilityTemplate					Template;
	local X2Effect_ApplyWeaponDamage		WeaponDamageEffect;

	// Damage Effect
	WeaponDamageEffect = new class'X2Effect_ApplyWeaponDamage';
	
	// Create the template using a helper function
	Template = Attack('F_PoweredShot', "img:///UILibrary_FavidsPerkPack.UIPerk_PoweredShot", default.BURSTSHOT_AWC, WeaponDamageEffect, class'UIUtilities_Tactical'.const.STANDARD_PISTOL_SHOT_PRIORITY, eCost_WeaponConsumeAll, 0);
	
	AddSecondaryAbility(Template, PoweredShotBonuses());
	
	Template.OverrideAbilities.AddItem('PistolOverwatch');

	return Template;
}

static function X2AbilityTemplate PoweredShotBonuses()
{
	local X2AbilityTemplate Template;
	local X2Effect_BurstShot Effect;

	// Create a bonus effect
	Effect = new class'X2Effect_BurstShot';
	Effect.EffectName = 'PoweredShotBonuses';
	Effect.DamageMultiplier = default.BURSTSHOT_DAMAGE_MULTIPLIER;

	// Create the template using a helper function
	Template = Passive('F_PoweredShotBonuses', "img:///UILibrary_FavidsPerkPack.UIPerk_PoweredShot", false, Effect);

	// The Power Shot ability will show up as an active ability, so hide the icon for the passive damage effect
	HidePerkIcon(Template);

	return Template;
}

// Flush
// (AbilityName="F_Flush", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Fire a shot with an increased chance to hit but decreased damage that forces the target to move to new cover.
static function X2AbilityTemplate Flush()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityCooldown                 Cooldown;
	local X2AbilityToHitCalc_StandardAim    ToHitCalc;
	local X2AbilityCost_Ammo                AmmoCost;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2Effect_RunBehaviorTree			FlushEffect;
	local X2Effect_GrantActionPoints		Flushable;
	local X2Condition_Visibility            VisibilityCondition;

	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_Flush');

	Template.AdditionalAbilities.AddItem('GunnerFlushDamage');

	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_Flush";
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_AlwaysShow;
	Template.Hostility = eHostility_Offensive;
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_SERGEANT_PRIORITY;
	Template.AbilityConfirmSound = "TacticalUI_ActivateAbility";

	Template.TargetingMethod = class'X2TargetingMethod_OverTheShoulder';
	Template.bUsesFiringCamera = true;
	Template.CinescriptCameraType = "StandardGunFiring";

	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.FLUSH_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	ToHitCalc = new class'X2AbilityToHitCalc_StandardAim';
	ToHitCalc.BuiltInHitMod = default.FLUSH_AIM_BONUS;
	ToHitCalc.bAllowCrit = false;
	Template.AbilityToHitCalc = ToHitCalc;

	AmmoCost = new class'X2AbilityCost_Ammo';
	AmmoCost.iAmmo = 2;
	Template.AbilityCosts.AddItem(AmmoCost);

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 0;
	ActionPointCost.bConsumeAllPoints = true;
	ActionPointCost.bAddWeaponTypicalCost = true;
	Template.AbilityCosts.AddItem(ActionPointCost);

	Template.AbilityTargetStyle = default.SimpleSingleTarget;
	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AddShooterEffectExclusions();

	Template.AbilityTargetConditions.AddItem(default.LivingHostileTargetProperty);

	VisibilityCondition = new class'X2Condition_Visibility';
	VisibilityCondition.bRequireGameplayVisible = true;
	VisibilityCondition.bAllowSquadsight = true;

	Template.AbilityTargetConditions.AddItem(VisibilityCondition);

	//  Put holo target effect first because if the target dies from this shot, it will be too late to notify the effect.
	Template.AddTargetEffect(class'X2Ability_GrenadierAbilitySet'.static.HoloTargetEffect());

	Flushable = new class'X2Effect_GrantActionPoints';
	Flushable.NumActionPoints = 1;
	Flushable.PointType = class'X2CharacterTemplateManager'.default.MoveActionPoint;
	Flushable.SetupEffectOnShotContextResult(true, true);
	Template.AddTargetEffect(Flushable);


	FlushEffect = new class'X2Effect_RunBehaviorTree';
	FlushEffect.BehaviorTreeName = 'Flush-Root';
	FlushEffect.SetupEffectOnShotContextResult(true, true);
	Template.AddTargetEffect(FlushEffect);

	Template.AddTargetEffect(class'X2Ability_GrenadierAbilitySet'.static.ShredderDamageEffect());
	Template.AddTargetEffect(default.WeaponUpgradeMissDamage);

	Template.bAllowAmmoEffects = true;

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;

	Template.bCrossClassEligible = default.FLUSH_AWC;

	return Template;
}

static function X2AbilityTemplate FlushDamage()
{
	local X2AbilityTemplate						Template;
	local X2Effect_AbilityDamageMod             DamageEffect;

	// Icon Properties
	`CREATE_X2ABILITY_TEMPLATE(Template, 'GunnerFlushDamage');
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_Flush";

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	DamageEffect = new class'X2Effect_AbilityDamageMod';
	DamageEffect.BuildPersistentEffect(1, true, false, false);
	DamageEffect.DamageMultiplier = -0.5f;
	DamageEffect.AbilityName = 'F_Flush';
	DamageEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false,,Template.AbilitySourceName);
	Template.AddTargetEffect(DamageEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	//  NOTE: No visualization on purpose!

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

// Sabot Round
// (AbilityName="F_SabotRound", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Fire a shot that penetrates obstacles and damages enemies in a line.
static function X2AbilityTemplate SabotRound()
{
	local X2AbilityTemplate                 Template;
	local X2AbilityCooldown                 Cooldown;
	local X2AbilityTarget_Cursor            CursorTarget;
	local X2AbilityToHitCalc_StandardAim    ToHitCalc;
	local X2Condition_UnitProperty          UnitPropertyCondition;
	local X2AbilityCost_Ammo                AmmoCost;
	local X2AbilityCost_ActionPoints        ActionPointCost;
	local X2Effect_ApplyWeaponDamage		ShredderDamageEffect;
	
	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_SabotRound');
	
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_SabotRound";
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_HideSpecificErrors;
	Template.HideErrors.AddItem('AA_CannotAfford_ActionPoints');
	Template.Hostility = eHostility_Offensive;
	Template.ShotHUDPriority = class'UIUtilities_Tactical'.const.CLASS_COLONEL_PRIORITY;
	Template.AbilityConfirmSound = "TacticalUI_ActivateAbility";

	Template.TargetingMethod = class'X2TargetingMethod_SabotRound';
	Template.bUsesFiringCamera = true;
	Template.CinescriptCameraType = "StandardGunFiring";
	
	Template.AbilityMultiTargetStyle = new class'X2AbilityMultiTargetStyle_SabotRound';
	
	Cooldown = new class'X2AbilityCooldown';
	Cooldown.iNumTurns = default.SABOTROUND_COOLDOWN;
	Template.AbilityCooldown = Cooldown;

	ToHitCalc = new class'X2AbilityToHitCalc_StandardAim';
	ToHitCalc.bMultiTargetOnly = true;
	Template.AbilityToHitCalc = ToHitCalc;

	AmmoCost = new class'X2AbilityCost_Ammo';
	AmmoCost.iAmmo = default.SABOTROUND_AMMO_COST;
	Template.AbilityCosts.AddItem(AmmoCost);

	ActionPointCost = new class'X2AbilityCost_ActionPoints';
	ActionPointCost.iNumPoints = 2;
	ActionPointCost.bConsumeAllPoints = true;
	Template.AbilityCosts.AddItem(ActionPointCost);
	
	CursorTarget = new class'X2AbilityTarget_Cursor';
	CursorTarget.bRestrictToWeaponRange = true;
	Template.AbilityTargetStyle = CursorTarget;

	Template.AbilityTriggers.AddItem(default.PlayerInputTrigger);

	Template.AbilityShooterConditions.AddItem(default.LivingShooterProperty);
	Template.AddShooterEffectExclusions();
	
	UnitPropertyCondition = new class'X2Condition_UnitProperty';
	UnitPropertyCondition.ExcludeFriendlyToSource = false;
	UnitPropertyCondition.ExcludeDead = true;
	Template.AbilityMultiTargetConditions.AddItem(UnitPropertyCondition);

	//  Put holo target effect first because if the target dies from this shot, it will be too late to notify the effect.
	Template.AddTargetEffect(class'X2Ability_GrenadierAbilitySet'.static.HoloTargetEffect());
	Template.AddMultiTargetEffect(class'X2Ability_GrenadierAbilitySet'.static.HoloTargetEffect());
	ShredderDamageEffect = class'X2Ability_GrenadierAbilitySet'.static.ShredderDamageEffect();
	ShredderDamageEffect.EnvironmentalDamageAmount = default.SABOTROUND_ENV_DAMAGE;
	Template.AddTargetEffect(ShredderDamageEffect);
	Template.AddMultiTargetEffect(ShredderDamageEffect);

	Template.bAllowAmmoEffects = true;

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	Template.BuildVisualizationFn = TypicalAbility_BuildVisualization;

	Template.AdditionalAbilities.AddItem('SabotRoundDamage');

	Template.bCrossClassEligible = default.SABOTROUND_AWC;
	
	return Template;
}

static function X2AbilityTemplate SabotRoundDamage()
{
	local X2AbilityTemplate							Template;
	local X2Effect_SabotRoundDamage		DamageEffect;

	// Icon Properties
	`CREATE_X2ABILITY_TEMPLATE(Template, 'SabotRoundDamage');
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_SabotRound";

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	DamageEffect = new class'X2Effect_SabotRoundDamage';
	DamageEffect.EffectName = 'Lucu_Sniper_SabotRoundDamage';
	DamageEffect.BuildPersistentEffect(1, true, false, false);
	DamageEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage, false,,Template.AbilitySourceName);
	DamageEffect.DuplicateResponse = eDupe_Ignore;
	Template.AddTargetEffect(DamageEffect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	//  NOTE: No visualization on purpose!

	return Template;
}

// Decoy
// (AbilityName="F_Decoy", ApplyToWeaponSlot=eInvSlot_Unknown)
// Grants a free Mimic Beacon.
static function X2AbilityTemplate Decoy()
{
	local X2AbilityTemplate Template;
	local XMBEffect_AddUtilityItem ItemEffect;

	ItemEffect = new class 'XMBEffect_AddUtilityItem';
	ItemEffect.DataName = 'MimicBeacon';

	// Create the template using a helper function
	Template = Passive('F_Decoy', "img:///UILibrary_PerkIcons.UIPerk_item_mimicbeacon", default.DECOY_AWC, ItemEffect, false);

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

// Ready For Anything
// (AbilityName="F_ReadyForAnything", ApplyToWeaponSlot=eInvSlot_Unknown)
// If the unit does not move this turn, then it automatically enters overwatch at the end of its turn.
static function X2AbilityTemplate ReadyForAnything()
{
	local X2AbilityTemplate								Template;
	local X2Effect_ReadyForAnything	Effect;
	
	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_ReadyForAnything');
	
	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = eAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_ReadyForAnything";

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	Effect = new class'X2Effect_ReadyForAnything';
	Effect.EffectName = 'F_ReadyForAnything';
	Effect.DuplicateResponse = eDupe_Ignore;
	Effect.BuildPersistentEffect(1, true, false);
	Effect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.GetMyLongDescription(), Template.IconImage,,, Template.AbilitySourceName);
	Template.AddTargetEffect(Effect);

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	//  NOTE: No visualization on purpose!

	Template.bCrossClassEligible = default.READYFORANYTHING_AWC;

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

// Foresight
// (AbilityName="F_Foresight", ApplyToWeaponSlot=eInvSlot_Unknown)
// Grants two free Battle Scanners
static function X2AbilityTemplate Foresight()
{
	local X2AbilityTemplate Template;
	local XMBEffect_AddUtilityItem ItemEffect;

	ItemEffect = new class 'XMBEffect_AddUtilityItem';
	ItemEffect.DataName = 'BattleScanner';
	ItemEffect.BaseCharges = default.FORESIGHT_CHARGES;

	// Create the template using a helper function
	Template = Passive('F_Foresight', "img:///UILibrary_FavidsPerkPack.UIPerk_Foresight", default.FORESIGHT_AWC, ItemEffect, false);

	return Template;
}

// In Good Health
// (AbilityName="F_InGoodHealth", ApplyToWeaponSlot=eInvSlot_Unknown)
// Grants increased aim and damage while this unit is at full health. The bonus is removed when the unit takes damage the first time during a mission.
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
	//DamageBonus.SetDisplayInfo (ePerkBuff_Bonus,Template.LocFriendlyName, Template.GetMyHelpText(), Template.IconImage,,, Template.AbilitySourceName); 
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
// Swords have increased critical chance.
static function X2AbilityTemplate Genji()
{
	local X2AbilityTemplate						Template;
	local X2Effect_ToHitModifier                CritChanceModEffect;

	// Icon Properties
	`CREATE_X2ABILITY_TEMPLATE(Template, 'F_Genji');
	Template.IconImage = "img:///UILibrary_FavidsPerkPack.UIPerk_Genji";

	Template.AbilitySourceName = 'eAbilitySource_Perk';
	Template.eAbilityIconBehaviorHUD = EAbilityIconBehavior_NeverShow;
	Template.Hostility = eHostility_Neutral;

	Template.AbilityToHitCalc = default.DeadEye;
	Template.AbilityTargetStyle = default.SelfTarget;
	Template.AbilityTriggers.AddItem(default.UnitPostBeginPlayTrigger);

	CritChanceModEffect = new class'X2Effect_ToHitModifier';
	CritChanceModEffect.AddEffectHitModifier(eHit_Crit, default.GENJI_CRITICAL_CHANCE, Template.LocFriendlyName, , true, false, true, true);
	CritChanceModEffect.BuildPersistentEffect(1, true, false, false);
	CritChanceModEffect.SetDisplayInfo(ePerkBuff_Passive, Template.LocFriendlyName, Template.LocLongDescription, Template.IconImage, true,,Template.AbilitySourceName);
	CritChanceModEffect.EffectName = 'F_GenjiCritChance';
	Template.AddTargetEffect(CritChanceModEffect);

	Template.bCrossClassEligible = default.GENJI_AWC;

	Template.BuildNewGameStateFn = TypicalAbility_BuildGameState;
	//  NOTE: No visualization on purpose!

	return Template;
}

// Honing In
// (AbilityName="F_HoningIn", ApplyToWeaponSlot=eInvSlot_Unknown)
// Grants increased critical chance if you haven't moved this turn
static function X2AbilityTemplate HoningIn()
{
	local X2AbilityTemplate Template;
	local XMBEffect_ConditionalBonus OffenseEffect;
	local X2Condition_UnitValue Condition;

	// Create a conditional bonus effect
	OffenseEffect = new class'XMBEffect_ConditionalBonus';

	// Add the aim and crit bonuses
	OffenseEffect.AddToHitModifier(default.HONINGIN_AIM_BONUS, eHit_Success);
	OffenseEffect.AddToHitModifier(default.HONINGIN_CRIT_BONUS, eHit_Crit);

	// Only if you haven't moved this turn
	Condition = new class'X2Condition_UnitValue';
	Condition.AddCheckValue('MovesThisTurn', 0, eCheck_Exact);
	OffenseEffect.AbilityShooterConditions.AddItem(Condition);
	
	// Create the template using a helper function
	Template = Passive('F_HoningIn', "img:///UILibrary_FavidsPerkPack.UIPerk_HoningIn", default.HONINGIN_AWC, OffenseEffect, true, true);

	return Template;
}

// Momentum
// (AbilityName="F_Momentum", ApplyToWeaponSlot=eInvSlot_Unknown)
// Grants increased aim and damage if you have moved this turn
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
	
	// Create the template using a helper function
	Template = Passive('F_Momentum', "img:///UILibrary_FavidsPerkPack.UIPerk_Momentum", default.MOMENTUM_AWC, OffenseEffect, true, true);

	return Template;
}

// Slash and Dash
// (AbilityName="F_SlashAndDash", ApplyToWeaponSlot=eInvSlot_Unknown)
// Free action. After your next sword attack this turn, gain a free move. 3 turn cooldown.
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
// If you get at least one kill during your turn, automatically hunker down at the end of it.
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
// Activated ability that does not cost an action point. Until the beginning of next turn, your ammo will be refunded after each shot you take.
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
// All attacks deal increased damage to enemies that are Poisoned, Burning, or Acid Burning
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
// Grants increased aim against targets that cannot take cover.
static function X2AbilityTemplate TheBiggerTheyAre()
{
	local X2AbilityTemplate Template;
	local XMBEffect_ConditionalBonus Effect;

	// Create a conditional bonus effect
	Effect = new class'XMBEffect_ConditionalBonus';

	// Add the aim bonus
	Effect.AddToHitModifier(default.THEBIGGERTHEYARE_AIM_BONUS);

	// Target must be in full cover
	Effect.AbilityTargetConditions.AddItem(default.CantTakeCoverCondition);
	
	// Create the template using a helper function
	Template = Passive('F_TheBiggerTheyAre', "img:///UILibrary_FavidsPerkPack.UIPerk_TheBiggerTheyAre", default.THEBIGGERTHEYARE_AWC, Effect, false);

	return Template;
}

// Mind Blast
// (AbilityName="F_MindBlast", ApplyToWeaponSlot=eInvSlot_SecondaryWeapon)
// Deal 1/2/3 damage based on secondary weapon tier and remove one Action Point from the target for next turn. 3 turn cooldown.
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
// Gain 3 aim for each ally you can see, up to a maximum of 15 aim.
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
// Killing an enemy with your primary weapon reduces the cooldown of all abilities by 1 turn.
static function X2AbilityTemplate Recharge()
{
	local X2AbilityTemplate Template;
	local X2Effect_ReduceCooldowns Effect;

	// Create an effect that reduces all cooldowns
	Effect = new class'X2Effect_ReduceCooldowns';
	Effect.Amount = default.RECHARGE_COOLDOWN_AMOUNT;
	Effect.ReduceAll = false;
	
	// Effect only applies to matching weapon
	//Effect.AbilityTargetConditions.AddItem(default.MatchingWeaponCondition);
	Effect.TargetConditions.AddItem(default.MatchingWeaponCondition);

	// Create a triggered ability that activates whenever the unit gets a kill
	Template = SelfTargetTrigger('F_Recharge', "img:///UILibrary_FavidsPerkPack.UIPerk_Recharge", default.RECHARGE_AWC, Effect, 'KillMail');

	// Trigger abilities don't appear as passives. Add a passive ability icon.
	AddIconPassive(Template);

	return Template;
}

// Amplified Shot
// (AbilityName="F_AmplifiedShot", ApplyToWeaponSlot=eInvSlot_PrimaryWeapon)
// Fire a shot with +30 crit and +1/2/3 damage based on weapon tier. Increases cooldown of all other abilities by 1
static function X2AbilityTemplate AmplifiedShot()
{
	local X2AbilityTemplate Template;

	// Create the template using a helper function
	Template = Attack('F_AmplifiedShot', "img:///UILibrary_FavidsPerkPack.UIPerk_AmplifiedShot", default.AMPLIFIEDSHOT_AWC, none, class'UIUtilities_Tactical'.const.CLASS_SERGEANT_PRIORITY, eCost_WeaponConsumeAll, 1);

	// Add a secondary ability to provide bonuses on the shot
	AddSecondaryAbility(Template, AmplifiedShotBonuses());
	AddSecondaryAbility(Template, AmplifiedShotCooldown());
	
	return Template;
}

// This portion of the Amplified Shot causes crashes with LW2
static function X2AbilityTemplate AmplifiedShotCooldown()
{
	local X2AbilityTemplate Template;
	local X2Effect_IncreaseCooldowns Effect;
	local XMBCondition_AbilityName Condition;
	
	// Create an effect that increases all cooldowns
	Effect = new class'X2Effect_IncreaseCooldowns';
	Effect.Amount = 1;
	Effect.IncreaseAll = false;
	
	// The bonus only applies to the Power Shot ability
	Condition = new class'XMBCondition_AbilityName';
	Condition.IncludeAbilityNames.AddItem('F_AmplifiedShot');
	Effect.TargetConditions.AddItem(Condition);

	// Create the template using a helper function
	Template = SelfTargetTrigger('F_AmplifiedShotCooldown', "img:///UILibrary_FavidsPerkPack.UIPerk_AmplifiedShot", false, Effect, 'AbilityActivated');
	
	// ... but only for reaction fire abilities.
	//AddTriggerTargetCondition(Template, Condition);

	return Template;
}

static function X2AbilityTemplate AmplifiedShotBonuses()
{
	local X2AbilityTemplate Template;
	local XMBEffect_ConditionalBonus Effect;
	local XMBCondition_AbilityName Condition;

	// Create a conditional bonus effect
	Effect = new class'XMBEffect_ConditionalBonus';
	Effect.EffectName = 'F_AmplifiedShotBonuses';

	// The bonus adds +20 Crit chance
	Effect.AddToHitModifier(default.AMPLIFIEDSHOT_CRIT_BONUS, eHit_Crit);

	// The bonus adds +3/4/5 damage on hit dependent on tech level
	Effect.AddDamageModifier(default.AMPLIFIEDSHOT_DAMAGE_BONUS_T1, eHit_Success, 'conventional');
	Effect.AddDamageModifier(default.AMPLIFIEDSHOT_DAMAGE_BONUS_T2, eHit_Success, 'magnetic');
	Effect.AddDamageModifier(default.AMPLIFIEDSHOT_DAMAGE_BONUS_T3, eHit_Success, 'beam');

	// The bonus only applies to the Power Shot ability
	Condition = new class'XMBCondition_AbilityName';
	Condition.IncludeAbilityNames.AddItem('F_AmplifiedShot');
	Effect.AbilityTargetConditions.AddItem(Condition);

	// Create the template using a helper function
	Template = Passive('F_AmplifiedShotBonuses', "img:///UILibrary_FavidsPerkPack.UIPerk_AmplifiedShot", false, Effect);

	// The Power Shot ability will show up as an active ability, so hide the icon for the passive damage effect
	HidePerkIcon(Template);

	return Template;
}

// Ingite
// (AbilityName="F_Ingite", ApplyToWeaponSlot=eInvSlot_SecondaryWeapon)
// Light an organic enemy on fire. 4 turn cooldown.
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
// Fire a shot that is guarenteed to critical if it hits. Cooldown.
static function X2AbilityTemplate NaturalTwenty()
{
	local X2AbilityTemplate Template;

	// Create the template using a helper function
	Template = Attack('F_NaturalTwenty', "img:///UILibrary_PerkIcons.UIPerk_command", default.NATURALTWENTY_AWC, none, class'UIUtilities_Tactical'.const.CLASS_SERGEANT_PRIORITY, eCost_WeaponConsumeAll, 1);

	// Add cooldown
	AddCooldown(Template, default.NATURALTWENTY_COOLDOWN);

	// Add a secondary ability to provide bonuses on the shot
	AddSecondaryAbility(Template, NaturalTwentyBonuses());
	
	return Template;
}

static function X2AbilityTemplate NaturalTwentyBonuses()
{
	local X2AbilityTemplate Template;
	local XMBEffect_ConditionalBonus Effect;
	local XMBCondition_AbilityName Condition;

	// Create a conditional bonus effect
	Effect = new class'XMBEffect_ConditionalBonus';
	Effect.EffectName = 'F_NaturalTwentyBonuses';

	// The bonus adds +200 Crit chance by default. Should be enough to guarentee crits.
	Effect.AddToHitModifier(default.NATURALTWENTY_CRIT_BONUS, eHit_Crit);

	// The bonus only applies to the Natural Twenty ability
	Condition = new class'XMBCondition_AbilityName';
	Condition.IncludeAbilityNames.AddItem('F_NaturalTwenty');
	Effect.AbilityTargetConditions.AddItem(Condition);

	// Create the template using a helper function
	Template = Passive('F_NaturalTwentyBonuses', "img:///UILibrary_PerkIcons.UIPerk_command", false, Effect);

	// The Power Shot ability will show up as an active ability, so hide the icon for the passive damage effect
	HidePerkIcon(Template);

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