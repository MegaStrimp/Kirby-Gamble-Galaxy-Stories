///@description Room Creation Code

//Variables

global.discordDetailText = "Main Menu";
global.discordLargeImage = "ggs_icon";

//Music

if (!audio_is_playing(mus_Options))
{
	audio_stop_all();
	global.musicPlaying = audio_play_sound(mus_Options,0,true);
}