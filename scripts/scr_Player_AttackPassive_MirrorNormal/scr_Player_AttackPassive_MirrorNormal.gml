///@description Player - Attack Passive - Mirror Normal

function scr_Player_AttackPassive_MirrorNormal()
{
	if (mirrorHold)
	{
		#region Set Attack Timer
		if (mirrorNormalAttackTimer == -1) mirrorNormalAttackTimer = mirrorNormalAttackTimerMax;
		#endregion
		
		#region Cancel Attack
		if ((!global.cutscene) and (keyAttackReleased))
		{
			mirrorHold = false;
			mirrorFirstAttack = true;
			mirrorAttackDir = 1;
			attackTimer = 15;
			mirrorNormalAttackTimer = -1;
			
			sprite_index = sprMirrorAttack2Release;
			image_index = 0;
		}
		#endregion
	}
}