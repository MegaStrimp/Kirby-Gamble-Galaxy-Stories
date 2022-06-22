///@description Main

#region Mouse
mouseX = floor(mouse_x / snap) * snap;
mouseY = floor(mouse_y / snap) * snap;
mouseXGui = device_mouse_x_to_gui(0);
mouseYGui = device_mouse_y_to_gui(0);
#endregion

#region Load Level
switch (loadState)
{
	case 0:
	var file;
	file = get_open_filename(working_directory + "maykr file|*.maykr","");
	if (file != "")
	{
		var creationIndex = -1;
		loadedFile = file_text_open_read(file);
		var maykrStart = file_text_read_string(loadedFile);
		if (maykrStart == maykrStartMsg)
		{
			scr_Maykr_ClearRoom();
			file_text_readln(loadedFile);
			var versionNumber = file_text_read_string(loadedFile);
			file_text_readln(loadedFile);
			switch (versionNumber)
			{
				case "Version - 1.0.0":
				creationIndex = file_text_read_string(loadedFile);
				file_text_readln(loadedFile);
								
				if (creationIndex == "stageEnd") break;
								
				#region Load Room Attribues
				var roomWidthLoad = real(file_text_read_real(loadedFile));
				show_debug_message("Room Height - " + string(roomWidthLoad));
				file_text_readln(loadedFile);
				var roomHeightLoad = real(file_text_read_real(loadedFile));
				show_debug_message("Room Height - " + string(roomHeightLoad));
				file_text_readln(loadedFile);
				file_text_readln(loadedFile);
								
				scr_Maykr_CreateRoom(roomWidthLoad,roomHeightLoad);
				room_goto(global.maykrCanvas);
				#endregion
				break;
			}
		}
		else
		{
			show_debug_message("Invalid Maykr File");
			//errorAlpha = 1;
			//errorAlphaTimer = errorAlphaTimerMax;
		}
	}
	else
	{
		show_debug_message("Open A Maykr File");
		//errorAlpha = 1;
		//errorAlphaTimer = errorAlphaTimerMax;
	}
	loadState = 1;
	break;
	
	case 1:
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
									
							var spawner = instance_create_layer(spawnerItemXLoad,spawnerItemYLoad,"enemies",obj_Maykr_Spawner);
							show_debug_message("spawn");
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
	file_text_close(loadedFile);
	loadedFile = -1;
	loadState = -1;
	break;
}
#endregion

