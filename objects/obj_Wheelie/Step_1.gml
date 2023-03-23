///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_Wheelie_Normal_Idle;
		sprDecel1 = spr_Wheelie_Normal_Decel1;
		sprDecel2 = spr_Wheelie_Normal_Decel2;
		sprHurt = spr_Wheelie_Normal_Hurt;
		break;
		#endregion
		
		#region KSSU
		case 1:
		sprIdle = spr_Wheelie_KSSU_Idle;
		sprDecel1 = spr_Wheelie_KSSU_Decel1;
		sprDecel2 = spr_Wheelie_KSSU_Decel2;
		sprHurt = spr_Wheelie_KSSU_Hurt;
		break;
		#endregion
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion