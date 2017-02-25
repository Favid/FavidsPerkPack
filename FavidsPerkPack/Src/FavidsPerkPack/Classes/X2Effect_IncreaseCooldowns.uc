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

// Amount of cooldown to increase. Cannot be increased beyond the abilities' max cooldown.
var int Amount;

// If true, Amount is ignored and cooldown is increased to maximum.
var bool IncreaseAll;

// Optional. If specified, only the given abilities will be increased. If empty,
// all abilities attached to this unit will be increased
var array<name> AbilitiesToTick;

// If true, only abilities that have a current cooldown > 0.
var bool OnlyAlreadyOnCooldown;

simulated protected function OnEffectAdded(const out EffectAppliedData ApplyEffectParameters, XComGameState_BaseObject kNewTargetState, XComGameState NewGameState, XComGameState_Effect NewEffectState)
{
	local XComGameStateHistory History;
	local XComGameState_Unit UnitState;
	local StateObjectReference AbilityRef;
	local XComGameState_Ability AbilityState;

	History = `XCOMHISTORY;

	UnitState = XComGameState_Unit(kNewTargetState);
	if(UnitState == none)
	{
		return;
	}

	foreach UnitState.Abilities(AbilityRef)
	{
		AbilityState = XComGameState_Ability(History.GetGameStateForObjectID(AbilityRef.ObjectID));

		if(shouldIncreaseAbilityCooldown(AbilityState))
		{
			increaseAbilityCooldown(AbilityState, NewGameState);
		}

	}
}

private function bool shouldIncreaseAbilityCooldown(XComGameState_Ability AbilityState)
{
	if(AbilityState != none)
	{
		if(AbilityState.iCooldown > 0 || !OnlyAlreadyOnCooldown)
		{
			if(AbilitiesToTick.Length == 0 || AbilitiesToTick.Find(AbilityState.GetMyTemplateName()) != INDEX_NONE)
			{
				return true;
			}
		}
	}
	
	return false;
}

private function increaseAbilityCooldown(XComGameState_Ability AbilityState, XComGameState NewGameState)
{
	local int maxCooldown;

	maxCooldown = AbilityState.GetMyTemplate().AbilityCooldown.iNumTurns;
	AbilityState = XComGameState_Ability(NewGameState.CreateStateObject(AbilityState.Class, AbilityState.ObjectID));

	if(IncreaseAll)
	{
		AbilityState.iCooldown = maxCooldown;
	}
	else
	{
		AbilityState.iCooldown = Min(AbilityState.iCooldown + Amount, maxCooldown);
	}

	NewGameState.AddStateObject(AbilityState);
}

defaultproperties
{
	IncreaseAll = false
	Amount = 1
	OnlyAlreadyOnCooldown = false
}