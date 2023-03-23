///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Movement
	
	speed = spd;
	
	if (rotate)
	{
		var angle_prev = direction;
		var angle_next = 90 - (dirX * 90);
		var angle_diff = angle_difference(angle_prev,angle_next);
		
		angle_next = angle_prev - angle_diff;
		
		direction = lerp(direction,angle_next,dirSpd);
	}
}
else
{
	speed = 0;
	image_speed = 0;
}