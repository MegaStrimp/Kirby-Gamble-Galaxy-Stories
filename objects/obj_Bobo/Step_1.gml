///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Bobo_Normal_Idle;
		sprWalk = spr_Bobo_Normal_Walk;
		sprFall = spr_Bobo_Normal_Fall;
		sprHurt = spr_Bobo_Normal_Hurt;
		sprFlame = spr_Bobo_Normal_Flame;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion