///@description Main

#region Inputs
scr_Player_Inputs(0);
#endregion

#region Mouse
mouseXPrev = mouseX;
mouseYPrev = mouseY;
mouseX = floor(mouse_x / snap) * snap;
mouseY = floor(mouse_y / snap) * snap;
mouseXGui = device_mouse_x_to_gui(0);
mouseYGui = device_mouse_y_to_gui(0);

mouseOnHud = false;
if (((point_in_rectangle(mouseXGui,mouseYGui,0,0,325,27))) or ((point_in_rectangle(mouseXGui,mouseYGui,324,0,480,47))) or ((point_in_rectangle(mouseXGui,mouseYGui,26,233 + bottomHudOffset,454,270))) or ((hudVisible) and ((mouseOnTopMap) or (mouseOnTopDelete) or (mouseOnTopZoomIn) or (mouseOnTopZoomOut) or (mouseOnTopZoomReset) or (mouseOnTopDrag) or (mouseOnTopSave) or (mouseOnTopLoad) or (mouseOnTopOptions) or (mouseOnTopReset) or (mouseOnTopLeave) or (mouseOnTopPlay) or (mouseOnTopEdit) or (mouseOnTopBlocks) or (mouseOnTopEnemies) or (mouseOnTopItems) or (mouseOnTopExpand) or (mouseOnTopNextInventory) or (mouseOnTopPreviousInventory) or (mouseOnTopHide) or (mouseOnTopSelectedSpawnerOptions) or (mouseOnTopSelectedSpawnerDirection)))) mouseOnHud = true;
#endregion

#region Load Level
if ((global.loadedMaykrFile != -1) and (global.loadedMaykrFile != "")) loadState = 0;

