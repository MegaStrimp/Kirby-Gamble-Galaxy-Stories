///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
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