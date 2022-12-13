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
		switch (sprite_index)
		{
			case obj_Food:
			if ((image_index == 41) or (image_index == 42))
			{
				var rng = irandom_range(0,99);
				if (rng == 0)
				{
					if (audio_is_playing(snd_CannedFood)) audio_stop_sound(snd_CannedFood);
					audio_play_sound(snd_CannedFood,0,false);
				}
			}
			break;
			
			case spr_Food_AmongUs:
			if (audio_is_playing(snd_AmongUs)) audio_stop_sound(snd_AmongUs);
			audio_play_sound(snd_AmongUs,0,false);
			break;
			
			case spr_Food_FishTaco:
			if (audio_is_playing(snd_FishTaco)) audio_stop_sound(snd_FishTaco);
			audio_play_sound(snd_FishTaco,0,false);
			break;
		}
		
		var collidedPlayer = instance_place(x,y,obj_Player);
		if (collidedPlayer.player == 0)
		{
			//global.healP1Mod = global.healthP1;
			global.healthP1 += round(global.healthP1Max*0.1);
			//global.healP1Diff += global.healthP1Max*0.1;
		}
		else
		{
			//global.healP2Mod = global.healthP2;
			global.healthP2 += round(global.healthP2Max*0.1);
			//global.healP2Diff += global.healthP2Max*0.1;
		}
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
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}