///@description Main

#region Variables
mouseX = floor(mouse_x / snap) * snap;
mouseY = floor(mouse_y / snap) * snap;
mouseXGui = device_mouse_x_to_gui(0);
mouseYGui = device_mouse_y_to_gui(0);

collidingSpawner = false;
with (obj_Maykr_Spawner) if ((other.spawnedLayer == spawnedLayer) and (position_meeting(other.mouseX,other.mouseY,id))) other.collidingSpawner = true;

canBeInteracted = true;
if (windowIndex != -1) canBeInteracted = false;
#endregion

if (canBeInteracted)
{
	#region Mouse On Top
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
	
	mouseOnTopExpand = false;
	if (point_in_rectangle(mouseXGui,mouseYGui,224,226 + bottomHudOffset,256,233 + bottomHudOffset)) mouseOnTopExpand = true;
	#endregion
	
	#region Buttons
	if (mouse_check_button_pressed(mb_left))
	{
		if (mouseOnTopExpand) bottomHudOpen = !bottomHudOpen;
		
		if (mouseOnTopReset)
		{
			yesBar = 0;
			windowIndex = "clear";
		}
		if (mouseOnTopLeave)
		{
			yesBar = 0;
			windowIndex = "leave";
		}
		
		if (mouseOnTopBlocks)
		{
			inventoryPage = 0;
			if (global.gambleMaykrMenu != "collision")
			{
				global.gambleMaykrMenu = "collision";
				scr_Maykr_Inventory(global.gambleMaykrMenu,inventoryPage);
				spawnedLayer = "collision";
				spawnedItemIndex = obj_Wall;
				spawnedSprite = spr_Maykr_Spawner_DebugWall;
				spawnedSlopeType = 0;
				snap = 24;
			}
		}
		if (mouseOnTopEnemies)
		{
			inventoryPage = 0;
			if (global.gambleMaykrMenu != "enemies")
			{
				global.gambleMaykrMenu = "enemies";
				scr_Maykr_Inventory(global.gambleMaykrMenu,inventoryPage);
				spawnedLayer = "enemies";
				spawnedItemIndex = obj_WaddleDee;
				spawnedSprite = spr_Maykr_Spawner_WaddleDee_Normal;
				snap = 6;
			}
		}
		if (mouseOnTopItems)
		{
			inventoryPage = 0;
			if (global.gambleMaykrMenu != "environment")
			{
				global.gambleMaykrMenu = "environment";
				scr_Maykr_Inventory(global.gambleMaykrMenu,inventoryPage);
				snap = 6;
			}
		}
		
		for (var i = 0; i < 12 + (bottomHudVisible * 36); i++)
		{
			var xx = 51 + (32 * (i % 12));
			var yy = (366 + bottomHudOffset) - 101 + (32 * floor(i / 12));
			if (point_in_rectangle(mouseXGui,mouseYGui,xx,yy - 26,xx + 26,yy))
			{
				spawnedItemString = maykrInventory[i];
				switch (spawnedItemString)
				{
					case "debugWall":
					spawnedItemIndex = obj_Wall;
					spawnedSprite = spr_Maykr_Spawner_DebugWall;
					break;
					
					case "asteroidFieldsRedFront":
					spawnedItemIndex = obj_Wall;
					spawnedSprite = spr_Maykr_Spawner_AsteroidFieldsRedFront;
					break;
					
					case "asteroidFieldsGreenFront":
					spawnedItemIndex = obj_Wall;
					spawnedSprite = spr_Maykr_Spawner_AsteroidFieldsGreenFront;
					break;
					
					case "asteroidFieldsBlueFront":
					spawnedItemIndex = obj_Wall;
					spawnedSprite = spr_Maykr_Spawner_AsteroidFieldsBlueFront;
					break;
					
					case "waddleDee":
					spawnedItemIndex = obj_WaddleDee;
					spawnedSprite = spr_WaddleDee_Normal_Idle;
					break;
					
					case "waddleDoo":
					spawnedItemIndex = obj_WaddleDoo;
					spawnedSprite = spr_Maykr_Spawner_WaddleDoo_Normal;
					break;
				
					case "brontoBurt":
					spawnedItemIndex = obj_BrontoBurt;
					spawnedSprite = spr_Maykr_Spawner_BrontoBurt_Normal;
					break;
				}
			}
		}
		
		if (point_in_rectangle(mouseXGui,mouseYGui,2,234,24,269)) hudVisible = !hudVisible;
	}
	#endregion
	
	#region Spawn Object
	if (spawnTimer > 0) spawnTimer -= 1;
	if (mouse_check_button(mb_left))
	{
		mouseOnHud = false;
		if ((mouseOnTopSave) or (mouseOnTopLoad) or (mouseOnTopOptions) or (mouseOnTopReset) or (mouseOnTopExpand)) mouseOnHud = true;
		
		if ((!collidingSpawner) and (!mouseOnHud) and (!spawnTimer))
		{
			var spawner = instance_create_layer(mouseX,mouseY,spawnedLayer,obj_Maykr_Spawner);
			spawner.snap = snap;
			spawner.spawnedItemString = spawnedItemString;
			spawner.spawnedItemIndex = spawnedItemIndex;
			spawner.spawnedLayer = spawnedLayer;
			spawner.spawnedSprite = spawnedSprite;
			spawner.spawnedDirX = dirX;
			switch (spawnedItemIndex)
			{
				case obj_Wall:
				spawner.visible = false;
				spawner.spawnedSlopeType = spawnedSlopeType;
				break;
			}
			switch (spawnedItemString)
			{
				case "debugWall":
				if (tileDebug == -1)
				{
					layer_create(299,spawnedItemString);
					tileDebug = layer_tilemap_create(spawnedItemString,0,0,ts_Debug,24,24);
				}
				var wx = mouseX / 24;
				var wy = mouseY / 24;
				tilemap_set(tileDebug,80,wx,wy);
				if (tilemap_get(tileDebug,wx,wy - 1) == 0) tilemap_set(tileDebug,99,wx,wy - 1);
				break;
				
				case "asteroidFieldsRedFront":
				if (tileAsteroidFieldsFront == -1)
				{
					layer_create(299,spawnedItemString);
					tileAsteroidFieldsFront = layer_tilemap_create(spawnedItemString,0,0,ts_AsteroidFields,24,24);
				}
				var wx = mouseX / 24;
				var wy = mouseY / 24;
				var tileIndex = 23 + ((wx + wy) % 3);
				tilemap_set(tileAsteroidFieldsFront,tileIndex,wx,wy);
				if (tilemap_get(tileAsteroidFieldsFront,wx,wy - 1) == 0) tilemap_set(tileAsteroidFieldsFront,tileIndex - 18,wx,wy - 1);
				break;
				
				case "asteroidFieldsGreenFront":
				if (tileAsteroidFieldsFront == -1)
				{
					layer_create(299,spawnedItemString);
					tileAsteroidFieldsFront = layer_tilemap_create(spawnedItemString,0,0,ts_AsteroidFields,24,24);
				}
				var wx = mouseX / 24;
				var wy = mouseY / 24;
				tileIndex = 26 + ((wx + wy) % 3);
				tilemap_set(tileAsteroidFieldsFront,tileIndex,wx,wy);
				if (tilemap_get(tileAsteroidFieldsFront,wx,wy - 1) == 0) tilemap_set(tileAsteroidFieldsFront,tileIndex - 18,wx,wy - 1);
				break;
				
				case "asteroidFieldsBlueFront":
				if (tileAsteroidFieldsFront == -1)
				{
					layer_create(299,spawnedItemString);
					tileAsteroidFieldsFront = layer_tilemap_create(spawnedItemString,0,0,ts_AsteroidFields,24,24);
				}
				var wx = mouseX / 24;
				var wy = mouseY / 24;
				tileIndex = 29 + ((wx + wy) % 3);
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
				case "debugWall":
				tilemap_set(obj_Maykr_Control.tileDebug,0,floor(x / 24),floor(y / 24));
				var topTile = tilemap_get(obj_Maykr_Control.tileDebug,floor(x / 24),floor(y / 24) - 1);
				var bottomTile = tilemap_get(obj_Maykr_Control.tileDebug,floor(x / 24),floor(y / 24) + 1);
				if (topTile == 99) tilemap_set(obj_Maykr_Control.tileDebug,0,floor(x / 24),floor(y / 24) - 1);
				if (bottomTile == 80) tilemap_set(obj_Maykr_Control.tileDebug,99,floor(x / 24),floor(y / 24));
				break;
				
				case "asteroidFieldsRedFront":
				tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,0,floor(x / 24),floor(y / 24));
				var topTile = tilemap_get(obj_Maykr_Control.tileAsteroidFieldsFront,floor(x / 24),floor(y / 24) - 1);
				var bottomTile = tilemap_get(obj_Maykr_Control.tileAsteroidFieldsFront,floor(x / 24),floor(y / 24) + 1);
				if ((topTile == 5) or (topTile == 6) or (topTile == 7)) tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,0,floor(x / 24),floor(y / 24) - 1);
				if ((bottomTile != 0) and (bottomTile >= 18)) tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,bottomTile - 18,floor(x / 24),floor(y / 24));
				break;
				
				case "asteroidFieldsGreenFront":
				tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,0,floor(x / 24),floor(y / 24));
				var topTile = tilemap_get(obj_Maykr_Control.tileAsteroidFieldsFront,floor(x / 24),floor(y / 24) - 1);
				var bottomTile = tilemap_get(obj_Maykr_Control.tileAsteroidFieldsFront,floor(x / 24),floor(y / 24) + 1);
				if ((topTile == 8) or (topTile == 9) or (topTile == 10)) tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,0,floor(x / 24),floor(y / 24) - 1);
				if ((bottomTile != 0) and (bottomTile >= 18)) tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,bottomTile - 18,floor(x / 24),floor(y / 24));
				break;
				
				case "asteroidFieldsBlueFront":
				tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,0,floor(x / 24),floor(y / 24));
				var topTile = tilemap_get(obj_Maykr_Control.tileAsteroidFieldsFront,floor(x / 24),floor(y / 24) - 1);
				var bottomTile = tilemap_get(obj_Maykr_Control.tileAsteroidFieldsFront,floor(x / 24),floor(y / 24) + 1);
				if ((topTile == 11) or (topTile == 12) or (topTile == 13)) tilemap_set(obj_Maykr_Control.tileAsteroidFieldsFront,0,floor(x / 24),floor(y / 24) - 1);
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
			if ((yesBar == yesBarMax) and (point_in_rectangle(mouseXGui,mouseYGui,180,116,300,147)))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				windowIndex = -1;
				
				with (obj_Maykr_Spawner) if (spawnedItemIndex != obj_Player) instance_destroy();
				if (tileAsteroidFieldsFront != -1) tilemap_clear(tileAsteroidFieldsFront,0);
			}
			
			if (point_in_rectangle(mouseXGui,mouseYGui,180,149,300,174))
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				windowIndex = -1;
				spawnTimer = 15;
			}
		}
		break;
		
		case "leave":
		if (yesBar < yesBarMax) yesBar += 1;
		
		if ((mouse_check_button_pressed(mb_left)) and (!instance_exists(obj_Fade)))
		{
			if ((yesBar == yesBarMax) and (point_in_rectangle(mouseXGui,mouseYGui,180,116,300,147)))
			{
				if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
				audio_play_sound(snd_ButtonYes,0,false);
				windowIndex = -1;
				global.pause = false;
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = rm_MainMenu;
			}
			
			if (point_in_rectangle(mouseXGui,mouseYGui,180,149,300,174))
			{
				if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
				audio_play_sound(snd_ButtonNo,0,false);
				windowIndex = -1;
				spawnTimer = 15;
			}
		}
		break;
	}
	#endregion
}