///@description Main

//Hurt Sprite

if (thrown)
{
	sprHurt = sprHurtCapless;
}
else
{
	sprHurt = -1;
}

//Event Inherited

event_inherited();

if (!childPause)
{
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//States
	
	switch (state)
	{
		//Capless
		
		case 0:
		if ((!hurt) and (!attack))
		{
			if (parasol)
			{
				scr_AI_HorizontalStraightMovement(false,true);
			}
			else
			{
				scr_AI_HorizontalStraightMovement(true,true);
			}
		}
		
		if (place_meeting(x,y + 1,collisionY))
		{
			if (audio_is_playing(snd_EnemyJump2)) audio_stop_sound(snd_EnemyJump2);
			audio_play_sound(snd_EnemyJump2,0,false);
			image_index = 0;
			vsp = -jumpspeed;
			dirXDummy *= -1;
		}
		
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if (dirXDummy == 1)
			{
				sprite_index = sprIdleR;
			}
			else
			{
				sprite_index = sprIdleL;
			}
		}
		break;
		
		//With Cap
		
		case 1:
		if ((!hurt) and (!attack))
		{
			scr_AI_HorizontalStraightMovement(false,true);
		}
		
		if (place_meeting(x,y + 1,collisionY))
		{
			if (audio_is_playing(snd_EnemyJump2)) audio_stop_sound(snd_EnemyJump2);
			audio_play_sound(snd_EnemyJump2,0,false);
			image_index = 0;
			vsp = -jumpspeed;
			if (thrown)
			{
				dirXDummy *= -1;
			}
			else
			{
				dirX *= -1;
				image_xscale = scale * dirX;
			}
		}
		
		//Attack
		
		if (thrown)
		{
			if (instance_exists(shroom))
			{
				if ((shroom.vsp > 0) and (place_meeting(x,y,shroom)) and (shroom.y >= y - 9))
				{
					instance_destroy(shroom);
					thrown = false;
					attackStopTimer = 1;
				}
			}
			else
			{
				thrown = false;
				attack = false;
				attackStopTimer = -1;
				attackTimer = -1;
				state = 0;
			}
		}
		
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if (thrown)
			{
				if (dirXDummy == 1)
				{
					sprite_index = sprIdleR;
				}
				else
				{
					sprite_index = sprIdleL;
				}
			}
			else
			{
				sprite_index = sprShroomIdle;
			}
		}
		break;
	}
	
	//Attack Stop Timer
	
	if (attackStopTimer > 0)
	{
		attackStopTimer -= 1;
	}
	else if (attackStopTimer == 0)
	{
		if (attackCount < attackCountMax)
		{
			attack = true;
			attackCount += 1;
			attackTimer = floor(attackTimerMax / 2);
			attackStopTimer = -1;
		}
		else
		{
			attack = false;
			attackCount = 0;
			attackCountMax = random_range(1,3);
			attackStopTimer = attackStopTimerMax;
		}
	}
	
	//Attack Timer
	
	if (attackTimer > 0)
	{
		attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		if (audio_is_playing(snd_EnemyJump1)) audio_stop_sound(snd_EnemyJump1);
		audio_play_sound(snd_EnemyJump1,0,false);
		shroom = instance_create_depth(x - 1,y - 9,depth - 1,obj_CappyShroom);
		shroom.owner = id;
		shroom.sprite_index = sprShroom;
		shroom.paletteIndex = paletteIndex;
		shroom.vsp = shroomLaunchSpd;
		dirX = walkDirX;
		image_xscale = scale * dirX;
		thrown = true;
		attackTimer = -1;
	}
}
else
{
	image_speed = 0;
}