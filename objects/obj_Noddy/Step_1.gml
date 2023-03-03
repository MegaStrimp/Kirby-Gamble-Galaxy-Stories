///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Noddy_Normal_Idle;
		sprWalk = spr_Noddy_Normal_Walk;
		sprSleep = spr_Noddy_Normal_Sleep;
		sprHurt = spr_Noddy_Normal_Hurt;
		break;
	}
	if (state == 1)
	{
		sleepReadyTimer = -1;
		sleepStopTimer = sleepStopTimerMax;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion