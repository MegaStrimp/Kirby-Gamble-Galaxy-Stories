///@description Main

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Movement
	
	if (vsp >= decel) vsp -= decel;
	if (vsp <= -decel) vsp += decel;
	if ((vsp > -decel) and (vsp < decel)) vsp = 0;
	
	path_speed = spd;
	
	//Animation
	
	image_speed = 1;
	
	if (hurt)
	{
		sprite_index = sprHurt;
	}
	else
	{
		sprite_index = sprIdle;
	}
}
else
{
	image_speed = 0;
	path_speed = 0;
}