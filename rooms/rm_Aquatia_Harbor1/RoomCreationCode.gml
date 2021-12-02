///@description Room Creation Code

//Variables

global.discordDetailText = "Aquatia - Harbor";
global.discordLargeImage = "aquatiaharbor_icon";

//Stage Number

global.stageNumber = 4;
global.roomCheckpoint = room;

//Backgrounds

layer_background_xscale(layer_background_get_id("Clouds"),.5);
layer_background_yscale(layer_background_get_id("Clouds"),.5);
layer_background_xscale(layer_background_get_id("Background_Parallax1"),.5);
layer_background_yscale(layer_background_get_id("Background_Parallax1"),.5);

//Music

if (!audio_is_playing(mus_Aquatia_Harbor))
{
	audio_stop_all();
	global.musicPlaying = audio_play_sound(mus_Aquatia_Harbor,0,true);
}