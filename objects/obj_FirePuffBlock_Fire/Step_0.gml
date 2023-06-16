///@description Main

if (!global.pause)
{
	#region Hurt Player
	if (!ready) scr_Enemy_HurtsPlayer(1);
	#endregion
	
	#region Ready Timer
	if (readyTimer != -1)
	{
		readyTimer = max(readyTimer - speedMultFinal,0);
		if (readyTimer == 0)
		{
			ready = false;
			destroyTimer = destroyTimerMax;
			readyTimer = -1;
		}
	}
	#endregion
	
	#region Destroy Timer
	if (destroyTimer != -1)
	{
		destroyTimer = max(destroyTimer - speedMultFinal,0);
		if (destroyTimer == 0)
		{
			instance_destroy();
			destroyTimer = -1;
		}
	}
	#endregion
	
	#region Animation
	image_speed = 1;
	
	if (ready)
	{
		sprite_index = sprReady;
	}
	else
	{
		sprite_index = sprIdle;
	}
	#endregion
}
else
{
	image_speed = 0;
}