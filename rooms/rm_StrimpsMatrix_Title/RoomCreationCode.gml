///@description Room Creation Code

//Variables

global.discordDetailText = "Strimp's Matrix";
global.discordLargeImage = "ggs_icon";

//Backgrounds

layer_background_xscale(layer_background_get_id("Background"),.5);
layer_background_yscale(layer_background_get_id("Background"),.5);

//Music

if (!audio_is_playing(mus_StrimpsMatrix_Title))
{
	audio_stop_all();
	scr_PlayMusic(true,false,mus_StrimpsMatrix_Title,0,true);
}