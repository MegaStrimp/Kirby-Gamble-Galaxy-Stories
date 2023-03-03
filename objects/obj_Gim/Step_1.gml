///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Gim_Normal_Idle;
		sprWalk = spr_Gim_Normal_Walk;
		sprHurt = spr_Gim_Normal_Hurt;
		sprJump = spr_Gim_Normal_Jump;
		sprFall = spr_Gim_Normal_Fall;
		sprPrep = spr_Gim_Normal_Prep;
		sprHandFlingDown = spr_GimHand_Normal_FlingDown;
		sprHandFlingMiddle = spr_GimHand_Normal_FlingMiddle;
		sprHandFlingUp = spr_GimHand_Normal_FlingUp;
		sprHandHoldClose = spr_GimHand_Normal_HoldClose;
		sprHandHoldAway = spr_GimHand_Normal_HoldAway;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion