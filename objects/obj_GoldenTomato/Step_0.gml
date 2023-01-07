///@description Main

if (!global.pause)
{
	//Shake
	
	if (place_meeting(x,y,obj_InhaleMask))
	{
		shake = 1;
	}
	else
	{
		shake = 0;
	}

	//Destroy

	if ((!destroy) and (!followTarget) and (place_meeting(x,y,obj_Player)))
	{
		if (audio_is_playing(snd_FoodItem)) audio_stop_sound(snd_FoodItem);
		audio_play_sound(snd_FoodItem,0,false);
		
		var collidedPlayer = instance_place(x,y,obj_Player);
		var goldenTomatoPointer = global.goldenTomatoAmountP1;
		switch (collidedPlayer.player)
		{
			case 0:
			var goldenTomatoPointer = global.goldenTomatoAmountP1;
			global.healthP1 = global.healthP1Max;
			if (goldenTomatoPointer < global.goldenTomatoAmountMax) global.goldenTomatoAmountP1 += 1;
			break;
			
			case 1:
			var goldenTomatoPointer = global.goldenTomatoAmountP2;
			global.healthP2 = global.healthP2Max;
			if (goldenTomatoPointer < global.goldenTomatoAmountMax) global.goldenTomatoAmountP2 += 1;
			break;
			
			case 2:
			var goldenTomatoPointer = global.goldenTomatoAmountP3;
			global.healthP3 = global.healthP3Max;
			if (goldenTomatoPointer < global.goldenTomatoAmountMax) global.goldenTomatoAmountP3 += 1;
			break;
			
			case 3:
			var goldenTomatoPointer = global.goldenTomatoAmountP4;
			global.healthP4 = global.healthP4Max;
			if (goldenTomatoPointer < global.goldenTomatoAmountMax) global.goldenTomatoAmountP4 += 1;
			break;
		}
		
		if (goldenTomatoPointer >= 2)
		{
			var particle = instance_create_depth(x,y,depth,obj_Particle);
			particle.sprite_index = spr_Particle_Sparkle1;
			particle.destroyAfterAnimation = true;
			points *= 5;
			destroy = true;
		}
		else
		{
			var particle = instance_create_depth(x,y,depth,obj_Particle);
			particle.sprite_index = spr_Particle_Sparkle1;
			particle.destroyAfterAnimation = true;
			//flashTimer = flashTimerMax;
			//followTarget = true;
		}
	}
	
	if (destroy)
	{
		global.points += points;
		global.goldenTomato = true;
		instance_destroy();
	}
	
	if (followTarget)
	{
		if (instance_exists(obj_Hud))
		{
			if (x <= camera_get_view_x(gameView) + obj_Hud.goldenTomatoPosX + 14) and (y <= camera_get_view_y(gameView) + obj_Hud.goldenTomatoPosY + 15)
			{
				destroy = true;
			}
			else
			{
				move_towards_point(camera_get_view_x(gameView) + obj_Hud.goldenTomatoPosX + 12,camera_get_view_y(gameView) + obj_Hud.goldenTomatoPosY + 13,6);
			}
		}
		else
		{
			destroy = true;
		}
		
		//Flash Timer
		
		if (flashTimer > 0)
		{
			flashTimer -= 1;
		}
		else if (flashTimer == 0)
		{
			if (flash)
			{
				flash = false;
			}
			else
			{
				flash = true;
			}
			flashTimer = flashTimerMax;
		}
	}
	else
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
	
	//Animation
	
	image_speed = 1;
}
else
{
	image_speed = 0;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}