///@description Main

//Animation

switch (state)
{
	//Main
	
	case "settings":
	sprite_index = spr_Maykr_Button_Settings;
	break;
	
	case "collision":
	sprite_index = spr_Maykr_Button_Collision;
	if (global.gambleMaykrMenu == "collision")
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
	break;
	
	case "environment":
	sprite_index = spr_Maykr_Button_Environment;
	if (global.gambleMaykrMenu == "environment")
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
	break;
	
	case "enemies":
	sprite_index = spr_Maykr_Button_Enemies;
	if (global.gambleMaykrMenu == "enemies")
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
	break;
	
	case "play":
	sprite_index = spr_Maykr_Button_Play;
	break;
	
	case "exit":
	sprite_index = spr_Maykr_Button_Exit;
	break;
	
	case "save":
	sprite_index = spr_Maykr_Button_Save;
	break;
	
	case "load":
	sprite_index = spr_Maykr_Button_Load;
	break;
	
	case "trash":
	sprite_index = spr_Maykr_Button_Trash;
	if (trashCountdown == -1)
	{
		image_index = 0;
	}
	else
	{
		trashCountdown -= 1;
		image_index = 1;
	}
	break;
	
	//Options
	
	case "optionsExit":
	sprite_index = spr_Maykr_Options_Exit;
	break;
	
	case "optionsStatePlus":
	sprite_index = spr_Maykr_Options_Plus;
	break;
	
	case "optionsStateMinus":
	sprite_index = spr_Maykr_Options_Minus;
	break;
	
	case "optionsWidthPlus":
	sprite_index = spr_Maykr_Options_Plus;
	break;
	
	case "optionsWidthMinus":
	sprite_index = spr_Maykr_Options_Minus;
	break;
	
	case "optionsHeightPlus":
	sprite_index = spr_Maykr_Options_Plus;
	break;
	
	case "optionsHeightMinus":
	sprite_index = spr_Maykr_Options_Minus;
	break;
	
	case "optionsMirror":
	sprite_index = spr_Maykr_Options_Boolean;
	if (obj_Maykr_Control.optionIndex.spawnedDirX == 1)
	{
		image_index = 0;
	}
	else
	{
		image_index = 1;
	}
	break;
	
	case "optionsPalette":
	sprite_index = spr_Maykr_Border;
	if (obj_Maykr_Control.optionIndex.spawnedPaletteIndex == paletteIndex)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
	break;
	
	case "optionsAbility":
	sprite_index = spr_Maykr_BorderLarge;
	if (obj_Maykr_Control.optionIndex.spawnedAbilityIndex == abilityIndex)
	{
		image_index = 1;
	}
	else
	{
		image_index = 0;
	}
	break;
	
	//Collision
	
	case "item_collision_wall":
	sprite_index = spr_Maykr_Debug_Wall;
	break;
	
	case "item_collision_slope":
	sprite_index = spr_Maykr_Debug_Slope;
	break;
	
	case "item_collision_gentleSlope":
	sprite_index = spr_Maykr_Debug_GentleSlope;
	break;
	
	case "item_collision_superGentleSlope":
	sprite_index = spr_Maykr_Debug_SuperGentleSlope;
	break;
	
	case "item_collision_ladder":
	sprite_index = spr_Maykr_Debug_Ladder;
	break;
	
	case "item_collision_platform":
	sprite_index = spr_Maykr_Debug_Platform;
	break;
	
	//Elements
	
	case "item_environment_starBlock":
	sprite_index = spr_StarBlock_Normal_Idle;
	break;
	
	case "item_environment_bigStarBlock":
	sprite_index = spr_Maykr_Debug_BigStarBlock;
	break;
	
	case "item_environment_bombBlock":
	sprite_index = spr_BombBlock_Normal_Idle;
	break;
	
	case "item_environment_bombSolidBlock":
	sprite_index = spr_BombSolidBlock_Normal_Idle;
	break;
	
	case "item_environment_bombSolidBlockInvis":
	sprite_index = spr_BombSolidBlock_Normal_Idle;
	break;
	
	case "item_environment_abilityBlock":
	sprite_index = spr_AbilityBlock_Normal_Idle;
	break;
	
	case "item_environment_breakingWall":
	sprite_index = spr_BreakingWall_Normal_Idle;
	break;
	
	case "item_environment_crate":
	sprite_index = spr_Maykr_Debug_Crate;
	break;
	
	case "item_environment_durableBlock":
	sprite_index = spr_Maykr_Debug_DurableBlock;
	break;
	
	case "item_environment_bumper":
	sprite_index = spr_Bumper_Normal;
	break;
	
	case "item_environment_spring":
	sprite_index = spr_Spring_Normal;
	break;
	
	case "item_environment_trampoline":
	sprite_index = spr_Trampoline_Normal;
	break;
	
	case "item_environment_food":
	sprite_index = spr_Food;
	break;
	
	case "item_environment_pepBrew":
	sprite_index = spr_PepBrew;
	break;
	
	case "item_environment_maximTomato":
	sprite_index = spr_MaximTomato;
	break;
	
	case "item_environment_1Up":
	sprite_index = spr_1Up;
	break;
	
	case "item_environment_spike":
	sprite_index = spr_Spike;
	break;
	
	case "item_environment_pointStar":
	sprite_index = spr_PointStar_Yellow_Idle;
	break;
	
	case "item_environment_popFlower":
	sprite_index = spr_PopFlower_GreenGreens_Closed;
	break;
	
	case "item_environment_itemChest":
	sprite_index = spr_ItemChest_Normal_Closed;
	break;
	
	case "item_environment_button":
	sprite_index = spr_Button_Normal_Idle;
	break;
	
	case "item_environment_gate":
	sprite_index = spr_Maykr_Debug_Gate;
	break;
	
	case "item_environment_abilityTrophy":
	sprite_index = spr_AbilityTrophy_Normal_Idle;
	break;
	
	case "item_environment_cuttableGrass":
	sprite_index = spr_Maykr_Debug_CuttableGrass;
	break;
	
	//Enemies
	
	case "item_enemies_waddleDee":
	sprite_index = spr_WaddleDee_Normal_Idle;
	break;
	
	case "item_enemies_waddleDoo":
	sprite_index = spr_WaddleDoo_Normal_Idle;
	break;
	
	case "item_enemies_brontoBurt":
	sprite_index = spr_BrontoBurt_Normal_Idle;
	break;
	
	case "item_enemies_twizzy":
	sprite_index = spr_Twizzy_Normal_Idle;
	break;
	
	case "item_enemies_tookey":
	sprite_index = spr_Tookey_Normal_Idle;
	break;
	
	case "item_enemies_sirKibble":
	sprite_index = spr_SirKibble_Normal_Idle;
	break;
	
	case "item_enemies_gordo":
	sprite_index = spr_Gordo_Normal_Idle;
	break;
	
	case "item_enemies_bloodGordo":
	sprite_index = spr_BloodGordo_Normal_Idle;
	break;
	
	case "item_enemies_shotzo":
	sprite_index = spr_Shotzo_Normal_Idle;
	break;
	
	case "item_enemies_mysticDoo":
	sprite_index = spr_MysticDoo_Normal_Idle;
	break;
	
	case "item_enemies_bouncy":
	sprite_index = spr_Bouncy_Normal_Idle;
	break;
	
	case "item_enemies_search":
	sprite_index = spr_Search_Normal_Idle;
	break;
	
	case "item_enemies_wapod":
	sprite_index = spr_Wapod_Normal_Pot;
	break;
	
	case "item_enemies_cappy":
	sprite_index = spr_Cappy_Normal_IdleL;
	break;
	
	case "item_enemies_broomHatter":
	sprite_index = spr_BroomHatter_Normal_Idle;
	break;
	
	case "item_enemies_coconut":
	sprite_index = spr_Coconut_Normal_Idle;
	break;
	
	case "item_enemies_noddy":
	sprite_index = spr_Noddy_Normal_Idle;
	break;
	
	case "item_enemies_blado":
	sprite_index = spr_Blado_Normal_Idle;
	break;
	
	case "item_enemies_scarfy":
	sprite_index = spr_Scarfy_Normal_CalmIdle;
	break;
	
	case "item_enemies_rocky":
	sprite_index = spr_Rocky_Normal_Idle;
	break;
	
	case "item_enemies_grizzo":
	sprite_index = spr_Grizzo_Normal_Idle;
	break;
	
	case "item_enemies_jungleBomb":
	sprite_index = spr_JungleBomb_Normal_Idle;
	break;
	
	case "item_enemies_kabu":
	sprite_index = spr_Kabu_Normal_Idle;
	break;
	
	case "item_enemies_burningLeo":
	sprite_index = spr_BurningLeo_Normal_Idle;
	break;
}

