class X2Effect_InGoodHealthDamage extends X2Effect_Persistent;

var int BonusDamage;

function int GetAttackingDamageModifier(XComGameState_Effect EffectState, XComGameState_Unit Attacker, Damageable TargetDamageable, XComGameState_Ability AbilityState, const out EffectAppliedData AppliedData, const int CurrentDamage, optional XComGameState NewGameState)
{
	local XComGameState_Item SourceWeapon;
	
	SourceWeapon = AbilityState.GetSourceWeapon();

	if (SourceWeapon != none)
	{
		if (SourceWeapon.InventorySlot == eInvSlot_PrimaryWeapon || SourceWeapon.InventorySlot == eInvSlot_SecondaryWeapon)
		{
			return BonusDamage;
		}
	}

	return 0;
}

DefaultProperties
{
	DuplicateResponse = eDupe_Ignore
}