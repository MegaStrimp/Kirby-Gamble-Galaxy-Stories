///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_BurningLeo_Normal_Idle;
		sprWalk = spr_BurningLeo_Normal_Walk;
		sprDuck = spr_BurningLeo_Normal_Duck;
		sprJump = spr_BurningLeo_Normal_Jump;
		sprFall = spr_BurningLeo_Normal_Fall;
		sprCharge = spr_BurningLeo_Normal_Charge;
		sprAttack = spr_BurningLeo_Normal_Attack;
		sprHurt = spr_BurningLeo_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion