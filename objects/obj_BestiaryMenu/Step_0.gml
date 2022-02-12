///@description Main

if (!global.pause)
{
	//Variables
	
	//Inputs
	
	scr_Player_Inputs(0);
	
	//Star Animation
	
	starIndex += .2;
	if (starIndex >= 4) starIndex -= 4;
	
	//Select
	
	if (keyDownPressed)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		enemySelection += 1;
	}
	
	if (keyUpPressed)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		enemySelection -= 1;
	}
	
	if (enemySelection < 0) enemySelection += arrayLength + 1;
	if (enemySelection > arrayLength) enemySelection -= arrayLength + 1;
	
	if (enemySelection > loopStart + 8) loopStart = enemySelection - 8;
	if (enemySelection < loopStart) loopStart = enemySelection;
	
	if (!instance_exists(obj_Fade))
	{
		if (keyAttackPressed)
		{
			if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
			audio_play_sound(snd_ButtonNo,0,false);
			goBack = true;
		}
	}
	
	if (goBack)
	{
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = rm_Collection;
		goBack = false;
	}
}