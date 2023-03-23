///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Position
	
	x += hsp;
	y += vsp;
	
	//Trail Timer
	
	if (trailTimer > 0)
	{
		trailTimer -= 1;
	}
	else if (trailTimer == 0)
	{
		var afterimage = instance_create_depth(x,y,depth,obj_Afterimage);
		afterimage.sprite_index = sprite_index;
		afterimage.image_angle = image_angle;
		afterimage.image_xscale = image_xscale;
		afterimage.image_alpha = .1;
		afterimage.destroyTimer = 4;
		trailTimer = trailTimerMax;
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}