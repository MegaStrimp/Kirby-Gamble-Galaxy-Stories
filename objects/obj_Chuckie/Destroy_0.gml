///@description Destroy

#region Event Inherited
event_inherited();
#endregion

#region Close The Box
with (owner)
{
	if (audio_is_playing(snd_Chuckie_BoxClose)) audio_stop_sound(snd_Chuckie_BoxClose);
	audio_play_sound(snd_Chuckie_BoxClose,0,false);
	
	sprite_index = sprBoxClose;
	image_index = 0;
	
	if (other.hp <= 0) chuckieCount -= 1;
}
#endregion