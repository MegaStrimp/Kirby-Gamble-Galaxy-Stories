///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_BroomHatter_Normal_Idle;
		sprWalk = spr_BroomHatter_Normal_Walk;
		sprHurt = spr_BroomHatter_Normal_Inhale;
		sprHurtNormal = spr_BroomHatter_Normal_Hurt;
		break;
	}
	if (state == 1) attackTimer = -1;
	sprite_index = sprIdle;
}
#endregion

#region Event Inherited
event_inherited();
#endregion