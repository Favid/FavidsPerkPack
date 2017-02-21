class XMBCondition_ActionPointsRemaining extends X2Condition;

var int PointsRequired;

event name CallMeetsCondition(XComGameState_BaseObject kTarget) 
{ 
	local XComGameState_Unit TargetState;

	TargetState = XComGameState_Unit(kTarget);

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