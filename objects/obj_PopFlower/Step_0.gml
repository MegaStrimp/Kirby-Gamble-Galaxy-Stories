///@description Main

if (!global.pause)
{
	//Setup Timer
	
	if (setupTimer > 0)
	{
		setupTimer -= 1;
	}
	else if (setupTimer == 0)
	{
		switch (character)
		{
			//Green Greens
			
			case 0:
			sprClosed = spr_PopFlower_GreenGreens_Closed;
			sprOpening = -1;
			sprOpen = spr_PopFlower_GreenGreens_Open;
			break;
			
			//Battleship Halberd
			
			case 1:
			sprClosed = spr_PopFlower_Halberd_Closed;
			sprOpening = spr_PopFlower_Halberd_Opening;
			sprOpen = spr_PopFlower_Halberd_Open;
			break;
			
			//Egg Garden Surface
			
			case 3:
			sprClosed = spr_PopFlower_EggGardenSurface_Closed;
			sprOpening = -1;
			sprOpen = spr_PopFlower_EggGardenSurface_Open;
			break;
		}
	}
	
	//Shake
	
	if (place_meeting(x,y,obj_InhaleMask))
	{
		shake = 1;
	}
	else
	{
		shake = 0;
	}
	
	//Open
	
	if ((!open) and ((place_meeting(x,y,obj_Player)) or ((place_meeting(x,y,obj_Projectile)) and (!instance_place(x,y,obj_Projectile).enemy))))
	{
		var touchedPlayer = instance_place(x,y,obj_Player);
		open = true;
		if (sprOpening != -1)
		{
			sprite_index = sprOpening;
		}
		else
		{
			sprite_index = sprOpen;
		}
		image_index = 0;
		switch (item)
		{
			case "yellowStar":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_PopFlowerStar);
			spawnedItem.character = 0;
			break;
			
			case "greenStar":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_PopFlowerStar);
			spawnedItem.character = 1;
			break;
			
			case "redStar":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_PopFlowerStar);
			spawnedItem.character = 2;
			break;
			
			case "blueStar":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_PopFlowerStar);
			spawnedItem.character = 3;
			break;
			
			case "food":
			var itemX = x;
			var itemY = y;
			if ((instance_exists(touchedPlayer)) and (!place_meeting(x,touchedPlayer.y - 8,obj_ParentWall))) itemY = touchedPlayer.y - 8;
			var spawnedItem = instance_create_depth(itemX,itemY,depth - 1,obj_Food);
			spawnedItem.hasGravity = true;
			spawnedItem.vsp = -2;
			break;
			
			case "pepBrew":
			var itemX = x;
			var itemY = y;
			if ((instance_exists(touchedPlayer)) and (!place_meeting(x,touchedPlayer.y - 8,obj_ParentWall))) itemY = touchedPlayer.y - 8;
			var spawnedItem = instance_create_depth(itemX,itemY,depth - 1,obj_PepBrew);
			spawnedItem.hasGravity = true;
			spawnedItem.vsp = -2;
			break;
		}
		var particle = instance_create_depth(x,y - 4,depth,obj_Particle);
		particle.sprite_index = spr_Particle_Sparkle1;
		particle.destroyAfterAnimation = true;
		if (!global.gambleMaykr) global.points += points;
	}
	
	//Animation
	
	image_speed = 1;
	
	if (!open)
	{
		sprite_index = sprClosed;
	}
}
else
{
	image_speed = 0;
	shake = 0;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}