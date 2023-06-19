/// @description Main

if (!global.pause)
{
	#region Attack Timer
	if (attackTimer != -1)
	{
		attackTimer = max(attackTimer - speedMultFinal,0);
		if (attackTimer == 0)
		{
			fire = instance_create_depth(x + 12,y - 4,depth - 1,obj_FirePuffBlock_Fire);
			fire.owner = id;
			fire.readyTimer = fireReadyTimerMax;
			attackTimer = attackTimerMax;
		}
	}
	#endregion
	
	#region Animation
	image_index = 0;
	if ((fire != -1) and (instance_exists(fire)))
	{
		if (fire.readyTimer != -1)
		{
			image_index = 1;
		}
		else
		{
			image_index = 2;
		}
	}
	#endregion
}

#region Debug Delete
if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}
#endregion