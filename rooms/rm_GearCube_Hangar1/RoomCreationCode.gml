///@description Room Creation Code

//Variables

global.discordDetailText = "Gear Cube - Hangar";
global.discordLargeImage = "greengreens_icon";

//Stage Attributes

global.roomCheckpoint = room;

//Backgrounds

layer_background_xscale(layer_background_get_id("Background_Parallax1"),.5);
layer_background_yscale(layer_background_get_id("Background_Parallax1"),.5);

//Music

if (!audio_is_playing(mus_GearCube_Hangar))
{
	audio_stop_all();
	scr_PlayMusic(true,false,mus_GearCube_Hangar,0,true);
}