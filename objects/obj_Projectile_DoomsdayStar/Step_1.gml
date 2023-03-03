///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Doomsday_Normal_StarProjectile;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion