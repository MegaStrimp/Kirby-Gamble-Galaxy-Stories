///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_WaddleDee_Normal_Idle;
		sprWalk = spr_WaddleDee_Normal_Walk;
		sprRun = spr_WaddleDee_Normal_Run;
		sprDuck = spr_WaddleDee_Normal_Duck;
		sprJump = spr_WaddleDee_Normal_Jump;
		sprFall = spr_WaddleDee_Normal_Fall;
		sprSwing = spr_WaddleDee_Normal_Swing;
		sprParasol = spr_WaddleDee_Normal_Parasol;
		sprClimbUp = spr_WaddleDee_Normal_ClimbUp;
		sprClimbDown = spr_WaddleDee_Normal_ClimbDown;
		sprHurt = spr_WaddleDee_Normal_Hurt;
		break;
		
		//Egg
		
		case 1:
		sprIdle = spr_WaddleDee_Egg_Idle;
		sprWalk = spr_WaddleDee_Egg_Walk;
		sprRun = spr_WaddleDee_Normal_Run;
		sprDuck = spr_WaddleDee_Egg_Duck;
		sprJump = spr_WaddleDee_Egg_Jump;
		sprFall = spr_WaddleDee_Egg_Fall;
		sprSwing = spr_WaddleDee_Egg_Swing;
		sprParasol = spr_WaddleDee_Normal_Parasol;
		sprClimbUp = spr_WaddleDee_Egg_ClimbUp;
		sprClimbDown = spr_WaddleDee_Egg_ClimbDown;
		sprHurt = spr_WaddleDee_Egg_Hurt;
		break;
		
		//Gold
		
		case 2:
		sprIdle = spr_WaddleDee_Gold_Idle;
		sprWalk = spr_WaddleDee_Gold_Walk;
		sprRun = spr_WaddleDee_Normal_Run;
		sprDuck = spr_WaddleDee_Gold_Duck;
		sprJump = spr_WaddleDee_Gold_Jump;
		sprFall = spr_WaddleDee_Gold_Fall;
		sprSwing = spr_WaddleDee_Gold_Swing;
		sprParasol = spr_WaddleDee_Normal_Parasol;
		sprClimbUp = spr_WaddleDee_Gold_ClimbUp;
		sprClimbDown = spr_WaddleDee_Gold_ClimbDown;
		sprHurt = spr_WaddleDee_Gold_Hurt;
		shineEffectTimer = shineEffectTimerMax;
		break;
		
		//Alien
		
		case 3:
		sprIdle = spr_WaddleDee_Alien_Idle;
		sprWalk = spr_WaddleDee_Alien_Walk;
		sprRun = spr_WaddleDee_Normal_Run;
		sprDuck = spr_WaddleDee_Alien_Duck;
		sprJump = spr_WaddleDee_Alien_Jump;
		sprFall = spr_WaddleDee_Alien_Fall;
		sprSwing = spr_WaddleDee_Alien_Swing;
		sprParasol = spr_WaddleDee_Normal_Parasol;
		sprClimbUp = spr_WaddleDee_Alien_ClimbUp;
		sprClimbDown = spr_WaddleDee_Alien_ClimbDown;
		sprHurt = spr_WaddleDee_Alien_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion