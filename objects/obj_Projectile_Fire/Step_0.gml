///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Position
	
	x += hsp;
	y += vsp;
	
	//Animation
	
	image_speed = imageSpeed;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}