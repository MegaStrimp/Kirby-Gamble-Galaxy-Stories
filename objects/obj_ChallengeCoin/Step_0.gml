///@description Main

if (!global.pause)
{
	//Setup Timer
	
	if (setupTimer > 0)
	{
		setupTimer -= 1;
	}
	else if (setupTimer == 0)
	{
		switch (character)
		{
			//Bronze
			
			case 0:
			sprite_index = spr_ChallengeCoin_Normal_Bronze;
			challengePoints = 1;
			sfx = snd_PointStar_Low;
			break;
			
			//Silver
			
			case 1:
			sprite_index = spr_ChallengeCoin_Normal_Silver;
			challengePoints = 5;
			sfx = snd_PointStar_Medium;
			break;
			
			//Gold
			
			case 2:
			sprite_index = spr_ChallengeCoin_Normal_Gold;
			challengePoints = 10;
			sfx = snd_PointStar_Medium;
			break;
		}
		setupTimer = -1;
	}
	
	//Shake
	
	if (place_meeting(x,y,obj_InhaleMask))
	{
		shake = 1;
	}
	else
	{
		shake = 0;
	}
	
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

	//Destroy

	if ((!followTarget) and (place_meeting(x,y,obj_Player))) destroy = true;
	
	if (destroy)
	{
		if (audio_is_playing(sfx)) audio_stop_sound(sfx);
		audio_play_sound(sfx,0,false);
		if (!followTarget)
		{
			var particle = instance_create_depth(x,y,depth,obj_Particle);
			particle.sprite_index = spr_Particle_Sparkle1;
			particle.destroyAfterAnimation = true;
		}
		instance_destroy();
	}
	
	if (followTarget)
	{
		switch (followState)
		{
			case 0:
			if (followTimer < 10)
			{
				followTimer += 1;
			}
			else
			{
				followState = 1;
			}
			break;
			
			case 1:
			if (!place_meeting(x,y,target))
			{
				if (followSpd < 8) followSpd += .2;
				if (instance_exists(target)) move_towards_point(target.x,target.y,followSpd);
			}
			else
			{
				followState = 2;
			}
			break;
			
			case 2:
			if (instance_exists(obj_Hud))
			{
				if (x <= camera_get_view_x(gameView) + obj_Hud.starsPosX + 14) and (y <= camera_get_view_y(gameView) + obj_Hud.starsPosY + 15)
				{
					destroy = true;
				}
				else
				{
					move_towards_point(camera_get_view_x(gameView) + obj_Hud.starsPosX + 12,camera_get_view_y(gameView) + obj_Hud.starsPosY + 13,6);
				}
			}
			else
			{
				destroy = true;
			}
			break;
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
	}
	
	//Animation
	
	image_speed = 1;
}
else
{
	image_speed = 0;
	shake = 0;
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}