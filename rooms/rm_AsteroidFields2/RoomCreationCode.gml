///@description Room Creation Code

//Randomize

randomize();

//Variables

global.discordDetailText = "Asteroid Fields";
global.discordLargeImage = "asteroidfields_icon";

//Stage Number

global.stageNumber = 3;
global.roomCheckpoint = room;

//Backgrounds

layer_background_xscale(layer_background_get_id("AsteroidFields_Cube_Front"),.5);
layer_background_yscale(layer_background_get_id("AsteroidFields_Cube_Front"),.5);
layer_background_xscale(layer_background_get_id("AsteroidFields_Cube_Mid"),.5);
layer_background_yscale(layer_background_get_id("AsteroidFields_Cube_Mid"),.5);
layer_background_xscale(layer_background_get_id("AsteroidFields_Cube_Back"),.5);
layer_background_yscale(layer_background_get_id("AsteroidFields_Cube_Back"),.5);
layer_background_xscale(layer_background_get_id("Background_Parallax1"),.5);
layer_background_yscale(layer_background_get_id("Background_Parallax1"),.5);

//Music

if ((!audio_is_playing(mus_AsteroidFields)) and (!audio_is_playing(mus_KazooFields)))
{
	audio_stop_all();
	var musicIndex = irandom_range(0,97);
	if (musicIndex == 0)
	{
		scr_PlayMusic(true,false,mus_KazooFields,0,true);
	}
	else
	{
		scr_PlayMusic(true,false,mus_AsteroidFields,0,true);
	}
}