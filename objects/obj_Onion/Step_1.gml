///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Onion_Normal_Idle;
		sprThrow = spr_Onion_Normal_Throw;
		sprHurt = -1;
		break;
	}
	
	var nearestPlayer = -1;
	nearestPlayer = instance_nearest(x,y,obj_Player);
	if (state == 0)
	{
		if (nearestPlayer != -1)
		{
			direction = point_direction(x,y,nearestPlayer.x,nearestPlayer.y);
			image_angle = direction + 90;
		}
	}
	else if (state == 1)
	{
		groundFailsafe = false;
		depth = layer_get_depth("Collision");
	}
	
	spd = random_range(spd / 2,spd * 1.5);
}
#endregion

#region Event Inherited
event_inherited();
#endregion