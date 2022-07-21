///@description Room Creation Code

//Variables

global.discordDetailText = "Gamble Maykr";
global.discordLargeImage = "ggs_icon";

//Music

if (!audio_is_playing(mus_Maykr))
{
	audio_stop_all();
	scr_PlayMusic(false,mus_Maykr,0,true);
}