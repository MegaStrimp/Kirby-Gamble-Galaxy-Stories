///@description Room Creation Code

//Variables

global.discordDetailText = "Working On A Beta";
global.discordLargeImage = "ggs_icon";

//Stage Number

global.stageNumber = 4;
global.roomCheckpoint = room;

//Music

if (!audio_is_playing(mus_Aquatia_Harbor))
{
	audio_stop_all();
	global.musicPlaying = audio_play_sound(mus_Aquatia_Harbor,0,true);
}