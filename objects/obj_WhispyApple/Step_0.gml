///@description Main

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Get Inhaled
	
	if (state != 1) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Movement
	
	if (active)
	{
		visible = true;
		
		if (place_meeting(x,y + 1,obj_ParentWall))
		{
			vsp = -jumpspeed;
			if (hsp == 0) hsp = movespeed * dirX;
			if (state == 1) imageAngle += (45 * dirX);
		}
		
		if (state == 0)
		{
			if (hsp == 0)
			{
				image_speed = 0;
			}
			else
			{
				image_speed = 1;
			}
		}
	}
	else
	{
		if (instance_exists(owner))
		{
			hsp = owner.hsp;
			vsp = owner.vsp;
		}
		
		//Active Timer
		
		if (activeTimer > 0)
		{
			activeTimer -= 1;
		}
		else if (activeTimer == 0)
		{
			switch (objValue)
			{
				#region Apple
				case 0:
				active = true;
				hasGravity = true;
				mask_index = sprite_index;
				break;
				#endregion
				
				#region Gordo
				case 1:
				var obj = instance_create_depth(x,y,depth,obj_Gordo);
				obj.state = 3;
				obj.walkDirX = owner.dirX;
				obj.destroyOutsideView = true;
				instance_destroy();
				break;
				#endregion
				
				#region Como
				case 2:
				var obj = instance_create_depth(x,y,depth,obj_Como);
				instance_destroy();
				break;
				#endregion
				
				#region Waddle Dee
				case 3:
				var obj = instance_create_depth(x,y,depth,obj_WaddleDee);
				obj.state = 1;
				obj.dirX = owner.dirX;
				obj.walkDirX = owner.dirX;
				obj.destroyOutsideView = true;
				instance_destroy();
				break;
				#endregion
			}
			activeTimer = -1;
		}
		
		//Flash Timer
		
		if (flashTimer > 0)
		{
			flashTimer -= 1;
		}
		else if (flashTimer == 0)
		{
			if (visible)
			{
				visible = false;
			}
			else
			{
				visible = true;
			}
			flashTimer = flashTimerMax;
		}
		
		image_speed = 0;
	}
}
else
{
	image_speed = 0;
}