///@description Room Creation Code

//Variables

global.discordDetailText = "Gear Cube - Depths";
global.discordLargeImage = "greengreens_icon";

//Stage Attributes

global.roomCheckpoint = room;

//Music

if (!audio_is_playing(mus_GearCube_Depths))
{
	audio_stop_all();
	scr_PlayMusic(true,false,mus_GearCube_Depths,0,true);
}