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
				scr_AI_HorizontalWaveMovement(true);
			}
		}
		
		if (hurt) hspDummy = 0;
		
		if ((hurt) and (sprHurt != -1))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			if (parasol)
			{
				if (movespeed != 0)
				{
					image_speed = 0;
					
					if (sign(dirX) == 1)
					{
						if (abs(hsp) < (movespeed / 1.25))
						{
							if (sign(walkDirX) == 1)
							{
								image_index = 0;
							}
							else
							{
								image_index = 2;
							}
						}
						else
						{
							image_index = 1;
						}
					}
					else
					{
						if (abs(hsp) < (movespeed / 1.25))
						{
							if (sign(walkDirX) == 1)
							{
								image_index = 2;
							}
							else
							{
								image_index = 0;
							}
						}
						else
						{
							image_index = 1;
						}
					}
				}
				else
				{
					image_speed = 1;
				}
				
				sprite_index = sprParasol;
			}
			else
			{
				if (abs(hsp) < (movespeed / 2))
				{
					image_speed = 0;
				}
				else
				{
					image_speed = 1;
				}
				
				if (grounded)
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
				else
				{
				    if (vsp < 0)
					{
						sprite_index = sprJump;
					}
					else
					{
						sprite_index = sprFall;
					}
				}
			}
		}
		break;
		
		//Horizontal Straight Movement
		
		case 1:
		if ((!hurt) and (!attack) and (!duck) and (!walkDuck))
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
		
		if (hurt) hspDummy = 0;
		
		if ((hurt) and (sprHurt != -1))
		{
			image_speed = 1;
			sprite_index = sprHurt;
		}
		else
		{
			image_speed = 1;
			
			if (parasol)
			{
				if (movespeed != 0)
				{
					image_speed = 0;
					
					if (sign(dirX) == 1)
					{
						if (abs(hsp) < (movespeed / 1.25))
						{
							if (sign(walkDirX) == 1)
							{
								image_index = 0;
							}
							else
							{
								image_index = 2;
							}
						}
						else
						{
							image_index = 1;
						}
					}
					else
					{
						if (abs(hsp) < (movespeed / 1.25))
						{
							if (sign(walkDirX) == 1)
							{
								image_index = 2;
							}
							else
							{
								image_index = 0;
							}
						}
						else
						{
							image_index = 1;
						}
					}
				}
				else
				{
					image_speed = 1;
				}
				
				sprite_index = sprParasol;
			}
			else
			{
				if (abs(hsp) < (movespeed / 2))
				{
					image_speed = 0;
				}
				else
				{
					image_speed = 1;
				}
				
				if (grounded)
				{
					if ((duck) or (walkDuck))
					{
						sprite_index = sprDuck;
					}
					else
					{
					    if (hsp == 0)
						{
							sprite_index = sprIdle;
						}
						else
						{
							sprite_index = sprWalk;
						}
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
						sprite_index = sprFall;
					}
				}
			}
		}
		break;
		
		//Climbing
		
		case 2:
		hasGravity = false;
		hasXKnockback = false;
		hasYKnockback = false;
		hasXCollision = false;
		hasYCollision = false;
		walkDuckTimer = -1;
		jumpTimerMax = -1;
		
		if ((!hurt) and (!attack) and (!duck) and (!walkDuck))
		{
			if (sign(climbDir) == -1)
			{
				if (place_meeting(x,y - (sprite_get_height(spr_Ladder) / 1.5),obj_Ladder))
				{
					vsp = -(jumpspeed / 6);
					grounded = false;
				}
				else
				{
					if (climbTimer == -1) climbTimer = climbTimerMax;
					vsp = 0;
				}
			}
			else if (sign(climbDir) == 1)
			{
				if (place_meeting(x,y + (sprite_get_height(spr_Ladder) / 1.25),obj_Ladder))
				{
					vsp = (jumpspeed / 3);
				}
				else
				{
					if (climbTimer == -1) climbTimer = climbTimerMax;
					vsp = 0;
				}
			}
			else
			{
				vsp = 0;
			}
		}
		else
		{
			hsp = 0;
		}
		
		if ((hurt) and (sprHurt != -1))
		{
			image_speed = 1;
		}
		else
		{
			if (vsp == 0)
			{
				image_speed = 0;
			}
			else
			{
				image_speed = 1;
			}
		}
		
		if (sign(vsp) < 0)
		{
			sprite_index = sprClimbUp;
		}
		else if (sign(vsp) > 0)
		{
			sprite_index = sprClimbDown;
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
				hsp = 0;
				switch (jumpState)
				{
					case 0:
					jump = true;
					duck = true;
					jumpState += 1;
					jumpTimer = 30;
					break;
				
					case 1:
					var jumpSound = choose(snd_WaddleDee1,snd_WaddleDee6,snd_WaddleDee7,snd_WaddleDee8,snd_WaddleDee9,snd_WaddleDee10,snd_WaddleDee11);
					audio_play_sound(jumpSound,0,false);
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
				jumpState = 0;
				jump = false;
				duck = false;
				jumpTimer = jumpTimerMax;
			}
		}
	}
	
	//Climb Timer
	
	if (climbTimer > 0)
	{
		climbTimer -= 1;
	}
	else if (climbTimer == 0)
	{
		image_index = 0;
		climbDir *= -1;
		climbTimer = -1;
	}
}
else
{
	image_speed = 0;
}