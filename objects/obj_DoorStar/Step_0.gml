///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Particle_DoorStar1;
		sprFade = spr_Particle_DoorStar2;
		break;
	}
	setupTimer = -1;
}

if (!global.pause)
{
	//Movement
	
	if (abs(movespeed) > 0)
	{
		movespeed += fric * -dir;
	}
	else
	{
		movespeed = 0;
	}
	
	hsp = movespeed;
	vsp = jumpspeed;
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		if (fade)
		{
			instance_destroy();
			destroyTimer = -1;
		}
		else
		{
			fade = true;
			destroyTimer = destroyTimerMin;
		}
	}
	
	//Animation
	
	image_speed = 1;
	
	if (fade)
	{
		sprite_index = sprFade;
	}
	else
	{
		sprite_index = sprIdle;
	}
}
else
{
	image_speed = 0;
	hsp = 0;
	vsp = 0;
}