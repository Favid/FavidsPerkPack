class X2Effect_InTheZone extends X2Effect_Persistent;

var int MaxRefundsPerTurn;

function RegisterForEvents(XComGameState_Effect EffectGameState)
{
	local X2EventManager EventMgr;
	local XComGameState_Unit UnitState;
	local Object EffectObj;

	EventMgr = `XEVENTMGR;

	EffectObj = EffectGameState;
	UnitState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(EffectGameState.ApplyEffectParameters.SourceStateObjectRef.ObjectID));

	EventMgr.RegisterForEvent(EffectObj, 'InTheZone', EffectGameState.TriggerAbilityFlyover, ELD_OnStateSubmitted, , UnitState);
}

function bool PostAbilityCostPaid(XComGameState_Effect EffectState, XComGameStateContext_Ability AbilityContext, XComGameState_Ability kAbility, XComGameState_Unit SourceUnit, XComGameState_Item AffectWeapon, XComGameState NewGameState, const array<name> PreCostActionPoints, const array<name> PreCostReservePoints)
{
	local XComGameStateHistory					History;
	local XComGameState_Unit					TargetUnit;
	local X2EventManager						EventMgr;
	local XComGameState_Ability					AbilityState;
	local GameRulesCache_VisibilityInfo			VisInfo;

	`LOG("ITZ: 0");

	//  if under the effect of Serial, let that handle restoring the full action cost - will this work?
	if (SourceUnit.IsUnitAffectedByEffectName(class'X2Effect_Serial'.default.EffectName))
		return false;

	// Ditto for Death From Above
	if (SourceUnit.IsUnitAffectedByEffectName(class'X2Effect_DeathfromAbove'.default.EffectName))
		return false;

	//  match the weapon associated with Hit and Run to the attacking weapon
	if (kAbility.SourceWeapon == EffectState.ApplyEffectParameters.ItemStateObjectRef)
	{
		`LOG("ITZ: 1");
		History = `XCOMHISTORY;
		TargetUnit = XComGameState_Unit(NewGameState.GetGameStateForObjectID(AbilityContext.InputContext.PrimaryTarget.ObjectID));
		if (!AbilityState.IsMeleeAbility() && TargetUnit != none)
		{
			`LOG("ITZ: 2");
			if(X2TacticalGameRuleset(XComGameInfo(class'Engine'.static.GetCurrentWorldInfo().Game).GameRuleset).VisibilityMgr.GetVisibilityInfo(SourceUnit.ObjectID, TargetUnit.ObjectID, VisInfo))
			{
				`LOG("ITZ: 3"); //TODO test interaction with blowing up target's cover, then killing
				`LOG("ITZ: TargetUnit.IsEnemyUnit(SourceUnit): " $ string(TargetUnit.IsEnemyUnit(SourceUnit)));
				`LOG("ITZ: SourceUnit.CanFlank(): " $ string(SourceUnit.CanFlank()));
				`LOG("ITZ: TargetUnit.CanTakeCover(): " $ string(TargetUnit.CanTakeCover()));
				`LOG("ITZ: VisInfo.TargetCover: " $ VisInfo.TargetCover);
				`LOG("ITZ: TargetUnit.IsAlive(): " $ TargetUnit.IsAlive());
				if (TargetUnit.IsEnemyUnit(SourceUnit) && SourceUnit.CanFlank() && TargetUnit.CanTakeCover() && VisInfo.TargetCover == CT_None && !TargetUnit.IsAlive())
				{
					`LOG("ITZ: 4");
					if (SourceUnit.NumActionPoints() < 2 && PreCostActionPoints.Length > 0) 
					{
						`LOG("ITZ: 5");
						AbilityState = XComGameState_Ability(History.GetGameStateForObjectID(EffectState.ApplyEffectParameters.AbilityStateObjectRef.ObjectID));
						if (AbilityState != none)
						{				
							`LOG("ITZ: 6");
							SourceUnit.ActionPoints.AddItem(class'X2CharacterTemplateManager'.default.StandardActionPoint);
							EventMgr = `XEVENTMGR;
							EventMgr.TriggerEvent('InTheZone', AbilityState, SourceUnit, NewGameState);
							return true;
						}
					}
				}
			}
		}
	}
	return false;
}

//function bool PostAbilityCostPaid(XComGameState_Effect EffectState, XComGameStateContext_Ability AbilityContext, XComGameState_Ability kAbility, XComGameState_Unit SourceUnit, XComGameState_Item AffectWeapon, XComGameState NewGameState, const array<name> PreCostActionPoints, const array<name> PreCostReservePoints)
//{
	//local XComGameStateHistory History;
	//local XComGameState_Unit TargetUnit, PrevTargetUnit;
	//local X2EventManager EventMgr;
	//local XComGameState_Ability AbilityState;
	//local bool flanked;
	//local UnitValue CountUnitValue;
	//local GameRulesCache_VisibilityInfo VisInfo;
//
	//// if we already hit the max number of refunds, return false
	//SourceUnit.GetUnitValue('RefundsThisTurn', CountUnitValue);
	//if (MaxRefundsPerTurn > 0 && CountUnitValue.fValue >= MaxRefundsPerTurn)
	//{
		//return false;
	//}
//
	////  if under the effect of Serial, let that handle restoring the full action cost
	//if (SourceUnit.IsUnitAffectedByEffectName(class'X2Effect_Serial'.default.EffectName))
	//{
		//return false;
	//}
//
	//// if the kill wasn't made with the specified weapon, return false
	//if (kAbility.SourceWeapon != EffectState.ApplyEffectParameters.ItemStateObjectRef)
	//{
		//return false;
	//}
//
	//History = `XCOMHISTORY;
//
	//TargetUnit = XComGameState_Unit(NewGameState.GetGameStateForObjectID(AbilityContext.InputContext.PrimaryTarget.ObjectID));
	//
	//if (TargetUnit != None)
	//{
		//PrevTargetUnit = XComGameState_Unit(History.GetGameStateForObjectID(TargetUnit.ObjectID));      
		////flanked = TargetUnit.isFlanked(AbilityContext.InputContext.SourceObject);
//
		//if (!`TACTICALRULES.VisibilityMgr.GetVisibilityInfo(SourceUnit.ObjectID, PrevTargetUnit.ObjectID, VisInfo, History.GetCurrentHistoryIndex()))
		//{
			//`LOG("ITZ: GetVisibilityInfo is true");
			//flanked = (TargetUnit.isFlanked(AbilityContext.InputContext.SourceObject) || (PrevTargetUnit.GetMyTemplate().bCanTakeCover && VisInfo.TargetCover == INDEX_NONE));
		//}
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
					//SourceUnit.SetUnitFloatValue('RefundsThisTurn', CountUnitValue.fValue + 1, eCleanup_BeginTurn);
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
//}