///@description Room Creation Code

//Variables

global.discordDetailText = "Battleship Halberd";
global.discordLargeImage = "halberd_icon";

//Stage Number

global.stageNumber = 2;
global.roomCheckpoint = room;

//Backgrounds

layer_background_xscale(layer_background_get_id("Background_Parallax1"),.5);
layer_background_yscale(layer_background_get_id("Background_Parallax1"),.5);

//Music

if (!audio_is_playing(mus_BattleshipHalberd))
{
	audio_stop_all();
	global.musicPlaying = audio_play_sound(mus_BattleshipHalberd,0,true);
}