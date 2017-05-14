class X2Effect_QuickFeet extends X2Effect_Persistent;

function RegisterForEvents(XComGameState_Effect EffectGameState)
{
	local X2EventManager EventMgr;
	local XComGameState_Unit UnitState;
	local Object EffectObj;

	EventMgr = `XEVENTMGR;

	EffectObj = EffectGameState;
	UnitState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(EffectGameState.ApplyEffectParameters.SourceStateObjectRef.ObjectID));

	EventMgr.RegisterForEvent(EffectObj, 'QuickFeet', EffectGameState.TriggerAbilityFlyover, ELD_OnStateSubmitted, , UnitState);
}

function bool PostAbilityCostPaid(XComGameState_Effect EffectState, XComGameStateContext_Ability AbilityContext, XComGameState_Ability kAbility, XComGameState_Unit SourceUnit, XComGameState_Item AffectWeapon, XComGameState NewGameState, const array<name> PreCostActionPoints, const array<name> PreCostReservePoints)
{
	local XComGameStateHistory History;
	local XComGameState_Ability AbilityStateQuickFeet;
	local X2EventManager EventMgr;
	
	History = `XCOMHISTORY;
	AbilityStateQuickFeet = XComGameState_Ability(History.GetGameStateForObjectID(EffectState.ApplyEffectParameters.AbilityStateObjectRef.ObjectID));

	if(isRevealingFromConcealment(EffectState, SourceUnit, AbilityContext, NewGameState, PreCostActionPoints, AbilityStateQuickFeet, History))
	{
		SourceUnit.ActionPoints.AddItem(class'X2CharacterTemplateManager'.default.StandardActionPoint);

		EventMgr = `XEVENTMGR;
		EventMgr.TriggerEvent('QuickFeet', AbilityStateQuickFeet, SourceUnit, NewGameState);

		return true;
	}

	return false;
}

private function bool isRevealingFromConcealment(XComGameState_Effect EffectState, XComGameState_Unit SourceUnit, XComGameStateContext_Ability AbilityContext, XComGameState NewGameState, const array<name> PreCostActionPoints, XComGameState_Ability AbilityStateQuickFeet, XComGameStateHistory History)
{
	local XComGameState_Ability AbilityStateInput;
	local X2AbilityTemplate InputAbilityTemplate;
	local int EventChainStartHistoryIndex;

	if (AbilityStateQuickFeet == none)
	{
		`LOG("		X2Effect_QuickFeet: FAIL 1");
		return false;
	}

	EventChainStartHistoryIndex = History.GetEventChainStartIndex();

	if(!SourceUnit.WasConcealed(EventChainStartHistoryIndex))
	{
		`LOG("		X2Effect_QuickFeet: FAIL 2");
		return false;
	}

	if (SourceUnit.ActionPoints.Length == PreCostActionPoints.Length)
	{
		`LOG("		X2Effect_QuickFeet: FAIL 3");
		return false;
	}

	if(SourceUnit.IsConcealed())
	{
		AbilityStateInput = XComGameState_Ability(NewGameState.GetGameStateForObjectID(AbilityContext.InputContext.AbilityRef.ObjectID));
		InputAbilityTemplate = AbilityStateInput.GetMyTemplate();

		if(InputAbilityTemplate == none)
		{
			`LOG("		X2Effect_QuickFeet: FAIL 4");
			return false;
		}

		if(AbilityStateInput.RetainConcealmentOnActivation(AbilityContext))
		{
			`LOG("		X2Effect_QuickFeet: FAIL 5");
			return false;
		}
	}
	
	`LOG("		X2Effect_QuickFeet: SUCCESS");
	return true;
}