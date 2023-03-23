///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_MrBoogie_Normal_Idle;
		sprWalk = spr_MrBoogie_Normal_Walk;
		sprDuck = spr_WaddleDee_Normal_Duck;
		sprJump = spr_WaddleDee_Normal_Jump;
		sprFall = spr_WaddleDee_Normal_Fall;
		sprSwing = spr_WaddleDee_Normal_Swing;
		sprHurt = spr_MrBoogie_Normal_Hurt;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion