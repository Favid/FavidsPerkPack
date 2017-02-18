class X2Condition_WantsReload extends X2Condition;

var bool PrimaryWantsReload;

event name CallAbilityMeetsCondition(XComGameState_Ability kAbility, XComGameState_BaseObject kTarget)
{
	local XComGameState_Unit UnitState;
	local XComGameState_Item PrimaryWeapon;

	if (PrimaryWantsReload)
	{
		UnitState = XComGameState_Unit(kTarget);
		PrimaryWeapon = UnitState.GetItemInSlot(eInvSlot_PrimaryWeapon);

		if (PrimaryWeapon.Ammo == PrimaryWeapon.GetClipSize())
		{
			return 'AA_AmmoAlreadyFull';
		}
	}

	return 'AA_Success';
}