if (string_copy(string(state),0,5) == "item_")
{
	mask_index = spr_24SquareOriginlessAlt_Mask;
}
else
{
	mask_index = sprite_index;
}

//Destroy

if ((layerIndex != -1) and (global.gambleMaykrMenu != layerIndex)) instance_destroy();

//Activate

if ((instance_exists(obj_Maykr_Control)) and (instance_exists(obj_Maykr_Hud)))
{
	if (global.gambleMaykr)
	{
		if (obj_Maykr_Control.active)
		{
			visible = false;
		}
		else
		{
			visible = true;
			if ((((!obj_Maykr_Control.optionsOpen) and (!optionsButton)) or ((obj_Maykr_Control.optionsOpen) and (optionsButton))) and (position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button_pressed(mb_left)))
			{
				switch (state)
				{
					//Main
					
					case "settings":
					//obj_Maykr_Control.optionIndex = "stage";
					//obj_Maykr_Control.setupOptions = true;
					break;
					
					case "collision":
					global.gambleMaykrMenu = "collision";
					obj_Maykr_Hud.setButtons = true;
					obj_Maykr_Control.spawnedLayer = "collision";
					obj_Maykr_Control.spawnedItemIndex = obj_Wall;
					obj_Maykr_Control.spawnedSprite = spr_Maykr_Debug_Wall;
					obj_Maykr_Control.snap = 24;
					obj_Maykr_Control.draggedObject = false;
					with (obj_Maykr_Spawner)
					{
						selected = 0;
						dragged = 0;
					}
					with (obj_Maykr_Control)
					{
						draggedObject = false;
						selectedObject = false;
					}
					break;
					
					case "environment":
					global.gambleMaykrMenu = "environment";
					obj_Maykr_Hud.setButtons = true;
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_StarBlock;
					obj_Maykr_Control.spawnedSprite = spr_StarBlock_Normal_Idle;
					obj_Maykr_Control.snap = 24;
					obj_Maykr_Control.draggedObject = false;
					with (obj_Maykr_Spawner)
					{
						selected = 0;
						dragged = 0;
					}
					with (obj_Maykr_Control)
					{
						draggedObject = false;
						selectedObject = false;
					}
					break;
					
					case "enemies":
					global.gambleMaykrMenu = "enemies";
					obj_Maykr_Hud.setButtons = true;
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_WaddleDee;
					obj_Maykr_Control.spawnedSprite = spr_WaddleDee_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					obj_Maykr_Control.draggedObject = false;
					with (obj_Maykr_Spawner)
					{
						selected = 0;
						dragged = 0;
					}
					with (obj_Maykr_Control)
					{
						draggedObject = false;
						selectedObject = false;
					}
					break;
					
					case "play":
					global.pause = false;
					obj_Maykr_Control.active = true;
					with (obj_Maykr_Spawner) active = true;
					global.hpP1 = global.hpMax;
					global.hpP2 = global.hpMax;
					break;
					
					case "exit":
					if (instance_exists(obj_Hud)) instance_destroy(obj_Hud);
					global.gambleMaykr = false;
					global.pause = false;
					obj_Camera.zoom += .05;
					obj_Camera.zoomTarget += .05;
			        var fade = instance_create_depth(x,y,-1001,obj_Fade);
					fade.targetRoom = rm_MainMenu;
					break;
					
					case "save":
					var file;
					file = get_save_filename("maykr file|*.maykr","");
					if (file != "")
					{
						var savedFile = file_text_open_write(file);
						file_text_write_string(savedFile,maykrStartMsg);
						file_text_writeln(savedFile);
						file_text_write_string(savedFile,"Version - " + maykrFileVersion);
						file_text_writeln(savedFile);
						
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
						
						file_text_write_string(savedFile,"stageEnd");
						file_text_close(savedFile);
						//var spr = sprite_duplicate(bg_Aquatia_Harbor_Day);
						//sprite_save(spr,0,file);
						//sprite_delete(spr);
					}
					break;
					
					case "load":
					var file;
					file = get_open_filename(working_directory + "maykr file|*.maykr","");
					if (file != "")
					{
						var creationIndex = -1;
					    var loadedFile = file_text_open_read(file);
					    var maykrStart = file_text_read_string(loadedFile);
						if (maykrStart == maykrStartMsg)
						{
							with (obj_Maykr_Spawner) instance_destroy();
							file_text_readln(loadedFile);
							var versionNumber = file_text_read_string(loadedFile);
							file_text_readln(loadedFile);
							switch (versionNumber)
							{
								case "Version - 0.5.0":
								for (;;)
								{
									creationIndex = file_text_read_string(loadedFile);
									if (creationIndex == "stageEnd") break;
									file_text_readln(loadedFile);
									for (;;)
									{
										var spawnerItemIndex = file_text_read_string(loadedFile);
										file_text_readln(loadedFile);
										
										if (spawnerItemIndex == "spawnerEnd") break;
										
										switch (creationIndex)
										{
											case "spawnerStart":
											
											var spawnerItemX = real(file_text_read_string(loadedFile));
											file_text_readln(loadedFile);
											var spawnerItemY = real(file_text_read_string(loadedFile));
											file_text_readln(loadedFile);
											var spawnerItemLayer = file_text_read_string(loadedFile);
											file_text_readln(loadedFile);
											var spawnerSprite = file_text_read_string(loadedFile);
											file_text_readln(loadedFile);
											var spawnerState = file_text_read_string(loadedFile);
											file_text_readln(loadedFile);
											var spawnerDirX = real(file_text_read_string(loadedFile));
											file_text_readln(loadedFile);
											var spawnerPalette = file_text_read_string(loadedFile);
											file_text_readln(loadedFile);
											
											var spawner = instance_create_layer(spawnerItemX,spawnerItemY,"enemies",obj_Maykr_Spawner);
											spawner.spawnedItemIndex = asset_get_index(spawnerItemIndex);
											spawner.spawnedSprite = asset_get_index(spawnerSprite);
											spawner.spawnedLayer = spawnerItemLayer;
											spawner.spawnedState = spawnerState;
											spawner.spawnedDirX = spawnerDirX;
											spawner.spawnedPaletteIndex = asset_get_index(spawnerPalette);
											
											switch (spawner.spawnedItemIndex)
											{
												case obj_Wall:
												var spawnerSlopeType = real(file_text_read_string(loadedFile));
												file_text_readln(loadedFile);
												spawner.spawnedSlopeType = spawnerSlopeType;
												break;
												
												case obj_AbilityTrophy:
												var spawnerAbilityIndex = file_text_read_string(loadedFile);
												file_text_readln(loadedFile);
												spawner.spawnedAbilityIndex = spawnerAbilityIndex;
												break;
											}
											break;
											
											default:
											file_text_readln(loadedFile);
											break;
										}
									}
								}
								break;
							}
							file_text_close(loadedFile);
						}
						else
						{
							obj_Maykr_Control.errorMsg = "Invalid Maykr File";
							obj_Maykr_Control.errorAlpha = 1;
							obj_Maykr_Control.errorAlphaTimer = obj_Maykr_Control.errorAlphaTimerMax;
						}
					}
					else
					{
						obj_Maykr_Control.errorMsg = "Open A Maykr File";
						obj_Maykr_Control.errorAlpha = 1;
						obj_Maykr_Control.errorAlphaTimer = obj_Maykr_Control.errorAlphaTimerMax;
					}
					break;
					
					case "trash":
					if (trashCountdown == -1)
					{
						trashCountdown = trashCountdownMax;
					}
					else
					{
						with (obj_Maykr_Spawner) if (spawnedItemIndex != obj_Player) instance_destroy();
						trashCountdown = -1;
					}
					break;
					
					//Options
					
					case "optionsExit":
					obj_Maykr_Control.optionsOpen = false;
					obj_Maykr_Control.optionIndex = -1;
					with (obj_Maykr_Button)
					{
						if (optionsButton) instance_destroy();
					}
					break;
					
					case "optionsStatePlus":
					if (obj_Maykr_Control.optionIndex.spawnedState < obj_Maykr_Control.optionIndex.spawnedStateMax) obj_Maykr_Control.optionIndex.spawnedState += 1;
					break;
					
					case "optionsStateMinus":
					if (obj_Maykr_Control.optionIndex.spawnedState > 0) obj_Maykr_Control.optionIndex.spawnedState -= 1;
					break;
					
					case "optionsWidthPlus":
					if (obj_Maykr_Control.width > 0) obj_Maykr_Control.width += 1;
					room_set_width(room,obj_Maykr_Control.width * 24);
					break;
					
					case "optionsWidthMinus":
					if (obj_Maykr_Control.width > 20) obj_Maykr_Control.width -= 1;
					room_set_width(room,obj_Maykr_Control.width * 24);
					break;
					
					case "optionsHeightPlus":
					if (obj_Maykr_Control.height > 0) obj_Maykr_Control.height += 1;
					room_set_height(rm_Maykr,obj_Maykr_Control.height * 24);
					break;
					
					case "optionsHeightMinus":
					if (obj_Maykr_Control.height > 12) obj_Maykr_Control.height -= 1;
					room_set_height(room,obj_Maykr_Control.height * 24);
					break;
					
					case "optionsMirror":
					if (obj_Maykr_Control.optionIndex.spawnedDirX == 1)
					{
						obj_Maykr_Control.optionIndex.spawnedDirX = -1;
					}
					else
					{
						obj_Maykr_Control.optionIndex.spawnedDirX = 1;
					}
					break;
					
					case "optionsPalette":
					obj_Maykr_Control.optionIndex.spawnedPaletteIndex = paletteIndex;
					break;
					
					case "optionsAbility":
					obj_Maykr_Control.optionIndex.spawnedAbilityIndex = abilityIndex;
					break;
					
					//Collision
					
					case "item_collision_wall":
					obj_Maykr_Control.spawnedLayer = "collision";
					obj_Maykr_Control.spawnedItemIndex = obj_Wall;
					obj_Maykr_Control.spawnedSprite = spr_Maykr_Debug_Wall;
					obj_Maykr_Control.spawnedSlopeType = 0;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_collision_slope":
					obj_Maykr_Control.spawnedLayer = "collision";
					obj_Maykr_Control.spawnedItemIndex = obj_Wall;
					obj_Maykr_Control.spawnedSprite = spr_Maykr_Debug_Slope;
					obj_Maykr_Control.spawnedSlopeType = 1;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_collision_gentleSlope":
					obj_Maykr_Control.spawnedLayer = "collision";
					obj_Maykr_Control.spawnedItemIndex = obj_Wall;
					obj_Maykr_Control.spawnedSprite = spr_Maykr_Debug_GentleSlopeSpawner;
					obj_Maykr_Control.spawnedSlopeType = 2;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_collision_superGentleSlope":
					obj_Maykr_Control.spawnedLayer = "collision";
					obj_Maykr_Control.spawnedItemIndex = obj_Wall;
					obj_Maykr_Control.spawnedSprite = spr_Maykr_Debug_SuperGentleSlopeSpawner;
					obj_Maykr_Control.spawnedSlopeType = 3;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_collision_ladder":
					obj_Maykr_Control.spawnedLayer = "collision";
					obj_Maykr_Control.spawnedItemIndex = obj_Ladder;
					obj_Maykr_Control.spawnedSprite = spr_Maykr_Debug_Ladder;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_collision_platform":
					obj_Maykr_Control.spawnedLayer = "collision";
					obj_Maykr_Control.spawnedItemIndex = obj_Platform;
					obj_Maykr_Control.spawnedSprite = spr_Maykr_Debug_Platform;
					obj_Maykr_Control.snap = 24;
					break;
					
					//Environment
					
					case "item_environment_starBlock":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_StarBlock;
					obj_Maykr_Control.spawnedSprite = spr_StarBlock_Normal_Idle;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_environment_bigStarBlock":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_BigStarBlock;
					obj_Maykr_Control.spawnedSprite = spr_BigStarBlock_Normal_Idle;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_environment_bombBlock":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_BombBlock;
					obj_Maykr_Control.spawnedSprite = spr_BombBlock_Normal_Idle;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_environment_bombSolidBlock":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_BombSolidBlock;
					obj_Maykr_Control.spawnedSprite = spr_BombSolidBlock_Normal_Idle;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_environment_bombSolidBlockInvis":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_BombSolidBlock_Invis;
					obj_Maykr_Control.spawnedSprite = spr_BombSolidBlock_Normal_Idle;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_environment_abilityBlock":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_AbilityBlock;
					obj_Maykr_Control.spawnedSprite = spr_AbilityBlock_Normal_Idle;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_environment_breakingWall":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_BreakingWall;
					obj_Maykr_Control.spawnedSprite = spr_BreakingWall_Normal_Idle;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_environment_crate":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_Crate;
					obj_Maykr_Control.spawnedSprite = spr_Crate_Normal_Idle;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_environment_durableBlock":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_DurableBlock;
					obj_Maykr_Control.spawnedSprite = spr_DurableBlock_Normal_Idle;
					obj_Maykr_Control.snap = 24;
					break;
					
					case "item_environment_bumper":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_Bumper;
					obj_Maykr_Control.spawnedSprite = spr_Bumper_Normal;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_spring":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_Spring;
					obj_Maykr_Control.spawnedSprite = spr_Spring_Normal;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_trampoline":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_Trampoline;
					obj_Maykr_Control.spawnedSprite = spr_Trampoline_Normal;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_food":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_Food;
					obj_Maykr_Control.spawnedSprite = spr_Food;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_pepBrew":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_PepBrew;
					obj_Maykr_Control.spawnedSprite = spr_PepBrew;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_maximTomato":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_MaximTomato;
					obj_Maykr_Control.spawnedSprite = spr_MaximTomato;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_1Up":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_1Up;
					obj_Maykr_Control.spawnedSprite = spr_1Up;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_spike":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_Spike;
					obj_Maykr_Control.spawnedSprite = spr_Spike;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_pointStar":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_PointStar;
					obj_Maykr_Control.spawnedSprite = spr_PointStar_Yellow_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_popFlower":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_PopFlower;
					obj_Maykr_Control.spawnedSprite = spr_PopFlower_GreenGreens_Closed;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_itemChest":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_ItemChest;
					obj_Maykr_Control.spawnedSprite = spr_ItemChest_Normal_Closed;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_button":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_Button;
					obj_Maykr_Control.spawnedSprite = spr_Button_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_gate":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_Gate;
					obj_Maykr_Control.spawnedSprite = spr_Gate_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_abilityTrophy":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_AbilityTrophy;
					obj_Maykr_Control.spawnedSprite = spr_AbilityTrophy_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_environment_cuttableGrass":
					obj_Maykr_Control.spawnedLayer = "environment";
					obj_Maykr_Control.spawnedItemIndex = obj_CuttableGrass;
					obj_Maykr_Control.spawnedSprite = spr_CuttableGrass_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					//Enemies
					
					case "item_enemies_waddleDee":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_WaddleDee;
					obj_Maykr_Control.spawnedSprite = spr_WaddleDee_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_waddleDoo":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_WaddleDoo;
					obj_Maykr_Control.spawnedSprite = spr_WaddleDoo_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_brontoBurt":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_BrontoBurt;
					obj_Maykr_Control.spawnedSprite = spr_BrontoBurt_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_twizzy":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Twizzy;
					obj_Maykr_Control.spawnedSprite = spr_Twizzy_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_tookey":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Tookey;
					obj_Maykr_Control.spawnedSprite = spr_Tookey_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_sirKibble":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_SirKibble;
					obj_Maykr_Control.spawnedSprite = spr_SirKibble_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_gordo":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Gordo;
					obj_Maykr_Control.spawnedSprite = spr_Gordo_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_bloodGordo":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_BloodGordo;
					obj_Maykr_Control.spawnedSprite = spr_BloodGordo_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_shotzo":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Shotzo;
					obj_Maykr_Control.spawnedSprite = spr_Shotzo_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_mysticDoo":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_MysticDoo;
					obj_Maykr_Control.spawnedSprite = spr_MysticDoo_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_bouncy":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Bouncy;
					obj_Maykr_Control.spawnedSprite = spr_Bouncy_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_search":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Search;
					obj_Maykr_Control.spawnedSprite = spr_Search_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_wapod":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Wapod;
					obj_Maykr_Control.spawnedSprite = spr_Wapod_Normal_Pot;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_cappy":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Cappy;
					obj_Maykr_Control.spawnedSprite = spr_Cappy_Normal_IdleL;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_broomHatter":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_BroomHatter;
					obj_Maykr_Control.spawnedSprite = spr_BroomHatter_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_coconut":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Coconut;
					obj_Maykr_Control.spawnedSprite = spr_Coconut_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_noddy":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Noddy;
					obj_Maykr_Control.spawnedSprite = spr_Noddy_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_blado":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Blado;
					obj_Maykr_Control.spawnedSprite = spr_Blado_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_scarfy":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Scarfy;
					obj_Maykr_Control.spawnedSprite = spr_Scarfy_Normal_CalmIdle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_rocky":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Rocky;
					obj_Maykr_Control.spawnedSprite = spr_Rocky_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_grizzo":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Grizzo;
					obj_Maykr_Control.spawnedSprite = spr_Grizzo_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_jungleBomb":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_JungleBomb;
					obj_Maykr_Control.spawnedSprite = spr_JungleBomb_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_kabu":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_Kabu;
					obj_Maykr_Control.spawnedSprite = spr_Kabu_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
					
					case "item_enemies_burningLeo":
					obj_Maykr_Control.spawnedLayer = "enemies";
					obj_Maykr_Control.spawnedItemIndex = obj_BurningLeo;
					obj_Maykr_Control.spawnedSprite = spr_BurningLeo_Normal_Idle;
					obj_Maykr_Control.snap = 6;
					break;
				}
			}
		}
	}
}
else
{
	instance_destroy();
}