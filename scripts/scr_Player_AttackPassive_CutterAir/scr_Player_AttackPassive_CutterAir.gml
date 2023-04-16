///@description Player - Attack Passive - Cutter Air

function scr_Player_AttackPassive_CutterAir()
{
	#region Cancel Attack
	if (keyAttackReleased)
	{
		attackTimer = 0;
	}
	#endregion
}