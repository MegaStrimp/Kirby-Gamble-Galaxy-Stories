///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	#region Position
	x += hsp;
	y += vsp;
	#endregion
	
	#region Invis Timer
	if (invisTimer > 0)
	{
		invisTimer -= 1;
	}
	else if (invisTimer == 0)
	{
		if (visible)
		{
			visible = false;
		}
		else
		{
			visible = true;
		}
		invisTimer = invisTimerMax;
	}
	#endregion
	
	#region Animation
	image_speed = 1;
	
	sprite_index = sprIdle;
	#endregion
}
else
{
	image_speed = 0;
}