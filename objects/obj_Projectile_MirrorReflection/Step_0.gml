///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_MirrorReflection_Normal_Idle;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Movement
	
	if (spd < spdMax)
	{
		spd += .2;
	}
	else
	{
		spd = spdMax;
	}
	
	if (instance_exists(target))
	{
		move_towards_point(target.x,target.y,spd);
	}
	else
	{
		instance_destroy();
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}