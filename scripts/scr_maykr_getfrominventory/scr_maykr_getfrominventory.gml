// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Maykr_GetFromInventory(argument0)
{
	//Variables
	
	spawnedState = 0;
	spawnedSlopeType = 0;
	spawnedXOffset = 0;
	spawnedYOffset = 0;
	
	switch (argument0)
	{
		#region Collision
		case maykrObjects.debugWall:
		spawnedItemIndex = obj_ParentWall;
		spawnedSprite = spr_Maykr_Spawner_DebugWall;
		break;
		
		case maykrObjects.asteroidFieldsFront:
		spawnedItemIndex = obj_ParentWall;
		spawnedSprite = spr_Maykr_Spawner_AsteroidFieldsFront;
		break;
		#endregion
		
		#region Enemies
		case maykrObjects.waddleDee:
		spawnedItemIndex = obj_WaddleDee;
		spawnedSprite = spr_WaddleDee_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.waddleDoo:
		spawnedItemIndex = obj_WaddleDoo;
		spawnedSprite = spr_WaddleDoo_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		
		case maykrObjects.brontoBurt:
		spawnedItemIndex = obj_BrontoBurt;
		spawnedSprite = spr_BrontoBurt_Normal_Idle;
		spawnedXOffset = sprite_get_xoffset(spawnedSprite);
		spawnedYOffset = sprite_get_yoffset(spawnedSprite);
		break;
		#endregion
		
		#region Environment
		case maykrObjects.pointStarYellow:
		spawnedItemIndex = obj_PointStar;
		spawnedSprite = spr_PointStar_Yellow_Idle;
		spawnedState = 0;
		break;
		
		case maykrObjects.pointStarGreen:
		spawnedItemIndex = obj_PointStar;
		spawnedSprite = spr_PointStar_Green_Idle;
		spawnedState = 1;
		break;
		
		case maykrObjects.pointStarRed:
		spawnedItemIndex = obj_PointStar;
		spawnedSprite = spr_PointStar_Red_Idle;
		spawnedState = 2;
		break;
		
		case maykrObjects.pointStarBlue:
		spawnedItemIndex = obj_PointStar;
		spawnedSprite = spr_PointStar_Blue_Idle;
		spawnedState = 3;
		break;
		#endregion
	}
}