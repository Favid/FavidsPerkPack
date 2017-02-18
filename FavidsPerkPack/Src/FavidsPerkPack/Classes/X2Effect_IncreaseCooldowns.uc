//---------------------------------------------------------------------------------------
//  FILE:    X2Effect_IncreaseCooldowns.uc
//  AUTHOR:  David Burchanowski
//
//  Removes x turns from the cooldown counters on a unit
//           
//---------------------------------------------------------------------------------------
//  Copyright (c) 2016 Firaxis Games, Inc. All rights reserved.
//---------------------------------------------------------------------------------------
class X2Effect_IncreaseCooldowns extends X2Effect;

// Amount of cooldown to remove. If there are 5 turns remaining on an ability and Amount is 3,
// then after applying this effect only 2 turns will remain.
var int Amount;

// If true, Amount is ignored and cooldown is increased to maximum.
var bool IncreaseAll;

// Optional. If specified, only the given abilities will be increased. If empty,
// all abilities attached to this unit will be increased
var array<name> AbilitiesToTick;

simulated protected function OnEffectAdded(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState, XComGameState_Effect NewEffectState)
{
	local XComGameStateHistory History;
	local XComGameState_Unit UnitState;
	local StateObjectReference AbilityRef;
	local XComGameState_Ability AbilityState;
	local int maxCooldown;

	History = `XCOMHISTORY;

	UnitState = XComGameState_Unit(kNewTargetState);
	if(UnitState == none)
	{
		`Redscreen("X2Effect_ReduceCooldowns applied to " $ self $ ", this is meaningless as there are no abilities.");
		return;
	}

	// apply the desired reduction to every ability on the unit
	foreach UnitState.Abilities(AbilityRef)
	{
		AbilityState = XComGameState_Ability(History.GetGameStateForObjectID(AbilityRef.ObjectID));
		`assert(AbilityState != none);

		if(AbilityState.iCooldown > 0)
		{
			if(AbilitiesToTick.Length == 0 || AbilitiesToTick.Find(AbilityState.GetMyTemplateName()) != INDEX_NONE)
			{
				maxCooldown = AbilityState.GetMyTemplate().AbilityCooldown.iNumTurns;
				AbilityState = XComGameState_Ability(NewGameState.CreateStateObject(AbilityState.Class, AbilityState.ObjectID));
				AbilityState.iCooldown = IncreaseAll ? maxCooldown : Min(AbilityState.iCooldown + Amount, maxCooldown);
				NewGameState.AddStateObject(AbilityState);
			}
		}
	}
}

defaultproperties
{
	IncreaseAll = false
	Amount = 1
}