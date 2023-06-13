///@description Room Creation Code

//Variables

global.discordDetailText = "Gamblion";
global.discordLargeImage = "egggardensurface_icon";

//Stage Attributes

global.roomCheckpoint = room;
global.isHub = true;

//Backgrounds

layer_background_xscale(layer_background_get_id("Background_Parallax1"),.5);
layer_background_yscale(layer_background_get_id("Background_Parallax1"),.5);

//Music

if (!audio_is_playing(mus_Gamblion_Lobby))
{
	audio_stop_all();
	scr_PlayMusic(true,false,mus_Gamblion_Lobby,0,true);
}