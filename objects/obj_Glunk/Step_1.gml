///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Glunk_Normal_Idle;
		sprHurt = spr_Glunk_Normal_Hurt;
		break;
		
		//Glunker
		
		case 1:
		sprIdle = spr_Glunk_Glunker_Idle;
		sprHurt = spr_Glunk_Glunker_Hurt;
		break;
	}
	if (state == 0)
	{
		attackTimer = -1;
	}
	else
	{
		animDirTimerMax = 25;
		animDirTimer = animDirTimerMax;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion