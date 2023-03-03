///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Get Inhaled
	
	scr_Object_Inhale(false);
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
	
	#region Vsp Stop Timer
	if (vspStopTimer > 0)
	{
		vspStopTimer -= 1;
	}
	else if (vspStopTimer == 0)
	{
		vsp = 0;
		vspStopTimer = -1;
	}
	#endregion
}
else
{
	image_speed = 0;
}