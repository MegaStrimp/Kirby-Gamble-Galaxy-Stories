///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Get Inhaled
	
	scr_Object_Inhale(false);
	
	//Position
	
	if (active)
	{
		spd += .05;
		hsp = lengthdir_x(spd,targetDir);
		vsp = lengthdir_y(spd,targetDir);
	}
	
	x += hsp;
	y += vsp;
	
	//Active Timer
	
	if (activeTimer > 0)
	{
		activeTimer -= 1;
	}
	else if (activeTimer == 0)
	{
		point_direction(x,y,obj_Player.x,obj_Player.y);
		active = true;
		activeTimer = -1;
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}