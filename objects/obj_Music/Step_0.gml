///@description Main

//Restart

if (restart)
{
	audio_stop_all();
	if (instance_exists(obj_Music)) instance_destroy(obj_Music);
	
	looping = false;
	restart = false;
}

//Play Music

if ((!audio_is_playing(musicIntro)) and (!audio_is_playing(musicLoop)))
{
	if (!looping)
	{
		audio_play_sound(musicIntro,0,false);
		looping = true;
	}
	else
	{
		audio_play_sound(musicLoop,0,false);
	}
}