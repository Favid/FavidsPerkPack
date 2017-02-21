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
	local XComGameStateHistory History;
	local XComGameState_Unit TargetUnit, PrevTargetUnit;
	local X2EventManager EventMgr;
	local XComGameState_Ability AbilityState;
	local bool flanked;
	local UnitValue CountUnitValue;

	// if we already hit the max number of refunds, return false
	SourceUnit.GetUnitValue('RefundsThisTurn', CountUnitValue);
	if (MaxRefundsPerTurn >= 0 && CountUnitValue.fValue >= MaxRefundsPerTurn)
	{
		return false;
	}

	//  if under the effect of Serial, let that handle restoring the full action cost
	if (SourceUnit.IsUnitAffectedByEffectName(class'X2Effect_Serial'.default.EffectName))
	{
		return false;
	}

	History = `XCOMHISTORY;

	TargetUnit = XComGameState_Unit(NewGameState.GetGameStateForObjectID(AbilityContext.InputContext.PrimaryTarget.ObjectID));

	if (TargetUnit != None)
	{
		PrevTargetUnit = XComGameState_Unit(History.GetGameStateForObjectID(TargetUnit.ObjectID));      
		flanked = TargetUnit.isFlanked(AbilityContext.InputContext.SourceObject);
		
		if (TargetUnit.IsDead() && PrevTargetUnit != None && flanked)
		{
			if (SourceUnit.ActionPoints.Length != PreCostActionPoints.Length)
			{
				AbilityState = XComGameState_Ability(History.GetGameStateForObjectID(EffectState.ApplyEffectParameters.AbilityStateObjectRef.ObjectID));
				if (AbilityState != none)
				{
					SourceUnit.ActionPoints = PreCostActionPoints;

					SourceUnit.SetUnitFloatValue('RefundsThisTurn', CountUnitValue.fValue + 1, eCleanup_BeginTurn);

					EventMgr = `XEVENTMGR;
					EventMgr.TriggerEvent('InTheZone', AbilityState, SourceUnit, NewGameState);

					return true;
				}
					
			}
		}
	}

	return false;
}