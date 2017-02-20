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
	local X2EventManager EventMgr;
	local XComGameState_Ability AbilityStateQuickFeet, AbilityStateInput;
	local X2AbilityTemplate InputAbilityTemplate;
	local int EventChainStartHistoryIndex;

	History = `XCOMHISTORY;
	EventChainStartHistoryIndex = History.GetEventChainStartIndex();

	if(SourceUnit.WasConcealed(EventChainStartHistoryIndex))
	{
		AbilityStateQuickFeet = XComGameState_Ability(History.GetGameStateForObjectID(EffectState.ApplyEffectParameters.AbilityStateObjectRef.ObjectID));
		AbilityStateInput = XComGameState_Ability(NewGameState.GetGameStateForObjectID(AbilityContext.InputContext.AbilityRef.ObjectID));
		InputAbilityTemplate = AbilityStateInput.GetMyTemplate();

		if(!SourceUnit.IsConcealed() || (InputAbilityTemplate != none && !AbilityStateInput.RetainConcealmentOnActivation(AbilityContext)) || AbilityContext.InputContext.MovementPaths.Length > 0)
		{
			if (SourceUnit.ActionPoints.Length != PreCostActionPoints.Length)
			{
				if (AbilityStateQuickFeet != none)
				{
					SourceUnit.ActionPoints.AddItem(class'X2CharacterTemplateManager'.default.StandardActionPoint);

					EventMgr = `XEVENTMGR;
					EventMgr.TriggerEvent('QuickFeet', AbilityStateQuickFeet, SourceUnit, NewGameState);

					return true;
				}
			}
		}
	}

	return false;
}