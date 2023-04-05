///@description Start Stage

function scr_StartStage()
{
	if (ds_exists(global.collectibleTracker,ds_type_list)) ds_list_destroy(global.collectibleTracker);
	global.collectibleTracker = ds_list_create();
}