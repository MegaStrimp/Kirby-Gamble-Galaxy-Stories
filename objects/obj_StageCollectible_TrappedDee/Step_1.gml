///@description Begin Step

#region Character Setup
if (characterSetup)
{
	sprIdle = spr_StageCollectibles_TrappedDee;
	sprLeaf = spr_CuttableGrass_Normal_Top;
	
	characterSetup = false;
}
#endregion

#region Spawn If Already Collected
if (global.stageCollectible_GreenGreens[number]) spawn = true;
#endregion