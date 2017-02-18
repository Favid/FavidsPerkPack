class X2Effect_Imposition extends X2Effect_Persistent;

function GetToHitModifiers(XComGameState_Effect EffectState, XComGameState_Unit Attacker, XComGameState_Unit Target, XComGameState_Ability AbilityState, class<X2AbilityToHitCalc> ToHitType, bool bMelee, bool bFlanking, bool bIndirectFire, out array<ShotModifierInfo> ShotModifiers)
{
	local ShotModifierInfo AccuracyInfo;

	AccuracyInfo.ModType = eHit_Success;
	AccuracyInfo.Value = class'X2Ability_Favid'.default.IMPOSITION_AIM_BONUS;
	AccuracyInfo.Reason = FriendlyName;
	ShotModifiers.AddItem(AccuracyInfo);

	super.GetToHitModifiers(EffectState, Attacker, Target, AbilityState, ToHitType, bMelee, bFlanking, bIndirectFire, ShotModifiers);
}
