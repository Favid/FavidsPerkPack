class X2AbilityCost_Ammo_All extends X2AbilityCost_Ammo;

simulated function int CalcAmmoCost(XComGameState_Ability Ability, XComGameState_Item ItemState, XComGameState_BaseObject TargetState)
{
	return ItemState.Ammo;
}