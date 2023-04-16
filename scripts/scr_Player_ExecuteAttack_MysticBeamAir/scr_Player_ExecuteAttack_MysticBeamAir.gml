///@description Execute Attack - Mystic Beam Air

function scr_Player_ExecuteAttack_MysticBeamAir()
{
	#region Sound Effect
	if (audio_is_playing(snd_BeamAir)) audio_stop_sound(snd_BeamAir);
	sndMysticBeam = audio_play_sound(snd_BeamAir,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.mysticBeamAir;
	attackTimer = 45;
	jumpLimit = false;
	jumpLimitTimer = jumpLimitTimerMax;
	vsp = -(jumpspeed / 2);
	grounded = false;
	mysticBeamAttack2Timer = 0;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprBeamAttack2;
	image_index = 0;
	#endregion
}