///@description Main

if (!global.pause)
{
	
	//Aura Timer
	
	if (auraTimer > 0)
	{
		auraTimer -= 1;
	}
	else if (auraTimer == 0)
	{
		if (hasAura)
		{
			hasAura = false;
		}
		else
		{
			hasAura = true;
		}
		auraTimer = auraTimerMax;
	}
	
	//Animation
	
	image_speed = 1;
}
else
{
	image_speed = 0;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}