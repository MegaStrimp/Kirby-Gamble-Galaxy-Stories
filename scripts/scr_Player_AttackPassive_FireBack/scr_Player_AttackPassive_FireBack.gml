///@description Player - Attack Passive - Fire Back

function scr_Player_AttackPassive_FireBack()
{
	#region Cancel Attack
	if ((!global.cutscene) and (keyAttackReleased)) attackTimer = 0;
	#endregion
}