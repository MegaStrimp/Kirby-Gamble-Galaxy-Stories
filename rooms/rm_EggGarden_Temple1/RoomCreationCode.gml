///@description Room Creation Code

//Variables

global.discordDetailText = "Egg Garden - Temple";
global.discordLargeImage = "egggardensurface_icon";

//Stage Number

global.stageNumber = 5;
global.roomCheckpoint = room;

//Backgrounds

layer_background_xscale(layer_background_get_id("Background_Parallax1"),.5);
layer_background_yscale(layer_background_get_id("Background_Parallax1"),.5);

//Music

if (!audio_is_playing(mus_EggGarden_Temple))
{
	audio_stop_all();
	global.musicPlaying = audio_play_sound(mus_EggGarden_Temple,0,true);
}