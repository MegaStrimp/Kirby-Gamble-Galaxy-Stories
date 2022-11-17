///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Doomsday_Normal_StarProjectile;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Position
	
	if (active)
	{
		spd += .1;
		hsp = lengthdir_x(spd,targetDir);
		vsp = lengthdir_y(spd,targetDir);
	}
	
	x += hsp;
	y += vsp;
	
	//Active Timer
	
	if (activeTimer > 0)
	{
		activeTimer -= 1;
	}
	else if (activeTimer == 0)
	{
		instance_destroy();
		activeTimer = -1;
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}