///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_BurningLeo_Normal_Idle;
		sprWalk = spr_BurningLeo_Normal_Walk;
		sprDuck = spr_BurningLeo_Normal_Duck;
		sprJump = spr_BurningLeo_Normal_Jump;
		sprFall = spr_BurningLeo_Normal_Fall;
		sprCharge = spr_BurningLeo_Normal_Charge;
		sprAttack = spr_BurningLeo_Normal_Attack;
		sprHurt = spr_BurningLeo_Normal_Hurt;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	if (!parasol) scr_Object_Inhale();
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//States
	
	switch (state)
	{
		//Stand Still
		
		case 0:
		//Follow Player
		
		if (instance_exists(obj_Player))
		{
			var nearestPlayer = instance_nearest(x,y,obj_Player);
			if (nearestPlayer.x < x)
			{
				dirX = -1;
			}
			else
			{
				dirX = 1;
			}
		}
		
		//Jump
		
		if ((jumpable) and (instance_exists(obj_Player)))
		{
			if ((jumpTimer == -1) and ((instance_nearest(x,y,obj_Player)).y < y))
			{
				jumpable = false;
				jumpTimer = 30;
				jumpableTimer = jumpableTimerMax;
			}
		}
		
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != "self"))
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
				if (attack)
				{
					if (charge)
					{
						sprite_index = sprCharge;
					}
					else
					{
						sprite_index = sprAttack;
					}
				}
				else
				{
					if (vsp == 0)
					{
						sprite_index = sprIdle;
					}
					else
					{
						if (vsp > 0)
						{
							sprite_index = sprFall;
						}
						else
						{
							sprite_index = sprJump;
						}
					}
				}
			}
		}
		break;
		
		//Horizontal Straight Movement
		
		case 1:
		if ((!hurt) and (!jump) and (!attack) and (!duck) and (!walkDuck))
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
		
		//Jump
		
		if ((jumpable) and (instance_exists(obj_Player)))
		{
			if ((jumpTimer == -1) and ((instance_nearest(x,y,obj_Player)).y < y))
			{
				jumpable = false;
				jumpTimer = 30;
				jumpableTimer = jumpableTimerMax;
			}
		}
		
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != "self"))
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
				if (attack)
				{
					if (charge)
					{
						sprite_index = sprCharge;
					}
					else
					{
						sprite_index = sprAttack;
					}
				}
				else
				{
					if (vsp == 0)
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
					else
					{
						if (vsp > 0)
						{
							sprite_index = sprFall;
						}
						else
						{
							sprite_index = sprJump;
						}
					}
				}
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
	
	if (!attack)
	{
		//Jumpable Timer
		
		if (jumpableTimer > 0)
		{
			jumpableTimer -= 1;
		}
		else if (jumpableTimer == 0)
		{
			jumpable = true;
			jumpableTimer = -1;
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
				if ((!hurt) and (place_meeting(x,y + 1,collisionY)) and (!place_meeting(x,y - jumpspeed,collisionY)))
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
	
	//Attack Timer
	
	if (!jump)
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
				if (instance_exists(obj_Player))
				{
					var nearestPlayer = instance_nearest(x,y,obj_Player);
					if (nearestPlayer.x < x)
					{
						dirX = -1;
					}
					else
					{
						dirX = 1;
					}
				}
				attack = true;
				attackState = 1;
				attackTimer = 45;
				break;
				
				case 1:
				charge = false;
				if (instance_exists(obj_Player))
				{
					if ((instance_nearest(x,y,obj_Player)).y < y)
					{
						var fire = instance_create_depth(x,y - 2,depth,obj_Projectile_LeoFireball);
						fire.owner = id;
						fire.enemy = true;
						fire.destroyableByWall = false;
						fire.destroyableByPlayer = false;
						fire.destroyableByEnemy = false;
						fire.destroyableByObject = false;
						fire.hurtsObject = false;
						fire.hurtsEnemy = false;
						fire.hurtsPlayer = true;
						fire.dirX = dirX;
						fire.movespeed = (6 * dirX);
						fire.jumpspeed = 2;
						fire.paletteIndex = paletteIndex;
					}
					else
					{
						var attackNumber = choose(0,1);
						
						switch (attackNumber)
						{
							//Fireball
							
							case 0:
							var fire = instance_create_depth(x,y - 2,depth,obj_Projectile_LeoFireball);
							fire.owner = id;
							fire.enemy = true;
							fire.destroyableByWall = false;
							fire.destroyableByPlayer = false;
							fire.destroyableByEnemy = false;
							fire.destroyableByObject = false;
							fire.hurtsObject = false;
							fire.hurtsEnemy = false;
							fire.hurtsPlayer = true;
							fire.dirX = dirX;
							fire.movespeed = (6 * dirX);
							fire.paletteIndex = paletteIndex;
							break;
							
							//Fire
							
							case 1:
							fireTimer = 0;
							break;
						}
					}
				}
				attackState = 2;
				attackTimer = 60;
				break;
				
				case 2:
				attack = false;
				attackState = 0;
				charge = true;
				attackTimer = attackTimerMax;
				break;
			}
		}
	}
	
	//Fire Timer
	
	if (attack)
	{
		if (fireTimer > 0)
		{
			fireTimer -= 1;
		}
		else if (fireTimer == 0)
		{
			//if (audio_is_playing(snd_WingShot)) audio_stop_sound(snd_WingShot);
			//audio_play_sound(snd_WingShot,0,false);
			var fire = instance_create_depth(x,y - 2,depth,obj_Projectile_LeoFire);
			fire.owner = id;
			fire.enemy = true;
			fire.destroyableByWall = false;
			fire.destroyableByPlayer = false;
			fire.destroyableByEnemy = false;
			fire.destroyableByObject = false;
			fire.hurtsObject = false;
			fire.hurtsEnemy = false;
			fire.hurtsPlayer = true;
			fire.dirX = dirX;
			fire.hsp = dirX * 6;
			fire.paletteIndex = paletteIndex;
			switch (firePos)
			{
				case 0:
				firePos += 1;
				break;
				
				case 1:
				fire.vsp = -1.5;
				firePos += 1;
				break;
				
				case 2:
				fire.vsp = 1.5;
				firePos += 1;
				break;
				
				case 3:
				firePos += 1;
				break;
				
				case 4:
				fire.vsp = -2.25;
				firePos += 1;
				break;
				
				case 5:
				fire.vsp = 2.25;
				firePos += 1;
				break;
				
				case 6:
				fire.vsp = -2.25;
				firePos = 0;
				break;
			}
			fireTimer = fireTimerMax;
		}
	}
	else
	{
		fireTimer = -1;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}