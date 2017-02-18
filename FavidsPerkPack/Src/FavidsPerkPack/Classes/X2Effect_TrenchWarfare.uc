class X2Effect_TrenchWarfare extends X2Effect_Persistent;

function RegisterForEvents(XComGameState_Effect EffectGameState)
{
	local X2EventManager EventMgr;
	local XComGameState_Unit UnitState;
	local Object EffectObj;

	EventMgr = `XEVENTMGR;

	EffectObj = EffectGameState;
	UnitState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(EffectGameState.ApplyEffectParameters.SourceStateObjectRef.ObjectID));

	EventMgr.RegisterForEvent(EffectObj, 'TrenchWarfare', EffectGameState.TriggerAbilityFlyover, ELD_OnStateSubmitted, , UnitState);
}

simulated protected function OnEffectAdded(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState, XComGameState_Effect NewEffectState)
{
	local XComGameState_Unit TargetUnit;
	local XComGameState_Player PlayerState;
	local XComGameState_Effect_TrenchWarfare TrenchWarfareEffectState;
	local X2EventManager EventMgr;
	local Object ListenerObj;

	`LOG("TRENCH WARFARE: OnEffectAdded start");

	if (GetTrenchWarfareComponent(NewEffectState) == none)
	{
		TargetUnit = XComGameState_Unit(kNewTargetState);

		// Create component and attach it to GameState_Effect, adding the new state object to the NewGameState container
		TrenchWarfareEffectState = XComGameState_Effect_TrenchWarfare(NewGameState.CreateStateObject(class'XComGameState_Effect_TrenchWarfare'));
		TrenchWarfareEffectState.UnitRef = TargetUnit.GetReference();
		NewEffectState.AddComponentObject(TrenchWarfareEffectState);
		NewGameState.AddStateObject(TrenchWarfareEffectState);

		EventMgr = `XEVENTMGR;
	
		// The gamestate component should handle the callback
		ListenerObj = TrenchWarfareEffectState;

		PlayerState = XComGameState_Player(`XCOMHISTORY.GetGameStateForObjectID(ApplyEffectParameters.PlayerStateObjectRef.ObjectID));

		EventMgr.RegisterForEvent(ListenerObj, 'PlayerTurnEnded', TrenchWarfareEffectState.OnPlayerTurnEnded, ELD_OnStateSubmitted, , PlayerState);
		EventMgr.RegisterForEvent(ListenerObj, 'TacticalGameEnd', TrenchWarfareEffectState.OnTacticalGameEnd, ELD_OnStateSubmitted);
		EventMgr.RegisterForEvent(ListenerObj, 'UnitDied', TrenchWarfareEffectState.OnUnitDied, ELD_OnStateSubmitted);
		
		`LOG("TRENCH WARFARE: Registered for PlayerTurnEnded, UnitDied, and TacticalGameEnd");
	}

	super.OnEffectAdded(ApplyEffectParameters, kNewTargetState, NewGameState, NewEffectState);
}

static function XComGameState_Effect_TrenchWarfare GetTrenchWarfareComponent(XComGameState_Effect Effect)
{
    if (Effect != none) 
        return XComGameState_Effect_TrenchWarfare(Effect.FindComponentObject(class'XComGameState_Effect_TrenchWarfare'));
    return none;
}