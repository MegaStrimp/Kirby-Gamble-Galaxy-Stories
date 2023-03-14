///@description Execute Attack - Beam Air

function scr_Player_ExecuteAttack_BeamAir()
{
	#region Sound Effect
	if (audio_is_playing(snd_BeamAir)) audio_stop_sound(snd_BeamAir);
	sndBeam = audio_play_sound(snd_BeamAir,0,false);
	#endregion
	
	#region Attack Attributes
	attackTimer = 45;
	attack = true;
	attackNumber = playerAttacks.beamAir;
	hsp = 2 * dir;
	gravLimit = gravLimitBeamAir;
	beamAttack2FirstHit = true;
	jumpLimit = false;
	jumpLimitTimer = jumpLimitTimerMax;
	vsp = -(jumpspeed / 2);
	grounded = false;
	beamAttack2Timer = 0;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprBeamAttack2;
	image_index = 0;
	#endregion
}