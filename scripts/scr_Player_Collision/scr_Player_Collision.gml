///@description Collision

function scr_Player_Collision(argument0)
{
	//Variables
	
	var playerMech = argument0;
	
	var playerAbility = global.abilityP1;
	if (player == 1) playerAbility = global.abilityP2;
	//hspCollision = 0;
	//vspCollision = 0;
	
	//if ((sign(hspCollision != 0)) and (sign(hsp) != sign(hspCollision))) hsp = 0;
	//if ((sign(vspCollision != 0)) and (sign(vsp) != sign(vspCollision))) vsp = 0;
	hspFinal = hsp + hspCollision;
	vspFinal = vsp + vspCollision;
	
	//Slopes
	
	if ((place_meeting(x,y + 1,obj_ParentWall)) and (!place_meeting(x + hspFinal,y,obj_ParentWall)))
	{
		collidingWall = instance_place(x,y + 1,obj_ParentWall);
		if (((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + collidingWall.vsp + 20 + vspFinal)))) and (((instance_place(x,y + 1,obj_ParentWall)).slope) or ((place_meeting(x + sign(hspFinal),y,obj_ParentWall) and (instance_place(x + sign(hspFinal),y,obj_ParentWall).slope)))))
		{
			yplus = 0;
			while (!place_meeting(x + hspFinal,y + yplus,obj_ParentWall) && yplus <= abs(hspFinal))
			{
				yplus += 1;
			}
			y += yplus;
		}
		
		stoneAngle = 0;
		if ((collidingWall.slope) and ((attackNumber == playerAttacks.stoneNormal) or (attackNumber == playerAttacks.gooeyStoneNormal)))
		{
			var wallDir = collidingWall.image_xscale;
			var wallAngle = 45;
			if (collidingWall.sprite_index = spr_48x24Slope) wallAngle = 26;
			if (collidingWall.sprite_index = spr_72x24Slope) wallAngle = 18;
			if (collidingWall.slopeType == "normal") wallDir *= -1;
			hsp += accel * wallDir;
			stoneAngle = wallAngle * -wallDir;
			if (stoneAngle < 0) stoneAngle += 360;
		}
	}
	
	//Horizontal Collision
	
	if (place_meeting(x + hspFinal,y,obj_ParentWall))
	{
		yplus = 0;
		collidingWall = -1;
		with (instance_place(x + hspFinal,y,obj_ParentWall))
		{
			if (!platform) other.collidingWall = self;
		}
		if (collidingWall == -1)
		{
			with (instance_place(x + hspFinal, y, obj_Wall))
			{
				other.collidingWall = self;
			}
		}
		
		if (collidingWall != -1)
		{
			while ((place_meeting(x + hspFinal,y - yplus,obj_ParentWall)) and (yplus <= abs(1 * hspFinal)))
			{
				yplus += 1;
			}
			
			//Slide
			
			if (playerMech == playerMechs.none)
			{
				if place_meeting(x + hspFinal,y - yplus,obj_ParentWall)
				{
					collidingWall = instance_place(x + hspFinal,y - yplus,obj_ParentWall);
					if (duckSlide)
					{
						if (collidingWall.object)
						{
							if ((collidingWall.damageType == damageTypes.none) or (collidingWall.damageType = damageType))
							{
								collidingWall.hp -= dmg;
							}
						}
					}
				}
			}
			
			if place_meeting(x + hspFinal,y - yplus,obj_ParentWall)
			{
				collidingWall = instance_place(x + hspFinal,y - yplus,obj_ParentWall);
				if (collidingWall.hp > 0)
				{
					while (!place_meeting(x + sign(hspFinal),y,obj_ParentWall))
					{
						x += sign(hspFinal);
					}
					hsp = 0;
					hspFinal = 0;
				}
			}
			else
			{
				y -= yplus
			}
		}
		
	}
	
	x += hspFinal;
	
	//Vertical Collision
	
	if (place_meeting(x,y + vspFinal,obj_ParentWall))
	{
		collidingWall = instance_place(x,y + vspFinal,obj_ParentWall);
		if (!collidingWall.platform)
		{
			while (!place_meeting(x,y + sign(vspFinal) / 10,obj_ParentWall))
			{
				y += sign(vspFinal) / 10;
			}
			if (place_meeting(x,y - 1,obj_ParentWall))
			{
				var collidedWall = instance_place(x,y - 1,obj_ParentWall);
				if (collidedWall.object)
				{
					if (((state == playerStates.normal) or (state == playerStates.carry) or (state == playerStates.inhale)) and (!place_meeting(x,y + 1,obj_ParentWall)) and (collidedWall.damageType == damageTypes.none) and (sign(vsp) == -1))
					{
						collidedWall.hp -= dmg;
					}
				}
			}
			vsp = 0;
			vspFinal = 0;
		}
	}
	
	if (place_meeting(x,y + vspFinal,obj_Platform))
	{
		collidingWall = instance_place(x,y + vspFinal,obj_Platform);
		if ((((!keyDownHold) or ((downHeld < 8) and (playerAbility != playerAbilities.ufo))) and !(round(bbox_bottom) > collidingWall.y + collidingWall.vsp + 20 + vspFinal)) or (place_meeting(x,y + vspFinal,obj_Wall)))
		{
			/*while (!place_meeting(x,y + sign(vspFinal),obj_Platform))
			{
				y += sign(vspFinal);
			}*/
			if (place_meeting(x,y - 1,obj_ParentWall))
			{
				var collidedWall = instance_place(x,y - 1,obj_ParentWall);
				if (collidedWall.object)
				{
					if (((state == playerStates.normal) or (state == playerStates.carry) or (state == playerStates.inhale)) and (!place_meeting(x,y + 1,obj_ParentWall)) and (collidedWall.damageType == damageTypes.none) and (sign(vsp) == -1))
					{
						collidedWall.hp -= dmg;
					}
				}
			}
			
			if (!place_meeting(x,collidingWall.y + 12,obj_Wall))
			{
				y = collidingWall.y + 12;
			}
			vsp = 0;
			vspFinal = 0;
		}
	}
	
	y += vspFinal;
	
	//Stuck Inside Walls
	
	if (place_meeting(x,y,obj_Gate))
	{
		if (!place_meeting(x,y + 24,obj_ParentWall))
		{
			y += 24;
		}
		else if (!place_meeting(x,y - 24,obj_ParentWall))
		{
			y -= 24;
		}
		else if (!place_meeting(x + 24,y,obj_ParentWall))
		{
			x += 24;
		}
		else if (!place_meeting(x - 24,y,obj_ParentWall))
		{
			x -= 24;
		}
	}
	else if (position_meeting(x,y,obj_ParentWall))
	{
		collidingWall = instance_position(x,y,obj_ParentWall);
		if (collidingWall.isTop)
		{
			while (place_meeting(x,y,collidingWall)) y -= 1;
		}
		else if (!collidingWall.platform)
		{
			if (collidingWall.hp > 0)
			{
				if (player == 0)
				{
					global.hpP1 = 0;
				}
				else
				{
					global.hpP2 = 0;
				}
			}
		}
	}
	
	//Clamp
	
	var clampXMin = obj_Camera.cameraX;
	var clampXMax = (obj_Camera.cameraX + (obj_Camera.viewWidth / obj_Camera.zoomFinal));
	var clampYMin = obj_Camera.cameraY;
	var clampYMax = (obj_Camera.cameraY + ((obj_Camera.viewHeight + 24) / obj_Camera.zoomFinal));
	
	if (global.cutscene)
	{
		var clampXMin = 0;
		var clampXMax = room_width;
		var clampYMin = 0;
		var clampYMax = room_height + 24;
	}
	
	x = clamp(x,clampXMin,clampXMax);
	y = clamp(y,clampYMin,clampYMax);
	
	hasMiniboss = false;
	with (obj_Miniboss_Control) if (active) other.hasMiniboss = true;
	
	//Death On Bottom
	
	if ((global.hpP1 != 0) and (y >= (obj_Camera.cameraY + ((obj_Camera.viewHeight + 24) / obj_Camera.zoomFinal))))
	{
		global.hpP1 = 0;
	}
}

