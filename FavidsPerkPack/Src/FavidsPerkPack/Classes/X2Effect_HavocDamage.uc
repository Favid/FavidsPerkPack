class X2Effect_HavocDamage extends X2Effect_Shredder;

var name RequiredAbility;

simulated protected function OnEffectAdded(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState, XComGameState_Effect NewEffectState)
{
	local XComGameState_Unit SourceUnit;
	local XComGameStateHistory History;

	History = `XCOMHISTORY;
	SourceUnit = XComGameState_Unit(History.GetGameStateForObjectID(ApplyEffectParameters.SourceStateObjectRef.ObjectID));
	
	logIfDebugEnabled("HD: SourceUnitHasRequiredAbility: " $ string(SourceUnit.HasSoldierAbility(RequiredAbility)));

	if (SourceUnit.HasSoldierAbility(RequiredAbility))
	{
		super.OnEffectAdded(ApplyEffectParameters, kNewTargetState, NewGameState, NewEffectState);
	}
}

static function logIfDebugEnabled(string message)
{
	if(class'X2Ability_Favid'.default.FAVID_DEBUG_LOGGING)
	{
		`LOG(message);
	}
}

defaultproperties
{
	bIgnoreBaseDamage=true;
	bAllowFreeKill=false;
	bAllowWeaponUpgrade=false;
	RequiredAbility="F_Havoc";
}