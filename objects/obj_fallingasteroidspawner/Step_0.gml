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
		spawnTimer = spawnTimerMax;
	}
	#endregion
}