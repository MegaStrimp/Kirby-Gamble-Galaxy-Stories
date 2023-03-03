///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Kabu_Normal_Idle;
		sprWalk = spr_Kabu_Normal_Walk;
		sprRun = spr_Kabu_Normal_Run;
		sprDuck = spr_Kabu_Normal_Duck;
		sprHurt = -1;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion