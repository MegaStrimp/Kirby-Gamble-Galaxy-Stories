///@description Main

if (!global.pause)
{
	//Variables
	
	hudOffset = lerp(hudOffset,0,.1);
	
	//Inputs
	
	scr_Player_Inputs(0);
	
	if (keyDownPressed)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		selection += 1;
	}
	
	if (keyUpPressed)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		selection -= 1;
	}
	
	if (selection < 0) selection += array_length(global.languageArray);
	if (selection > array_length(global.languageArray) - 1) selection -= array_length(global.languageArray);
	
	if (!instance_exists(obj_Fade))
	{
		if ((keyJumpPressed) or (keyStartPressed))
		{
			if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
			audio_play_sound(snd_ButtonYes,0,false);
			global.language = languageVal[selection];
			obj_Polyglot.setLocale(global.languageArray[selection]);
			var rm = rm_Options;
			if (global.firstTimeSetup) rm = rm_Startup;
			rm = rm_Startup;
			var fade = instance_create_depth(x,y,-999,obj_Fade);
			fade.targetRoom = rm;
		}
	}
}