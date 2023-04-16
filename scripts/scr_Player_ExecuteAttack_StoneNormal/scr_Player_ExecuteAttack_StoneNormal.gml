///@description Execute Attack - Stone Normal

function scr_Player_ExecuteAttack_StoneNormal()
{
	#region Sound Effect
	if (audio_is_playing(snd_StoneReady)) audio_stop_sound(snd_StoneReady);
	audio_play_sound(snd_StoneReady,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.stoneNormal;
	invincible = true;
	stoneParticleTimer = 0;
	if (grounded)
	{
		if (isRunning) hsp = (movespeedRun * 3) * dir;
	}
	else
	{
		hsp = 0;
		vsp = -jumpspeed / 2;
		jumpLimit = false;
		jumpLimitTimer = 15;
	}
	#endregion
	
	#region Attack Sprite
	sprite_index = sprStoneAttack1Ready;
	image_index = 0;
	#endregion
}