///@description Room Creation Code

//Variables

global.discordDetailText = "Gear Cube - Depths";
global.discordLargeImage = "greengreens_icon";

//Stage Number

global.stageNumber = 5;
global.roomCheckpoint = room;

//Music

if (!audio_is_playing(mus_GearCube_Depths))
{
	audio_stop_all();
	global.musicPlaying = audio_play_sound(mus_GearCube_Depths,0,true);
}