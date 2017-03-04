class X2Effect_MayhemDamage extends X2Effect_Shredder;

var name RequiredAbility;

simulated protected function OnEffectAdded(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState, XComGameState_Effect NewEffectState)
{
	local XComGameState_Unit SourceUnit;
	local XComGameStateHistory History;

	History = `XCOMHISTORY;
	SourceUnit = XComGameState_Unit(History.GetGameStateForObjectID(ApplyEffectParameters.SourceStateObjectRef.ObjectID));
	
	if (SourceUnit.HasSoldierAbility(RequiredAbility))
	{
		super.OnEffectAdded(ApplyEffectParameters, kNewTargetState, NewGameState, NewEffectState);
	}
}

defaultproperties
{
	bIgnoreBaseDamage=false;
	bAllowFreeKill=false;
	bAllowWeaponUpgrade=false;
	RequiredAbility="F_Havoc";
}