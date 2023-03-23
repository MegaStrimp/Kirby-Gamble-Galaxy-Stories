///@description Enemy - Destroy Outside View

function scr_Enemy_DestroyOutsideView()
{
	checkEnemySpawners = true;
	with (obj_Enemy) if ((id != other.id) and (spawner == other.spawner)) other.checkEnemySpawners = false;
	
	if ((destroyOutsideView) or (hasSpawner))
	{
		var x1 = camera_get_view_x(gameView) - spawnerRange;
		var y1 = camera_get_view_y(gameView) - spawnerRange;
		var x2 = camera_get_view_x(gameView) + camera_get_view_width(gameView) + spawnerRange;
		var y2 = camera_get_view_y(gameView) + camera_get_view_height(gameView) + spawnerRange;
		
		if (!point_in_rectangle(x,y,x1,y1,x2,y2))
		{
			if ((checkEnemySpawners) and (hasSpawner)) spawner.spawn = true;
			if (instance_exists(parasolObject)) instance_destroy(parasolObject);
			instance_destroy();
		}
	}
}