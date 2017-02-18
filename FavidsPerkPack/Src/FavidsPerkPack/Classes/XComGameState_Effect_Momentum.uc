class XComGameState_Effect_Momentum extends XComGameState_BaseObject;
	
var StateObjectReference UnitRef;

function EventListenerReturn OnTacticalGameEnd(Object EventData, Object EventSource, XComGameState GameState, Name EventID)
{
	local X2EventManager EventManager;
	local Object ListenerObj;
    local XComGameState NewGameState;
	
	EventManager = `XEVENTMGR;

	// Unregister our callbacks
	ListenerObj = self;

	EventManager.UnRegisterFromEvent(ListenerObj, 'UnitMoveFinished');
	EventManager.UnRegisterFromEvent(ListenerObj, 'TacticalGameEnd');

    NewGameState = class'XComGameStateContext_ChangeContainer'.static.CreateChangeState("Stick and Move states cleanup");
	NewGameState.RemoveStateObject(ObjectID);
	`GAMERULES.SubmitGameState(NewGameState);
	
	return ELR_NoInterrupt;
}

function EventListenerReturn OnUnitMoveFinished(Object EventData, Object EventSource, XComGameState GameState, Name EventID)
{
	
	local XComGameStateHistory History;
	local XComGameState_Ability ApplyAbilityState;
	local X2AbilityTemplate AbilityTemplate;
	local XComGameStateContext_Ability AbilityContext;
	local XComGameState_Unit UnitState;
	local StateObjectReference CompareEffectRef;
	local XComGameState_Effect CompareEffectState;
	local name ApplyAbilityName, ApplyEffectName;
	local StateObjectReference AbilityRef;
	local bool IsAlreadyAffected;
	
	History = `XCOMHISTORY;

	`LOG("Asset Class: Momentum: 'OnUnitMoveFinished' event listener delegate invoked.");

	// Get the unit
	UnitState = XComGameState_Unit(EventData);
	if (UnitState == none)
	{
		`LOG("Asset Class: Momentum: Unit not found.");

		return ELR_NoInterrupt;
	}

	// Get the ability related to the moving
	AbilityContext = XComGameStateContext_Ability(GameState.GetContext());
	if (AbilityContext == none)
	{
		`LOG("Asset Class: Momentum: AbilityContext not found.");
		return ELR_NoInterrupt;
	}
	
	// Get the ability template
	AbilityTemplate = class'X2AbilityTemplateManager'.static.GetAbilityTemplateManager().FindAbilityTemplate(AbilityContext.InputContext.AbilityTemplateName);
	if (AbilityTemplate == none)
	{
		`LOG("Asset Class: Momentum: AbilityTemplate not found.");
		return ELR_NoInterrupt;
	}

	if (AbilityContext.InputContext.SourceObject.ObjectID != UnitRef.ObjectID)
	{
		`LOG("Asset Class: Momentum: InputContext SourceObject not found: SourceObject.ObjectId=" @ string(AbilityContext.InputContext.SourceObject.ObjectID) @ ": UnitRef.ObjectID=" @ string(UnitRef.ObjectID));
		return ELR_NoInterrupt;
	}

	// Make sure an actual move was taken
	if (AbilityContext.InputContext.MovementPaths.Length == 0)
	{
		`LOG("Asset Class: Momentum: Movement length of 0.");
		return ELR_NoInterrupt;
	}

	UnitState = XComGameState_Unit(GameState.GetGameStateForObjectID(AbilityContext.InputContext.SourceObject.ObjectID));
	if (UnitState == none)
		UnitState = XComGameState_Unit(History.GetGameStateForObjectID(AbilityContext.InputContext.SourceObject.ObjectID));

	if (UnitState == none)
	{
		`LOG("Asset Class: Momentum: UnitState not found.");
		return ELR_NoInterrupt;
	}
	
	// Check to see if the unit already has the effect that we're looking to apply
	IsAlreadyAffected = false;
	ApplyEffectName = 'F_MomentumAim';

	foreach UnitState.AffectedByEffects(CompareEffectRef)
	{
		CompareEffectState = XComGameState_Effect(History.GetGameStateForObjectID(CompareEffectRef.ObjectID));

		if (CompareEffectState.GetX2Effect().EffectName == ApplyEffectName)
		{
			// We're already affected by the effect
			IsAlreadyAffected = true;
		}
	}

	if (IsAlreadyAffected)
	{
		`LOG("Asset Class: Momentum: Ability already active.");
		return ELR_NoInterrupt;
	}

	ApplyAbilityName = 'F_MomentumAim';

	// Get the Momentum active ability from the source unit
	foreach UnitState.Abilities(AbilityRef)
	{
		ApplyAbilityState = XComGameState_Ability(History.GetGameStateForObjectID(AbilityRef.ObjectID));
		if (ApplyAbilityState.GetMyTemplateName() == ApplyAbilityName)
			break;
		ApplyAbilityState = none;
	}

	if (ApplyAbilityState == none)
	{
		`LOG("Asset Class: Momentum: ApplyAbilityState not found.");
		return ELR_NoInterrupt;
	}
	
	ApplyAbilityState.AbilityTriggerAgainstSingleTarget(UnitState.GetReference(), false, GameState.HistoryIndex);
	
	`LOG("Asset Class: Momentum: Activated");

	return ELR_NoInterrupt;
}
