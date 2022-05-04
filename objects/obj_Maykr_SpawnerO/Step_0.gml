///@description Main

//Move Snap

scr_MaykrGrid(snap,snap);

//Spawn Item

if (active)
{
	if ((spawnedItemIndex == obj_ParentWall) and (spawnedSlopeType != 0)) yOffset = y - 4;
	spawnedItem = instance_create_layer(xOffset,yOffset,spawnedLayer,spawnedItemIndex);
	spawnedItem.state = spawnedState;
	spawnedItem.dirX = spawnedDirX;
	spawnedItem.walkDirX = spawnedDirX;
	if (spawnedPaletteIndex != -1) spawnedItem.paletteIndex = spawnedPaletteIndex;
	
	switch (spawnedItemIndex)
	{
		case obj_Player:
		spawnedItem.dir = spawnedDirX;
		break;
		
		case obj_ParentWall:
		spawnedItem.visible = true;
		spawnedItem.image_xscale = spawnedDirX;
		switch (spawnedSlopeType)
		{
			case 0:
			spawnedItem.sprite_index = spr_Maykr_Spawner_DebugWall;
			spawnedItem.topWallSprite = spr_Maykr_Debug_TopWall;
			break;
			
			case 1:
			spawnedItem.sprite_index = spr_Maykr_Debug_Slope;
			spawnedItem.mask_index = spr_DebugSlopeMask;
			spawnedItem.slope = true;
			spawnedItem.slopeType = "normal";
			spawnedItem.hasTop = false;
			break;
			
			case 2:
			spawnedItem.sprite_index = spr_Maykr_Debug_GentleSlopeSpawner;
			spawnedItem.mask_index = spr_48x24Slope;
			spawnedItem.slope = true;
			spawnedItem.slopeType = "gentle";
			spawnedItem.hasTop = false;
			break;
			
			case 3:
			spawnedItem.sprite_index = spr_Maykr_Debug_SuperGentleSlopeSpawner;
			spawnedItem.mask_index = spr_72x24Slope;
			spawnedItem.slope = true;
			spawnedItem.slopeType = "gentle";
			spawnedItem.hasTop = false;
			break;
		}
		break;
		
		case obj_Ladder:
		spawnedItem.visible = true;
		spawnedItem.sprite_index = spr_Maykr_Debug_Ladder;
		break;
		
		case obj_Platform:
		spawnedItem.visible = true;
		spawnedItem.sprIdle = spr_Maykr_Debug_Platform;
		break;
		
		case obj_StarBlock:
		break;
		
		case obj_AbilityTrophy:
		spawnedItem.ability = spawnedAbilityIndex;
		break;
		
		case obj_WaddleDee:
		break;
	}
	active = false;
	visible = false;
}
else
{
	switch (spawnedItemIndex)
	{
		case obj_Player:
		spawnedName = "Player";
		spawnedStateMax = 0;
		break;
		
		case obj_ParentWall:
		switch (spawnedSlopeType)
		{
			case 0:
			spawnedName = "Wall";
			break;
			
			case 1:
			spawnedName = "Slope";
			break;
			
			case 2:
			spawnedName = "Gentle Slope";
			break;
			
			case 3:
			spawnedName = "Super Gentle Slope";
			break;
		}
		spawnedStateMax = 0;
		break;
		
		case obj_Ladder:
		spawnedName = "Ladder";
		spawnedStateMax = 0;
		break;
		
		case obj_Platform:
		spawnedName = "Platform";
		spawnedStateMax = 0;
		break;
		
		case obj_StarBlock:
		spawnedName = "Star Block";
		spawnedStateMax = 0;
		break;
		
		case obj_BigStarBlock:
		spawnedName = "Big Star Block";
		spawnedStateMax = 0;
		mask_index = spr_BigStarBlock_Normal_Idle;
		break;
		
		case obj_BombBlock:
		spawnedName = "Bomb Block";
		spawnedStateMax = 0;
		break;
		
		case obj_BombSolidBlock:
		spawnedName = "Solid Bomb Block";
		spawnedStateMax = 0;
		break;
		
		case obj_BombSolidBlock_Invis:
		spawnedName = "Solid Bomb Block Invis";
		spawnedStateMax = 0;
		break;
		
		case obj_AbilityBlock:
		spawnedName = "Ability Block";
		spawnedStateMax = 0;
		break;
		
		case obj_BreakingWall:
		spawnedName = "Breaking Wall";
		spawnedStateMax = 0;
		break;
		
		case obj_Crate:
		spawnedName = "Crate";
		spawnedStateMax = 0;
		mask_index = spr_Crate_Normal_Idle;
		break;
		
		case obj_DurableBlock:
		spawnedName = "Durable Block";
		spawnedStateMax = 0;
		mask_index = spr_DurableBlock_Normal_Idle;
		break;
		
		case obj_Bumper:
		spawnedName = "Bumper";
		spawnedStateMax = 0;
		break;
		
		case obj_Spring:
		spawnedName = "Spring";
		spawnedStateMax = 0;
		break;
		
		case obj_Trampoline:
		spawnedName = "Trampoline";
		spawnedStateMax = 0;
		break;
		
		case obj_Food:
		spawnedName = "Food";
		spawnedStateMax = 0;
		mask_index = spr_Food;
		break;
		
		case obj_PepBrew:
		spawnedName = "PepBrew";
		spawnedStateMax = 0;
		mask_index = spr_PepBrew;
		break;
		
		case obj_MaximTomato:
		spawnedName = "Maxim Tomato";
		spawnedStateMax = 0;
		mask_index = spr_MaximTomato;
		break;
		
		case obj_1Up:
		spawnedName = "1 Up";
		spawnedStateMax = 0;
		mask_index = spr_1Up;
		break;
		
		case obj_Spike:
		spawnedName = "Spike";
		spawnedStateMax = 0;
		break;
		
		case obj_PointStar:
		spawnedName = "Point Star";
		spawnedStateMax = 0;
		mask_index = spr_PointStar_Yellow_Idle;
		break;
		
		case obj_PopFlower:
		spawnedName = "Pop Flower";
		spawnedStateMax = 0;
		mask_index = spr_PopFlower_GreenGreens_Closed;
		break;
		
		case obj_ItemChest:
		spawnedName = "Item Chest";
		spawnedStateMax = 0;
		break;
		
		case obj_Button:
		spawnedName = "Button";
		spawnedStateMax = 0;
		break;
		
		case obj_Gate:
		spawnedName = "Gate";
		spawnedStateMax = 0;
		break;
		
		case obj_AbilityTrophy:
		spawnedName = "Ability Trophy";
		spawnedStateMax = 0;
		break;
		
		case obj_CuttableGrass:
		spawnedName = "Cuttable Grass";
		spawnedStateMax = 0;
		mask_index = spr_CuttableGrass_Normal_Idle;
		break;
		
		case obj_WaddleDee:
		spawnedName = "Waddle Dee";
		spawnedStateMax = 2;
		break;
		
		case obj_WaddleDoo:
		spawnedName = "Waddle Doo";
		spawnedStateMax = 2;
		break;
		
		case obj_BrontoBurt:
		spawnedName = "Bronto Burt";
		spawnedStateMax = 2;
		break;
		
		case obj_Twizzy:
		spawnedName = "Twizzy";
		spawnedStateMax = 2;
		break;
		
		case obj_Tookey:
		spawnedName = "Tookey";
		spawnedStateMax = 2;
		break;
		
		case obj_SirKibble:
		spawnedName = "Sir Kibble";
		spawnedStateMax = 2;
		break;
		
		case obj_Gordo:
		spawnedName = "Gordo";
		spawnedStateMax = 3;
		break;
		
		case obj_BloodGordo:
		spawnedName = "Blood Gordo";
		spawnedStateMax = 3;
		break;
		
		case obj_Shotzo:
		spawnedName = "Shotzo";
		spawnedStateMax = 1;
		break;
		
		case obj_MysticDoo:
		spawnedName = "Mystic Doo";
		spawnedStateMax = 0;
		break;
		
		case obj_Bouncy:
		spawnedName = "Bouncy";
		spawnedStateMax = 0;
		break;
		
		case obj_Search:
		spawnedName = "Search";
		spawnedStateMax = 0;
		break;
		
		case obj_Wapod:
		spawnedName = "Wapod";
		spawnedStateMax = 0;
		break;
		
		case obj_Cappy:
		spawnedName = "Cappy";
		spawnedStateMax = 1;
		break;
		
		case obj_BroomHatter:
		spawnedName = "Broom Hatter";
		spawnedStateMax = 1;
		break;
		
		case obj_Coconut:
		spawnedName = "Coconut";
		spawnedStateMax = 0;
		break;
		
		case obj_Noddy:
		spawnedName = "Noddy";
		spawnedStateMax = 1;
		break;
		
		case obj_Blado:
		spawnedName = "Blado";
		spawnedStateMax = 3;
		break;
		
		case obj_Scarfy:
		spawnedName = "Scarfy";
		spawnedStateMax = 0;
		break;
		
		case obj_Rocky:
		spawnedName = "Rocky";
		spawnedStateMax = 1;
		break;
		
		case obj_Grizzo:
		spawnedName = "Grizzo";
		spawnedStateMax = 1;
		break;
		
		case obj_JungleBomb:
		spawnedName = "Jungle Bomb";
		spawnedStateMax = 2;
		break;
		
		case obj_Kabu:
		spawnedName = "Kabu";
		spawnedStateMax = 1;
		break;
		
		case obj_BurningLeo:
		spawnedName = "Burning Leo";
		spawnedStateMax = 1;
		break;
	}
	
	//Select Cancel Timer
	
	if (selectCancelTimer > 0)
	{
		selectCancelTimer -= 1;
	}
	else if (selectCancelTimer == 0)
	{
		selectCancelTimer = -1;
	}
}

//Selected

/*if (selected == 1)
{
	if (mouse_check_button(mb_left))
	{
		x = dragX - mouse_x;
		y = dragY - mouse_y;
	}
}*/

//Delete

if (visible)
{
	var mx, my;
	mx = floor(mouse_x / snap) * snap;
	my = floor(mouse_y / snap) * snap;
	if ((spawnedItemIndex != obj_Player) and (spawnedLayer == global.gambleMaykrMenu) and (position_meeting(mx,my,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}