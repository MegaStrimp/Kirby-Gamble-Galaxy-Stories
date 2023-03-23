///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_YolkyYolk_Normal;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion