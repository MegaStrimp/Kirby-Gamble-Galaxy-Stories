///@description Destroy

#region Event Inherited
event_inherited();
#endregion

#region Stop Sound
if (audio_is_playing(soundPlaying)) audio_stop_sound(soundPlaying);
#endregion