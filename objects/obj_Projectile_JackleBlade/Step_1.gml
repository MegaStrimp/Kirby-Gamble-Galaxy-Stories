///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_JackleBlade_Normal_Idle;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion