///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Grizzo_Normal_Idle;
		sprWalk = spr_Grizzo_Normal_Walk;
		sprDash = spr_Grizzo_Normal_Dash;
		sprSleep = spr_Grizzo_Normal_Sleep;
		sprHurt = spr_Grizzo_Normal_Hurt;
		break;
	}
	if (state == 1) attackTimer = 0;
}
#endregion

#region Event Inherited
event_inherited();
#endregion