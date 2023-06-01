///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Bouncy_Normal_Idle;
		sprJump = spr_Bouncy_Normal_Jump;
		sprDuck = spr_Bouncy_Normal_Duck;
		sprLongDuck = spr_Bouncy_Normal_LongDuck;
		sprHurt = spr_Bouncy_Normal_Hurt;
		break;
		
		//Robo
		
		case 1:
		sprIdle = spr_Bouncy_Robo_Idle;
		sprJump = spr_Bouncy_Robo_Jump;
		sprDuck = spr_Bouncy_Robo_Duck;
		sprLongDuck = spr_Bouncy_Robo_Duck;
		sprHurt = spr_Bouncy_Robo_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion