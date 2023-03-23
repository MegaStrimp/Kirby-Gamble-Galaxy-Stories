///@description Main

#region Inputs
scr_Player_Inputs(0);
#endregion

#region Freeze Frame Timer
if (freezeFrameTimer > 0)
{
	freezeFrameTimer -= 1;
	global.pause = true;
}
else if (freezeFrameTimer == 0)
{
	global.pause = false;
	if (bossDeath)
	{
		if (audio_is_playing(snd_BossDeath2)) audio_stop_sound(snd_BossDeath2);
		audio_play_sound(snd_BossDeath2,0,false);
		shakeX = 3;
		shakeY = 3;
		bossDeath = false;
		
		with (obj_Hud)
		{
			hasBossDeathOverlay = false;
			bossDeathColorTimer = -1;
		}
	}
	freezeFrameTimer = -1;
}
#endregion