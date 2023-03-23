///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
	    destroyTimer = -1;
	}
}