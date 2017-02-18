class XComGameState_Effect_FocusListener extends XComGameState_Effect;

function XComGameState_Effect_FocusListener InitComponent()
{	
	return self;
}

function XComGameState_Effect GetOwningEffect()
{
	return XComGameState_Effect(`XCOMHISTORY.GetGameStateForObjectID(OwningObjectId));
}

function XComGameState.EventListenerReturn FocusActionListener(Object EventData, Object EventSource, XComGameState GameState, name EventID)
{
    local XComGameState_Ability AbilityState;
    local XComGameStateContext_EffectRemoved RemoveContext;
    local XComGameState NewGameState;
	local X2AbilityCost Cost;

    AbilityState = XComGameState_Ability(EventData);
	if (AbilityState != none)
	{
		foreach AbilityState.GetMyTemplate().AbilityCosts(Cost)
		{
			if(Cost.IsA('X2AbilityCost_ActionPoints') && !X2AbilityCost_ActionPoints(Cost).bFreeCost && AbilityState.GetMyTemplateName() != 'Focus')
			{
				if (!GetOwningEffect().bRemoved)
				{								
					RemoveContext = class'XComGameStateContext_EffectRemoved'.static.CreateEffectRemovedContext(self);
					NewGameState = `XCOMHISTORY.CreateNewGameState(true, RemoveContext);
					GetOwningEffect().RemoveEffect(NewGameState, GameState);
					`TACTICALRULES.SubmitGameState(NewGameState);
					return ELR_NoInterrupt;
				}
			}
		}
	}
	return ELR_NoInterrupt;
}

function XComGameState.EventListenerReturn FocusWoundListener(Object EventData, Object EventSource, XComGameState GameState, name EventID)
{
	local XComGameState_Ability AbilityState;
	local XComGameStateContext_EffectRemoved RemoveContext;
	local XComGameState NewGameState;

	AbilityState = XComGameState_Ability(EventData);
	if (AbilityState != none)
	{
		if (!GetOwningEffect().bRemoved)
		{
			RemoveContext = class'XComGameStateContext_EffectRemoved'.static.CreateEffectRemovedContext(self);
			NewGameState = `XCOMHISTORY.CreateNewGameState(true, RemoveContext);
			GetOwningEffect().RemoveEffect(NewGameState, GameState);
			`TACTICALRULES.SubmitGameState(NewGameState);
			return ELR_NoInterrupt;
		}
	}
	return ELR_NoInterrupt;
}