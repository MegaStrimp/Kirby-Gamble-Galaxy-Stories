///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_StarBlock_Normal_Idle;
		topWallSprite = spr_StarBlock_Normal_Top;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	if (!isTop)
	{
		//Get Inhaled
		
		scr_Object_Inhale(enemy);
		
		//Destroy
		
		if (hp <= 0)
		{
			if (hasEnemyWall)
			{
				if (instance_exists(enemyWall)) instance_destroy(enemyWall);
			}
			global.points += points;
			
			if !((ds_exists(global.collectibleTracker,ds_type_list)) and (ds_list_find_index(global.collectibleTracker,id)))
			{
				var spawnedItem = instance_create_depth(x + (sprite_get_width(sprite_index) / 2),y + (sprite_get_height(sprite_index) / 2),depth - 1,storedItem);
				if (storedItem == obj_PointStar)
				{
					spawnedItem.character = pointStarCharacter;
					spawnedItem.target = instance_nearest(x,y,obj_Player);
					spawnedItem.followTarget = true;
				}
			}
			
			if (ds_exists(global.collectibleTracker,ds_type_list)) ds_list_add(global.collectibleTracker,id);
			
			instance_destroy();
		}
	}
	
	//Animation
	
	if (isTop)
	{
		sprite_index = topWallSprite;
	}
	else
	{
		sprite_index = sprIdle;
	}
}