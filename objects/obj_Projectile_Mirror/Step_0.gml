///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Position
	
	x += hsp;
	y += vsp;
	
	//Shine Timer
	
	if (shineTimer > 0)
	{
		shineTimer -= 1;
	}
	else if (shineTimer == 0)
	{
		if (shine)
		{
			shine = false;
		}
		else
		{
			shine = true;
		}
		shineTimer = shineTimerMax;
	}
	
	//Animation
	
	image_speed = 1;
	
	if (shine)
	{
		sprite_index = sprShine;
	}
	else
	{
		sprite_index = sprIdle;
	}
}
else
{
	image_speed = 0;
}