if (!active)
{
	#region Variables
	collidingSpawner = false;
	with (obj_Maykr_Spawner) if ((other.spawnedLayer == spawnedLayer) and (position_meeting(other.mouseX,other.mouseY,id))) other.collidingSpawner = true;

	canBeInteracted = true;
	if (windowIndex != -1) canBeInteracted = false;
	#endregion

	if (canBeInteracted)
	{
		#region Mouse On Top
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
		#endregion
	
		#region Buttons
		if (mouse_check_button_pressed(mb_left))
		{
			#region Bottom Hud Expand Button
			if (mouseOnTopExpand)
			{
				io_clear();
				bottomHudOpen = !bottomHudOpen;
			}
			#endregion
		
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
					
					file_text_write_string(savedFile,"roomAttributesEnd");
					file_text_writeln(savedFile);
					#endregion
					
					#region Save Tiles
					file_text_write_string(savedFile,"tileStart");
					file_text_writeln(savedFile);
					if (tileDebug != -1)
					{
						for (var h = 0; h < 120; h++)
						{
							for (var w = 0; w < 200; w++)
							{
								var tileIndex = tilemap_get(tileDebug,w,h);
								if (tileIndex != 0)
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
				
					if (tileAsteroidFieldsFront != -1)
					{
						for (var h = 0; h < 120; h++)
						{
							for (var w = 0; w < 200; w++)
							{
								var tileIndex = tilemap_get(tileAsteroidFieldsFront,w,h);
								if (tileIndex != 0)
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
							case obj_ParentWall:
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
			
			#region Reset Button
			if (mouseOnTopReset)
			{
				io_clear();
				yesBar = 0;
				windowIndex = "clear";
			}
			#endregion
			
			#region Leave Button
			if (mouseOnTopLeave)
			{
				io_clear();
				yesBar = 0;
				windowIndex = "leave";
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
				global.hpP1 = global.hpMax;
				global.hpP2 = global.hpMax;
				
				with (obj_Maykr_Spawner) active = true;
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
					if (maykrInventory[i] != -1)
					{
						spawnedItemString = maykrInventory[i];
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
		
		#region Spawn Object
		if (spawnTimer > 0) spawnTimer -= 1;
		if (mouse_check_button(mb_left))
		{
			mouseOnHud = false;
			if (((point_in_rectangle(mouseXGui,mouseYGui,0,0,325,27))) or ((point_in_rectangle(mouseXGui,mouseYGui,324,0,480,47))) or ((point_in_rectangle(mouseXGui,mouseYGui,26,233 + bottomHudOffset,454,270))) or (mouseOnTopMap) or (mouseOnTopSave) or (mouseOnTopLoad) or (mouseOnTopOptions) or (mouseOnTopReset) or (mouseOnTopLeave) or (mouseOnTopPlay) or (mouseOnTopEdit) or (mouseOnTopBlocks) or (mouseOnTopEnemies) or (mouseOnTopItems) or (mouseOnTopExpand) or (mouseOnTopHide)) mouseOnHud = true;
		
			if ((!collidingSpawner) and (!mouseOnHud) and (!spawnTimer))
			{
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
					
					case maykrObjects.asteroidFieldsFront:
					if (tileAsteroidFieldsFront == -1)
					{
						layer_create(299,"tileAsteroidFieldsFront");
						tileAsteroidFieldsFront = layer_tilemap_create("tileAsteroidFieldsFront",0,0,ts_AsteroidFields,floor(room_width / 24) + 1,floor(room_height / 24) + 1);
					}
					var wx = mouseX / 24;
					var wy = mouseY / 24;
					var tileIndex = 23 + ((wx + wy) % 3);
					tilemap_set(tileAsteroidFieldsFront,tileIndex,wx,wy);
					if (tilemap_get(tileAsteroidFieldsFront,wx,wy - 1) == 0) tilemap_set(tileAsteroidFieldsFront,tileIndex - 18,wx,wy - 1);
					break;
				}
			}
		}
		#endregion
		
		#region Delete Object
		with (obj_Maykr_Spawner)
		{
			if ((spawnedItemIndex != obj_Player) and (spawnedLayer == global.gambleMaykrMenu) and (position_meeting(other.mouseX,other.mouseY,id)) and (mouse_check_button(mb_right)))
			{
				switch (spawnedItemString)
				{
					case maykrObjects.debugWall:
					tilemap_set(obj_Maykr_Control.tileDebug,0,floor(x / 24),floor(y / 24));
					var topTile = tilemap_get(obj_Maykr_Control.tileDebug,floor(x / 24),floor(y / 24) - 1);
					var bottomTile = tilemap_get(obj_Maykr_Control.tileDebug,floor(x / 24),floor(y / 24) + 1);
					if (topTile == 99) tilemap_set(obj_Maykr_Control.tileDebug,0,floor(x / 24),floor(y / 24) - 1);
					if (bottomTile == 80) tilemap_set(obj_Maykr_Control.tileDebug,99,floor(x / 24),floor(y / 24));
					break;
					
					case maykrObjects.asteroidFieldsFront:
					tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,0,floor(x / 24),floor(y / 24));
					var topTile = tilemap_get(obj_Maykr_Control.tileAsteroidFieldsFront,floor(x / 24),floor(y / 24) - 1);
					var bottomTile = tilemap_get(obj_Maykr_Control.tileAsteroidFieldsFront,floor(x / 24),floor(y / 24) + 1);
					if ((topTile == 5) or (topTile == 6) or (topTile == 7)) tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,0,floor(x / 24),floor(y / 24) - 1);
					if ((bottomTile != 0) and (bottomTile >= 18)) tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,bottomTile - 18,floor(x / 24),floor(y / 24));
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
			case "clear":
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
			
			case "leave":
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
						if ((!global.debug) and (global.canSave)) scr_LoadGame(global.selectedSave);
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
		
		if (instance_exists(obj_Hud)) instance_destroy(obj_Hud);
		with (obj_Particle) instance_destroy();
		with (obj_Projectile) instance_destroy();
		
		if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
		with (obj_Maykr_Spawner)
		{
			active = false;
			visible = true;
			if ((spawnedItemIndex == obj_Player) and (instance_exists(obj_Camera)))
			{
				obj_Camera.cameraX = x - (obj_Camera.viewWidth / 2);
				obj_Camera.cameraY = y - (obj_Camera.viewHeight / 2);
			}
			if (spawnedItem != -1) instance_destroy(spawnedItem);
		}
	}
	#endregion
}