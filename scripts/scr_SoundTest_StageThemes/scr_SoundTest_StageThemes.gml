///@description Sound Test - Stage Themes

function scr_SoundTest_StageThemes()
{
	/*
	0 - Number
	1 - Index
	2 - Composer Title
	3 - Sound Title
	*/
	
	if (ds_exists(soundTestArray,ds_type_grid)) ds_grid_destroy(soundTestArray);
	
	soundTestArray = ds_grid_create(99,4);
	ds_grid_clear(soundTestArray,-1);
	
	var i = 0;
	
	#region Familiar Fields
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = mus_GreenGreens;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "Familiar Fields";
	i += 1;
	#endregion
	
	#region Decisive Battleship
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = mus_BattleshipHalberd;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "Decisive Battleship";
	i += 1;
	#endregion
	
	#region Battleship Down
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = mus_HalberdEscape;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "Battleship Down";
	i += 1;
	#endregion
	
	#region Meteor Cluster
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = mus_AsteroidFields;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "Meteor Cluster";
	i += 1;
	#endregion
	
	#region Kazoo Fields (SECRET)
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = mus_KazooFields;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "Kazoo Fields (SECRET)";
	i += 1;
	#endregion
	
	#region First Steps To Yolk Yard
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = mus_EggGarden_Hub;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "First Steps To Yolk Yard";
	i += 1;
	#endregion
	
	#region Egg Shaped Planet
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = mus_EggGarden_Surface;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "Egg Shaped Planet";
	i += 1;
	#endregion
	
	#region Grand Temple Avgo
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = mus_EggGarden_Temple;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "Grand Temple Avgo";
	i += 1;
	#endregion
	
	#region Tragically Discolored Vines
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = mus_EggGarden_Caves;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "Tragically Discolored Vines";
	i += 1;
	#endregion
	
	#region Chasing the Stars
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = mus_GearCube_Hangar;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "Chasing the Stars";
	i += 1;
	#endregion
	
	#region Path to the Nasty Machine
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = mus_GearCube_Depths;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "Path to the Nasty Machine";
	i += 1;
	#endregion
	
	#region Aquatia Harbor
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = mus_Aquatia_Harbor;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "Aquatia Harbor";
	i += 1;
	#endregion
	
	#region Moon Walking
	soundTestArray[# i,0] = i;
	soundTestArray[# i,1] = mus_PopstarMoon;
	soundTestArray[# i,2] = "Light MetaS";
	soundTestArray[# i,3] = "Moon Walking";
	i += 1;
	#endregion
	
	soundsMax = i;
}