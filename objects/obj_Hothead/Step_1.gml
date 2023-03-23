///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Hothead_Normal_Idle;
		sprWalk = spr_Hothead_Normal_Walk;
		sprCharge = spr_Hothead_Normal_Charge;
		sprAttack = spr_Hothead_Normal_Attack;
		sprHurtGround = spr_Hothead_Normal_HurtGround;
		sprHurtAir = spr_Hothead_Normal_HurtAir;
		sprHurt = sprHurtGround;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion