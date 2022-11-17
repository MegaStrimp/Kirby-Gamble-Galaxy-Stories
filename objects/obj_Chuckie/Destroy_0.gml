///@description Destroy

//Event Inherited

event_inherited();

//Close The Box

with (owner)
{
	if (audio_is_playing(snd_Chuckie_BoxClose)) audio_stop_sound(snd_Chuckie_BoxClose);
	audio_play_sound(snd_Chuckie_BoxClose,0,false);
	sprite_index = sprBoxClose;
	image_index = 0;
}