///@description Player - Attack Passive - Mystic Beam Air

function scr_Player_AttackPassive_MysticBeamAir()
{
	#region Set Attack Timer
	if (mysticBeamAttack2Timer == -1) mysticBeamAttack2Timer = (mysticBeamAttack2TimerMax + irandom_range(-1,1));
	#endregion
	
	#region Cancel Attack
	if (grounded)
	{
		if (audio_is_playing(sndMysticBeam)) audio_stop_sound(sndMysticBeam);
								
		attack = false;
		attackable = true;
		attackNumber = playerAttacks.none;
		mysticBeamAttack2Timer = -1;
	}
	#endregion
}