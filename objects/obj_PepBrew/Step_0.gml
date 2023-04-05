///@description Main

if (!global.pause)
{
	//Get Inhaled

	scr_Object_Inhale(enemy);

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

	if (place_meeting(x,y,obj_Player))
	{
		if (audio_is_playing(snd_FoodItem)) audio_stop_sound(snd_FoodItem);
		audio_play_sound(snd_FoodItem,0,false);
		var collidedPlayer = instance_place(x,y,obj_Player);
		
		switch (collidedPlayer.player)
		{
			case 0:
			global.healthP1 += round(global.healthP1Max * .5);
			break;
			
			case 1:
			global.healthP2 += round(global.healthP2Max * .5);
			break;
			
			case 2:
			global.healthP3 += round(global.healthP3Max * .5);
			break;
			
			case 3:
			global.healthP4 += round(global.healthP4Max * .5);
			break;
		}
		
		if (ds_exists(global.collectibleTracker,ds_type_list)) ds_list_add(global.collectibleTracker,id);
		
		global.points += points;
		
		instance_destroy();
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
	
	if (auraTimer > 0)
	{
		auraTimer -= 1;
	}
	else if (auraTimer == 0)
	{
		if (hasAura)
		{
			hasAura = false;
		}
		else
		{
			hasAura = true;
		}
		auraTimer = auraTimerMax;
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