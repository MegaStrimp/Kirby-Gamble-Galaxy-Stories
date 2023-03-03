///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdleL = spr_Cappy_Normal_IdleL;
		sprIdleR = spr_Cappy_Normal_IdleR;
		sprShroomIdle = spr_Cappy_Normal_ShroomIdle;
		sprHurtCapless = spr_Cappy_Normal_Hurt;
		sprShroom = spr_Cappy_Normal_Shroom;
		break;
		
		//Robo
		
		case 1:
		sprIdleL = spr_Cappy_Robo_IdleL;
		sprIdleR = spr_Cappy_Robo_IdleR;
		sprShroomIdle = spr_Cappy_Robo_ShroomIdle;
		sprHurtCapless = spr_Cappy_Robo_Hurt;
		sprShroom = spr_Cappy_Robo_Shroom;
		break;
	}
	sprHurt = sprHurtCapless;
	if (state == 1) attackStopTimer = attackStopTimerMax;
}
#endregion

#region Event Inherited
event_inherited();
#endregion