/* OLD
function scr_Player_Collision(playerMechs.none)
{
	//Variables
	
	hspFinal = hsp + hspCarry;
	vspFinal = vsp + vspCarry;
	
	hspCarry = 0;
	vspCarry = 0;
	
	//Slopes
	
	if ((place_meeting(x,y + 1,obj_ParentWall)) and (!place_meeting(x + hspFinal,y,obj_ParentWall)))
	{
		collidingWall = instance_place(x,y + 1,obj_ParentWall);
		if (((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + collidingWall.vsp + 20 + vspFinal)))) and (((instance_place(x,y + 1,obj_ParentWall)).slope) or ((place_meeting(x + sign(hspFinal),y,obj_ParentWall) and (instance_place(x + sign(hspFinal),y,obj_ParentWall).slope)))))
		{
			yplus = 0;
			while (!place_meeting(x + hspFinal,y + yplus,obj_ParentWall) && yplus <= abs(hspFinal))
			{
				yplus += 1;
			}
			y += yplus;
		}
		
		stoneAngle = 0;
		if ((collidingWall.slope) and (attackNumber == playerAttacks.stoneNormal))
		{
			var wallDir = collidingWall.image_xscale;
			var wallAngle = 45;
			if (collidingWall.sprite_index = spr_48x24Slope) wallAngle = 26;
			if (collidingWall.sprite_index = spr_72x24Slope) wallAngle = 18;
			if (collidingWall.slopeType == "normal") wallDir *= -1;
			hsp += accel * wallDir;
			stoneAngle = wallAngle * -wallDir;
			if (stoneAngle < 0) stoneAngle += 360;
		}
	}
	
	//Horizontal Collision
	
	if (place_meeting(x + hspFinal,y,obj_ParentWall))
	{
		yplus = 0;
		collidingWall = -1;
		with (instance_place(x + hspFinal,y,obj_ParentWall))
		{
			if (!platform) other.collidingWall = self;
		}
		if (collidingWall != -1)
		{
			while ((place_meeting(x + hspFinal,y - yplus,obj_ParentWall)) and (yplus <= abs(1 * hspFinal)))
			{
				yplus += 1;
			}
			
			//Slide
			
			if place_meeting(x + hspFinal,y - yplus,obj_ParentWall)
			{
				collidingWall = instance_place(x + hspFinal,y - yplus,obj_ParentWall);
				if (duckSlide)
				{
					if (collidingWall.object)
					{
						if ((collidingWall.damageType == damageTypes.none) or (collidingWall.damageType = damageType))
						{
							collidingWall.hp -= dmg;
						}
					}
				}
			}
			
			if place_meeting(x + hspFinal,y - yplus,obj_ParentWall)
			{
				collidingWall = instance_place(x + hspFinal,y - yplus,obj_ParentWall);
				if (collidingWall.hp > 0)
				{
					while (!place_meeting(x + sign(hspFinal),y,obj_ParentWall))
					{
						x += sign(hspFinal);
					}
					hsp = 0;
					hspFinal = 0;
				}
			}
			else
			{
				y -= yplus
			}
		}
	}
	
	x += hspFinal;
	
	//Vertical Collision
	
	if (place_meeting(x,y + vspFinal,obj_Platform))
	{
		collidingWall = instance_place(x,y + vspFinal,obj_Platform);
		if ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + collidingWall.vsp + 20 + vspFinal))
		{
			while (!place_meeting(x,y + sign(vspFinal),obj_Platform))
			{
				y += sign(vspFinal);
			}
			if (place_meeting(x,y - 1,obj_ParentWall))
			{
				var collidedWall = instance_place(x,y - 1,obj_ParentWall);
				if (collidedWall.object)
				{
					if (((state == playerStates.normal) or (state == playerStates.carry) or (state == playerStates.inhale)) and (!place_meeting(x,y + 1,obj_ParentWall)) and (collidedWall.damageType == damageTypes.none) and (sign(vsp) == -1))
					{
						collidedWall.hp -= dmg;
					}
				}
			}
			vsp = 0;
			vspFinal = 0;
		}
	}
	
	if (place_meeting(x,y + vspFinal,obj_ParentWall))
	{
		collidingWall = instance_place(x,y + vspFinal,obj_ParentWall);
		if (!collidingWall.platform)
		{
			while (!place_meeting(x,y + sign(vspFinal) / 10,obj_ParentWall))
			{
				y += sign(vspFinal) / 10;
			}
			if (place_meeting(x,y - 1,obj_ParentWall))
			{
				var collidedWall = instance_place(x,y - 1,obj_ParentWall);
				if (collidedWall.object)
				{
					if (((state == playerStates.normal) or (state == playerStates.carry) or (state == playerStates.inhale)) and (!place_meeting(x,y + 1,obj_ParentWall)) and (collidedWall.damageType == damageTypes.none) and (sign(vsp) == -1))
					{
						collidedWall.hp -= dmg;
					}
				}
			}
			vsp = 0;
			vspFinal = 0;
		}
	}
	
	y += vspFinal;
	
	//Stuck Inside Walls
	
	if (place_meeting(x,y,obj_Gate))
	{
		if (!place_meeting(x,y + 24,obj_ParentWall))
		{
			y += 24;
		}
		else if (!place_meeting(x,y - 24,obj_ParentWall))
		{
			y -= 24;
		}
		else if (!place_meeting(x + 24,y,obj_ParentWall))
		{
			x += 24;
		}
		else if (!place_meeting(x - 24,y,obj_ParentWall))
		{
			x -= 24;
		}
	}
	else if (position_meeting(x,y,obj_ParentWall))
	{
		collidingWall = instance_position(x,y,obj_ParentWall);
		if (collidingWall.isTop)
		{
			//while (place_meeting(x,y + collidingWall,collidingWall)) y -= 1;
		}
		else if (!collidingWall.platform)
		{
			if (collidingWall.hp > 0)
			{
				if (player == 0)
				{
					global.hpP1 = 0;
				}
				else
				{
					global.hpP2 = 0;
				}
			}
		}
	}
	
	//Clamp
	
	x = clamp(x,0,room_width);
	y = clamp(y,0,room_height + 24);
	
	hasMiniboss = false;
	with (obj_Miniboss_Control) if (active) other.hasMiniboss = true;
	if (hasMiniboss)
	{
		x = clamp(x,(obj_Camera.cameraX) + (sprite_get_width(mask_index) / 2),(obj_Camera.cameraX + obj_Camera.viewWidth) - (sprite_get_width(mask_index) / 2));
		y = clamp(y,(obj_Camera.cameraY) + (sprite_get_height(mask_index) / 2),(obj_Camera.cameraY + obj_Camera.viewHeight) + 32 + (sprite_get_height(mask_index) / 2));
	}
	
	//Death On Bottom
	
	if ((global.hpP1 != 0) and (y >= room_height + 24)) global.hpP1 = 0;
}
