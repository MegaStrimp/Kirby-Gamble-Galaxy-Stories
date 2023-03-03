///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Yolky_Normal_Idle;
		sprShoot = spr_Yolky_Normal_Shoot;
		sprHurt = -1;
		break;
	}
	if (state == 1)
	{
		attackTimer = 0;
		attackCountMax = -1;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion