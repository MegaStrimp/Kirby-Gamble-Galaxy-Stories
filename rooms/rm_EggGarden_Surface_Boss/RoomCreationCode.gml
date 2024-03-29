///@description Room Creation Code

//Variables

global.discordDetailText = "Egg Garden - Surface";
global.discordLargeImage = "egggardensurface_icon";

//Stage Attributes

global.roomCheckpoint = room;

//Backgrounds

layer_background_xscale(layer_background_get_id("Background_Parallax1"),.5);
layer_background_yscale(layer_background_get_id("Background_Parallax1"),.5);

//Music

if (!audio_is_playing(mus_EggGarden_Surface))
{
	audio_stop_all();
	scr_PlayMusic(true,false,mus_EggGarden_Surface,0,true);
}