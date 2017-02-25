class XComGameState_Effect_LockNLoad extends XComGameState_BaseObject;

var StateObjectReference UnitRef;

function EventListenerReturn OnTacticalGameEnd(Object EventData, Object EventSource, XComGameState GameState, Name EventID)
{
	local X2EventManager EventManager;
	local Object ListenerObj;
    local XComGameState NewGameState;
	
	EventManager = `XEVENTMGR;

	// Unregister our callbacks
	ListenerObj = self;
	
	EventManager.UnRegisterFromEvent(ListenerObj, 'AbilityActivated');
	EventManager.UnRegisterFromEvent(ListenerObj, 'TacticalGameEnd');
	
    NewGameState = class'XComGameStateContext_ChangeContainer'.static.CreateChangeState("Lock N Load states cleanup");
	NewGameState.RemoveStateObject(ObjectID);
	`GAMERULES.SubmitGameState(NewGameState);
	
	`LOG("LOCKNLOAD: Unregistered AbilityActivated and TacticalGameEnd");

	return ELR_NoInterrupt;
}

function EventListenerReturn OnAbilityActivated(Object EventData, Object EventSource, XComGameState GameState, Name EventID)
{
	local XComGameStateHistory History;
	local XComGameState_Ability AbilityStateInput;
	local XComGameState_Item SourceWeapon;
	local XComGameState_Unit SourceUnit;
	local bool hasEffect;
	local XComGameStateContext_Ability	AbilityContext;
	local XComGameState					NewGameState;
	local name EffectName;

	History = `XCOMHISTORY;

	`LOG("================================================");
	`LOG("================================================");
	`LOG("================================================");
	`LOG("LOCKNLOAD: OnAbilityActivated.");

	SourceUnit = XComGameState_Unit(History.GetGameStateForObjectID(UnitRef.ObjectID));
	AbilityContext = XComGameStateContext_Ability(GameState.GetContext());
	AbilityStateInput = XComGameState_Ability(History.GetGameStateForObjectID(AbilityContext.InputContext.AbilityRef.ObjectID));
	SourceWeapon = AbilityStateInput.GetSourceWeapon();

	if (AbilityContext.InputContext.SourceObject.ObjectID != UnitRef.ObjectID)
	{
		`LOG("LOCKNLOAD: Early out: This unit was not the shooter");
		return ELR_NoInterrupt;
	}

	hasEffect = false;
	foreach SourceUnit.AffectedByEffectNames(EffectName)
	{
		if(EffectName == 'F_LockNLoadActivator')
		{
			hasEffect = true;
			break;
		}
	}

	if(!hasEffect) 
	{
		`LOG("LOCKNLOAD: Early out: User does not have Lock N Load effect");
		return ELR_NoInterrupt;
	}

	if(SourceWeapon.InventorySlot != eInvSlot_PrimaryWeapon)
	{
		`LOG("LOCKNLOAD: Early out: Primary weapon not used");
		return ELR_NoInterrupt;
	}

	if(AbilityStateInput.iAmmoConsumed <= 0)
	{
		`LOG("LOCKNLOAD: Early out: Ability has no ammo cost");
		return ELR_NoInterrupt;
	}
	
	`LOG("LOCKNLOAD: Attempting to restore ammo");
	
	NewGameState = class'XComGameStateContext_ChangeContainer'.static.CreateChangeState(string(GetFuncName()));
	XComGameStateContext_ChangeContainer(NewGameState.GetContext()).BuildVisualizationFn = LockNLoadShotVisualizationFn;
	SourceUnit = XComGameState_Unit(NewGameState.CreateStateObject(SourceUnit.Class, SourceUnit.ObjectID));
	SourceWeapon.Ammo += AbilityStateInput.iAmmoConsumed;
	NewGameState.AddStateObject(SourceUnit);
	`TACTICALRULES.SubmitGameState(NewGameState);

	return ELR_NoInterrupt;
}

function LockNLoadShotVisualizationFn(XComGameState VisualizeGameState, out array<VisualizationTrack> OutVisualizationTracks)
{
	local XComGameState_Unit UnitState;
	local X2Action_PlaySoundAndFlyOver SoundAndFlyOver;
	local VisualizationTrack BuildTrack;
	local XComGameStateHistory History;
	local X2AbilityTemplate AbilityTemplate;

	History = `XCOMHISTORY;
	foreach VisualizeGameState.IterateByClassType(class'XComGameState_Unit', UnitState)
	{
		History.GetCurrentAndPreviousGameStatesForObjectID(UnitState.ObjectID, BuildTrack.StateObject_OldState, BuildTrack.StateObject_NewState, , VisualizeGameState.HistoryIndex);
		BuildTrack.StateObject_NewState = UnitState;
		BuildTrack.TrackActor = UnitState.GetVisualizer();

		AbilityTemplate = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager().FindAbilityTemplate('F_LockNLoad');

		SoundAndFlyOver = X2Action_PlaySoundAndFlyOver(class'X2Action_PlaySoundAndFlyOver'.static.AddToVisualizationTrack(BuildTrack, VisualizeGameState.GetContext()));
		SoundAndFlyOver.SetSoundAndFlyOverParameters(None, AbilityTemplate.LocFlyOverText, '', eColor_Good, AbilityTemplate.IconImage);

		OutVisualizationTracks.AddItem(BuildTrack);

		break;
	}
}