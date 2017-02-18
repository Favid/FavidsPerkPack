class XMBCondition_ActionPointsRemaining extends X2Condition;

var int PointsRequired;

//event name CallMeetsConditionWithSource(XComGameState_BaseObject kTarget, XComGameState_BaseObject kSource)
//{
	//local XComGameState_Unit SourceState;
//
	//SourceState = XComGameState_Unit(kTarget);
//
	//`LOG("StandYourGround Action Points Remaining:" @ string(SourceState.ActionPoints.Length));
//
	//if (SourceState == none)
	//{
		//return 'AA_NotAUnit';
	//}
//
	//if (SourceState.ActionPoints.Length < PointsRequired)
	//{
		//return 'AA_NotEnoughActionPointsRemaining';  // NOTE: Nonstandard AA code
	//}
	////return 'AA_NotAUnit';
	//return 'AA_Success';
//}

event name CallMeetsCondition(XComGameState_BaseObject kTarget) 
{ 
	local XComGameState_Unit TargetState;

	TargetState = XComGameState_Unit(kTarget);

	//`LOG("StandYourGround Action Points Remaining:" @ string(TargetState.ActionPoints.Length));

	if (TargetState == none)
	{
		return 'AA_NotAUnit';
	}

	if (TargetState.ActionPoints.Length < PointsRequired)
	{
		return 'AA_NotEnoughActionPointsRemaining';  // NOTE: Nonstandard AA code
	}
	return 'AA_Success';
}