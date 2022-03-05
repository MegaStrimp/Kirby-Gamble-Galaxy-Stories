///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_WaddleDoo_Normal_Idle;
		sprWalk = spr_WaddleDoo_Normal_Walk;
		sprDuck = spr_WaddleDoo_Normal_Duck;
		sprJump = spr_WaddleDoo_Normal_Jump;
		sprFall = spr_WaddleDoo_Normal_Fall;
		sprSwing = spr_WaddleDoo_Normal_Swing;
		sprClimbUp = spr_WaddleDoo_Normal_ClimbUp;
		sprClimbDown = spr_WaddleDoo_Normal_ClimbDown;
		sprCharge = spr_WaddleDoo_Normal_Charge;
		sprAttack = spr_WaddleDoo_Normal_Attack;
		sprFlashingEye = spr_WaddleDoo_Normal_FlashingEye;
		sprHurt = spr_WaddleDoo_Normal_Hurt;
		break;
	}
}

//Stop Beam Sound

if ((attackState == 2) and (attack))
{
	if ((hurt) or (((place_meeting(x,y,obj_InhaleMask)) and (instance_number(obj_EatMe) < 5)) and (!parasol)))
	{
		audio_stop_sound(sndBeam);
		attack = false;
		attackState = 0;
		attackTimer = attackTimerMax;
	}
	
	if (hasSpawner)
	{
		var x1 = camera_get_view_x(gameView) - spawnerRange;
		var y1 = camera_get_view_y(gameView) - spawnerRange;
		var x2 = camera_get_view_x(gameView) + camera_get_view_width(gameView) + spawnerRange;
		var y2 = camera_get_view_y(gameView) + camera_get_view_height(gameView) + spawnerRange;
		
		if (!point_in_rectangle(x,y,x1,y1,x2,y2))
		{
			audio_stop_sound(sndBeam);
		}
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale();
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
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
		
		if (parasol)
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
				
			sprite_index = sprSwing;
		}
		else
		{
			if ((hurt) and (sprHurt != "self"))
			{
				image_speed = 1;
				sprite_index = sprHurt;
			}
			else
			{
				if (!attack)
				{
					if (abs(hsp) < (movespeed / 2))
					{
						image_speed = 0;
					}
					else
					{
						image_speed = 1;
					}
					if (place_meeting(x,y + 1,collisionY))
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
				else
				{
					image_speed = 1;
					if (attackState == 1)
					{
						sprite_index = sprCharge;
					}
					else
					{
						sprite_index = sprAttack;
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
		
		if (parasol)
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
				
			sprite_index = sprSwing;
		}
		else
		{
			if ((hurt) and (sprHurt != "self"))
			{
				image_speed = 1;
				sprite_index = sprHurt;
			}
			else
			{
				image_speed = 1;
			
				if (!attack)
				{
					if (place_meeting(x,y + 1,collisionY))
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
				else
				{
					if (attackState == 1)
					{
						sprite_index = sprCharge;
					}
					else
					{
						sprite_index = sprAttack;
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
		
		if ((hurt) and (sprHurt != "self"))
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
	
	//Eye Flash
	
	if ((attackState != 2) and (!attack))
	{
		eyeFlash = false;
		eyeFlashTimer = -1;
	}
	
	//Eye Flash Timer
	
	if (!parasol)
	{
		if (eyeFlashTimer > 0)
		{
			eyeFlashTimer -= 1;
		}
		else if (eyeFlashTimer == 0)
		{
			if (eyeFlash)
			{
				eyeFlash = false;
			}
			else
			{
				eyeFlash = true;
			}
			eyeFlashTimer = eyeFlashTimerMax;
		}
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
	
	if ((!attack) and (!parasol))
	{
		if (jumpTimer > 0)
		{
			jumpTimer -= 1;
		}
		else if (jumpTimer == 0)
		{
			if ((!hurt) and (place_meeting(x,y + 1,collisionY)) and (!place_meeting(x,y - jumpspeed,collisionY)))
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
					if (audio_is_playing(snd_EnemyJump2)) audio_stop_sound(snd_EnemyJump2);
					audio_play_sound(snd_EnemyJump2,0,false);
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
	
	//Attack Timer
	
	if ((!jump) and (!parasol))
	{
		if (attackTimer > 0)
		{
			attackTimer -= 1;
		}
		else if (attackTimer == 0)
		{
			hsp = 0;
			switch (attackState)
			{
				case 0:
				attack = true;
				attackState += 1;
				attackTimer = 60;
				break;
				
				case 1:
				attackState += 1;
				eyeFlash = true;
				eyeFlashTimer = eyeFlashTimerMax;
				sndBeam = audio_play_sound(snd_Beam,0,false);
				attackTimer = 75;
				for (var i = 0; i < 4; i++)
				{
					var projBeam = instance_create_depth(-100,-100,depth,obj_Projectile_Beam);
					projBeam.owner = id;
				    projBeam.angle = 90 + ((40 - (i * 10)) * -dirX);
					projBeam.spd = (1.2 + (i * .2)) * -dirX;
					projBeam.orbit = 25 + (i * 15);
					projBeam.enemy = true;
					projBeam.centerY = -4;
					projBeam.hurtsObject = false;
					projBeam.hurtsEnemy = false;
					projBeam.hurtsPlayer = true;
					projBeam.destroyableByWall = false;
					projBeam.destroyableByEnemy = false;
					projBeam.destroyableByObject = false;
					projBeam.hasLimit = false;
					projBeam.character = 1;
					projBeam.sprite_index = spr_Projectile_Beam_Enemy;
					projBeam.particleTimer = -1;
					projBeam.destroyTimer = 60;
				}
				break;
				
				case 2:
				if (audio_is_playing(sndBeam)) audio_stop_sound(sndBeam);
				attack = false;
				attackState = 0;
				attackTimer = attackTimerMax;
				break;
			}
		}
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}