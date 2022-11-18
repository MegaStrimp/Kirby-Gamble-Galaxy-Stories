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
	
	//Get Inhaled
	
	scr_Object_Inhale(false);
	
	//Position
	
	if (active)
	{
		spd += .05;
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
		point_direction(x,y,obj_Player.x,obj_Player.y);
		active = true;
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