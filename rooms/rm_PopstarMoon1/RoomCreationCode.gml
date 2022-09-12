///@description Room Creation Code

//Variables

global.discordDetailText = "Popstar Moon";
global.discordLargeImage = "popstarmoon_icon";

//Stage Number

global.stageNumber = 4;
global.roomCheckpoint = room;

//Music

if (!audio_is_playing(mus_PopstarMoon))
{
	audio_stop_all();
	scr_PlayMusic(true,false,mus_PopstarMoon,0,true);
}