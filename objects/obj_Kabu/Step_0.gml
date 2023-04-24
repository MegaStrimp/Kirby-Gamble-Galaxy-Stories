///@description Main

//Event Inherited

event_inherited();

#region Friction
if ((!childPauseHard) and ((grounded) or (!hasYCollision))) hsp = scr_Friction(hsp,decel);
#endregion

//Hurt Player

scr_Enemy_HurtsPlayer(dmg);

if (!childPause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//States
	
	switch (state)
	{
		//Horizontal Wave Movement
		
		case 0:
		if ((!hurt) and (!attack) and (!duck) and (!walkDuck))
		{
			if (parasol)
			{
				scr_AI_HorizontalWaveMovement(false);
			}
			else
			{
				scr_AI_HorizontalWaveMovement(false);
			}
		}
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if ((duck) or (walkDuck))
			{
				sprite_index = sprDuck;
			}
			else
			{
				sprite_index = sprWalk;
			}
		}
		break;
		
		//Stand Still and Jump
		
		case 1:
		if ((jumpState == 0) and (!hurt) and (!attack))
		{
			if ((jumpTimer == -1) and (grounded)) jumpTimer = 0;
		}
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if ((duck) or (walkDuck))
			{
				sprite_index = sprDuck;
			}
			else
			{
				sprite_index = sprWalk;
			}
		}
		break;
	}
	
	//Walk Duck
	
	if ((hasYCollision) and (!walkDuck) and (place_meeting(x,y + (1 + vspFinal),collisionY)) and (vsp > 1) and (!attack))
	{
		walkDuck = true;
		walkDuckTimer = walkDuckTimerMax;
		hsp = 0;
		scaleExX = .25;
		scaleExY = -.25;
		if (audio_is_playing(snd_SquishLow)) audio_stop_sound(snd_SquishLow);
		audio_play_sound(snd_SquishLow,0,false);
		var parDirection = irandom_range(0,359);
		var parScaleDir = 1;
		if ((parDirection > 90) and (parDirection <= 270))
		{
			parScaleDir = -1;
		}
		var parSquish = instance_create_depth(x,y,depth + 1,obj_Particle);
		parSquish.sprite_index = spr_Particle_SmallStar;
		parSquish.destroyTimer = 30;
		parSquish.spdBuiltIn = 6;
		parSquish.fricSpd = .6;
		parSquish.direction = parDirection;
		parSquish.dir = parScaleDir;
	}
	
	//Walk Duck Timer
	
	if (walkDuckTimer > 0)
	{
		walkDuckTimer -= 1;
	}
	else if (walkDuckTimer == 0)
	{
		walkDuck = false;
		walkDuckTimer = -1;
	}
	
	//Jump Timer
	
	if (!parasol)
	{
		if (jumpTimer > 0)
		{
			jumpTimer -= 1;
		}
		else if (jumpTimer == 0)
		{
			if ((!hurt) and (grounded) and (!place_meeting(x,y - jumpspeed,collisionY)))
			{
				switch (jumpState)
				{
					case 0:
					jump = true;
					duck = true;
					jumpState += 1;
					jumpTimer = 30;
					break;
				
					case 1:
					var parJump = instance_create_depth(x - (7 * dirX),y + 5,depth + 1,obj_Particle);
					parJump.sprite_index = spr_Particle_Jump;
					parJump.destroyAfterAnimation = true;
					parJump.spdBuiltIn = 6;
					parJump.fricSpd = .6;
					parJump.direction = 90 + (20 * dirX);
					scaleExX = -.25;
					scaleExY = .25;
					vsp = -jumpspeed;
					jump = false;
					duck = false;
					jumpState = 0;
					jumpTimer = jumpTimerMax;
					break;
				}
			}
			else
			{
				jump = false;
				duck = false;
				jumpTimer = jumpTimerMax;
			}
		}
	}
}
else
{
	image_speed = 0;
}