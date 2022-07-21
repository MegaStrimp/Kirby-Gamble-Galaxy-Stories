///@description Room Creation Code

//Variables

global.discordDetailText = "Level Select";
global.discordLargeImage = "ggs_icon";

//Music

if (!audio_is_playing(mus_Menu1))
{
	audio_stop_all();
	scr_PlayMusic(false,mus_Menu1,0,true);
}