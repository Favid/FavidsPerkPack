class X2Condition_MentalEffect extends X2Condition;

event name CallMeetsCondition(XComGameState_BaseObject kTarget)
{
	local XComGameState_Unit TargetUnit;

	TargetUnit = XComGameState_Unit(kTarget);
	if (TargetUnit == none)
		return 'AA_NotAUnit';

	if (TargetUnit.IsStunned() || TargetUnit.IsDisoriented() || TargetUnit.bPanicked || TargetUnit.IsUnconscious())
		return 'AA_Success';

	return 'AA_UnitIsNotImpaired';
}