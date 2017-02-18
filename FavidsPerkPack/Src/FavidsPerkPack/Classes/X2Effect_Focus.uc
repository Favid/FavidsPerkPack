class X2Effect_Focus extends X2Effect_Persistent;

var int Aim_Bonus;

simulated protected function OnEffectAdded(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState, XComGameState_Effect NewEffectState)
{
    local X2EventManager								EventMgr;
    local XComGameState_Unit							UnitState;
    local Object										ListenerObj;
	local XComGameState_Effect_FocusListener			FocusListenerComponent; 
 	
	EventMgr = `XEVENTMGR;
	UnitState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(NewEffectState.ApplyEffectParameters.SourceStateObjectRef.ObjectID));
	if (FocusEffectComponent(NewEffectState) == none)
	{
		FocusListenerComponent = XComGameState_Effect_FocusListener(NewGameState.CreateStateObject(class'XComGameState_Effect_FocusListener'));
		FocusListenerComponent.InitComponent();
		NewEffectState.AddComponentObject(FocusListenerComponent);
		NewGameState.AddStateObject(FocusListenerComponent);
	}
	ListenerObj = FocusListenerComponent;
	if (ListenerObj == none)
	{
		`Redscreen("SWLC: Failed to find Component when registering listener");
		return;
	}
    EventMgr.RegisterForEvent(ListenerObj, 'AbilityActivated', FocusListenerComponent.FocusActionListener, ELD_OnStateSubmitted, 50, UnitState);
	EventMgr.RegisterForEvent(ListenerObj, 'UnitTakeEffectDamage', FocusListenerComponent.FocusWoundListener, ELD_OnStateSubmitted, 50, UnitState);
	EventMgr.RegisterForEvent(ListenerObj, 'ImpairingEffect', FocusListenerComponent.FocusWoundListener, ELD_OnStateSubmitted, 50, UnitState);
}

static function XComGameState_Effect_FocusListener FocusEffectComponent(XComGameState_Effect Effect)
{
	if (Effect != none) 
		return XComGameState_Effect_FocusListener (Effect.FindComponentObject(class'XComGameState_Effect_FocusListener'));
	return none;
}


function GetToHitModifiers(XComGameState_Effect EffectState, XComGameState_Unit Attacker, XComGameState_Unit Target, XComGameState_Ability AbilityState, class<X2AbilityToHitCalc> ToHitType, bool bMelee, bool bFlanking, bool bIndirectFire, out array<ShotModifierInfo> ShotModifiers)
{
    local ShotModifierInfo ShotInfo;

    if(!bMelee)
    {
        ShotInfo.ModType = eHit_Success;
        ShotInfo.Reason = FriendlyName;
        ShotInfo.Value = Aim_Bonus;
        ShotModifiers.AddItem(ShotInfo);
    }

}

defaultproperties
{
    EffectName="Focus"
}