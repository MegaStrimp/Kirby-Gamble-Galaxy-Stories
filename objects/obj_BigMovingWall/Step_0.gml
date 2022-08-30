///@description Main

//Event Inherited

event_inherited();

if (!global.pause)
{
	if (active)
	{
		switch (state)
		{
			case movingWallAttributes.asteroidFields1_1:
			hsp = spd;
			if (x >= 4200)
			{
				x = 4200;
				hsp = 0;
				active = false;
			}
			break;
			
			case movingWallAttributes.asteroidFields3_1:
			hsp = spd;
			if (x <= 720)
			{
				x = 720;
				hsp = 0;
				active = false;
			}
			break;
			
			case movingWallAttributes.asteroidFields3_2:
			hsp = spd;
			if (x >= 1896)
			{
				x = 1896;
				hsp = 0;
				active = false;
			}
			break;
			
			case movingWallAttributes.asteroidFields3A_1:
			vsp = spd;
			if (y <= 156)
			{
				y = 156;
				vsp = 0;
				active = false;
			}
			break;
			
			case movingWallAttributes.asteroidFields3A_2:
			vsp = spd;
			if (y <= 180)
			{
				y = 180;
				vsp = 0;
				active = false;
			}
			break;
			
			case movingWallAttributes.asteroidFields4_1:
			vsp = spd;
			if (y <= 312)
			{
				y = 312;
				vsp = 0;
				active = false;
			}
			break;
			
			case movingWallAttributes.asteroidFields5_1:
			hsp = spd;
			if (x >= 3456)
			{
				x = 3456;
				hsp = 0;
				active = false;
			}
			break;
			
			case movingWallAttributes.asteroidFields5_2:
			hsp = spd;
			if (x >= 3744)
			{
				x = 3744;
				hsp = 0;
				active = false;
			}
			break;
		}
	}
	else
	{
		if (activate)
		{
			shakeX = 2;
			if (canBeActivated)
			{
				switch (state)
				{
					case movingWallAttributes.asteroidFields5_1:
					with (obj_BigMovingWall) if (state == movingWallAttributes.asteroidFields5_2) activate = true;
					break;
				}
				canBeActivated = false;
				activateTimer = activateTimerMax;
			}
		}
	}
	
	#region Activate Timer
	if (activateTimer > 0)
	{
		activateTimer -= 1;
	}
	else if (activateTimer == 0)
	{
		active = true;
		activate = false;
		shakeX = 0;
		activateTimer = -1;
	}
	#endregion
}
else
{
	hsp = 0;
	vsp = 0;
}