///@description Room Creation Code

//Variables

global.discordDetailText = "Character Select";
global.discordLargeImage = "ggs_icon";

//Music

if (!audio_is_playing(mus_Options))
{
	audio_stop_all();
	scr_PlayMusic(false,mus_Options,0,true);
}