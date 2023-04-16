///@description Player - Attack Passive - Ice Normal

function scr_Player_AttackPassive_IceNormal()
{
	if ((!iceReady) and (!iceRelease))
	{
		#region Set Attack Timer
		if (iceNormalAttackTimer == -1) iceNormalAttackTimer = iceNormalAttackTimerMax;
		#endregion
								
		#region Cancel Attack
		if ((!global.cutscene) and (keyAttackReleased))
		{
			iceRelease = true;
			sprite_index = sprIceAttack1Release;
			image_index = 0;
		}
		#endregion
	}
}