///@description Room Setup
///@param {real} roomSetupId Room Setup Value
///@param {real} music Music Value

enum roomSetup
{
	ggs_GreenGreens,
	ggs_BattleshipHalberd,
	ggs_BattleshipHalberd_Escape,
	ggs_AsteroidFields,
	ggs_YolkYard,
	ggs_YolkYard_Clouds,
	
	kssu_SpringBreeze_GreenGreens,
	kssu_SpringBreeze_FloatIslands,
	kssu_SpringBreeze_BubblyClouds,
	kssu_SpringBreeze_MtDedede,
	
	rtdl_CookieCountry_Grass,
	rtdl_CookieCountry_Caves,
	rtdl_AnotherDimensionPortal
}

function scr_RoomSetup(argument0,argument1)
{
	var roomSetupId = argument0;
	var music = argument1;
	
	switch (roomSetupId)
	{
		#region GGS Green Greens
		case roomSetup.ggs_GreenGreens:
		#region Variables
		global.discordDetailText = "Green Greens";
		global.discordLargeImage = "greengreens_icon";
		#endregion
		
		#region Stage Number
		global.stageNumber = 1;
		global.roomCheckpoint = room;
		#endregion
		
		#region Backgrounds
		layer_background_xscale(layer_background_get_id("GreenGreens1_Layer1"),.5);
		layer_background_yscale(layer_background_get_id("GreenGreens1_Layer1"),.5);
		layer_background_xscale(layer_background_get_id("GreenGreens1_Layer2"),.5);
		layer_background_yscale(layer_background_get_id("GreenGreens1_Layer2"),.5);
		layer_background_xscale(layer_background_get_id("GreenGreens1_Layer3"),.5);
		layer_background_yscale(layer_background_get_id("GreenGreens1_Layer3"),.5);
		layer_background_xscale(layer_background_get_id("GreenGreens_Waterfall"),.5);
		layer_background_yscale(layer_background_get_id("GreenGreens_Waterfall"),.5);
		#endregion
		
		#region Seasons
		switch (global.season)
		{
			case seasons.halloween:
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
			break;
		}
		#endregion
		break;
		#endregion
	}
	
	#region Music
	if (music != -1)
	{
		if (!audio_is_playing(music))
		{
			audio_stop_all();
			scr_PlayMusic(true,false,music,0,true);
		}
	}
	#endregion
}