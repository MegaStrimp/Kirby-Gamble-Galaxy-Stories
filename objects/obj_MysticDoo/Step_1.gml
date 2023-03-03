///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_MysticDoo_Normal_Idle;
		sprFloatUp = spr_MysticDoo_Normal_FloatUp;
		sprFloatTrans = spr_MysticDoo_Normal_FloatTrans;
		sprFloatDown = spr_MysticDoo_Normal_FloatDown;
		sprCharge = spr_MysticDoo_Normal_Charge;
		sprAttack = spr_MysticDoo_Normal_Attack;
		sprWave = spr_MysticDoo_Normal_Wave;
		sprWalk = spr_MysticDoo_Normal_Walk;
		sprWalkIdle = spr_MysticDoo_Normal_WalkIdle;
		sprHurt = spr_MysticDoo_Normal_Hurt;
		break;
		#endregion
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion