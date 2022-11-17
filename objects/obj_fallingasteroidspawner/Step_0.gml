///@description Main

if (!global.pause)
{
	#region Spawn Timer
	if (spawnTimer > 0)
	{
		spawnTimer -= 1;
	}
	else if (spawnTimer == 0)
	{
		var nearestPlayer = -1;
		if (instance_exists(obj_Player)) nearestPlayer = instance_nearest(x,y,obj_Player);
		
		if ((minDistance == -1) or ((nearestPlayer != -1) and ((abs(x - nearestPlayer.x)) <= minDistance)))
		{
			var fallingAsteroid = instance_create_depth(x + irandom_range(-randomizer,randomizer),y,depth,obj_FallingAsteroid);
			fallingAsteroid.spd = spd;
			fallingAsteroid.angle = angle;
			
			if (spawnCountMax != -1)
			{
				spawnCount += 1;
				if (spawnCount >= spawnCountMax) instance_destroy();
			}
			spawnTimer = spawnTimerMax + irandom_range(-timerRandomizer,timerRandomizer);
		}
	}
	#endregion
}