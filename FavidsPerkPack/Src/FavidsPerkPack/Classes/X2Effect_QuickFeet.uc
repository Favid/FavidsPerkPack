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

	`LOG("================================================");
	`LOG("================================================");
	`LOG("================================================");
	`LOG("QuickFeet: PostAbilityCostPaid.");

	// Check if the unit used to be concealed, but is no longer
	if(SourceUnit.WasConcealed(EventChainStartHistoryIndex))
	{
		`LOG("QuickFeet: Unit was concealed.");

		AbilityStateQuickFeet = XComGameState_Ability(History.GetGameStateForObjectID(EffectState.ApplyEffectParameters.AbilityStateObjectRef.ObjectID));
		AbilityStateInput = XComGameState_Ability(NewGameState.GetGameStateForObjectID(AbilityContext.InputContext.AbilityRef.ObjectID));
		InputAbilityTemplate = AbilityStateInput.GetMyTemplate();

		`LOG("AbilityStateInput: " @ string(AbilityStateInput.GetMyTemplateName()));
		`LOG("RetainConcealmentOnActivation: " @ string(AbilityStateInput.RetainConcealmentOnActivation(AbilityContext)));
		`LOG("MayBreakConcealmentOnActivation: " @ string(AbilityStateInput.MayBreakConcealmentOnActivation()));
		`LOG("InputAbilityTemplate: " @ string(InputAbilityTemplate.DataName));
		`LOG("InputAbilityTemplate Hostility: " @ string(InputAbilityTemplate.Hostility));
		`LOG("InputAbilityTemplate CR: " @ string(InputAbilityTemplate.ConcealmentRule));

		if(!SourceUnit.IsConcealed() || (InputAbilityTemplate != none && !AbilityStateInput.RetainConcealmentOnActivation(AbilityContext)))
		{
			`LOG("QuickFeet: Unit is no longer concealed.");
			if (SourceUnit.ActionPoints.Length != PreCostActionPoints.Length)
			{
				`LOG("QuickFeet: Action point lengths differ.");
				//AbilityState = XComGameState_Ability(History.GetGameStateForObjectID(EffectState.ApplyEffectParameters.AbilityStateObjectRef.ObjectID));
				if (AbilityStateQuickFeet != none)
				{
					`LOG("QuickFeet: AbilityState found.");
					//SourceUnit.ActionPoints = PreCostActionPoints;
					SourceUnit.ActionPoints.AddItem(class'X2CharacterTemplateManager'.default.StandardActionPoint);

					EventMgr = `XEVENTMGR;
					EventMgr.TriggerEvent('QuickFeet', AbilityStateQuickFeet, SourceUnit, NewGameState);

					return true;
				}
			}
		}
	}

	return false;



	////  if under the effect of Serial, let that handle restoring the full action cost
	//if (SourceUnit.IsUnitAffectedByEffectName(class'X2Effect_Serial'.default.EffectName))
		//return false;
//
	//History = `XCOMHISTORY;
//
	////  check for a direct kill shot
	//TargetUnit = XComGameState_Unit(NewGameState.GetGameStateForObjectID(AbilityContext.InputContext.PrimaryTarget.ObjectID));
//
	//if (TargetUnit != None)
	//{
		//PrevTargetUnit = XComGameState_Unit(History.GetGameStateForObjectID(TargetUnit.ObjectID));      //  get the most recent version from the history rather than our modified (attacked) version
			//
		////  check that the killed target was flanked by the unit
		//flanked = TargetUnit.isFlanked(AbilityContext.InputContext.SourceObject);
			//
		//if (TargetUnit.IsDead() && PrevTargetUnit != None && flanked)
		//{
			//if (SourceUnit.ActionPoints.Length != PreCostActionPoints.Length)
			//{
				//AbilityState = XComGameState_Ability(History.GetGameStateForObjectID(EffectState.ApplyEffectParameters.AbilityStateObjectRef.ObjectID));
				//if (AbilityState != none)
				//{
					//SourceUnit.ActionPoints = PreCostActionPoints;
//
					//EventMgr = `XEVENTMGR;
					//EventMgr.TriggerEvent('InTheZone', AbilityState, SourceUnit, NewGameState);
//
					//return true;
				//}
					//
			//}
		//}
	//}
//
	//return false;
}