///@description Main

//Variables

offScreenTurning = !attack;

//Event Inherited

event_inherited();

if (!childPause)
{
	if (!parasol)
	{
		if (place_meeting(x,y,obj_InhaleMask))
		{
			gettingInhaled = true;
			inhalePower += 1;
			if (inhalePower > inhalePowerMax) inhalePower = inhalePowerMax;
			shakeX = 2;
		}
		else
		{
			shakeX = 0;
			inhalePower = 0;
			gettingInhaled = false;
		}
		if (inhalePower >= inhalePowerMax) scr_Object_Inhale(enemy);
	}
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//States
	
	switch (state)
	{
		//Walk
		
		case 0:
		if ((!hurt) and (!attack) and (!gettingInhaled))
		{
			if (parasol)
			{
				scr_AI_HorizontalStraightMovement(false,true);
			}
			else
			{
				scr_AI_HorizontalStraightMovement(!attackHop,true);
			}
		}
		
		if (attackState == 1)
		{
			if (particleTimer == -1) particleTimer = particleTimerMax;
			hsp = 3 * walkDirX;
		}
		
		if ((place_meeting(x,y + 1,collisionY)) and (!hurt) and (!attackHop) and (!gettingInhaled))
		{
			if ((attackTimer == 0) and (attackState == 0))
			{
				walkDirX *= -1;
				attackHop = true;
			}
			if (!attack)
			{
				if (audio_is_playing(snd_EnemyJump5)) audio_stop_sound(snd_EnemyJump5);
				audio_play_sound(snd_EnemyJump5,0,false);
				vsp = -jumpspeed;
			}
		}
		
		//Animation
		
		if (((hurt) or (gettingInhaled)) and (sprHurt != -1))
		{
			image_speed = 1;
			
			sprite_index = sprHurt;
		}
		else
		{
			if (attack)
			{
				if (attackState == 1)
				{
					image_speed = 1;
					sprite_index = sprDash;
				}
				else
				{
					sprite_index = sprIdle;
				}
			}
			else
			{
				image_speed = 0;
				
				if (place_meeting(x,y + 3,collisionY))
				{
					sprite_index = sprWalk;
					image_index = 2;
				}
				else
				{
					if (sign(vsp) == -1)
					{
						sprite_index = sprWalk;
						image_index = 0;
					}
					else
					{
						sprite_index = sprWalk;
						image_index = 1;
					}
				}
			}
		}
		break;
		
		//Sleep
		
		case 1:
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			sprite_index = sprSleep;
		}
		break;
	}
	
	//Attack Timer
	
	if !((hurt) or (gettingInhaled))
	{
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			switch (attackState)
			{
				case 0:
				if ((place_meeting(x,y + 1,collisionY)) and (vsp >= 0) and (attackHop))
				{
					if (audio_is_playing(snd_GrizzoDash)) audio_stop_sound(snd_GrizzoDash);
					audio_play_sound(snd_GrizzoDash,0,false);
					attack = true;
					attackHop = false;
					walkDirX = dirX;
					attackState = 1;
					attackTimer = 60;
				}
				else
				{
					attackTimer = 0;
				}
				break;
				
				case 1:
				attackState = 2;
				attackTimer = 30;
				break;
				
				case 2:
				attack = false;
				attackState = 0;
				attackTimer = attackTimerMax + 30;
				break;
			}
		}
	}
	else
	{
		attack = false;
		attackHop = false;
		attackState = 0;
		attackTimer = attackTimerMax;
	}
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var par = instance_create_depth(x - (22 * dirX),y + 4,depth - 1,obj_Particle);
		par.sprite_index = spr_Particle_Cloud1;
		par.direction = choose(135,225);
		par.imageSpeed = 1;
		par.spdBuiltIn = 4;
		par.fricSpd = .4;
		par.destroyAfterAnimation = true;
		particleTimer = -1;
	}
}
else
{
	image_speed = 0;
}