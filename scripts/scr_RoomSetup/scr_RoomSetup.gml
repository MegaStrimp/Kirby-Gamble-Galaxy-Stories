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
		
		#region GGS Battleship Halberd
		case roomSetup.ggs_BattleshipHalberd:
		
		break;
		#endregion
		
		#region GGS Battleship Halberd - Escape
		case roomSetup.ggs_BattleshipHalberd_Escape:
		
		break;
		#endregion
		
		#region GGS Asteroid Fields
		case roomSetup.ggs_AsteroidFields:
		#region Variables
		global.discordDetailText = "Asteroid Fields";
		global.discordLargeImage = "asteroidfields_icon";
		#endregion
		
		#region Stage Number
		global.stageNumber = 3;
		global.roomCheckpoint = room;
		#endregion
		
		#region Backgrounds
		layer_background_xscale(layer_background_get_id("AsteroidFields_Cube_Front"),.5);
		layer_background_yscale(layer_background_get_id("AsteroidFields_Cube_Front"),.5);
		layer_background_xscale(layer_background_get_id("AsteroidFields_Cube_Mid"),.5);
		layer_background_yscale(layer_background_get_id("AsteroidFields_Cube_Mid"),.5);
		layer_background_xscale(layer_background_get_id("AsteroidFields_Cube_Back"),.5);
		layer_background_yscale(layer_background_get_id("AsteroidFields_Cube_Back"),.5);
		layer_background_xscale(layer_background_get_id("Background_Parallax1"),.5);
		layer_background_yscale(layer_background_get_id("Background_Parallax1"),.5);
		#endregion
		
		#region Seasons
		switch (global.season)
		{
			case seasons.halloween:
			layer_background_sprite(layer_background_get_id("Background_Parallax1"),bg_AsteroidFields_Sky_Halloween);
			tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileAsteroidFieldsFront")),ts_AsteroidFields_Halloween);
			tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileAsteroidFieldsSlopes")),ts_AsteroidFields_Halloween);
			tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileAsteroidFields")),ts_AsteroidFields_Halloween);
			tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileAsteroidFields3D1")),ts_AsteroidFields_Halloween);
			tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileAsteroidFields3D2")),ts_AsteroidFields_Halloween);
			tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileAsteroidFieldsLadders")),ts_AsteroidFields_Halloween);
			tilemap_tileset(layer_tilemap_get_id(layer_get_id("tileAsteroidFieldsBack")),ts_AsteroidFields_Back_Halloween);
			break;
		}
		#endregion
		break;
		#endregion
		
		#region GGS Yolk Yard
		case roomSetup.ggs_YolkYard:
		
		break;
		#endregion
		
		#region GGS Yolk Yard - Clouds
		case roomSetup.ggs_YolkYard_Clouds:
		
		break;
		#endregion
		
		#region KSSU - Spring Breeze - Green Greens
		case roomSetup.kssu_SpringBreeze_GreenGreens:
		
		break;
		#endregion
		
		#region KSSU - Spring Breeze - Float Islands
		case roomSetup.kssu_SpringBreeze_FloatIslands:
		
		break;
		#endregion
		
		#region KSSU - Spring Breeze - Bubbly Clouds
		case roomSetup.kssu_SpringBreeze_BubblyClouds:
		
		break;
		#endregion
		
		#region KSSU - Spring Breeze - Mt Dedede
		case roomSetup.kssu_SpringBreeze_MtDedede:
		
		break;
		#endregion
		
		#region RtDL - Cookie Country - Grass
		case roomSetup.rtdl_CookieCountry_Grass:
		
		break;
		#endregion
		
		#region RtDL - Cookie Country - Caves
		case roomSetup.rtdl_CookieCountry_Caves:
		
		break;
		#endregion
		
		#region RtDL - Another Dimension Portal
		case roomSetup.rtdl_AnotherDimensionPortal:
		
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