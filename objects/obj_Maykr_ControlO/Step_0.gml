///@description Main

//Move Snap

//move_snap(24,24);

x = floor(x / 24) * 24;
y = floor(y / 24) * 24;
if (global.gambleMaykr)
{
	if (active)
	{
		if (instance_exists(obj_Player))
		{
			with (obj_Player)
			{
				if (deathRestartTimer == 0)
				{
					global.abilityP1 = playerAbilities.none;
			global.abilityP2 = playerAbilities.none;
			if (instance_exists(obj_Hud)) instance_destroy(obj_Hud);
			with (obj_Particle) instance_destroy();
			with (obj_Projectile) instance_destroy();
			global.pause = true;
			if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
			active = false;
			with (obj_Maykr_SpawnerO)
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
			openMaykrMenu = false;
				}
			}
		}
		
		if ((keyboard_check_pressed(vk_escape)) or (openMaykrMenu))
		{
			global.abilityP1 = playerAbilities.none;
			global.abilityP2 = playerAbilities.none;
			if (instance_exists(obj_Hud)) instance_destroy(obj_Hud);
			with (obj_Particle) instance_destroy();
			with (obj_Projectile) instance_destroy();
			global.pause = true;
			if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
			active = false;
			with (obj_Maykr_SpawnerO)
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
			openMaykrMenu = false;
		}
	}
	else if (!optionsOpen)
	{
		//Mirror Object
		
		if ((keyboard_check_pressed(ord("A"))) or (keyboard_check_pressed(ord("D")))) dirX *= -1;
		
		with (obj_Maykr_SpawnerO)
		{
			//Select Object
			
			if ((mouse_check_button_pressed(mb_left)) and (spawnedLayer == global.gambleMaykrMenu))
			{
				if (selected == 2) selected = 0;
				if (place_meeting(x,y,obj_Maykr_ControlO))
				{
					if (selectCancelTimer != -1) and (selected == 1)
					{
						selected = 2;
						other.optionIndex = id;
						other.setupOptions = true;
					}
					else
					{
						if ((!other.selectedObject) or ((keyboard_check(vk_control)) or (keyboard_check(vk_shift))))
						{
							other.selectedObject = true;
							selected = 1;
						}
					}
					selectCancelTimer = selectCancelTimerMax;
				}
				else if ((!keyboard_check(vk_control)) and (!keyboard_check(vk_shift)))
				{
					selected = 0;
					other.selectedObject = false;
					other.selectCancelTimer = -1;
				}
			}
			
			if ((selected == 1) and (spawnedLayer == global.gambleMaykrMenu))
			{
				//Mirror Object
				
				if ((keyboard_check_pressed(ord("A"))) or (keyboard_check_pressed(ord("D")))) spawnedDirX *= -1;
				
				//Drag Object
				
				if ((mouse_check_button_pressed(mb_left)) and (place_meeting(x,y,obj_Maykr_ControlO)))
				{
					dragged = 1;
					other.dragX = other.x;
					other.dragY = other.y;
					dragX = x;
					dragY = y;
				}
			}
			
			if ((dragged == 1) and (mouse_check_button(mb_left)))
			{
				if ((x != obj_Maykr_ControlO.x) or (y != obj_Maykr_ControlO.y))
				{
					other.draggedObject = true;
					dragged = 2;
				}
			}
			
			if ((mouse_check_button_released(mb_left)))
			{
				dragged = 0;
				other.draggedObject = false;
			}
		}
		
		//Setup Options
		
		if (setupOptions)
		{
			optionsOpen = true;
			var button = instance_create_depth(369,24,-900,obj_Maykr_ButtonO);
			button.state = "optionsExit";
			button.optionsButton = true;
			
			if (obj_Maykr_ControlO.optionIndex != "stage")
			{
				switch (optionIndex.spawnedItemIndex)
				{
					case obj_AbilityTrophy:
					var i = 0;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.none;
					button.abilityStarSprite = spr_AbilityStar_Normal;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.cutter;
					button.abilityStarSprite = spr_AbilityStar_Cutter;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.beam;
					button.abilityStarSprite = spr_AbilityStar_Beam;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.mysticBeam;
					button.abilityStarSprite = spr_AbilityStar_MysticBeam;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.stone;
					button.abilityStarSprite = spr_AbilityStar_Stone;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.ufo;
					button.abilityStarSprite = spr_AbilityStar_Ufo;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.mirror;
					button.abilityStarSprite = spr_AbilityStar_Mirror;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.ninja;
					button.abilityStarSprite = spr_AbilityStar_Ninja;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.bomb;
					button.abilityStarSprite = spr_AbilityStar_Bomb;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.fire;
					button.abilityStarSprite = spr_AbilityStar_Fire;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.mysticFire;
					button.abilityStarSprite = spr_AbilityStar_MysticFire;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.ice;
					button.abilityStarSprite = spr_AbilityStar_Ice;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.spark;
					button.abilityStarSprite = spr_AbilityStar_Spark;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.yoyo;
					button.abilityStarSprite = spr_AbilityStar_Yoyo;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.wheel;
					button.abilityStarSprite = spr_AbilityStar_Wheel;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.artist;
					button.abilityStarSprite = spr_AbilityStar_Artist;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.fighter;
					button.abilityStarSprite = spr_AbilityStar_Fighter;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.suplex;
					button.abilityStarSprite = spr_AbilityStar_Suplex;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.wing;
					button.abilityStarSprite = spr_AbilityStar_Wing;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.jet;
					button.abilityStarSprite = spr_AbilityStar_Jet;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.sword;
					button.abilityStarSprite = spr_AbilityStar_Sword;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.parasol;
					button.abilityStarSprite = spr_AbilityStar_Parasol;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.hammer;
					button.abilityStarSprite = spr_AbilityStar_Hammer;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.bell;
					button.abilityStarSprite = spr_AbilityStar_Bell;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.water;
					button.abilityStarSprite = spr_AbilityStar_Water;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)),99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.sleep;
					button.abilityStarSprite = spr_AbilityStar_Normal;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.scan;
					button.abilityStarSprite = spr_AbilityStar_Normal;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.crash;
					button.abilityStarSprite = spr_AbilityStar_Normal;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.mic;
					button.abilityStarSprite = spr_AbilityStar_Normal;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.chef;
					button.abilityStarSprite = spr_AbilityStar_Normal;
					button.optionsButton = true;
					i += 1;
					button = instance_create_depth(102 + (28 * (i % 10)) + 1,99 + (28 * ((i - (i % 10)) / 10)),-900,obj_Maykr_ButtonO);
					button.state = "optionsAbility";
					button.abilityIndex = playerAbilities.ultraSword;
					button.abilityStarSprite = spr_AbilityStar_Normal;
					button.optionsButton = true;
					i += 1;
					break;
					
					case obj_WaddleDee:
					button = instance_create_depth(126,86,-900,obj_Maykr_ButtonO);
					button.state = "optionsStatePlus";
					button.optionsButton = true;
					button = instance_create_depth(126,92,-900,obj_Maykr_ButtonO);
					button.state = "optionsStateMinus";
					button.optionsButton = true;
					
					button = instance_create_depth(167,86,-900,obj_Maykr_ButtonO);
					button.state = "optionsMirror";
					button.optionsButton = true;
					
					if (global.shaders)
					{
						button = instance_create_depth(234,136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_WaddleWaddle;
						button.optionsButton = true;
						button = instance_create_depth(234 + (16 * 1),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_AzureSky;
						button.optionsButton = true;
						button = instance_create_depth(234 - (16 * 1),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_FineChina;
						button.optionsButton = true;
						button = instance_create_depth(234 + (16 * 2),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_ParkRobot;
						button.optionsButton = true;
						button = instance_create_depth(234 - (16 * 2),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_BarkNBite;
						button.optionsButton = true;
						button = instance_create_depth(234 + (16 * 3),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_TreadingLightly;
						button.optionsButton = true;
						button = instance_create_depth(234 - (16 * 3),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_EtherealHoney;
						button.optionsButton = true;
						button = instance_create_depth(234 + (16 * 4),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_JollyRed;
						button.optionsButton = true;
						button = instance_create_depth(234 - (16 * 4),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_DimBerry;
						button.optionsButton = true;
						button = instance_create_depth(234 + (16 * 5),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_RetroScreen;
						button.optionsButton = true;
						button = instance_create_depth(234 - (16 * 5),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_RottenCore;
						button.optionsButton = true;
						button = instance_create_depth(234 + (16 * 6),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_FadedGlory;
						button.optionsButton = true;
						button = instance_create_depth(234 - (16 * 6),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_NowYouSeeMe;
						button.optionsButton = true;
						button = instance_create_depth(234 + (16 * 7),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_Snowtops;
						button.optionsButton = true;
						button = instance_create_depth(234 - (16 * 7),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_AngelicGold;
						button.optionsButton = true;
						button = instance_create_depth(234 + (16 * 8),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_UnderlingGlow;
						button.optionsButton = true;
						button = instance_create_depth(234 - (16 * 8),136,-900,obj_Maykr_ButtonO);
						button.state = "optionsPalette";
						button.paletteIndex = spr_WaddleDee_Normal_Palette_AbominableSnowdee;
						button.optionsButton = true;
					}
					break;
					
					default:
					button = instance_create_depth(126,86,-900,obj_Maykr_ButtonO);
					button.state = "optionsStatePlus";
					button.optionsButton = true;
					button = instance_create_depth(126,92,-900,obj_Maykr_ButtonO);
					button.state = "optionsStateMinus";
					button.optionsButton = true;
					
					button = instance_create_depth(167,86,-900,obj_Maykr_ButtonO);
					button.state = "optionsMirror";
					button.optionsButton = true;
					break;
				}
			}
			else
			{
				button = instance_create_depth(132,86,-900,obj_Maykr_ButtonO);
				button.state = "optionsWidthPlus";
				button.optionsButton = true;
				button = instance_create_depth(132,92,-900,obj_Maykr_ButtonO);
				button.state = "optionsWidthMinus";
				button.optionsButton = true;
				button = instance_create_depth(183,86,-900,obj_Maykr_ButtonO);
				button.state = "optionsHeightPlus";
				button.optionsButton = true;
				button = instance_create_depth(183,92,-900,obj_Maykr_ButtonO);
				button.state = "optionsHeightMinus";
				button.optionsButton = true;
			}
			setupOptions = false;
		}
		
		//Place Object
		
		collidingSpawner = false;
		with (obj_Maykr_SpawnerO)
		{
			if ((other.spawnedLayer == spawnedLayer) and (place_meeting(x,y,other))) other.collidingSpawner = true;
		}
		
		if ((mouse_check_button(mb_left)) and (!keyboard_check(vk_control)) and (!keyboard_check(vk_shift)) and (!draggedObject) and (!selectedObject) and (!collidingSpawner) and (!place_meeting(x,y,obj_Maykr_HudO)) and (!place_meeting(x,y,obj_Maykr_ButtonO)))
		{
			var spawner = instance_create_layer(x,y,spawnedLayer,obj_Maykr_SpawnerO);
			spawner.snap = snap;
			spawner.spawnedItemIndex = spawnedItemIndex;
			spawner.spawnedLayer = spawnedLayer;
			spawner.spawnedSprite = spawnedSprite;
			spawner.spawnedDirX = dirX;
			switch (spawnedItemIndex)
			{
				case obj_Wall:
				spawner.spawnedSlopeType = spawnedSlopeType;
				break;
			}
		}
	}
	
	//Error Alpha Timer
	
	if (errorAlphaTimer > 0)
	{
		errorAlphaTimer -= 1;
	}
	else if (errorAlphaTimer == 0)
	{
		errorMsg = "";
		errorAlpha = 0;
		errorAlphaTimer = -1;
	}
}