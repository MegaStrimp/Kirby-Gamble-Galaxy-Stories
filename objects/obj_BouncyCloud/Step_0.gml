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
		sprIdle = spr_BouncyCloud_Normal;
		force = 6.5;
		break;
		
		//High
		
		case 1:
		sprIdle = spr_BouncyCloud_High;
		force = 9;
		break;
	}
	xOffset = ((sprite_get_width(sprite_index) - 4) / 2);
	yOffset = 4;
	setupTimer = -1;
}

if (!global.pause)
{
	//Hit Timer
	
	if (hitTimer > 0)
	{
		hitTimer -= 1;
	}
	else if (hitTimer == 0)
	{
		hit = false;
		hitTimer = -1;
	}
	
	//Animation
	
	sprite_index = sprIdle;
	
	if (hit)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
}
else
{
	shake = 0;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}