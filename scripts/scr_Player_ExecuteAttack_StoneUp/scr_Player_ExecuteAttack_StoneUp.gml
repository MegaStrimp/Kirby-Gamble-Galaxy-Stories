///@description Execute Attack - Stone Up

function scr_Player_ExecuteAttack_StoneUp()
{
	#region Sound Effect
	if (audio_is_playing(snd_StoneReady)) audio_stop_sound(snd_StoneReady);
	audio_play_sound(snd_StoneReady,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.stoneUp;
	stoneFistReadyTimer = stoneFistReadyTimerMax;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprStoneAttack2Ready;
	image_index = 0;
	#endregion
}