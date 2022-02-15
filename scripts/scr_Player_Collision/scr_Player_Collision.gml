///@description Collision

function scr_Player_Collision()
{
	//Variables
	
	hspCollision = 0;
	vspCollision = 0;
	
	//if ((sign(hspCollision != 0)) and (sign(hsp) != sign(hspCollision))) hsp = 0;
	//if ((sign(vspCollision != 0)) and (sign(vsp) != sign(vspCollision))) vsp = 0;
	hspFinal = hsp + hspCollision;
	vspFinal = vsp + vspCollision;
	
	//Slopes
	
	if ((place_meeting(x,y + 1,obj_Wall)) and (!place_meeting(x + hspFinal,y,obj_Wall)))
	{
		collidingWall = instance_place(x,y + 1,obj_Wall);
		if (((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + 20 + vspFinal)))) and (((instance_place(x,y + 1,obj_Wall)).slope) or ((place_meeting(x + sign(hspFinal),y,obj_Wall) and (instance_place(x + sign(hspFinal),y,obj_Wall).slope)))))
		{
			yplus = 0;
			while (!place_meeting(x + hspFinal,y + yplus,obj_Wall) && yplus <= abs(hspFinal))
			{
				yplus += 1;
			}
			y += yplus;
		}
	}
	
	//Horizontal Collision
	
	if (place_meeting(x + hspFinal,y,obj_Wall))
	{
		yplus = 0;
		collidingWall = -1;
		with (instance_place(x + hspFinal,y,obj_Wall))
		{
			if (!platform) other.collidingWall = self;
		}
		if (collidingWall != -1)
		{
			while ((place_meeting(x + hspFinal,y - yplus,obj_Wall)) and (yplus <= abs(1 * hspFinal)))
			{
				yplus += 1;
			}
			
			//Slide
			
			if place_meeting(x + hspFinal,y - yplus,obj_Wall)
			{
				collidingWall = instance_place(x + hspFinal,y - yplus,obj_Wall);
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
			
			if place_meeting(x + hspFinal,y - yplus,obj_Wall)
			{
				collidingWall = instance_place(x + hspFinal,y - yplus,obj_Wall);
				if (collidingWall.hp > 0)
				{
					while (!place_meeting(x + sign(hspFinal),y,obj_Wall))
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
		if ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + 20 + vspFinal))
		{
			while (!place_meeting(x,y + sign(vspFinal),obj_Platform))
			{
				y += sign(vspFinal);
			}
			if (place_meeting(x,y - 1,obj_Wall))
			{
				var collidedWall = instance_place(x,y - 1,obj_Wall);
				if (collidedWall.object)
				{
					if (((state == playerStates.normal) or (state == playerStates.carry) or (state == playerStates.inhale)) and (!place_meeting(x,y + 1,obj_Wall)) and (collidedWall.damageType == damageTypes.none) and (sign(vsp) == -1))
					{
						collidedWall.hp -= dmg;
					}
				}
			}
			vsp = 0;
			vspFinal = 0;
		}
	}
	
	if (place_meeting(x,y + vspFinal,obj_Wall))
	{
		collidingWall = instance_place(x,y + vspFinal,obj_Wall);
		if (!collidingWall.platform)
		{
			while (!place_meeting(x,y + sign(vspFinal) / 10,obj_Wall))
			{
				y += sign(vspFinal) / 10;
			}
			if (place_meeting(x,y - 1,obj_Wall))
			{
				var collidedWall = instance_place(x,y - 1,obj_Wall);
				if (collidedWall.object)
				{
					if (((state == playerStates.normal) or (state == playerStates.carry) or (state == playerStates.inhale)) and (!place_meeting(x,y + 1,obj_Wall)) and (collidedWall.damageType == damageTypes.none) and (sign(vsp) == -1))
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
		if (!place_meeting(x,y + 24,obj_Wall))
		{
			y += 24;
		}
		else if (!place_meeting(x,y - 24,obj_Wall))
		{
			y -= 24;
		}
		else if (!place_meeting(x + 24,y,obj_Wall))
		{
			x += 24;
		}
		else if (!place_meeting(x - 24,y,obj_Wall))
		{
			x -= 24;
		}
	}
	else if (position_meeting(x,y,obj_Wall))
	{
		collidingWall = instance_position(x,y,obj_Wall);
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
	
	x = clamp(x,0,room_width);
	y = clamp(y,0,room_height);
	
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