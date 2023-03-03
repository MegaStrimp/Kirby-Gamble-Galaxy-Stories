///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Flamer_Normal_Idle;
		sprReady = spr_Flamer_Normal_Ready;
		sprAttack = spr_Flamer_Normal_Attack;
		sprHurt = spr_Flamer_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion