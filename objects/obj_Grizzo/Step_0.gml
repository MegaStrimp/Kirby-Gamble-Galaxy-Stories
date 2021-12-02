///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Grizzo_Normal_Idle;
		sprWalk = spr_Grizzo_Normal_Walk;
		sprDash = spr_Grizzo_Normal_Dash;
		sprSleep = spr_Grizzo_Normal_Sleep;
		sprHurt = spr_Grizzo_Normal_Hurt;
		break;
	}
	if (state == 1) attackTimer = 0;
}

//Variables

offScreenTurning = !attack;

//Event Inherited

event_inherited();

if (!global.pause)
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
			gettingInhaled = false;
		}
		if (inhalePower >= inhalePowerMax) scr_Object_Inhale();
	}
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
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
				scr_AI_HorizontalStraightMovement(true,true);
			}
		}
		
		if (attackState == 1) hsp = 3 * walkDirX;
		
		if ((place_meeting(x,y + 1,collisionY)) and (!hurt) and (!attack) and (!gettingInhaled))
		{
			if (audio_is_playing(snd_EnemyJump2)) audio_stop_sound(snd_EnemyJump2);
			audio_play_sound(snd_EnemyJump2,0,false);
			vsp = -jumpspeed;
		}
		
		//Animation
		
		if (((hurt) or (gettingInhaled)) and (sprHurt != "self"))
		{
			image_speed = 1;
			
			sprite_index = sprHurt;
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
		break;
		
		//Sleep
		
		case 1:
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != "self"))
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
				attack = true;
				if ((place_meeting(x,y + 1,collisionY)) and (vsp >= 0))
				{
				attackState = 1;
				attackTimer = 60;
				}
				break;
				
				case 1:
				attackState = 2;
				attackTimer = 45;
				break;
				
				case 2:
				attack = false;
				attackState = 0;
				attackTimer = attackTimerMax;
				break;
			}
		}
	}
	else
	{
		attack = false;
		attackState = 0;
		attackTimer = attackTimerMax;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}