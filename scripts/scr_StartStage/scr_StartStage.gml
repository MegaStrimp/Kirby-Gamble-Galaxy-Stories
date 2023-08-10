///@description Start Stage

function scr_StartStage()
{
	#region Collectible Tracker
	if (ds_exists(global.collectibleTracker,ds_type_list)) ds_list_destroy(global.collectibleTracker);
	global.collectibleTracker = ds_list_create();
	#endregion
	
	#region Stage Collectibles
	if (!loaded)
	{
		switch (global.currentStage)
		{
			case stages.greenGreens:
			global.stageCollectibleMax = 4;
			break;
		}
		loaded = true;
	}
	#endregion
}