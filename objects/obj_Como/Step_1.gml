///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Como_Normal_Idle;
		sprFall = spr_Como_Normal_Fall;
		sprHurt1 = spr_Como_Normal_Hurt1;
		sprHurt2 = spr_Como_Normal_Hurt2;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion