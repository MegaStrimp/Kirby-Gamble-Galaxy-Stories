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
		sprChestClosed = spr_ItemChest_Normal_Closed;
		sprChestOpen = spr_ItemChest_Normal_Open;
		break;
	}
	setupTimer = -1;
}

if (!global.pause)
{
	//Gravity
	
	if (hasGravity)
	{
		if (vsp < gravLimit)
		{
			vsp += grav;
		}
		else
		{
			vsp = gravLimit;
		}
	}
	
	//Destroy
	
	if ((!open) and (place_meeting(x,y,obj_Player)))
	{
		var touchedPlayer = instance_place(x,y,obj_Player);
		scr_Player_Inputs(touchedPlayer.player);
		if ((!global.cutscene) and (keyUpPressed))
		{
			if (audio_is_playing(snd_ChestOpen)) audio_stop_sound(snd_ChestOpen);
			audio_play_sound(snd_ChestOpen,0,false);
			var itemX = x;
			var itemY = y;
			if (!place_meeting(x,touchedPlayer.y - 24,obj_Wall)) itemY = touchedPlayer.y - 24;
			open = true;
			blinkTimer = blinkTimerMax;
			destroyTimer = destroyTimerMax;
			
			if (!isCollectible)
			{
				var spawnedItem = instance_create_depth(itemX,itemY,depth - 1,storedItem);
				spawnedItem.hasGravity = true;
				spawnedItem.vsp = -2;
				if (storedItem == obj_PointStar) spawnedItem.character = pointStarCharacter;
			}
			else
			{
				var treasure = instance_create_depth(itemX,itemY,depth - 1,obj_Treasure);
				treasure.treasureCategory = treasureCategory;
				treasure.treasureIndex = treasureIndex;
			}
		}
	}
	
	//Slopes
	
	if (hasXCollision)
	{
		if ((!place_meeting(x + hsp,y,collisionX)) and (place_meeting(x,y + 1,collisionX)))
		{
		    yplus = 0;
		    while ((!place_meeting(x + hsp,y + yplus,collisionX) and yplus <= abs(hsp)))
			{
				yplus += 1;
			}
		    y += yplus;
		}
	}
	
	//Horizontal Collision
	
	if (hasXCollision)
	{
		if place_meeting(x + hsp,y,collisionX)
		{
		    yplus = 0;
		    while ((place_meeting(x + hsp,y - yplus,collisionX)) and (yplus <= abs(1 * hsp)))
			{
				yplus += 1;
			}
		    if place_meeting(x + hsp,y - yplus,collisionX)
		    {
		        while (!place_meeting(x + (sign(hsp) / 10),y,collisionX))
				{
					x += (sign(hsp) / 10);
				}
		        hsp = 0;
		    }
		    else
		    {
		        y -= yplus
		    }
		}
	}
	
	x += hsp;
	
	//Vertical Collision
	
	if (hasYCollision)
	{
		if (place_meeting(x,y + vsp,collisionY))
		{
		    while (!place_meeting(x,y + (sign(vsp) / 10),collisionY))
		    { 
		        y += (sign(vsp) / 10);
		    }
		    vsp = 0;
		}
	}
	
	y += vsp;
	
	//Aura Timer
	
	if (blinkTimer > 0)
	{
		blinkTimer -= 1;
	}
	else if (blinkTimer == 0)
	{
		if (visible)
		{
			visible = false;
		}
		else
		{
			visible = true;
		}
		blinkTimer = blinkTimerMax;
	}
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
		destroyTimer = -1;
	}
	
	//Animation
	
	if (open)
	{
		sprite_index = sprChestOpen;
	}
	else
	{
		sprite_index = sprChestClosed;
	}
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}