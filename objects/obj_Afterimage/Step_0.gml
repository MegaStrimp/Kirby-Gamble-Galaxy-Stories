///@description Main

//Destroy

if (!global.pause)
{
	//Lower Alpha To Destroy
	
	if ((lowerAlphaToDestroy) and (destroyTimer == 0))
	{
		image_alpha -= .1;
		if (image_alpha <= 0) instance_destroy();
	}
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = 1;
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		if (!lowerAlphaToDestroy)
		{
			instance_destroy();
			destroyTimer = -1;
		}
	}
}
else
{
	image_speed = 0;
}