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
		sprIdle = spr_Trampoline_Normal;
		break;
	}
	setupTimer = -1;
}

if (!global.pause)
{
	//Clamp Jump Count
	
	jumpCount = clamp(jumpCount,0,jumpCountMax);
	
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
	
	//Reset Timer
	
	if (resetTimer > 0)
	{
		resetTimer -= 1;
	}
	else if (resetTimer == 0)
	{
		jumpCount = 0;
		resetTimer = -1;
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

#region Debug Delete
if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}
#endregion