class X2Effect_SlashAndDash extends X2Effect_Persistent;

function RegisterForEvents(XComGameState_Effect EffectGameState)
{
	local X2EventManager EventMgr;
	local XComGameState_Unit UnitState;
	local Object EffectObj;

	EventMgr = `XEVENTMGR;

	EffectObj = EffectGameState;
	UnitState = XComGameState_Unit(`XCOMHISTORY.GetGameStateForObjectID(EffectGameState.ApplyEffectParameters.SourceStateObjectRef.ObjectID));

	EventMgr.RegisterForEvent(EffectObj, 'SlashAndDash', EffectGameState.TriggerAbilityFlyover, ELD_OnStateSubmitted, , UnitState);
}

function bool PostAbilityCostPaid(XComGameState_Effect EffectState, XComGameStateContext_Ability AbilityContext, XComGameState_Ability kAbility, XComGameState_Unit SourceUnit, XComGameState_Item AffectWeapon, XComGameState NewGameState, const array<name> PreCostActionPoints, const array<name> PreCostReservePoints)
{
	local XComGameStateHistory History;
	local X2EventManager EventMgr;
	local XComGameState_Ability AbilityStateSlashAndDash;
	local bool hasEffect;
	local UnitValue CountUnitValue;

	`LOG("================================================");
	`LOG("================================================");
	`LOG("================================================");
	`LOG("SlashAndDash: PostAbilityCostPaid.");

	History = `XCOMHISTORY;

	hasEffect = false;
	foreach SourceUnit.AffectedByEffectNames(EffectName)
	{
		if(EffectName == 'F_SlashAndDashActivator')
		{
			hasEffect = true;
			break;
		}
	}

	if(!hasEffect) 
	{
		`LOG("SlashAndDash: Early out: User does not have Slash and Dash effect");
		return false;
	}

	`LOG("kAbility: " @ kAbility.GetMyTemplateName());
	`LOG("AffectWeapon: " @ AffectWeapon.GetMyTemplateName());

	SourceUnit.GetUnitValue('SlashAndDash_RefundsThisTurn', CountUnitValue);
	if (CountUnitValue.fValue >= 1)
	{
		`LOG("SlashAndDash: Early out: Max refunds reached");
		return false;
	}

	if(!kAbility.IsMeleeAbility())
	{
		`LOG("SlashAndDash: Early out: Ability is not a melee ability");
		return false;
	}

	if (SourceUnit.ActionPoints.Length == PreCostActionPoints.Length)
	{
		`LOG("SlashAndDash: Early out: Ability did not cost an action point");
		return false;
	}

	`LOG("SlashAndDash: Attempting to grant free move action point");
	SourceUnit.ActionPoints.AddItem(class'X2CharacterTemplateManager'.default.MoveActionPoint);
	SourceUnit.SetUnitFloatValue('SlashAndDash_RefundsThisTurn', CountUnitValue.fValue + 1, eCleanup_BeginTurn);
				
	AbilityStateSlashAndDash = XComGameState_Ability(History.GetGameStateForObjectID(EffectState.ApplyEffectParameters.AbilityStateObjectRef.ObjectID));
	EventMgr = `XEVENTMGR;
	EventMgr.TriggerEvent('SlashAndDash', AbilityStateSlashAndDash, SourceUnit, NewGameState);

	return true;
}