class X2Condition_UnitHasNoPistol extends X2Condition;

event name CallMeetsCondition(XComGameState_BaseObject kTarget)
{
	local XComGameState_Unit UnitState;
	local X2WeaponTemplate WeaponTemplate;
	local array<XComGameState_Item> UtilityItems;
	local XComGameState_Item UtilityItem;
	
	UnitState = XComGameState_Unit(kTarget);
	if (UnitState == none)
	{
		return 'AA_NotAUnit';
	}
	
	UtilityItems = UnitState.GetAllItemsInSlot(eInvSlot_Utility);
	foreach UtilityItems(UtilityItem)
	{
		WeaponTemplate = X2WeaponTemplate(UtilityItem.GetMyTemplate());
		if(WeaponTemplate != none)
		{
			if(WeaponTemplate.WeaponCat == 'pistol')
			{
				return 'AA_WeaponIncompatible';
			}
		}
	}

	return 'AA_Success';
}