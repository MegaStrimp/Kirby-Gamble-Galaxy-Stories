///@description End Stage

function scr_EndStage()
{
	if (ds_exists(global.collectibleTracker,ds_type_list)) ds_list_destroy(global.collectibleTracker);
	
	global.stageCollectibleMax = -1;
	
	global.invinCandyTimerP1 = -1;
	global.invinCandyTimerP2 = -1;
	global.invinCandyTimerP3 = -1;
	global.invinCandyTimerP4 = -1;
	
	global.healthP1 = global.healthP1Max;
	global.healthP2 = global.healthP2Max;
	global.healthP3 = global.healthP3Max;
	global.healthP4 = global.healthP4Max;
}