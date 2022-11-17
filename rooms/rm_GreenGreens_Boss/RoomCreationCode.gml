///@description Room Creation Code

//Variables

global.discordDetailText = "Green Greens";
global.discordLargeImage = "greengreens_icon";

//Stage Number

global.stageNumber = 1;
global.roomCheckpoint = room;

//Backgrounds

layer_background_xscale(layer_background_get_id("GreenGreens1_Layer1"),.5);
layer_background_yscale(layer_background_get_id("GreenGreens1_Layer1"),.5);
layer_background_xscale(layer_background_get_id("GreenGreens1_Layer2"),.5);
layer_background_yscale(layer_background_get_id("GreenGreens1_Layer2"),.5);
layer_background_xscale(layer_background_get_id("GreenGreens1_Layer3"),.5);
layer_background_yscale(layer_background_get_id("GreenGreens1_Layer3"),.5);
layer_background_xscale(layer_background_get_id("GreenGreens_Waterfall"),.5);
layer_background_yscale(layer_background_get_id("GreenGreens_Waterfall"),.5);

//Halloween

if (global.season = seasons.halloween)
{
	layer_background_sprite(layer_background_get_id("GreenGreens1_Layer3"),bg_GreenGreens1_Layer3_Halloween);
	layer_background_sprite(layer_background_get_id("GreenGreens_Waterfall"),bg_GreenGreens1_Waterfall_Halloween);
	layer_background_sprite(layer_background_get_id("GreenGreens1_Layer2"),bg_GreenGreens1_Layer2_Halloween);
	layer_background_sprite(layer_background_get_id("GreenGreens1_Layer1"),bg_GreenGreens1_Layer1_Halloween);
	tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileGreenGreensPlainsFront")),ts_GreenGreens_Plains_Halloween);
	tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileGreenGreensPlainsSlopes")),ts_GreenGreens_Plains_Halloween);
	tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileGreenGreensPlains")),ts_GreenGreens_Plains_Halloween);
	tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileGreenGreensPlainsLadders")),ts_GreenGreens_Plains_Halloween);
	tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileGreenGreensPlainsBack")),ts_GreenGreens_Plains_Halloween);
	tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileGreenGreensTreeLeaves")),ts_GreenGreens_Tree_Halloween);
	tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileGreenGreensTreeFront")),ts_GreenGreens_Tree_Halloween);
	tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileGreenGreensTreeSlopes")),ts_GreenGreens_Tree_Halloween);
	tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileGreenGreensTree")),ts_GreenGreens_Tree_Halloween);
	tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileGreenGreensTreePlatformSupport")),ts_GreenGreens_Tree_Halloween);
	tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileGreenGreensTreeBack")),ts_GreenGreens_Tree_Halloween);
}

//Music

if (!audio_is_playing(mus_Boss1))
{
	audio_stop_all();
	scr_PlayMusic(true,false,mus_Boss1,0,true);
}