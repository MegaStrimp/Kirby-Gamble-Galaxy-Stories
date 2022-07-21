///@description Room Creation Code

//Variables

global.discordDetailText = "Green Greens";
global.discordLargeImage = "greengreens_icon";

//Stage Number

global.stageNumber = 1;
global.roomCheckpoint = room;

//Backgrounds

layer_background_xscale(layer_background_get_id("Background_Parallax1"),.5);
layer_background_yscale(layer_background_get_id("Background_Parallax1"),.5);

//Music

if (!audio_is_playing(mus_BossTension))
{
	audio_stop_all();
	scr_PlayMusic(false,mus_BossTension,0,true);
}