///@description Room Creation Code

//Variables

global.discordDetailText = "Title Screen";
global.discordLargeImage = "ggs_icon";

//Music

if (!audio_is_playing(mus_Title1))
{
	audio_stop_all();
	scr_PlayMusic(false,mus_Title1,0,false);
}