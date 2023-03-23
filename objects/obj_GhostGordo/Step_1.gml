///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Gordo_Normal_Idle;
		sprHurt = -1;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion