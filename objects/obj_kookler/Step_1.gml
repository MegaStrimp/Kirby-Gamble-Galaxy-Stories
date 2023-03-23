///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Kookler_Normal_Idle;
		sprHurt = spr_Kookler_Normal_Hurt;
		break;
	}
	
	switch (state)
	{
		case 0:
		followedPath = pth_Enemy_Kookler_Circle;
		break;
		
		case 1:
		followedPath = pth_Enemy_Kookler_Circle;
		break;
	}
	path = path_start(followedPath,spd * walkDirX,path_action_restart,0);
}
#endregion

#region Event Inherited
event_inherited();
#endregion