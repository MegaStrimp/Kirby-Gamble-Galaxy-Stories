///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_LaserBall_Normal_Laser;
		sprBall = spr_Projectile_LaserBall_Normal_Ball;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion