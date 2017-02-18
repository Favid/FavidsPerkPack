// This class is the passive effect that sets up the listener for attacks that trigger the Stick and Move active effect
class X2Effect_Momentum extends X2Effect_Persistent;

simulated protected function OnEffectAdded(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState, XComGameState_Effect NewEffectState)
{
	local XComGameState_Unit TargetUnit;
	local XComGameState_Effect_Momentum MomentumEffectState;
	local X2EventManager EventMgr;
	local Object ListenerObj;

	if (GetMomentumComponent(NewEffectState) == none)
	{
		TargetUnit = XComGameState_Unit(kNewTargetState);

		// Create component and attach it to GameState_Effect, adding the new state object to the NewGameState container
		MomentumEffectState = XComGameState_Effect_Momentum(NewGameState.CreateStateObject(class'XComGameState_Effect_Momentum'));
		MomentumEffectState.UnitRef = TargetUnit.GetReference();
		NewEffectState.AddComponentObject(MomentumEffectState);
		NewGameState.AddStateObject(MomentumEffectState);
	
		EventMgr = `XEVENTMGR;
	
		// The gamestate component should handle the callback
		ListenerObj = MomentumEffectState;

		EventMgr.RegisterForEvent(ListenerObj, 'UnitMoveFinished', class'XComGameState_Effect_Momentum'.static.OnUnitMoveFinished, ELD_OnStateSubmitted);

		// Some missions the effect will be removed (e.g. extraction), some missions the tactical gameplay just stops. We'll GC our gamestate
		// by having the gamestate itself handle this callback
		EventMgr.RegisterForEvent(ListenerObj, 'TacticalGameEnd', class'XComGameState_Effect_Momentum'.static.OnTacticalGameEnd, ELD_OnStateSubmitted);

	}

	super.OnEffectAdded(ApplyEffectParameters, kNewTargetState, NewGameState, NewEffectState);
}

static function XComGameState_Effect_Momentum GetMomentumComponent(XComGameState_Effect Effect)
{
    if (Effect != none) 
        return XComGameState_Effect_Momentum(Effect.FindComponentObject(class'XComGameState_Effect_Momentum'));
    return none;
}