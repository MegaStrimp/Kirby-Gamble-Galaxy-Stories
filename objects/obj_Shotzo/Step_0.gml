///@description Main

//Event Inherited

event_inherited();

if (!childPause)
{
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Parasol
	
	if (parasol)
	{
		scr_AI_HorizontalWaveMovement(false);
	}
	else
	{
		hsp = 0;
	}
	
	//States
	
	switch (state)
	{
		//Stand Still and Shoot
		
		case 0:
		sprite_index = sprIdle;
		switch (aim)
		{
			case 0:
			targetImageIndex = 0;
			break;
			
			case 1:
			targetImageIndex = 2;
			break;
			
			case 2:
			targetImageIndex = 4;
			break;
			
			case 3:
			targetImageIndex = 6;
			break;
			
			case 4:
			targetImageIndex = 8;
			break;
		}
		break;
		
		//Follow Target and Shoot
		
		case 1:
		if (instance_exists(target))
		{
			var facingPoint = point_direction(x,y,instance_nearest(x,y,target).x,instance_nearest(x,y,target).y);
		
			inRange = true;
			if (dirY == 1)
			{
		        if ((facingPoint <= 22.5) or (facingPoint >= 315))
		        {
		            aim = 0;
		        }
		        if ((facingPoint >= 22.5) and (facingPoint < 67.5))
		        {
		            aim = 1;
		        }
		        if ((facingPoint >= 67.5) and (facingPoint < 112.5))
		        {
		            aim = 2;
		        }
		        if ((facingPoint >= 112.5) and (facingPoint < 157.5))
		        {
		            aim = 3;
		        }
		        if ((facingPoint >= 157.5) and (facingPoint <= 225))
		        {
		            aim = 4;
		        }
		        if ((facingPoint > 225) and (facingPoint < 315))
		        {
		            aim = 2;
		            inRange = false;
		        }
			}
			else if (dirY == -1)
			{
		        if ((facingPoint <= 22.5) or (facingPoint >= 315))
		        {
		            aim = 0;
		        }
		        if ((facingPoint >= 292.5) and (facingPoint < 337.5))
		        {
		            aim = 1;
		        }
		        if ((facingPoint >= 247.5) and (facingPoint < 292.5))
		        {
		            aim = 2;
		        }
		        if ((facingPoint >= 202.5) and (facingPoint < 247.5))
		        {
		            aim = 3;
		        }
		        if ((facingPoint >= 157.5) and (facingPoint <= 225))
		        {
		            aim = 4;
		        }
		        if ((facingPoint > 45) and (facingPoint < 135))
		        {
		            aim = 2;
		            inRange = false;
		        }
			}
			
			sprite_index = sprIdle;
			switch (aim)
			{
				case 0:
				targetImageIndex = 0;
				break;
				
				case 1:
				targetImageIndex = 2;
				break;
				
				case 2:
				targetImageIndex = 4;
				break;
				
				case 3:
				targetImageIndex = 6;
				break;
				
				case 4:
				targetImageIndex = 8;
				break;
			}
		}
		break;
	}
	
	//Aim Timer
	
	if ((!invincible) and (dir != aim))
	{
		if (aimTimer > 0)
		{
			aimTimer -= 1;
		}
		else if (aimTimer == 0)
		{
			dir += sign(aim - dir)
			attackTimer = attackTimerMax;
			aimTimer = aimTimerMax;
		}
	}
	
	//Attack Timer
	
	if (!((stopOutsideScreen) and (scr_OutsideView())) and (!place_meeting(x,y,collisionX)) and (!place_meeting(x,y,collisionY)))
	{
		if (attackTimer > 0)
		{
			attackTimer -= 1;
			if (attackTimer <= 30)
			{
				invincible = true;
				if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
			}
		}
		else if (attackTimer == 0)
		{
			invincible = false;
			if (audio_is_playing(snd_Cannonball)) audio_stop_sound(snd_Cannonball);
			audio_play_sound(snd_Cannonball,0,false);
			shakeX = 4;
			var cannonSpd = 2.5;
			var cannonball = instance_create_depth(x + (16 * dirX),y - (4 * dirY),depth,obj_Projectile_Cannonball);
			cannonball.owner = id;
			cannonball.enemy = true;
			cannonball.destroyableByEnemy = false;
			cannonball.hurtsObject = false;
			cannonball.hurtsEnemy = false;
			cannonball.hurtsPlayer = true;
			switch (aim)
			{
				//Right
			
				case 0:
				cannonball.x = x + (16 * dirX);
				cannonball.y = y - (4 * dirY);
				cannonball.movespeed = (cannonSpd * dirX);
				break;
			
				//Up Right
			
				case 1:
				cannonball.x = x + (13 * dirX);
				cannonball.y = y - (17 * dirY);
				cannonball.movespeed = (cannonSpd * dirX);
				cannonball.jumpspeed = (cannonSpd * dirY);
				break;
			
				//Up
			
				case 2:
				cannonball.x = x;
				cannonball.y = y - (17 * dirY);
				cannonball.jumpspeed = (cannonSpd * dirY);
				break;
			
				//Up Left
			
				case 3:
				cannonball.x = x - (13 * dirX);
				cannonball.y = y - (17 * dirY);
				cannonball.movespeed = -(cannonSpd * dirX);
				cannonball.jumpspeed = (cannonSpd * dirY);
				break;
			
				//Left
			
				case 4:
				cannonball.x = x - (16 * dirX);
				cannonball.y = y - (4 * dirY);
				cannonball.movespeed = -(cannonSpd * dirX);
				break;
			}
		
			var particle = instance_create_depth(cannonball.x,cannonball.y,depth - 1,obj_Particle);
			particle.sprite_index = spr_Particle_ShotzoShoot;
			particle.hsp = 6 * -(sign(cannonball.movespeed));
			particle.vsp = 6 * (sign(cannonball.jumpspeed));
			particle.destroyAfterAnimation = true;
		
			shootCount += 1;
			if (shootCount >= shootCountMax)
			{
				shootCount = 0;
				attackTimer = attackTimerMax;
			}
			else
			{
				attackTimer = attackTimerMin;
			}
		}
	}
	
	//Animation
	
	if ((hurt) and (sprHurt != -1))
	{
		image_speed = 1;
		sprite_index = sprHurt;
	}
	else
	{
		image_speed = 1;
		sprite_index = sprIdle;
		finalIndex = lerp(finalIndex,targetImageIndex,.1);
		image_index = round(finalIndex);
	}
}
else
{
	image_speed = 0;
}