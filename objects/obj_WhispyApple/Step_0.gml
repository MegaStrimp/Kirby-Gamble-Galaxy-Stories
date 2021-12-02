///@description Main

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Get Inhaled
	
	if (state != 1) scr_Object_Inhale();
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//Movement
	
	if (active)
	{
		visible = true;
		
		if (place_meeting(x,y + 1,obj_Wall))
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
			active = true;
			hasGravity = true;
			mask_index = sprite_index;
			activeTimer = activeTimerMax;
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