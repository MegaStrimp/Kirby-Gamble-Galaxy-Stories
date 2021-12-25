///@description Maykr Clear

function scr_MaykrClear()
{
	with (obj_Maykr_Spawner) if (spawnedItemIndex != obj_Player) instance_destroy();
	if (tileDebug != -1) tilemap_clear(tileDebug,0);
	if (tileAsteroidFieldsFront != -1) tilemap_clear(tileAsteroidFieldsFront,0);
}