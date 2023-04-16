///@description Player - Attack Passive - Spark Normal

function scr_Player_AttackPassive_SparkNormal()
{
	#region Cancel Attack
	if (sparkCooldown > 0) sparkCooldown -= 1;
	if (sparkCooldown <= 0)
	{
		if (keyAttackReleased) attackTimer = 0;
	}
	else if (keyAttackReleased) attackTimer = 10;
	#endregion
}