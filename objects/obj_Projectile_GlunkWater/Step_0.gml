///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Movement
	
	hsp = movespeed;
	vsp = -jumpspeed;
	
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