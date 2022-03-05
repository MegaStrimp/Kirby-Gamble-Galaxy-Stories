///@description Enemy Collision

function scr_Enemy_Collision()
{
	//Variables
	
	var hspCollision = 0;
	if (place_meeting(x,y + 1,obj_Wall))
	{
		var hspCollisionTemp = instance_place(x,y + 1,obj_Wall).hsp;
		if (hspCollisionTemp != 0) hspCollision = hspCollisionTemp;
	}
	if (place_meeting(x + sign(hsp),y,obj_Wall))
	{
		var hspCollisionTemp = instance_place(x + sign(hsp),y,obj_Wall).hsp;
		if (hspCollisionTemp != 0) hspCollision = hspCollisionTemp;
	}
	
	if ((sign(hspCollision != 0)) and (sign(hsp) != sign(hspCollision))) hsp = 0;
	hspFinal = hsp + knockbackX + hspCollision;
	
	var vspCollision = 0;
	if (place_meeting(x,y + 1,obj_Wall))
	{
		var vspCollisionTemp = instance_place(x,y + 1,obj_Wall).vsp;
		if (vspCollisionTemp != 0) vspCollision = vspCollisionTemp;
	}
	if (place_meeting(x,y - 1,obj_Wall))
	{
		var vspCollisionTemp = instance_place(x,y - 1,obj_Wall).vsp;
		if (vspCollisionTemp != 0) vspCollision = vspCollisionTemp;
	}
	
	if ((sign(vspCollision != 0)) and (sign(vsp) != sign(vspCollision))) vsp = 0;
	vspFinal = vsp + knockbackY + vspCollision;
	
	//Slopes
	
	if (hasXCollision)
	{
		if ((!place_meeting(x + hspFinal,y,collisionX)) and (place_meeting(x,y + 1,collisionX)))
		{
			yplus = 0;
			while ((!place_meeting(x + hspFinal,y + yplus,collisionX) and yplus <= abs(hspFinal)))
			{
				yplus += 1;
			}
			y += yplus;
		}
	}
	
	//Horizontal Collision
	
	if (hasXCollision)
	{
		if place_meeting(x + hspFinal,y,collisionX)
		{
			yplus = 0;
			while ((place_meeting(x + hspFinal,y - yplus,collisionX)) and (yplus <= abs(1 * hspFinal)))
			{
				yplus += 1;
			}
			if place_meeting(x + hspFinal,y - yplus,collisionX)
			{
			    while (!place_meeting(x + (sign(hspFinal) / 10),y,collisionX))
				{
					x += (sign(hspFinal) / 10);
				}
			    hsp = 0;
				hspFinal = 0;
				knockbackX = 0;
			}
			else
			{
			    y -= yplus
			}
		}
	}
	
	x += hspFinal;
	
	//Vertical Collision
	
	if (hasYCollision)
	{
		if (place_meeting(x,y + vspFinal,collisionY))
		{
			while (!place_meeting(x,y + (sign(vspFinal) / 10),collisionY))
			{ 
			    y += (sign(vspFinal) / 10);
			}
			if (invincibleTimer == -1) hurtTimer = 0;
			vsp = 0;
			vspFinal = 0;
			knockbackY = 0;
		}
	}
	
	y += vspFinal;
	
	if ((place_meeting(x,y,obj_Wall)) and ((hasXCollision) or (hasYCollision)))
	{
		var collidingWall = instance_place(x,y,obj_Wall);
		if ((hasYCollision) and (collidingWall.isTop))
		{
			while (place_meeting(x,y,collidingWall)) y -= 1;
		}
		else
		{
			if (collidingWall.hp > 0)
			{
				death = true;
			}
		}
	}
	
	//Death On Bottom
	
	if (deathOnBottom)
	{
		if ((hp != 0) and (y >= room_height + 24))
		{
			fellDown = true;
			death = true;
		}
	}
	
	//Off Screen Turning
	
	if (offScreenTurning)
	{
		if (x <= ((sprite_get_width(mask_index) / 2) + 1)) walkDirX = 1;
		if (x >= (room_width - ((sprite_get_width(mask_index) / 2) + 1))) walkDirX = -1;
		if (y <= ((sprite_get_height(mask_index) / 2) + 1)) walkDirY = 1;
		if (y >= (room_height - ((sprite_get_height(mask_index) / 2) + 1))) walkDirY = -1;
	}
	
	//Clamp Position
	
	if (clampPositionX) x = clamp(x,0 + (sprite_get_width(mask_index) / 2),room_width - (sprite_get_width(mask_index) / 2));
	if (clampPositionY) y = clamp(y,0 + (sprite_get_height(mask_index) / 2),room_height + 32 + (sprite_get_height(mask_index) / 2));
}