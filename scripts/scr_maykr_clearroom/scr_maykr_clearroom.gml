///@description Maykr Clear

function scr_Maykr_ClearRoom()
{
	with (obj_Maykr_Spawner) instance_destroy();
	
	if (tileDebug != -1) tilemap_clear(tileDebug,0);
	if (tileAsteroidFieldsFront != -1) tilemap_clear(tileAsteroidFieldsFront,0);
	if (tileAsteroidFieldsFront3D1 != -1) tilemap_clear(tileAsteroidFieldsFront3D1,0);
	if (tileAsteroidFieldsFront3D2 != -1) tilemap_clear(tileAsteroidFieldsFront3D2,0);
	
	tileDebug = -1;
	tileAsteroidFieldsFront = -1;
	tileAsteroidFieldsFront3D1 = -1;
	tileAsteroidFieldsFront3D2 = -1;
}