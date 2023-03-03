///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Ufo_Normal_Idle;
		sprWalk = spr_Ufo_Normal_Walk;
		sprHurt = spr_Ufo_Normal_Hurt;
		sprBeam = spr_Ufo_Normal_Beam;
		break;
	}
	if (state == 1) moveTimer = -1;
}
#endregion

#region Event Inherited
event_inherited();
#endregion