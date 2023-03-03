///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Sparky_Normal_Idle;
		sprWalk = spr_Sparky_Normal_Walk;
		sprJump = spr_Sparky_Normal_Jump;
		sprCharge = spr_Sparky_Normal_Charge;
		sprAttack = spr_Sparky_Normal_Attack;
		sprHurt = spr_Sparky_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion