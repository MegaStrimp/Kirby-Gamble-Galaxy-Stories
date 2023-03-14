///@description Player - Attack Passive - Beam Air

function scr_Player_AttackPassive_BeamAir()
{
	#region Set Attack Timer
	attackable = false;
	if (beamAttack2Timer == -1) beamAttack2Timer = (beamAttack2TimerMax + irandom_range(-1,1));
	#endregion
	
	#region Cancel Attack
	if (grounded) attackTimer = 0;
	#endregion
}