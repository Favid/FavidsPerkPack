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
	local UnitValue								CountUnitValue;

	logIfDebugEnabled("ITZ: 0");

	//  if under the effect of Serial, let that handle restoring the full action cost - will this work?
	if (SourceUnit.IsUnitAffectedByEffectName(class'X2Effect_Serial'.default.EffectName))
		return false;

	// Ditto for Death From Above
	if (SourceUnit.IsUnitAffectedByEffectName(class'X2Effect_DeathfromAbove'.default.EffectName))
		return false;

	// if we already hit the max number of refunds, return false
	SourceUnit.GetUnitValue('RefundsThisTurn', CountUnitValue);
	if (MaxRefundsPerTurn > 0 && CountUnitValue.fValue >= MaxRefundsPerTurn)
	{
		return false;
	}

	//  match the weapon associated with Hit and Run to the attacking weapon
	if (kAbility.SourceWeapon == EffectState.ApplyEffectParameters.ItemStateObjectRef)
	{
		logIfDebugEnabled("ITZ: 1");
		History = `XCOMHISTORY;
		TargetUnit = XComGameState_Unit(NewGameState.GetGameStateForObjectID(AbilityContext.InputContext.PrimaryTarget.ObjectID));
		if (!AbilityState.IsMeleeAbility() && TargetUnit != none)
		{
			logIfDebugEnabled("ITZ: 2");
			if(X2TacticalGameRuleset(XComGameInfo(class'Engine'.static.GetCurrentWorldInfo().Game).GameRuleset).VisibilityMgr.GetVisibilityInfo(SourceUnit.ObjectID, TargetUnit.ObjectID, VisInfo))
			{
				logIfDebugEnabled("ITZ: 3"); //TODO test interaction with blowing up target's cover, then killing
				logIfDebugEnabled("ITZ: TargetUnit.IsEnemyUnit(SourceUnit): " $ string(TargetUnit.IsEnemyUnit(SourceUnit)));
				logIfDebugEnabled("ITZ: SourceUnit.CanFlank(): " $ string(SourceUnit.CanFlank()));
				logIfDebugEnabled("ITZ: TargetUnit.CanTakeCover(): " $ string(TargetUnit.CanTakeCover()));
				logIfDebugEnabled("ITZ: VisInfo.TargetCover: " $ VisInfo.TargetCover);
				logIfDebugEnabled("ITZ: TargetUnit.IsAlive(): " $ TargetUnit.IsAlive());

				if (TargetUnit.IsEnemyUnit(SourceUnit) && SourceUnit.CanFlank() && TargetUnit.CanTakeCover() && VisInfo.TargetCover == CT_None && !TargetUnit.IsAlive())
				{
					logIfDebugEnabled("ITZ: 4");
					if (SourceUnit.NumActionPoints() < 2 && PreCostActionPoints.Length > 0) 
					{
						logIfDebugEnabled("ITZ: 5");
						AbilityState = XComGameState_Ability(History.GetGameStateForObjectID(EffectState.ApplyEffectParameters.AbilityStateObjectRef.ObjectID));
						if (AbilityState != none)
						{
							SourceUnit.ActionPoints.AddItem(class'X2CharacterTemplateManager'.default.StandardActionPoint);
							SourceUnit.SetUnitFloatValue('RefundsThisTurn', CountUnitValue.fValue + 1, eCleanup_BeginTurn);
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

static function logIfDebugEnabled(string message)
{
	if(class'X2Ability_Favid'.default.FAVID_DEBUG_LOGGING)
	{
		`LOG(message);
	}
}