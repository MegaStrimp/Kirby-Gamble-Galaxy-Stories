///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Movement
	
	if (spd < spdMax)
	{
		spd += .2;
	}
	else
	{
		spd = spdMax;
	}
	
	if (instance_exists(target))
	{
		move_towards_point(target.x,target.y,spd);
	}
	else
	{
		instance_destroy();
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	speed = 0;
	image_speed = 0;
}