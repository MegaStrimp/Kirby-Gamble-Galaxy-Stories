///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_Tomatoo;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{	
	//Event Inherited
	
	event_inherited();
	
	//Gravity
	
	if (vsp < gravLimit)
	{
		vsp += grav;
	}
	else
	{
		vsp = gravLimit;
	}
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	sprite_index = sprIdle;
	
	image_speed = 1;
}
else
{
	image_speed = 0;
}