///@description Treasure Spawn
///@param {real} treasureCategory Which category to check.
///@param {real} treasureIndex Which dialogue index to check.

function scr_TreasureSpawn(argument0,argument1)
{
	/*
		---Categories---
		
		0 - Test
		1 - Spray Paints
		2 - Ability Upgrades
		3 - Cheat Discs
		4 - Misc
	*/
	
	var treasureCategory = argument0;
	var treasureIndex = argument1;
	var itemX = x;
	var itemY = y;
	if (!place_meeting(x,touchedPlayer.y - 24,obj_ParentWall)) itemY = touchedPlayer.y - 24;
	var treasure = instance_create_depth(itemX,itemY,depth - 1,obj_Treasure);
	
	switch (treasureCategory)
	{
		#region Test
		case 0:
		switch (treasureIndex)
		{
			case 0:
			treasure.sprite_index = spr_Treasure_Spray;
			break;
		}
		break;
		#endregion
	}
	
	treasure.treasureCategory = treasureCategory;
	treasure.treasureIndex = treasureIndex;
}