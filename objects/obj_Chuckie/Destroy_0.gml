///@description Destroy

//Event Inherited

event_inherited();

//Close The Box

if (hp <= 0)
{
	with (owner)
	{
		if (audio_is_playing(snd_Chuckie_BoxClose)) audio_stop_sound(snd_Chuckie_BoxClose);
		audio_play_sound(snd_Chuckie_BoxClose,0,false);
		chuckieCount -= 1;
		sprite_index = sprBoxClose;
		image_index = 0;
	}
}