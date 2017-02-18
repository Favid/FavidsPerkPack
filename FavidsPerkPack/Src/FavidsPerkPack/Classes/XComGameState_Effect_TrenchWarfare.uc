class XComGameState_Effect_TrenchWarfare extends XComGameState_BaseObject;

var StateObjectReference UnitRef;

function EventListenerReturn OnTacticalGameEnd(Object EventData, Object EventSource, XComGameState GameState, Name EventID)
{
	local X2EventManager EventManager;
	local Object ListenerObj;
    local XComGameState NewGameState;
	
	EventManager = `XEVENTMGR;

	// Unregister our callbacks
	ListenerObj = self;
	
	EventManager.UnRegisterFromEvent(ListenerObj, 'UnitDied');
	EventManager.UnRegisterFromEvent(ListenerObj, 'PlayerTurnEnded');
	EventManager.UnRegisterFromEvent(ListenerObj, 'TacticalGameEnd');
	
    NewGameState = class'XComGameStateContext_ChangeContainer'.static.CreateChangeState("Trench Warfare states cleanup");
	NewGameState.RemoveStateObject(ObjectID);
	`GAMERULES.SubmitGameState(NewGameState);
	
	`LOG("TRENCH WARFARE: Unregistered PlayerTurnEnded and TacticalGameEnd");

	return ELR_NoInterrupt;
}

function EventListenerReturn OnUnitDied(Object EventData, Object EventSource, XComGameState GameState, Name EventID)
{
	local XComGameState_Unit			SourceUnit, TargetUnit;
	local XComGameStateHistory			History;
	local UnitValue						CountUnitValue;
	local XComGameState					NewGameState;
	local XComGameStateContext_Ability	AbilityContext;
	local XComGameState_Ability			AbilityState;
	local X2EventManager				EventMgr;
	
	`LOG("TRENCH WARFARE: OnUnitDied start");

	AbilityContext = XComGameStateContext_Ability(GameState.GetContext());
	if (AbilityContext != none)
	{
		if (AbilityContext.InputContext.SourceObject.ObjectID == UnitRef.ObjectID)
		{
			History = `XCOMHISTORY;
			SourceUnit = XComGameState_Unit(History.GetGameStateForObjectID(UnitRef.ObjectID));
			TargetUnit = XComGameState_Unit(EventData);

			if (SourceUnit.IsEnemyUnit(TargetUnit))
			{
				`LOG("TRENCH WARFARE: Target killed, increasing unit value");
				NewGameState = class'XComGameStateContext_ChangeContainer'.static.CreateChangeState(string(GetFuncName()));
				XComGameStateContext_ChangeContainer(NewGameState.GetContext()).BuildVisualizationFn = TrenchWarfareKillVisualizationFn;
				SourceUnit = XComGameState_Unit(NewGameState.CreateStateObject(SourceUnit.Class, SourceUnit.ObjectID));
				SourceUnit.GetUnitValue('TrenchWarfare_KillThisTurn', CountUnitValue);
				SourceUnit.SetUnitFloatValue('TrenchWarfare_KillThisTurn', CountUnitValue.fValue + 1, eCleanup_BeginTurn);
				NewGameState.AddStateObject(SourceUnit);
				`TACTICALRULES.SubmitGameState(NewGameState);
			}
		}
	}

	return ELR_NoInterrupt;
}

function EventListenerReturn OnPlayerTurnEnded(Object EventData, Object EventSource, XComGameState GameState, Name EventID)
{
	local XComGameStateHistory			History;
	local XComGameState_Unit			TargetUnit;
	local UnitValue						UnitValue;
	local StateObjectReference			AbilityRef;
	local XComGameState_Ability			AbilityState;
	local XComGameState					NewGameState;
	local name							CanShootCode;
	local XComGameStateContext_Ability	AbilityContext;
	local StateObjectReference HunkerDownRef;
	local XComGameState_Ability HunkerDownState;
	
	History = `XCOMHISTORY;
	
	`LOG("TRENCH WARFARE: PlayerTurnEnded start");

	// Get or create the target unit
	TargetUnit = XComGameState_Unit(GameState.GetGameStateForObjectID(UnitRef.ObjectID));
	if (TargetUnit == none)
	{
		TargetUnit = XComGameState_Unit(History.GetGameStateForObjectID(UnitRef.ObjectID));
	}
	
	// early out if unit state not found
	if (TargetUnit == none)
	{
		`LOG("TRENCH WARFARE: Early out: Unit state not found");
		return ELR_NoInterrupt;
	}

	TargetUnit.GetUnitValue('TrenchWarfare_KillThisTurn', UnitValue);

	// early out if no kills made this turn
	if (UnitValue.fValue <= 0)
	{
		`LOG("TRENCH WARFARE: Early out: No kills made this turn");
		return ELR_NoInterrupt;
	}

	// early out if the unit is already hunkered down
	if(TargetUnit.IsHunkeredDown())
	{
		`LOG("TRENCH WARFARE: Early out: Unit is already hunkered down");
		return ELR_NoInterrupt;
	}

	HunkerDownRef = TargetUnit.FindAbility('HunkerDown');
	HunkerDownState = XComGameState_Ability(History.GetGameStateForObjectID(HunkerDownRef.ObjectID));

	// early out if the unit doesn't have hunker down
	if (HunkerDownState == none)
	{
		`LOG("TRENCH WARFARE: Early out: Unit does not have hunker down ability");
		return ELR_NoInterrupt;
	}

	// early out if hunker down won't succeed
	if(HunkerDownState.CanActivateAbility(TargetUnit,,true) != 'AA_Success')
	{
		`LOG("TRENCH WARFARE: Early out: Hunker down cannot be activated");
		return ELR_NoInterrupt;
	}

	if (TargetUnit.NumActionPoints() == 0)
	{
		`LOG("TRENCH WARFARE: Preparing to add DeepCoverActionPoint");

		NewGameState = class'XComGameStateContext_ChangeContainer'.static.CreateChangeState(string(GetFuncName()));
		TargetUnit = XComGameState_Unit(NewGameState.CreateStateObject(TargetUnit.Class, TargetUnit.ObjectID));
		//  give the unit an action point so they can activate hunker down										
		TargetUnit.ActionPoints.AddItem(class'X2CharacterTemplateManager'.default.DeepCoverActionPoint);					
		NewGameState.AddStateObject(TargetUnit);
		`TACTICALRULES.SubmitGameState(NewGameState);
	}
	
	return HunkerDownState.AbilityTriggerEventListener_Self(EventData, EventSource, GameState, EventID);
}

function TrenchWarfareKillVisualizationFn(XComGameState VisualizeGameState, out array<VisualizationTrack> OutVisualizationTracks)
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

		AbilityTemplate = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager().FindAbilityTemplate('F_TrenchWarfare');

		SoundAndFlyOver = X2Action_PlaySoundAndFlyOver(class'X2Action_PlaySoundAndFlyOver'.static.AddToVisualizationTrack(BuildTrack, VisualizeGameState.GetContext()));
		SoundAndFlyOver.SetSoundAndFlyOverParameters(None, AbilityTemplate.LocFlyOverText, '', eColor_Good, AbilityTemplate.IconImage);

		OutVisualizationTracks.AddItem(BuildTrack);

		break;
	}
}