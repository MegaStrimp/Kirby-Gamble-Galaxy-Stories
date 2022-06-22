///@description Maykr Clear

function scr_Maykr_ClearRoom()
{
	with (obj_Maykr_Spawner) instance_destroy();
	
	if (tileDebug != -1) tilemap_clear(tileDebug,0);
	if (tileAsteroidFieldsFront != -1) tilemap_clear(tileAsteroidFieldsFront,0);
	
	tileDebug = -1;
	tileAsteroidFieldsFront = -1;
}