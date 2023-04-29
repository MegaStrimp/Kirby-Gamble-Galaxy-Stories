///@description Enemy - Inhaled - Chuckie

function scr_Enemy_Inhaled_Chuckie()
{
	with (owner)
	{
		if (audio_is_playing(snd_Chuckie_BoxClose)) audio_stop_sound(snd_Chuckie_BoxClose);
		audio_play_sound(snd_Chuckie_BoxClose,0,false);
		
		sprite_index = sprBoxClose;
		image_index = 0;
		
		chuckieCount -= 1;
	}
}