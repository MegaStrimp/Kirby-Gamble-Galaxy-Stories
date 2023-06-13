///@description Room Creation Code

//Variables

global.discordDetailText = "Working On A Beta";
global.discordLargeImage = "ggs_icon";

//Stage Attributes

global.roomCheckpoint = room;

//Music

if (!audio_is_playing(mus_Aquatia_Harbor))
{
	audio_stop_all();
	scr_PlayMusic(true,false,mus_Aquatia_Harbor,0,true);
}