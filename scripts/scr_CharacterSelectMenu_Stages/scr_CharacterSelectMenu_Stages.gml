///@description Character Select Menu - Stages

function scr_CharacterSelectMenu_Stages()
{
	/*
	0 - Index
	1 - World Title
	2 - Stage Title
	3 - World Color Dark
	4 - World Color Light
	5 - Stage Color Dark
	6 - Stage Color Light
	*/
	
	if (ds_exists(stagesArray,ds_type_grid)) ds_grid_destroy(stagesArray);
	
	stagesArray = ds_grid_create(14,7);
	ds_grid_clear(stagesArray,-1);
	
	var i = 0;
	
	#region Green Greens
	stagesArray[# i,0] = stages.greenGreens;
	stagesArray[# i,1] = "";
	stagesArray[# i,2] = str("Stages.Green Greens.Title");
	stagesArray[# i,3] = make_color_rgb(255,255,255);
	stagesArray[# i,4] = make_color_rgb(255,255,255);
	stagesArray[# i,5] = make_color_rgb(255,255,255);
	stagesArray[# i,6] = make_color_rgb(255,255,255);
	i += 1;
	#endregion
	
	#region Battleship Halberd
	stagesArray[# i,0] = stages.battleshipHalberd;
	stagesArray[# i,1] = "";
	stagesArray[# i,2] = str("Stages.Battleship Halberd.Title");
	stagesArray[# i,3] = make_color_rgb(255,255,255);
	stagesArray[# i,4] = make_color_rgb(255,255,255);
	stagesArray[# i,5] = make_color_rgb(255,255,255);
	stagesArray[# i,6] = make_color_rgb(255,255,255);
	i += 1;
	#endregion
	
	#region Asteroid Fields
	stagesArray[# i,0] = stages.asteroidFields;
	stagesArray[# i,1] = "";
	stagesArray[# i,2] = str("Stages.Asteroid Fields.Title");
	stagesArray[# i,3] = make_color_rgb(255,255,255);
	stagesArray[# i,4] = make_color_rgb(255,255,255);
	stagesArray[# i,5] = make_color_rgb(255,255,255);
	stagesArray[# i,6] = make_color_rgb(255,255,255);
	i += 1;
	#endregion
	
	#region Yolk Yard
	stagesArray[# i,0] = stages.yolkYard;
	stagesArray[# i,1] = str("Stages.Egg Garden.Title");
	stagesArray[# i,2] = str("Stages.Yolk Yard.Title");
	stagesArray[# i,3] = make_color_rgb(36,99,53);
	stagesArray[# i,4] = make_color_rgb(55,150,82);
	stagesArray[# i,5] = make_color_rgb(114,193,136);
	stagesArray[# i,6] = make_color_rgb(150,255,180);
	i += 1;
	#endregion
	
	#region Grand Temple Avgo
	stagesArray[# i,0] = stages.grandTempleAvgo;
	stagesArray[# i,1] = str("Stages.Egg Garden.Title");
	stagesArray[# i,2] = str("Stages.Grand Temple Avgo.Title");
	stagesArray[# i,3] = make_color_rgb(36,99,53);
	stagesArray[# i,4] = make_color_rgb(55,150,82);
	stagesArray[# i,5] = make_color_rgb(160,160,160);
	stagesArray[# i,6] = make_color_rgb(206,206,206);
	i += 1;
	#endregion
	
	#region Floral Yolk Caves
	stagesArray[# i,0] = stages.floralYolkCaves;
	stagesArray[# i,1] = str("Stages.Egg Garden.Title");
	stagesArray[# i,2] = str("Stages.Floral Yolk Caves.Title");
	stagesArray[# i,3] = make_color_rgb(36,99,53);
	stagesArray[# i,4] = make_color_rgb(55,150,82);
	stagesArray[# i,5] = make_color_rgb(106,158,44);
	stagesArray[# i,6] = make_color_rgb(154,229,61);
	i += 1;
	#endregion
	
	#region Storm The Fortress
	stagesArray[# i,0] = stages.stormTheFortress;
	stagesArray[# i,1] = str("Stages.Gear Cube.Title");
	stagesArray[# i,2] = str("Stages.Storm The Fortress.Title");
	stagesArray[# i,3] = make_color_rgb(255,255,255);
	stagesArray[# i,4] = make_color_rgb(255,255,255);
	stagesArray[# i,5] = make_color_rgb(255,255,255);
	stagesArray[# i,6] = make_color_rgb(255,255,255);
	i += 1;
	#endregion
	
	#region Central Lab
	stagesArray[# i,0] = stages.centralLab;
	stagesArray[# i,1] = str("Stages.Gear Cube.Title");
	stagesArray[# i,2] = str("Stages.Central Lab.Title");
	stagesArray[# i,3] = make_color_rgb(255,255,255);
	stagesArray[# i,4] = make_color_rgb(255,255,255);
	stagesArray[# i,5] = make_color_rgb(255,255,255);
	stagesArray[# i,6] = make_color_rgb(255,255,255);
	i += 1;
	#endregion
	
	#region Path To The Nasty Machine
	stagesArray[# i,0] = stages.pathToTheNastyMachine;
	stagesArray[# i,1] = str("Stages.Gear Cube.Title");
	stagesArray[# i,2] = str("Stages.Path To The Nasty Machine.Title");
	stagesArray[# i,3] = make_color_rgb(255,255,255);
	stagesArray[# i,4] = make_color_rgb(255,255,255);
	stagesArray[# i,5] = make_color_rgb(255,255,255);
	stagesArray[# i,6] = make_color_rgb(255,255,255);
	i += 1;
	#endregion
	
	#region Sandshell Beach
	stagesArray[# i,0] = stages.sandshellBeach;
	stagesArray[# i,1] = str("Stages.Aquatia.Title");
	stagesArray[# i,2] = str("Stages.Sandshell Beach.Title");
	stagesArray[# i,3] = make_color_rgb(255,255,255);
	stagesArray[# i,4] = make_color_rgb(255,255,255);
	stagesArray[# i,5] = make_color_rgb(255,255,255);
	stagesArray[# i,6] = make_color_rgb(255,255,255);
	i += 1;
	#endregion
	
	#region Up The Straw
	stagesArray[# i,0] = stages.upTheStraw;
	stagesArray[# i,1] = str("Stages.Aquatia.Title");
	stagesArray[# i,2] = str("Stages.Up The Straw.Title");
	stagesArray[# i,3] = make_color_rgb(255,255,255);
	stagesArray[# i,4] = make_color_rgb(255,255,255);
	stagesArray[# i,5] = make_color_rgb(255,255,255);
	stagesArray[# i,6] = make_color_rgb(255,255,255);
	i += 1;
	#endregion
	
	#region Sacred Aquatia
	stagesArray[# i,0] = stages.sacredAquatia;
	stagesArray[# i,1] = str("Stages.Aquatia.Title");
	stagesArray[# i,2] = str("Stages.Sacred Aquatia.Title");
	stagesArray[# i,3] = make_color_rgb(255,255,255);
	stagesArray[# i,4] = make_color_rgb(255,255,255);
	stagesArray[# i,5] = make_color_rgb(255,255,255);
	stagesArray[# i,6] = make_color_rgb(255,255,255);
	i += 1;
	#endregion
	
	#region Cosmic Palace
	stagesArray[# i,0] = stages.cosmicPalace;
	stagesArray[# i,1] = "";
	stagesArray[# i,2] = str("Stages.Cosmic Palace.Title");
	stagesArray[# i,3] = make_color_rgb(255,255,255);
	stagesArray[# i,4] = make_color_rgb(255,255,255);
	stagesArray[# i,5] = make_color_rgb(255,255,255);
	stagesArray[# i,6] = make_color_rgb(255,255,255);
	i += 1;
	#endregion
	
	#region Popstar Moon
	stagesArray[# i,0] = stages.popstarMoon;
	stagesArray[# i,1] = "";
	stagesArray[# i,2] = str("Stages.Popstar Moon.Title");
	stagesArray[# i,3] = make_color_rgb(255,255,255);
	stagesArray[# i,4] = make_color_rgb(255,255,255);
	stagesArray[# i,5] = make_color_rgb(255,255,255);
	stagesArray[# i,6] = make_color_rgb(255,255,255);
	i += 1;
	#endregion
	
	stagesMax = i;
}