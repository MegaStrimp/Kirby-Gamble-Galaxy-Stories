/// @description Main

if (!global.pause)
{
	if (!isTop)
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
		image_speed = 1;
		var animIndex = 0;
		if ((fire != -1) and (instance_exists(fire)))
		{
			if (fire.readyTimer != -1)
			{
				animIndex = 1;
			}
			else
			{
				animIndex = 2;
			}
		}
		
		switch (animIndex)
		{
			case 0:
			sprite_index = sprIdle;
			topWall.sprite_index = sprTop;
			break;
			
			case 1:
			sprite_index = sprIdleReady;
			topWall.sprite_index = sprTopReady;
			break;
			
			case 2:
			sprite_index = sprIdleFire;
			topWall.sprite_index = sprTopFire;
			break;
		}
		#endregion
	}
}
else
{
	image_speed = 0;
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