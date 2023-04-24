///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!global.pause)
{
	if (!isTop)
	{
		#region Destroy
		if (hp <= 0)
		{
			if (hasEnemyWall)
			{
				if (instance_exists(enemyWall)) instance_destroy(enemyWall);
			}
			global.points += points;
			
			if !((ds_exists(global.collectibleTracker,ds_type_list)) and (ds_list_find_index(global.collectibleTracker,id)))
			{
				var spawnedItem = instance_create_depth(x + (sprite_get_width(sprIdle) / 2),y + (sprite_get_height(sprite_index) / 2),depth - 1,storedItem);
				if ((storedItem == obj_PointStar) or (object_get_parent(storedItem) == obj_PointStar))
				{
					spawnedItem.character = pointStarCharacter;
					spawnedItem.target = instance_nearest(x,y,obj_Player);
					spawnedItem.followTarget = true;
				}
			}
			
			if (ds_exists(global.collectibleTracker,ds_type_list)) ds_list_add(global.collectibleTracker,id);
			
			instance_destroy();
		}
		#endregion
	}
	
	#region Animation
	if (isTop)
	{
		sprite_index = topWallSprite;
	}
	else
	{
		sprite_index = sprIdle;
	}
	#endregion
}