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
		//Horizontal Straight Movement With Hops
		
		case 0:
		if ((!hurt) and (!attack) and (!duck))
		{
			scr_AI_HorizontalStraightMovement(true,true);
		}
		
		if (grounded)
		{
			duck = true;
			if (jumpTimer == -1) jumpTimer = jumpTimerMax;
		}
		
		if ((hurt) and (sprHurt != -1))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			image_speed = 1;
			
			if (grounded)
			{
				if (duck)
				{
					sprite_index = sprDuck;
				}
				else
				{
				    sprite_index = sprIdle;
				}
			}
			else
			{
			    if (vsp < 0)
				{
					sprite_index = sprJump;
				}
				else
				{
					sprite_index = sprIdle;
				}
			}
		}
		break;
	}
	
	//Walk Duck
	
	if ((place_meeting(x,y + (1 + vspFinal),collisionY)) and (vsp > 1))
	{
		scaleExX = .25;
		scaleExY = -.25;
	}
	
	//Jump Timer
	
	if (jumpTimer > 0)
	{
		jumpTimer -= 1;
	}
	else if (jumpTimer == 0)
	{
		if ((!hurt) and (grounded) and (!place_meeting(x,y - jumpspeed,collisionY)))
		{
			if (audio_is_playing(snd_EnemyJump2)) audio_stop_sound(snd_EnemyJump2);
			audio_play_sound(snd_EnemyJump2,0,false);
			var parJump = instance_create_depth(x - (7 * dirX),y + 5,depth + 1,obj_Particle);
			parJump.sprite_index = spr_Particle_Jump;
			parJump.destroyAfterAnimation = true;
			parJump.spdBuiltIn = 6;
			parJump.fricSpd = .6;
			parJump.direction = 90 + (20 * dirX);
			image_index = 0;
			scaleExX = -.25;
			scaleExY = .25;
			vsp = -jumpspeed;
			jump = false;
			duck = false;
			jumpTimer = -1;
		}
	}
}
else
{
	image_speed = 0;
}