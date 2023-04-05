///@description Main

switch (state)
{
	case firstTimeSetupStates.auth1:
	timer += 1;
	
	if (timer >= 20)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		
		state = firstTimeSetupStates.auth2;
		timer = 0;
	}
	break;
	
	case firstTimeSetupStates.auth2:
	timer += 1;
	
	if (timer >= 10)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		
		state = firstTimeSetupStates.auth3;
		timer = 0;
	}
	break;
	
	case firstTimeSetupStates.auth3:
	timer += 1;
	
	if (timer >= 10)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		
		state = firstTimeSetupStates.auth4;
		timer = 0;
	}
	break;
	
	case firstTimeSetupStates.auth4:
	timer += 1;
	
	if (timer >= 10)
	{
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		
		state = firstTimeSetupStates.auth5;
		timer = 0;
	}
	break;
	
	case firstTimeSetupStates.auth5:
	timer += 1;
	
	if (timer >= 30)
	{
		audio_stop_all();
		scr_PlayMusic(true,false,mus_Cutscene_Fluxbender,0,true);
		
		state = firstTimeSetupStates.language;
		timer = 0;
	}
	break;
	
	case firstTimeSetupStates.transition:
	if (!instance_exists(obj_Fade))
	{
		if (audio_is_playing(snd_Enter)) audio_stop_sound(snd_Enter);
		audio_play_sound(snd_Enter,0,false);
		
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = global.roomNext;
	}
	break;
}