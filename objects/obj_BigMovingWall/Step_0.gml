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
			if (x <= 72)
			{
				x = 72;
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
			if (y <= 552)
			{
				y = 552;
				vsp = 0;
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