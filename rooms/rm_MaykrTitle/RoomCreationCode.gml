///@description Room Creation Code

//Variables

global.discordDetailText = "Gamble Maykr";
global.discordLargeImage = "ggs_icon";

//Backgrounds

layer_background_xscale(layer_background_get_id("Background"),.5);
layer_background_yscale(layer_background_get_id("Background"),.5);

//Music

if (!audio_is_playing(mus_Maykr))
{
	audio_stop_all();
	scr_PlayMusic(false,mus_Maykr,0,true);
}