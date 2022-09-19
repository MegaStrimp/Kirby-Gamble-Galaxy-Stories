///@description Main

if (!global.pause)
{
	#region Movement
	if (vsp < gravLimit)
	{
		vsp += grav;
	}
	else
	{
		vsp = gravLimit;
	}
	
	x += hsp;
	y += vsp;
	#endregion
	
	#region Destroy
	if (destroy)
	{
		image_alpha -= .05;
		if (image_alpha <= 0) instance_destroy();
	}
	#endregion
	
	#region Destroy Timer
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		destroy = true;
		destroyTimer = -1;
	}
	#endregion
}