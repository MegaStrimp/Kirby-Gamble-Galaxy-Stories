///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_WaddleDoo_Normal_Idle;
		sprWalk = spr_WaddleDoo_Normal_Walk;
		sprDuck = spr_WaddleDoo_Normal_Duck;
		sprJump = spr_WaddleDoo_Normal_Jump;
		sprFall = spr_WaddleDoo_Normal_Fall;
		sprSwing = spr_WaddleDoo_Normal_Swing;
		sprClimbUp = spr_WaddleDoo_Normal_ClimbUp;
		sprClimbDown = spr_WaddleDoo_Normal_ClimbDown;
		sprCharge = spr_WaddleDoo_Normal_Charge;
		sprAttack = spr_WaddleDoo_Normal_Attack;
		sprHurt = spr_WaddleDoo_Normal_Hurt;
		break;
		
		//Bandit
		
		case 1:
		sprIdle = spr_WaddleDoo_Bandit_Idle;
		sprWalk = spr_WaddleDoo_Bandit_Walk;
		sprDuck = spr_WaddleDoo_Bandit_Duck;
		sprJump = spr_WaddleDoo_Bandit_Jump;
		sprFall = spr_WaddleDoo_Bandit_Fall;
		sprSwing = spr_WaddleDoo_Bandit_Swing;
		sprClimbUp = spr_WaddleDoo_Bandit_ClimbUp;
		sprClimbDown = spr_WaddleDoo_Bandit_ClimbDown;
		sprCharge = spr_WaddleDoo_Bandit_Charge;
		sprAttack = spr_WaddleDoo_Bandit_Attack;
		sprHurt = spr_WaddleDoo_Bandit_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion