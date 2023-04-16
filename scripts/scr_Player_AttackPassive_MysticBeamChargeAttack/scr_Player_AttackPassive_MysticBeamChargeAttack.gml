///@description Player - Attack Passive - Mystic Beam Charge Attack

function scr_Player_AttackPassive_MysticBeamChargeAttack()
{
	if (instance_exists(mysticBeamCharge))
	{
		#region Change Direction
		if (mysticBeamCharge.x < x)
		{
			dir = -1;
		}
		else
		{
			dir = 1;
		}
		#endregion
	}
	else
	{
		#region Cancel Attack
		attackTimer = 0;
		#endregion
	}
}