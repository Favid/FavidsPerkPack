class X2Effect_LockNLoad extends X2Effect_Persistent;

function RegisterForEvents(XComGameState_Effect EffectGameState)
{
	local X2EventManager EventMgr;
	local XComGameState_Unit UnitState;
	local Object EffectObj;

	EventMgr = `XEVENTMGR;

	EffectObj = EffectGameState;
	UnitState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(EffectGameState.ApplyEffectParameters.SourceStateObjectRef.ObjectID));

	EventMgr.RegisterForEvent(EffectObj, 'LockNLoad', EffectGameState.TriggerAbilityFlyover, ELD_OnStateSubmitted, , UnitState);
}

simulated protected function OnEffectAdded(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState, XComGameState_Effect NewEffectState)
{
	local XComGameState_Unit TargetUnit;
	local XComGameState_Player PlayerState;
	local XComGameState_Effect_LockNLoad LockNLoadEffectState;
	local X2EventManager EventMgr;
	local Object ListenerObj;

	`LOG("LOCKNLOAD: OnEffectAdded start");

	if (GetLockNLoadComponent(NewEffectState) == none)
	{
		TargetUnit = XComGameState_Unit(kNewTargetState);

		// Create component and attach it to GameState_Effect, adding the new state object to the NewGameState container
		LockNLoadEffectState = XComGameState_Effect_LockNLoad(NewGameState.CreateStateObject(class'XComGameState_Effect_LockNLoad'));
		LockNLoadEffectState.UnitRef = TargetUnit.GetReference();
		NewEffectState.AddComponentObject(LockNLoadEffectState);
		NewGameState.AddStateObject(LockNLoadEffectState);

		EventMgr = `XEVENTMGR;
	
		// The gamestate component should handle the callback
		ListenerObj = LockNLoadEffectState;

		EventMgr.RegisterForEvent(ListenerObj, 'TacticalGameEnd', LockNLoadEffectState.OnTacticalGameEnd, ELD_OnStateSubmitted);
		EventMgr.RegisterForEvent(ListenerObj, 'AbilityActivated', LockNLoadEffectState.OnAbilityActivated, ELD_OnStateSubmitted);
		
		`LOG("LOCKNLOAD: Registered for AbilityActivated and TacticalGameEnd");
	}

	super.OnEffectAdded(ApplyEffectParameters, kNewTargetState, NewGameState, NewEffectState);
}

static function XComGameState_Effect_LockNLoad GetLockNLoadComponent(XComGameState_Effect Effect)
{
    if (Effect != none) 
        return XComGameState_Effect_LockNLoad(Effect.FindComponentObject(class'XComGameState_Effect_LockNLoad'));
    return none;
}
//function bool PostAbilityCostPaid(XComGameState_Effect EffectState, XComGameStateContext_Ability AbilityContext, XComGameState_Ability kAbility, XComGameState_Unit SourceUnit, XComGameState_Item AffectWeapon, XComGameState NewGameState, const array<name> PreCostActionPoints, const array<name> PreCostReservePoints)
//{
	//local XComGameStateHistory History;
	//local X2EventManager EventMgr;
	//local XComGameState_Ability AbilityStateInput, AbilityStateLockNLoad;
	//local XComGameState_Item SourceWeapon;
	//local bool hasEffect;
//
	//History = `XCOMHISTORY;
//
	//`LOG("================================================");
	//`LOG("================================================");
	//`LOG("================================================");
	//`LOG("LockNLoad: PostAbilityCostPaid.");
//
	//hasEffect = false;
	//foreach SourceUnit.AffectedByEffectNames(EffectName)
	//{
		//if(EffectName == 'F_LockNLoadActivator')
		//{
			//hasEffect = true;
			//break;
		//}
	//}
//
	//if(!hasEffect) 
	//{
		//`LOG("LockNLoad: Early out: User does not have Lock N Load effect");
		//return false;
	//}
//
	//`LOG("kAbility: " @ kAbility.GetMyTemplateName());
	//`LOG("AffectWeapon: " @ AffectWeapon.GetMyTemplateName());
//
	//if(AffectWeapon.InventorySlot != eInvSlot_PrimaryWeapon)
	//{
		//`LOG("LockNLoad: Early out: Primary weapon not used");
		//return false;
	//}
//
	//if(kAbility.iAmmoConsumed <= 0)
	//{
		//`LOG("LockNLoad: Early out: Ability has no ammo cost");
		//return false;
	//}
	//
	//`LOG("LockNLoad: Attempting to restore ammo");
	//AffectWeapon.Ammo += kAbility.iAmmoConsumed;
//
	//AbilityStateLockNLoad = XComGameState_Ability(History.GetGameStateForObjectID(EffectState.ApplyEffectParameters.AbilityStateObjectRef.ObjectID));
	//EventMgr = `XEVENTMGR;
	//EventMgr.TriggerEvent('LockNLoad', AbilityStateLockNLoad, SourceUnit, NewGameState);
//
	//return true;
//}