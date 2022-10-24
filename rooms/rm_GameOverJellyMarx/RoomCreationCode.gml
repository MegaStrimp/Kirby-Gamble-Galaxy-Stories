///@description Room Creation Code

//Variables

global.discordDetailText = "Game Over";
global.discordLargeImage = "ggs_icon";

//Backgrounds

layer_background_xscale(layer_background_get_id("Stars"),.5);
layer_background_yscale(layer_background_get_id("Stars"),.5);
layer_background_xscale(layer_background_get_id("Light"),.5);
layer_background_yscale(layer_background_get_id("Light"),.5);
layer_background_xscale(layer_background_get_id("Floor"),.5);
layer_background_yscale(layer_background_get_id("Floor"),.5);

//Music

/*if (!audio_is_playing(mus_GameOverJellyMarx))
{
	audio_stop_all();
	scr_PlayMusic(true,false,mus_GameOverJellyMarx,0,false);
}*/

if (!audio_is_playing(mus_Cellphone))
{
	audio_stop_all();
	scr_PlayMusic(true,false,mus_Cellphone,0,true);
}