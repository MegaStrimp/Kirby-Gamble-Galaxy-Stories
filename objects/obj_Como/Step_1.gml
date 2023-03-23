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
		sprHurt = spr_Como_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion