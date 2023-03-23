///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_Doomsday_Normal_Bomb;
		break;
		#endregion
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion