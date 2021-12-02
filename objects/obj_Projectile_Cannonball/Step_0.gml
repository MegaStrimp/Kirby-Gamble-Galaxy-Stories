///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_Cannonball_Normal;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Movement
	
	hsp = movespeed;
	vsp = -jumpspeed;
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	angle -= 40;
	if (angle >= 360) angle -= 360;
	if (angle < 0) angle += 360;
	
	spriteX = lengthdir_x(orbit, angle);
	spriteY = lengthdir_y(orbit, angle);
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}