switch (loadState)
{
	case 0:
	if (global.loadedMaykrFile == -1) global.loadedMaykrFile = get_open_filename(working_directory + "maykr file|*.maykr","");
	if (global.loadedMaykrFile == "") global.loadedMaykrFile = -1;
	if (global.loadedMaykrFile != -1)
	{
		var creationIndex = -1;
		loadedFile = file_text_open_read(global.loadedMaykrFile);
		global.loadedMaykrFile = -1;
		var maykrStart = file_text_read_string(loadedFile);
		if (maykrStart == maykrStartMsg)
		{
			scr_Maykr_ClearRoom();
			file_text_readln(loadedFile);
			loadedVersionNumber = file_text_read_string(loadedFile);
			file_text_readln(loadedFile);
			switch (loadedVersionNumber)
			{
				#region Version 1.0.0 - 1.0.1
				case "Version - 1.0.0":
				case "Version - 1.0.1":
				creationIndex = file_text_read_string(loadedFile);
				file_text_readln(loadedFile);
								
				if (creationIndex == "stageEnd") break;
								
				#region Load Room Attribues
				var roomWidthLoad = real(file_text_read_real(loadedFile));
				show_debug_message("Room Width - " + string(roomWidthLoad));
				file_text_readln(loadedFile);
				var roomHeightLoad = real(file_text_read_real(loadedFile));
				show_debug_message("Room Height - " + string(roomHeightLoad));
				file_text_readln(loadedFile);
				backgroundLoad = real(file_text_read_real(loadedFile));
				show_debug_message("Background - " + string(backgroundLoad));
				file_text_readln(loadedFile);
				var musicLoad = real(file_text_read_real(loadedFile));
				show_debug_message("Music - " + string(musicLoad));
				file_text_readln(loadedFile);
				file_text_readln(loadedFile);
				
				if (audio_is_playing(global.musicPlaying)) audio_stop_sound(global.musicPlaying);
				global.musicPlaying = musicLoad;
				scr_Maykr_CreateRoom(roomWidthLoad,roomHeightLoad);
				room_goto(global.maykrCanvas);
				#endregion
				break;
				#endregion
				
				#region Version 1.0.2
				case "Version - 1.0.2":
				creationIndex = file_text_read_string(loadedFile);
				file_text_readln(loadedFile);
								
				if (creationIndex == "stageEnd") break;
								
				#region Load Room Attribues
				var roomWidthLoad = real(file_text_read_real(loadedFile));
				show_debug_message("Room Width - " + string(roomWidthLoad));
				file_text_readln(loadedFile);
				var roomHeightLoad = real(file_text_read_real(loadedFile));
				show_debug_message("Room Height - " + string(roomHeightLoad));
				file_text_readln(loadedFile);
				backgroundLoad = file_text_read_string(loadedFile);
				show_debug_message("Background - " + string(backgroundLoad));
				backgroundLoad = asset_get_index(backgroundLoad);
				file_text_readln(loadedFile);
				var musicLoad = file_text_read_string(loadedFile);
				show_debug_message("Music - " + string(musicLoad));
				file_text_readln(loadedFile);
				file_text_readln(loadedFile);
				
				if (audio_is_playing(global.musicPlaying)) audio_stop_sound(global.musicPlaying);
				selectedMusicIndex = asset_get_index(musicLoad);
				scr_Maykr_CreateRoom(roomWidthLoad,roomHeightLoad);
				room_goto(global.maykrCanvas);
				#endregion
				break;
				#endregion
			}
			loadState = 1;
		}
		else
		{
			global.loadedMaykrFile = -1;
			loadState = -1;
			show_debug_message("Invalid Maykr File");
			//errorAlpha = 1;
			//errorAlphaTimer = errorAlphaTimerMax;
		}
	}
	else
	{
		global.loadedMaykrFile = -1;
		loadState = -1;
		show_debug_message("Open A Maykr File");
		//errorAlpha = 1;
		//errorAlphaTimer = errorAlphaTimerMax;
	}
	break;
	
	case 1:
	switch (loadedVersionNumber)
	{
		#region Version 1.0.0
		case "Version - 1.0.0":
		#region Set Background
		layer_background_sprite(layer_background_get_id("Background_Parallax1"),backgroundLoad);
		#endregion
	
		creationIndex = file_text_read_string(loadedFile);
		file_text_readln(loadedFile);
	
		if (creationIndex == "stageEnd") break;
	
		#region Load Tiles
		for (;;)
		{
			var tileLayerIndexLoad = file_text_read_string(loadedFile);
			show_debug_message(" - " + string(tileLayerIndexLoad));
			file_text_readln(loadedFile);
		
			if (tileLayerIndexLoad == "tileEnd") break;
		
			switch (creationIndex)
			{
				case "tileStart":
			
				var tileIndexLoad = real(file_text_read_string(loadedFile));
				show_debug_message(tileIndexLoad);
				file_text_readln(loadedFile);
				var tileXLoad = real(file_text_read_string(loadedFile));
				show_debug_message(tileXLoad);
				file_text_readln(loadedFile);
				var tileYLoad = real(file_text_read_string(loadedFile));
				show_debug_message(tileYLoad);
				file_text_readln(loadedFile);
			
				var tileSetIndex = -1;
				switch (tileLayerIndexLoad)
				{
					case "tileAsteroidFieldsFront":
					if (tileAsteroidFieldsFront == -1)
					{
						layer_create(299,"tileAsteroidFieldsFront");
						tileAsteroidFieldsFront = layer_tilemap_create("tileAsteroidFieldsFront",0,0,ts_AsteroidFields,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					tileSetIndex = tileAsteroidFieldsFront;
					break;
				
					case "tileAsteroidFieldsFront3D1":
					if (tileAsteroidFieldsFront3D1 == -1)
					{
						layer_create(299,"tileAsteroidFieldsFront3D1");
						tileAsteroidFieldsFront3D1 = layer_tilemap_create("tileAsteroidFieldsFront3D1",0,0,ts_AsteroidFields,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					tileSetIndex = tileAsteroidFieldsFront3D1;
					break;
				
					case "tileAsteroidFieldsFront3D2":
					if (tileAsteroidFieldsFront3D2 == -1)
					{
						layer_create(299,"tileAsteroidFieldsFront3D2");
						tileAsteroidFieldsFront3D2 = layer_tilemap_create("tileAsteroidFieldsFront3D2",0,0,ts_AsteroidFields,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					tileSetIndex = tileAsteroidFieldsFront3D2;
					break;
					
					case "tileDebug":
					if (tileDebug == -1)
					{
						layer_create(299,"tileDebug");
						tileDebug = layer_tilemap_create("tileDebug",0,0,ts_Debug,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					tileSetIndex = tileDebug;
					break;
				}
			
				if (tileSetIndex != -1) tilemap_set(tileSetIndex,tileIndexLoad,tileXLoad,tileYLoad);
				break;
				
				default:
				file_text_readln(loadedFile);
				break;
			}
		}
		#endregion
								
		creationIndex = file_text_read_string(loadedFile);
		show_debug_message(creationIndex);
		file_text_readln(loadedFile);
	
		if (creationIndex == "stageEnd") break;
	
		#region Load Spawners
		for (;;)
		{
			var spawnerItemIndexLoad = file_text_read_string(loadedFile);
			file_text_readln(loadedFile);
		
			show_debug_message(spawnerItemIndexLoad);
			if (spawnerItemIndexLoad == "spawnerEnd") break;
		
			switch (creationIndex)
			{
				case "spawnerStart":
										
				var spawnerItemXLoad = real(file_text_read_string(loadedFile));
				file_text_readln(loadedFile);
				var spawnerItemYLoad = real(file_text_read_string(loadedFile));
				file_text_readln(loadedFile);
				var spawnedItemStringLoad = file_text_read_string(loadedFile);
				file_text_readln(loadedFile);
				var spawnerItemLayerLoad = file_text_read_string(loadedFile);
				file_text_readln(loadedFile);
				var spawnerSpriteLoad = file_text_read_string(loadedFile);
				file_text_readln(loadedFile);
				var spawnerStateLoad = file_text_read_string(loadedFile);
				file_text_readln(loadedFile);
				var spawnerDirXLoad = real(file_text_read_string(loadedFile));
				file_text_readln(loadedFile);
				var spawnerPaletteLoad = file_text_read_string(loadedFile);
				file_text_readln(loadedFile);
			
				show_debug_message("spawn");
				var spawner = instance_create_layer(spawnerItemXLoad,spawnerItemYLoad,"enemies",obj_Maykr_Spawner);
				spawner.spawnedItemIndex = asset_get_index(spawnerItemIndexLoad);
				spawner.spawnedSprite = asset_get_index(spawnerSpriteLoad);
				spawner.spawnedItemString = spawnedItemStringLoad;
				spawner.spawnedLayer = spawnerItemLayerLoad;
				spawner.spawnedState = spawnerStateLoad;
				spawner.spawnedDirX = spawnerDirXLoad;
				spawner.spawnedPaletteIndex = asset_get_index(spawnerPaletteLoad);
									
				switch (spawner.spawnedItemIndex)
				{
					case obj_ParentWall:
					var spawnerSlopeTypeLoad = real(file_text_read_string(loadedFile));
					file_text_readln(loadedFile);
					spawner.spawnedSlopeType = spawnerSlopeTypeLoad;
					spawner.spawnedSprite = -1;
					break;
					
					case obj_Wall:
					var spawnerSlopeTypeLoad = real(file_text_read_string(loadedFile));
					file_text_readln(loadedFile);
					spawner.spawnedSlopeType = spawnerSlopeTypeLoad;
					spawner.spawnedSprite = -1;
					break;
										
					case obj_AbilityTrophy:
					var spawnerAbilityIndexLoad = file_text_read_string(loadedFile);
					file_text_readln(loadedFile);
					spawner.spawnedAbilityIndex = spawnerAbilityIndexLoad;
					break;
				}
				break;
										
				default:
				file_text_readln(loadedFile);
				break;
			}
		}
		#endregion
		break;
		#endregion
		
		#region Version 1.0.1 - 1.0.2
		case "Version - 1.0.1":
		case "Version - 1.0.2":
		#region Set Background
		layer_background_sprite(layer_background_get_id("Background_Parallax1"),backgroundLoad);
		#endregion
	
		creationIndex = file_text_read_string(loadedFile);
		file_text_readln(loadedFile);
	
		if (creationIndex == "stageEnd") break;
	
		#region Load Tiles
		for (;;)
		{
			var tileLayerIndexLoad = file_text_read_string(loadedFile);
			show_debug_message(" - " + string(tileLayerIndexLoad));
			file_text_readln(loadedFile);
		
			if (tileLayerIndexLoad == "tileEnd") break;
		
			switch (creationIndex)
			{
				case "tileStart":
			
				var tileIndexLoad = real(file_text_read_string(loadedFile));
				show_debug_message(tileIndexLoad);
				file_text_readln(loadedFile);
				var tileXLoad = real(file_text_read_string(loadedFile));
				show_debug_message(tileXLoad);
				file_text_readln(loadedFile);
				var tileYLoad = real(file_text_read_string(loadedFile));
				show_debug_message(tileYLoad);
				file_text_readln(loadedFile);
			
				var tileSetIndex = -1;
				switch (tileLayerIndexLoad)
				{
					case "tileDebugLadder":
					if (tileDebugLadder == -1)
					{
						layer_create(298,"tileDebugLadder");
						tileDebugLadder = layer_tilemap_create("tileDebugLadder",0,0,ts_Debug,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					tileSetIndex = tileDebugLadder;
					break;
					
					case "tileDebug":
					if (tileDebug == -1)
					{
						layer_create(299,"tileDebug");
						tileDebug = layer_tilemap_create("tileDebug",0,0,ts_Debug,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					tileSetIndex = tileDebug;
					break;
					
					case "tileDebugPlatform":
					if (tileDebugPlatform == -1)
					{
						layer_create(299,"tileDebugPlatform");
						tileDebugPlatform = layer_tilemap_create("tileDebugPlatform",0,0,ts_Debug,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					tileSetIndex = tileDebugPlatform;
					break;
					
					case "tileDebugPlatformTop":
					if (tileDebugPlatformTop == -1)
					{
						layer_create(299,"tileDebugPlatformTop");
						tileDebugPlatformTop = layer_tilemap_create("tileDebugPlatformTop",0,0,ts_Debug,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					tileSetIndex = tileDebugPlatformTop;
					break;
					
					case "tileAsteroidFieldsFront":
					if (tileAsteroidFieldsFront == -1)
					{
						layer_create(299,"tileAsteroidFieldsFront");
						tileAsteroidFieldsFront = layer_tilemap_create("tileAsteroidFieldsFront",0,0,ts_AsteroidFields,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					tileSetIndex = tileAsteroidFieldsFront;
					break;
				
					case "tileAsteroidFieldsFront3D1":
					if (tileAsteroidFieldsFront3D1 == -1)
					{
						layer_create(299,"tileAsteroidFieldsFront3D1");
						tileAsteroidFieldsFront3D1 = layer_tilemap_create("tileAsteroidFieldsFront3D1",0,0,ts_AsteroidFields,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					tileSetIndex = tileAsteroidFieldsFront3D1;
					break;
				
					case "tileAsteroidFieldsFront3D2":
					if (tileAsteroidFieldsFront3D2 == -1)
					{
						layer_create(299,"tileAsteroidFieldsFront3D2");
						tileAsteroidFieldsFront3D2 = layer_tilemap_create("tileAsteroidFieldsFront3D2",0,0,ts_AsteroidFields,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					tileSetIndex = tileAsteroidFieldsFront3D2;
					break;
				}
			
				if (tileSetIndex != -1) tilemap_set(tileSetIndex,tileIndexLoad,tileXLoad,tileYLoad);
				break;
				
				default:
				file_text_readln(loadedFile);
				break;
			}
		}
		#endregion
								
		creationIndex = file_text_read_string(loadedFile);
		show_debug_message(creationIndex);
		file_text_readln(loadedFile);
	
		if (creationIndex == "stageEnd") break;
	
		#region Load Spawners
		for (;;)
		{
			var spawnerItemIndexLoad = file_text_read_string(loadedFile);
			file_text_readln(loadedFile);
		
			show_debug_message(spawnerItemIndexLoad);
			if (spawnerItemIndexLoad == "spawnerEnd") break;
		
			switch (creationIndex)
			{
				case "spawnerStart":
										
				var spawnerItemXLoad = real(file_text_read_string(loadedFile));
				file_text_readln(loadedFile);
				var spawnerItemYLoad = real(file_text_read_string(loadedFile));
				file_text_readln(loadedFile);
				var spawnerItemXOffsetLoad = real(file_text_read_string(loadedFile));
				file_text_readln(loadedFile);
				var spawnerItemYOffsetLoad = real(file_text_read_string(loadedFile));
				file_text_readln(loadedFile);
				var spawnedItemStringLoad = file_text_read_string(loadedFile);
				file_text_readln(loadedFile);
				var spawnerItemLayerLoad = file_text_read_string(loadedFile);
				file_text_readln(loadedFile);
				var spawnerSpriteLoad = file_text_read_string(loadedFile);
				file_text_readln(loadedFile);
				var spawnerStateLoad = file_text_read_string(loadedFile);
				file_text_readln(loadedFile);
				var spawnerDirXLoad = real(file_text_read_string(loadedFile));
				file_text_readln(loadedFile);
				var spawnerPaletteLoad = file_text_read_string(loadedFile);
				file_text_readln(loadedFile);
			
				show_debug_message("spawn");
				var spawner = instance_create_layer(spawnerItemXLoad,spawnerItemYLoad,"enemies",obj_Maykr_Spawner);
				spawner.xOffset = spawnerItemXOffsetLoad;
				spawner.yOffset = spawnerItemYOffsetLoad;
				spawner.spawnedItemIndex = asset_get_index(spawnerItemIndexLoad);
				spawner.spawnedSprite = asset_get_index(spawnerSpriteLoad);
				spawner.spawnedItemString = spawnedItemStringLoad;
				spawner.spawnedLayer = spawnerItemLayerLoad;
				spawner.spawnedState = spawnerStateLoad;
				spawner.spawnedDirX = spawnerDirXLoad;
				spawner.spawnedPaletteIndex = asset_get_index(spawnerPaletteLoad);
									
				switch (spawner.spawnedItemIndex)
				{
					case obj_ParentWall:
					var spawnerSlopeTypeLoad = real(file_text_read_string(loadedFile));
					file_text_readln(loadedFile);
					spawner.spawnedSlopeType = spawnerSlopeTypeLoad;
					spawner.spawnedSprite = -1;
					break;
					
					case obj_Wall:
					var spawnerSlopeTypeLoad = real(file_text_read_string(loadedFile));
					file_text_readln(loadedFile);
					spawner.spawnedSlopeType = spawnerSlopeTypeLoad;
					spawner.spawnedSprite = -1;
					break;
					
					case obj_Platform:
					spawner.spawnedSprite = -1;
					break;
					
					case obj_Ladder:
					spawner.spawnedSprite = -1;
					break;
										
					case obj_AbilityTrophy:
					var spawnerAbilityIndexLoad = file_text_read_string(loadedFile);
					file_text_readln(loadedFile);
					spawner.spawnedAbilityIndex = spawnerAbilityIndexLoad;
					break;
				}
				break;
										
				default:
				file_text_readln(loadedFile);
				break;
			}
		}
		#endregion
		break;
		#endregion
	}
	
	file_text_close(loadedFile);
	loadedFile = -1;
	global.loadedMaykrFile = -1;
	loadState = -1;
	break;
}
#endregion

if (!active)
{
	#region Variables
	collidingSpawner = -1;
	canBeInteracted = true;
	if (windowIndex != -1) canBeInteracted = false;
	#endregion
	
	#region Music
	if (!audio_is_playing(global.musicPlaying)) scr_PlayMusic(true,true,selectedMusicIndex,0,true);
	#endregion
	
	if (canBeInteracted)
	{
		#region Mouse On Top
		if ((hudVisible) or (deleteMode))
		{
			if (point_in_rectangle(mouseXGui,mouseYGui,393,49,414,70))
			{
				mouseOnTopDelete = true;
			}
			else
			{
				mouseOnTopDelete = false;
			}
		}
		else
		{
			mouseOnTopDelete = false;
		}
		
		if ((hudVisible) or (dragMode))
		{
			if (point_in_rectangle(mouseXGui,mouseYGui,393,72,414,93))
			{
				mouseOnTopDrag = true;
			}
			else
			{
				mouseOnTopDrag = false;
			}
		}
		else
		{
			mouseOnTopDrag = false;
		}
		
		if (hudVisible)
		{
			if (point_in_rectangle(mouseXGui,mouseYGui,324,49,345,70))
			{
				mouseOnTopMap = true;
			}
			else
			{
				mouseOnTopMap = false;
			}
			
			if (point_in_rectangle(mouseXGui,mouseYGui,324,72,345,93))
			{
				mouseOnTopZoomIn = true;
			}
			else
			{
				mouseOnTopZoomIn = false;
			}
			
			if (point_in_rectangle(mouseXGui,mouseYGui,347,72,368,93))
			{
				mouseOnTopZoomOut = true;
			}
			else
			{
				mouseOnTopZoomOut = false;
			}
			
			if (point_in_rectangle(mouseXGui,mouseYGui,370,72,391,93))
			{
				mouseOnTopZoomReset = true;
			}
			else
			{
				mouseOnTopZoomReset = false;
			}
		
			if (point_in_rectangle(mouseXGui,mouseYGui,460,49,480,70)) mouseOnTopSave = true;
			if (!point_in_rectangle(mouseXGui,mouseYGui,420,49,480,70)) mouseOnTopSave = false;
		
			if (point_in_rectangle(mouseXGui,mouseYGui,460,72,480,93)) mouseOnTopLoad = true;
			if (!point_in_rectangle(mouseXGui,mouseYGui,420,72,480,93)) mouseOnTopLoad = false;
		
			if (point_in_rectangle(mouseXGui,mouseYGui,460,95,480,116)) mouseOnTopOptions = true;
			if (!point_in_rectangle(mouseXGui,mouseYGui,399,95,480,116)) mouseOnTopOptions = false;
		
			if (point_in_rectangle(mouseXGui,mouseYGui,460,118,480,139)) mouseOnTopReset = true;
			if (!point_in_rectangle(mouseXGui,mouseYGui,394,118,480,139)) mouseOnTopReset = false;
		
			if (point_in_rectangle(mouseXGui,mouseYGui,0,49,20,70)) mouseOnTopLeave = true;
			if (!point_in_rectangle(mouseXGui,mouseYGui,0,49,69,70)) mouseOnTopLeave = false;
		
			if (point_in_rectangle(mouseXGui,mouseYGui,12,0,84,20)) mouseOnTopPlay = true;
			if (!point_in_rectangle(mouseXGui,mouseYGui,12,0,84,47)) mouseOnTopPlay = false;
			
			if (point_in_rectangle(mouseXGui,mouseYGui,95,0,167,20)) mouseOnTopBlocks = true;
			if (!point_in_rectangle(mouseXGui,mouseYGui,95,0,167,47)) mouseOnTopBlocks = false;
			
			if (point_in_rectangle(mouseXGui,mouseYGui,171,0,243,20)) mouseOnTopEnemies = true;
			if (!point_in_rectangle(mouseXGui,mouseYGui,171,0,243,47)) mouseOnTopEnemies = false;
			
			if (point_in_rectangle(mouseXGui,mouseYGui,247,0,319,20)) mouseOnTopItems = true;
			if (!point_in_rectangle(mouseXGui,mouseYGui,247,0,319,47)) mouseOnTopItems = false;
		}
		else
		{
			mouseOnTopMap = false;
			mouseOnTopZoomIn = false;
			mouseOnTopZoomOut = false;
			mouseOnTopZoomReset = false;
			mouseOnTopSave = false;
			mouseOnTopLoad = false;
			mouseOnTopOptions = false;
			mouseOnTopReset = false;
			mouseOnTopLeave = false;
			mouseOnTopPlay = false;
			mouseOnTopBlocks = false;
			mouseOnTopEnemies = false;
			mouseOnTopItems = false;
		}
		
		if ((!deleteMode) and (!dragMode))
		{
			if (point_in_rectangle(mouseXGui,mouseYGui,2,234,24,269))
			{
				mouseOnTopHide = true;
			}
			else
			{
				mouseOnTopHide = false;
			}
			
			if (point_in_rectangle(mouseXGui,mouseYGui,224,226 + bottomHudOffset,256,233 + bottomHudOffset))
			{
				mouseOnTopExpand = true;
			}
			else
			{
				mouseOnTopExpand = false;
			}
			
			if (point_in_rectangle(mouseXGui,mouseYGui,434,238 + bottomHudOffset,449,266 + bottomHudOffset))
			{
				mouseOnTopNextInventory = true;
			}
			else
			{
				mouseOnTopNextInventory = false;
			}
			
			if (point_in_rectangle(mouseXGui,mouseYGui,31,238 + bottomHudOffset,46,266 + bottomHudOffset))
			{
				mouseOnTopPreviousInventory = true;
			}
			else
			{
				mouseOnTopPreviousInventory = false;
			}
		}
		#endregion
	
		#region Buttons
		if (mouse_check_button_pressed(mb_left))
		{
			#region Delete Button
			if (mouseOnTopDelete)
			{
				io_clear();
				if (deleteMode)
				{
					topHudOffset = !hudVisible;
					deleteMode = false;
					hudVisible = true;
				}
				else
				{
					deleteMode = true;
					hudVisible = false;
				}
			}
			#endregion
			
			#region Zoom In Button
			if (mouseOnTopZoomIn)
			{
				io_clear();
				if (instance_exists(obj_Camera))
				{
					obj_Camera.zoom += .05;
					obj_Camera.zoomTarget += .05;
				}
			}
			#endregion
			
			#region Zoom Out Button
			if (mouseOnTopZoomOut)
			{
				io_clear();
				if (instance_exists(obj_Camera))
				{
					obj_Camera.zoom -= .05;
					obj_Camera.zoomTarget -= .05;
				}
			}
			#endregion
			
			#region Zoom In Button
			if (mouseOnTopZoomReset)
			{
				io_clear();
				if (instance_exists(obj_Camera))
				{
					obj_Camera.zoom = 1;
					obj_Camera.zoomTarget = 1;
				}
			}
			#endregion
			
			#region Drag Button
			if (mouseOnTopDrag)
			{
				io_clear();
				if (dragMode)
				{
					topHudOffset = !hudVisible;
					dragMode = false;
					hudVisible = true;
				}
				else
				{
					dragMode = true;
					hudVisible = false;
				}
			}
			#endregion
			
			#region Bottom Hud Expand Button
			if (mouseOnTopExpand)
			{
				io_clear();
				bottomHudOpen = !bottomHudOpen;
			}
			#endregion
			
			#region Bottom Hud Inventory Next Button
			if (mouseOnTopNextInventory)
			{
				io_clear();
				var maxInventoryIndex = 0;
				switch (spawnedLayer)
				{
					case "Collision":
					maxInventoryIndex = maykrObjects.collisionTilesEnd - maykrObjects.collisionTilesStart;
					break;
					
					case "Enemies":
					maxInventoryIndex = maykrObjects.enemiesEnd - maykrObjects.enemiesStart;
					break;
					
					case "Environment":
					maxInventoryIndex = maykrObjects.itemsEnd - maykrObjects.itemsStart;
					break;
				}
				if (bottomHudOpen)
				{
					inventoryIndex += 12;
					if (inventoryIndex >= maxInventoryIndex - 1) inventoryIndex = 0;
				}
				else
				{
					inventoryIndex += 1;
					if (inventoryIndex >= maxInventoryIndex - 1) inventoryIndex -= maxInventoryIndex - 1;
				}
				inventoryIndex = clamp(inventoryIndex,0,maxInventoryIndex);
			}
			#endregion
			
			#region Bottom Hud Inventory Previous Button
			if (mouseOnTopPreviousInventory)
			{
				io_clear();
				var maxInventoryIndex = 0;
				switch (spawnedLayer)
				{
					case "Collision":
					maxInventoryIndex = maykrObjects.collisionTilesEnd - maykrObjects.collisionTilesStart;
					break;
					
					case "Enemies":
					maxInventoryIndex = maykrObjects.enemiesEnd - maykrObjects.enemiesStart;
					break;
					
					case "Environment":
					maxInventoryIndex = maykrObjects.itemsEnd - maykrObjects.itemsStart;
					break;
				}
				if (bottomHudOpen)
				{
					inventoryIndex -= 12;
					if (inventoryIndex < 0) inventoryIndex = maxInventoryIndex;
				}
				else
				{
					inventoryIndex -= 1;
					if (inventoryIndex < 0) inventoryIndex += maxInventoryIndex - 1;
				}
				inventoryIndex = clamp(inventoryIndex,0,maxInventoryIndex);
			}
			#endregion
			
			if (instance_exists(selectedSpawner))
			{
				if ((mouse_check_button_pressed(mb_left)) and (mouseOnTopSelectedSpawnerDirection))
				{
					io_clear();
					selectedSpawner.spawnedDirX *= -1;
				}
			}
		
			#region Save Button
			if (mouseOnTopSave)
			{
				io_clear();
				var file;
				file = get_save_filename("maykr file|*.maykr","");
				if (file != "")
				{
					var savedFile = file_text_open_write(file);
					file_text_write_string(savedFile,maykrStartMsg);
					file_text_writeln(savedFile);
					file_text_write_string(savedFile,"Version - " + maykrFileVersion);
					file_text_writeln(savedFile);
					
					#region Save Room Attributes
					file_text_write_string(savedFile,"roomAttributesStart");
					file_text_writeln(savedFile);
					
					file_text_write_string(savedFile,room_width);
					file_text_writeln(savedFile);
					file_text_write_string(savedFile,room_height);
					file_text_writeln(savedFile);
					file_text_write_string(savedFile,sprite_get_name(selectedBackgroundIndex));
					file_text_writeln(savedFile);
					file_text_write_string(savedFile,audio_get_name(selectedMusicIndex));
					file_text_writeln(savedFile);
					
					file_text_write_string(savedFile,"roomAttributesEnd");
					file_text_writeln(savedFile);
					#endregion
					
					#region Save Tiles
					file_text_write_string(savedFile,"tileStart");
					file_text_writeln(savedFile);
					if (tileDebugLadder != -1)
					{
						for (var h = 0; h < floor(room_height / 24) + 1; h++)
						{
							for (var w = 0; w < floor(room_width / 24) + 1; w++)
							{
								var tileIndex = tilemap_get(tileDebugLadder,w,h);
								if ((tileIndex != -1) and (tileIndex != 0))
								{
									file_text_write_string(savedFile,"tileDebugLadder");
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,tileIndex);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,w);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,h);
									file_text_writeln(savedFile);
								}
							}
						}
					}
					
					if (tileDebug != -1)
					{
						for (var h = 0; h < floor(room_height / 24) + 1; h++)
						{
							for (var w = 0; w < floor(room_width / 24) + 1; w++)
							{
								var tileIndex = tilemap_get(tileDebug,w,h);
								if ((tileIndex != -1) and (tileIndex != 0))
								{
									file_text_write_string(savedFile,"tileDebug");
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,tileIndex);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,w);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,h);
									file_text_writeln(savedFile);
								}
							}
						}
					}
					
					if (tileDebugPlatform != -1)
					{
						for (var h = 0; h < floor(room_height / 24) + 1; h++)
						{
							for (var w = 0; w < floor(room_width / 24) + 1; w++)
							{
								var tileIndex = tilemap_get(tileDebugPlatform,w,h);
								if ((tileIndex != -1) and (tileIndex != 0))
								{
									file_text_write_string(savedFile,"tileDebugPlatform");
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,tileIndex);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,w);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,h);
									file_text_writeln(savedFile);
								}
							}
						}
					}
					
					if (tileDebugPlatformTop != -1)
					{
						for (var h = 0; h < floor(room_height / 24) + 1; h++)
						{
							for (var w = 0; w < floor(room_width / 24) + 1; w++)
							{
								var tileIndex = tilemap_get(tileDebugPlatformTop,w,h);
								if ((tileIndex != -1) and (tileIndex != 0))
								{
									file_text_write_string(savedFile,"tileDebugPlatformTop");
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,tileIndex);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,w);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,h);
									file_text_writeln(savedFile);
								}
							}
						}
					}
					
					if (tileAsteroidFieldsFront != -1)
					{
						for (var h = 0; h < floor(room_height / 24) + 1; h++)
						{
							for (var w = 0; w < floor(room_width / 24) + 1; w++)
							{
								var tileIndex = tilemap_get(tileAsteroidFieldsFront,w,h);
								if ((tileIndex != -1) and (tileIndex != 0))
								{
									file_text_write_string(savedFile,"tileAsteroidFieldsFront");
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,tileIndex);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,w);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,h);
									file_text_writeln(savedFile);
								}
							}
						}
					}
					
					if (tileAsteroidFieldsFront3D1 != -1)
					{
						for (var h = 0; h < floor(room_height / 24) + 1; h++)
						{
							for (var w = 0; w < floor(room_width / 24) + 1; w++)
							{
								var tileIndex = tilemap_get(tileAsteroidFieldsFront3D1,w,h);
								if ((tileIndex != -1) and (tileIndex != 0))
								{
									file_text_write_string(savedFile,"tileAsteroidFieldsFront3D1");
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,tileIndex);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,w);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,h);
									file_text_writeln(savedFile);
								}
							}
						}
					}
					
					if (tileAsteroidFieldsFront3D2 != -1)
					{
						for (var h = 0; h < floor(room_height / 24) + 1; h++)
						{
							for (var w = 0; w < floor(room_width / 24) + 1; w++)
							{
								var tileIndex = tilemap_get(tileAsteroidFieldsFront3D2,w,h);
								if ((tileIndex != -1) and (tileIndex != 0))
								{
									file_text_write_string(savedFile,"tileAsteroidFieldsFront3D2");
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,tileIndex);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,w);
									file_text_writeln(savedFile);
									file_text_write_string(savedFile,h);
									file_text_writeln(savedFile);
								}
							}
						}
					}
					
					file_text_write_string(savedFile,"tileEnd");
					file_text_writeln(savedFile);
					#endregion
					
					#region Save Spawners
					file_text_write_string(savedFile,"spawnerStart");
					file_text_writeln(savedFile);
					with (obj_Maykr_Spawner)
					{
						file_text_write_string(savedFile,object_get_name(spawnedItemIndex));
						file_text_writeln(savedFile);
						file_text_write_string(savedFile,x);
						file_text_writeln(savedFile);
						file_text_write_string(savedFile,y);
						file_text_writeln(savedFile);
						file_text_write_string(savedFile,xOffset);
						file_text_writeln(savedFile);
						file_text_write_string(savedFile,yOffset);
						file_text_writeln(savedFile);
						file_text_write_string(savedFile,spawnedItemString);
						file_text_writeln(savedFile);
						file_text_write_string(savedFile,spawnedLayer);
						file_text_writeln(savedFile);
						file_text_write_string(savedFile,sprite_get_name(spawnedSprite));
						file_text_writeln(savedFile);
						file_text_write_string(savedFile,spawnedState);
						file_text_writeln(savedFile);
						file_text_write_string(savedFile,spawnedDirX);
						file_text_writeln(savedFile);
						var spawnedPalette = spawnedPaletteIndex;
						if (spawnedPalette != -1) spawnedPalette = sprite_get_name(spawnedPaletteIndex);
						file_text_write_string(savedFile,spawnedPalette);
						file_text_writeln(savedFile);
						switch (spawnedItemIndex)
						{
							case obj_Wall:
							file_text_write_string(savedFile,spawnedSlopeType);
							file_text_writeln(savedFile);
							break;
						
							case obj_AbilityTrophy:
							file_text_write_string(savedFile,spawnedAbilityIndex);
							file_text_writeln(savedFile);
							break;
						}
					}
					file_text_write_string(savedFile,"spawnerEnd");
					file_text_writeln(savedFile);
					#endregion
				
					file_text_write_string(savedFile,"stageEnd");
					file_text_close(savedFile);
				}
			}
			#endregion
			
			#region Load Button
			if (mouseOnTopLoad)
			{
				io_clear();
				loadState = 0;
			}
			#endregion
			
			#region Options Button
			if (mouseOnTopOptions)
			{
				io_clear();
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				scr_Maykr_WindowReset();
				windowIndex = maykrWindows.levelSettings;
			}
			#endregion
			
			#region Reset Button
			if (mouseOnTopReset)
			{
				io_clear();
				yesBar = 0;
				windowIndex = maykrWindows.clearCanvas;
			}
			#endregion
			
			#region Leave Button
			if (mouseOnTopLeave)
			{
				io_clear();
				yesBar = 0;
				windowIndex = maykrWindows.leaveCanvas;
			}
			#endregion
			
			#region Play Button
			if (mouseOnTopPlay)
			{
				io_clear();
				
				active = true;
				mouseOnTopPlay = false;
				topHudOffset = 0;
				topHudSaveOffset = 0;
				topHudLoadOffset = 0;
				topHudOptionsOffset = 0;
				topHudResetOffset = 0;
				topHudLeaveOffset = 0;
				topHudPlayOffset = 0;
				topHudBlocksOffset = 0;
				topHudEnemiesOffset = 0;
				topHudItemsOffset = 0;
				bottomHudOffset = (50 * !bottomHudVisible) - (96 * bottomHudOpen);
				
				global.pause = false;
				global.healthP1 = global.healthP1Max;
				global.healthP2 = global.healthP2Max;
				global.healthP3 = global.healthP3Max;
				global.healthP4 = global.healthP4Max;
				
				with (obj_Particle) instance_destroy();
				with (obj_Maykr_Spawner) activeState = 0;
				
				with (obj_Maykr_Spawner)
				{
					if ((spawnedItemIndex == obj_Player) and (instance_exists(obj_Camera)))
					{
						obj_Camera.cameraX = x - (obj_Camera.viewWidth / 2);
						obj_Camera.cameraY = y - (obj_Camera.viewHeight / 2);
					}
				}
				
				with (obj_Camera)
				{
					zoom = 1;
					zoomTarget = 1;
				}
			}
			#endregion
			
			#region Blocks Button
			if (mouseOnTopBlocks)
			{
				io_clear();
				inventoryPage = 0;
				if (global.gambleMaykrMenu != "Collision")
				{
					global.gambleMaykrMenu = "Collision";
					scr_Maykr_Inventory(global.gambleMaykrMenu,inventoryPage);
					spawnedLayer = "Collision";
					spawnedItemString = maykrObjects.debugWall;
					scr_Maykr_GetFromInventory(spawnedItemString);
					scr_Maykr_SelectedSpawnerReset();
					snap = 24;
				}
			}
			#endregion
			
			#region Enemies Button
			if (mouseOnTopEnemies)
			{
				io_clear();
				inventoryPage = 0;
				if (global.gambleMaykrMenu != "Enemies")
				{
					global.gambleMaykrMenu = "Enemies";
					scr_Maykr_Inventory(global.gambleMaykrMenu,inventoryPage);
					spawnedLayer = "Enemies";
					spawnedItemString = maykrObjects.waddleDee;
					scr_Maykr_GetFromInventory(spawnedItemString);
					scr_Maykr_SelectedSpawnerReset();
					snap = 6;
				}
			}
			#endregion
			
			#region Items Button
			if (mouseOnTopItems)
			{
				io_clear();
				inventoryPage = 0;
				if (global.gambleMaykrMenu != "Environment")
				{
					global.gambleMaykrMenu = "Environment";
					scr_Maykr_Inventory(global.gambleMaykrMenu,inventoryPage);
					spawnedLayer = "Environment";
					spawnedItemString = maykrObjects.pointStarYellow;
					scr_Maykr_GetFromInventory(spawnedItemString);
					scr_Maykr_SelectedSpawnerReset();
					snap = 6;
				}
			}
			#endregion
			
			#region Object Buttons
			for (var i = 0; i < 12 + (bottomHudVisible * 36); i++)
			{
				var xx = 51 + (32 * (i % 12));
				var yy = (366 + bottomHudOffset) - 127 + (32 * floor(i / 12));
				if (point_in_rectangle(mouseXGui,mouseYGui,xx,yy,xx + 26,yy + 26))
				{
					io_clear();
					if (maykrInventory[i + inventoryIndex] != -1)
					{
						spawnedItemString = maykrInventory[i + inventoryIndex];
						scr_Maykr_GetFromInventory(spawnedItemString);
					}
				}
			}
			#endregion
			
			#region Hide Button
			if (mouseOnTopHide)
			{
				io_clear();
				hudVisible = !hudVisible;
			}
			#endregion
		}
		#endregion
		
		#region Select Object
		if ((!deleteMode) and (!dragMode))
		{
			with (obj_Maykr_Spawner) if ((other.spawnedLayer == spawnedLayer) and (position_meeting(other.mouseX,other.mouseY,id))) other.collidingSpawner = id;
			if (spawnTimer > 0) spawnTimer -= 1;
			if (mouse_check_button_pressed(mb_left))
			{
				if (spawnedLayer != "Collision")
				{
					if (collidingSpawner != -1)
					{
						scr_Maykr_SelectSpawner(collidingSpawner);
						draggedSpawner = collidingSpawner;
					}
					else
					{
						scr_Maykr_SelectedSpawnerReset();
					}
				}
			}
			
			if (mouse_check_button_released(mb_left)) draggedSpawner = -1;
		}
		#endregion
		
		#region Object Attributes
		if (selectedSpawner != -1)
		{
			if (instance_exists(selectedSpawner))
			{
				if (selectedSpawnerOptionsExists)
				{
					selectedSpawnerOptionsX = selectedSpawner.x + selectedSpawner.xOffset - 22;
					if ((selectedSpawner.y - 25) <= camera_get_view_y(gameView) + (40 * hudVisible))
					{
						selectedSpawnerOptionsY = selectedSpawner.y + sprite_get_height(selectedSpawner.spawnedSprite) + 4;
					}
					else
					{
						selectedSpawnerOptionsY = selectedSpawner.y - 25;
					}
					
					if (point_in_rectangle(mouseX,mouseY,selectedSpawnerOptionsX,selectedSpawnerOptionsY,selectedSpawnerOptionsX + 21,selectedSpawnerOptionsY + 21))
					{
						mouseOnTopSelectedSpawnerOptions = true;
					}
					else
					{
						mouseOnTopSelectedSpawnerOptions = false;
					}
				}
				if (selectedSpawnerDirectionExists)
				{
					selectedSpawnerDirectionX = selectedSpawner.x + selectedSpawner.xOffset + 1;
					if ((selectedSpawner.y - 25) <= camera_get_view_y(gameView) + (40 * hudVisible))
					{
						selectedSpawnerDirectionY = selectedSpawner.y + sprite_get_height(selectedSpawner.spawnedSprite) + 4;
					}
					else
					{
						selectedSpawnerDirectionY = selectedSpawner.y - 25;
					}
					
					if (point_in_rectangle(mouseX,mouseY,selectedSpawnerDirectionX,selectedSpawnerDirectionY,selectedSpawnerDirectionX + 21,selectedSpawnerDirectionY + 21))
					{
						mouseOnTopSelectedSpawnerDirection = true;
					}
					else
					{
						mouseOnTopSelectedSpawnerDirection = false;
					}
					
					selectedSpawnerDirection = (selectedSpawner.spawnedDirX == 1);
				}
			}
			else
			{
				scr_Maykr_SelectedSpawnerReset();
			}
		}
		#endregion
		
		#region Spawn Object
		if (spawnTimer > 0) spawnTimer -= 1;
		if (mouse_check_button(mb_left))
		{
			if ((collidingSpawner == -1) and (!mouseOnHud) and (!spawnTimer) and (draggedSpawner == -1) and (!deleteMode) and (!dragMode))
			{
				var parDirection = irandom_range(0,359);
				for (var i = 0; i < 3; i++)
				{
					var parSquish = instance_create_depth(mouseX,mouseY,-999,obj_Particle);
					parSquish.pausable = false;
					parSquish.sprite_index = spr_Particle_SmallStar;
					parSquish.destroyTimer = 10;
					parSquish.spdBuiltIn = 6;
					parSquish.fricSpd = .6;
					parSquish.direction = parDirection + (i * 120);
				}
				
				var spawner = instance_create_layer(mouseX,mouseY,spawnedLayer,obj_Maykr_Spawner);
				spawner.snap = snap;
				spawner.spawnedItemString = spawnedItemString;
				spawner.spawnedItemIndex = spawnedItemIndex;
				spawner.spawnedLayer = spawnedLayer;
				spawner.spawnedSprite = spawnedSprite;
				spawner.spawnedName = spawnedName;
				spawner.spawnedDirX = dirX;
				spawner.xOffset = spawnedXOffset;
				spawner.yOffset = spawnedYOffset;
				switch (spawnedItemIndex)
				{
					case obj_ParentWall:
					spawner.spawnedSprite = -1;
					spawner.spawnedSlopeType = spawnedSlopeType;
					break;
					
					case obj_Wall:
					spawner.spawnedSprite = -1;
					spawner.spawnedSlopeType = spawnedSlopeType;
					break;
				}
				
				switch (spawnedItemString)
				{
					case maykrObjects.debugWall:
					if (tileDebug == -1)
					{
						layer_create(299,"tileDebug");
						tileDebug = layer_tilemap_create("tileDebug",0,0,ts_Debug,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					var wx = mouseX / 24;
					var wy = mouseY / 24;
					tilemap_set(tileDebug,80,wx,wy);
					if (tilemap_get(tileDebug,wx,wy - 1) == 0) tilemap_set(tileDebug,99,wx,wy - 1);
					break;
					
					case maykrObjects.debugWall24x24SlopeLeft:
					spawner.spawnedDirX = 1;
					if (tileDebug == -1)
					{
						layer_create(299,"tileDebug");
						tileDebug = layer_tilemap_create("tileDebug",0,0,ts_Debug,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					var wx = mouseX / 24;
					var wy = mouseY / 24;
					tilemap_set(tileDebug,64,wx,wy);
					break;
					
					case maykrObjects.debugWall24x24SlopeRight:
					spawner.spawnedDirX = -1;
					if (tileDebug == -1)
					{
						layer_create(299,"tileDebug");
						tileDebug = layer_tilemap_create("tileDebug",0,0,ts_Debug,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					var wx = mouseX / 24;
					var wy = mouseY / 24;
					tilemap_set(tileDebug,65,wx,wy);
					break;
					
					case maykrObjects.debugPlatform:
					if (tileDebugPlatform == -1)
					{
						layer_create(299,"tileDebugPlatform");
						tileDebugPlatform = layer_tilemap_create("tileDebugPlatform",0,0,ts_Debug,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
						
						layer_create(299,"tileDebugPlatformTop");
						tileDebugPlatformTop = layer_tilemap_create("tileDebugPlatformTop",0,0,ts_Debug,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					var wx = mouseX / 24;
					var wy = mouseY / 24;
					tilemap_set(tileDebugPlatform,63,wx,wy);
					if (tilemap_get(tileDebugPlatformTop,wx,wy - 1) == 0) tilemap_set(tileDebugPlatformTop,101,wx,wy - 1);
					break;
					
					case maykrObjects.debugLadder:
					if (tileDebugLadder == -1)
					{
						layer_create(298,"tileDebugLadder");
						tileDebugLadder = layer_tilemap_create("tileDebugLadder",0,0,ts_Debug,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					var wx = mouseX / 24;
					var wy = mouseY / 24;
					tilemap_set(tileDebugLadder,14,wx,wy);
					break;
					
					case maykrObjects.asteroidFieldsFront:
					if (tileAsteroidFieldsFront == -1)
					{
						layer_create(299,"tileAsteroidFieldsFront");
						tileAsteroidFieldsFront = layer_tilemap_create("tileAsteroidFieldsFront",0,0,ts_AsteroidFields,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
						layer_create(299,"tileAsteroidFieldsFront3D1");
						tileAsteroidFieldsFront3D1 = layer_tilemap_create("tileAsteroidFieldsFront3D1",0,0,ts_AsteroidFields,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
						layer_create(299,"tileAsteroidFieldsFront3D2");
						tileAsteroidFieldsFront3D2 = layer_tilemap_create("tileAsteroidFieldsFront3D2",0,0,ts_AsteroidFields,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					var wx = mouseX / 24;
					var wy = mouseY / 24;
					var tileIndex = 20 + ((wx + wy) % 6);
					tilemap_set(tileAsteroidFieldsFront,tileIndex,wx,wy);
					if (tilemap_get(tileAsteroidFieldsFront,wx,wy - 1) == 0)
					{
						var topWallTileIndex = tileIndex - 19;
						tilemap_set(tileAsteroidFieldsFront,topWallTileIndex,wx,wy - 1);
						topWallTileIndex = tileIndex - 14;
						if (topWallTileIndex < 7) topWallTileIndex += 6;
						tilemap_set(tileAsteroidFieldsFront3D1,topWallTileIndex,wx,wy - 1);
						var has3D2 = choose(true,true,false);
						if (has3D2)
						{
							topWallTileIndex = tileIndex - 9;
							if (topWallTileIndex < 13) topWallTileIndex += 6;
							tilemap_set(tileAsteroidFieldsFront3D2,topWallTileIndex,wx,wy - 1);
						}
					}
					break;
				}
				
				var placeSfx = snd_Guard;
				if (spawnedLayer == "Collision")
				{
					placeSfx = snd_PlaceBlock;
				}
				else
				{
					scr_Maykr_SelectSpawner(spawner);
				}
				if (audio_is_playing(placeSfx)) audio_stop_sound(placeSfx);
				audio_play_sound(placeSfx,0,false);
			}
		}
		#endregion
		
		#region Delete Object
		with (obj_Maykr_Spawner)
		{
			if ((spawnedItemIndex != obj_Player) and (spawnedLayer == global.gambleMaykrMenu) and (position_meeting(other.mouseX,other.mouseY,id)) and ((mouse_check_button(mb_right)) or ((other.deleteMode) and (mouse_check_button(mb_left)))))
			{
				switch (spawnedItemString)
				{
					case maykrObjects.debugWall:
					case maykrObjects.debugWall24x24SlopeLeft:
					case maykrObjects.debugWall24x24SlopeRight:
					tilemap_set(obj_Maykr_Control.tileDebug,0,floor(x / 24),floor(y / 24));
					var topTile = tilemap_get(obj_Maykr_Control.tileDebug,floor(x / 24),floor(y / 24) - 1);
					var bottomTile = tilemap_get(obj_Maykr_Control.tileDebug,floor(x / 24),floor(y / 24) + 1);
					if (topTile == 99) tilemap_set(obj_Maykr_Control.tileDebug,0,floor(x / 24),floor(y / 24) - 1);
					if (bottomTile == 80) tilemap_set(obj_Maykr_Control.tileDebug,99,floor(x / 24),floor(y / 24));
					break;
					
					case maykrObjects.debugPlatform:
					tilemap_set(obj_Maykr_Control.tileDebugPlatform,0,floor(x / 24),floor(y / 24));
					tilemap_set(obj_Maykr_Control.tileDebugPlatformTop,0,floor(x / 24),floor(y / 24) - 1);
					break;
					
					case maykrObjects.debugLadder:
					tilemap_set(obj_Maykr_Control.tileDebugLadder,0,floor(x / 24),floor(y / 24));
					break;
					
					case maykrObjects.asteroidFieldsFront:
					tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,0,floor(x / 24),floor(y / 24));
					var topTile = tilemap_get(obj_Maykr_Control.tileAsteroidFieldsFront,floor(x / 24),floor(y / 24) - 1);
					var bottomTile = tilemap_get(obj_Maykr_Control.tileAsteroidFieldsFront,floor(x / 24),floor(y / 24) + 1);
					if (((topTile >= 1) and (topTile <= 6)) or ((topTile >= 39) and (topTile <= 44)) or ((topTile >= 115) and (topTile <= 120)))
					{
						tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,0,floor(x / 24),floor(y / 24) - 1);
					}
					tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront3D1,0,floor(x / 24),floor(y / 24) - 1);
					tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront3D2,0,floor(x / 24),floor(y / 24) - 1);
					
					if ((bottomTile >= 20) and (bottomTile <= 25))
					{
						var topWallTileIndex = bottomTile - 19;
						tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,topWallTileIndex,floor(x / 24),floor(y / 24));
						topWallTileIndex = bottomTile - 14;
						if (topWallTileIndex < 7) topWallTileIndex += 6;
						tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront3D1,topWallTileIndex,floor(x / 24),floor(y / 24));
						var has3D2 = choose(true,true,true,false,false);
						if (has3D2)
						{
							topWallTileIndex = bottomTile - 9;
							if (topWallTileIndex < 13) topWallTileIndex += 6;
							tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront3D2,topWallTileIndex,floor(x / 24),floor(y / 24));
						}
					}
			
					if (((bottomTile >= 77) and (bottomTile <= 82)) or ((bottomTile >= 153) and (bottomTile <= 158)))
					{
						var topWallTileIndex = bottomTile - 38;
						tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,topWallTileIndex,floor(x / 24),floor(y / 24));
						topWallTileIndex = bottomTile - 33;
						if (topWallTileIndex < 26) topWallTileIndex += 6;
						tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront3D1,topWallTileIndex,floor(x / 24),floor(y / 24));
						topWallTileIndex = bottomTile - 28;
						if (topWallTileIndex < 32) topWallTileIndex += 6;
						tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront3D2,topWallTileIndex,floor(x / 24),floor(y / 24));
					}
					break;
				}
				
				instance_destroy();
			}
		}
		#endregion
	}
	else
	{
		#region Windows
		switch (windowIndex)
		{
			case maykrWindows.levelSettings:
			if (!instance_exists(obj_Fade))
			{
				if (keyRightPressed)
				{
					windowSelection += 1;
				}
				if (keyLeftPressed)
				{
					windowSelection -= 1;
				}
				
				if (windowSelection < 0) windowSelection += 5;
				if (windowSelection > 4) windowSelection -= 5;
				
				if (((windowSelection == 0) and (keyJumpPressed)) or ((point_in_rectangle(mouseXGui,mouseYGui,126,57,147,78)) and (mouse_check_button_pressed(mb_left))))
				{
					windowSelection = 0;
					io_clear();
					if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
					audio_play_sound(snd_ButtonChange,0,false);
					selectedBackground += 1;
					if (selectedBackground > selectedBackgroundSize - 1) selectedBackground -= selectedBackgroundSize;
					selectedBackgroundIndex = ds_list_find_value(maykrBackgroundList,selectedBackground);
					layer_background_sprite(layer_background_get_id("Background_Parallax1"),selectedBackgroundIndex);
				}
				
				if (((windowSelection == 1) and (keyJumpPressed)) or ((point_in_rectangle(mouseXGui,mouseYGui,149,57,170,78)) and (mouse_check_button_pressed(mb_left))))
				{
					windowSelection = 1;
					io_clear();
					if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
					audio_play_sound(snd_ButtonChange,0,false);
					selectedBackground -= 1;
					if (selectedBackground < 0) selectedBackground += selectedBackgroundSize;
					selectedBackgroundIndex = ds_list_find_value(maykrBackgroundList,selectedBackground);
					layer_background_sprite(layer_background_get_id("Background_Parallax1"),selectedBackgroundIndex);
				}
				
				if (((windowSelection == 2) and (keyJumpPressed)) or ((point_in_rectangle(mouseXGui,mouseYGui,126,107,147,128)) and (mouse_check_button_pressed(mb_left))))
				{
					windowSelection = 2;
					io_clear();
					if (audio_is_playing(global.musicPlaying)) audio_stop_sound(global.musicPlaying);
					if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
					audio_play_sound(snd_ButtonChange,0,false);
					selectedMusic += 1;
					if (selectedMusic > selectedMusicSize - 1) selectedMusic -= selectedMusicSize;
					selectedMusicIndex = ds_list_find_value(maykrMusicList,selectedMusic);
				}
				
				if (((windowSelection == 3) and (keyJumpPressed)) or ((point_in_rectangle(mouseXGui,mouseYGui,149,107,170,128)) and (mouse_check_button_pressed(mb_left))))
				{
					windowSelection = 3;
					io_clear();
					if (audio_is_playing(global.musicPlaying)) audio_stop_sound(global.musicPlaying);
					if (audio_is_playing(snd_ButtonChange)) audio_stop_sound(snd_ButtonChange);
					audio_play_sound(snd_ButtonChange,0,false);
					selectedMusic -= 1;
					if (selectedMusic < 0) selectedMusic += selectedMusicSize;
					selectedMusicIndex = ds_list_find_value(maykrMusicList,selectedMusic);
				}
				
				if ((keyAttackPressed) or ((windowSelection == 4) and (keyJumpPressed)) or ((point_in_rectangle(mouseXGui,mouseYGui,19,226,139,251)) and (mouse_check_button_pressed(mb_left))))
				{
					windowSelection = 4;
					io_clear();
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
					windowSelection = 0;
					windowIndex = -1;
				}
			}
			break;
			
			case maykrWindows.clearCanvas:
			if (yesBar < yesBarMax) yesBar += 1;
			
			if (mouse_check_button_pressed(mb_left))
			{
				if (point_in_rectangle(mouseXGui,mouseYGui,180,116,300,147))
				{
					if (yesBar == yesBarMax)
					{
						if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
						audio_play_sound(snd_ButtonYes,0,false);
						windowIndex = -1;
						spawnTimer = 15;
					
						scr_Maykr_ClearRoom();
						
						var spawner = instance_create_layer(60,room_height - 91,"Player",obj_Maykr_Spawner);
						spawner.spawnedItemIndex = obj_Player;
						spawner.spawnedSprite = spr_Kirby_Normal_Idle;
						spawner.spawnedPaletteIndex = scr_Player_SprayPaint(global.sprayPaintKirbyP1,playerCharacters.kirby,global.skinKirbyP1);
					}
					else
					{
						yesBar += (yesBarMax / 10);
					}
				}
				
				if (point_in_rectangle(mouseXGui,mouseYGui,180,149,300,174))
				{
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
					windowIndex = -1;
					spawnTimer = 15;
				}
				io_clear();
			}
			yesBar = clamp(yesBar,0,yesBarMax);
			break;
			
			case maykrWindows.leaveCanvas:
			if (yesBar < yesBarMax) yesBar += 1;
			
			if ((mouse_check_button_pressed(mb_left)) and (!instance_exists(obj_Fade)))
			{
				if (point_in_rectangle(mouseXGui,mouseYGui,180,116,300,147))
				{
					if (yesBar == yesBarMax)
					{
						if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
						audio_play_sound(snd_ButtonYes,0,false);
						windowIndex = -1;
						global.pause = false;
						if (global.canSave) scr_LoadGame(global.selectedSave);
						var fade = instance_create_depth(x,y,-999,obj_Fade);
						fade.targetRoom = rm_MaykrTitle;
					}
					else
					{
						yesBar += (yesBarMax / 10);
					}
				}
				
				if (point_in_rectangle(mouseXGui,mouseYGui,180,149,300,174))
				{
					if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
					audio_play_sound(snd_ButtonNo,0,false);
					windowIndex = -1;
					spawnTimer = 15;
				}
				io_clear();
			}
			yesBar = clamp(yesBar,0,yesBarMax);
			break;
		}
		#endregion
	}
}
else
{
	#region Mouse On Top
	if (point_in_rectangle(mouseXGui,mouseYGui,12,0,84,20)) mouseOnTopEdit = true;
	if (!point_in_rectangle(mouseXGui,mouseYGui,12,0,84,47)) mouseOnTopEdit = false;
	#endregion
	
	#region Go Back To Edit Mode
	if (((mouseOnTopEdit) and (mouse_check_button_pressed(mb_left))) or (keyboard_check_pressed(vk_escape)))
	{
		active = false;
		mouseOnTopEdit = false;
		
		global.pause = true;
		global.abilityP1 = playerAbilities.none;
		global.abilityP2 = playerAbilities.none;
		global.abilityP3 = playerAbilities.none;
		global.abilityP4 = playerAbilities.none;
		
		if (audio_is_playing(mus_Death1)) audio_stop_sound(mus_Death1);
		
		instance_activate_all();
		if (instance_exists(obj_Hud)) instance_destroy(obj_Hud);
		with (obj_Particle) instance_destroy();
		with (obj_HitNumbers) instance_destroy();
		with (obj_Projectile) instance_destroy();
		with (obj_PointStar) instance_destroy();
		with (obj_PopFlowerStar) instance_destroy();
		with (obj_Food) instance_destroy();
		with (obj_Butterfly) instance_destroy();
		with (obj_EatMe) instance_destroy();
		
		if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
		with (obj_Maykr_Spawner)
		{
			activeState = -1;
			visible = true;
			if ((spawnedItemIndex == obj_Player) and (instance_exists(obj_Camera)))
			{
				obj_Camera.cameraX = x - (obj_Camera.viewWidth / 2);
				obj_Camera.cameraY = y - (obj_Camera.viewHeight / 2);
			}
			if (spawnedItem != -1) instance_destroy(spawnedItem);
		}
		with (obj_Enemy) instance_destroy();
	}
	#endregion
}