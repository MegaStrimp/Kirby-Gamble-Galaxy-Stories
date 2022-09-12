///@description Room Creation Code

//Variables

global.discordDetailText = "Stages";
global.discordLargeImage = "ggs_icon";

//Music

if (!audio_is_playing(mus_Collection))
{
	audio_stop_all();
	scr_PlayMusic(true,false,mus_Collection,0,true);
}