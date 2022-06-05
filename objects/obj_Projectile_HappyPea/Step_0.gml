///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Familiar_HappyPea_Shot;
		break;
	}
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}