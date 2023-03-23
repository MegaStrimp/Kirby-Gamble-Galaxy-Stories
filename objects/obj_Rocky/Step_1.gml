///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Rocky_Normal_Idle;
		sprWalk = spr_Rocky_Normal_Walk;
		sprJump = spr_Rocky_Normal_Jump;
		sprHurtGround = spr_Rocky_Normal_HurtGround;
		sprHurtAir = spr_Rocky_Normal_HurtAir;
		sprHurt = sprHurtGround;
		break;
		
		//KSSU
		
		case 1:
		sprIdle = spr_Rocky_KSSU_Idle;
		sprWalk = spr_Rocky_KSSU_Walk;
		sprJump = spr_Rocky_KSSU_Jump;
		sprHurtGround = spr_Rocky_KSSU_HurtGround;
		sprHurtAir = spr_Rocky_KSSU_HurtAir;
		sprHurt = sprHurtGround;
		break;
	}
	if ((state == 0) or (state == 2)) attackTimer = -1;
	if (state == 2) phase2Timer = phase2TimerMax;
}
#endregion

#region Event Inherited
event_inherited();
#endregion