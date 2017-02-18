class X2Effect_Concentration extends X2Effect_Persistent;

function bool ShotsCannotGraze() 
{
	return true;
}

DefaultProperties
{
	EffectName = "Concentration"
	DuplicateResponse = eDupe_Refresh
}