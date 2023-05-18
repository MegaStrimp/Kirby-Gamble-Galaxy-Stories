///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Jackle_Normal_Idle;
		sprReady = spr_Jackle_Normal_Ready;
		sprAttack = spr_Jackle_Normal_Attack;
		sprReload = spr_Jackle_Normal_Reload;
		sprHurt = spr_Jackle_Normal_Hurt;
		break;
	}
	if (state == 0)
	{
		attackDir = 90 - (dirX * 90);
	}
	else if (state == 1)
	{
		attackDir = 90;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion