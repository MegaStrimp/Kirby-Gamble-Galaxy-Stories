///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_JungleBomb_Normal_Idle;
		sprWalk = spr_JungleBomb_Normal_Walk;
		sprDuck = spr_JungleBomb_Normal_Duck;
		sprJump = spr_JungleBomb_Normal_Jump;
		sprFall = spr_JungleBomb_Normal_Fall;
		sprAttack = spr_JungleBomb_Normal_Attack;
		sprHurt = spr_JungleBomb_Normal_Hurt;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Get Inhaled
	
	if (!parasol) scr_Object_Inhale(enemy);
	
	//Hurt Player
	
	scr_Enemy_HurtsPlayer(dmg);
	
	//Friction
	
	hsp = scr_Friction(hsp,decel);
	
	//States
	
	switch (state)
	{
		//Single Bomb
		
		case 0:
		if (instance_exists(obj_Player))
		{
			if (obj_Player.x < x)
			{
				dirX = -1;
			}
			else
			{
				dirX = 1;
			}
		}
		
		if (jumpable)
		{
			if (place_meeting(x,y + 1,collisionY))
			{
				if (jumpCount == 4)
				{
					if (audio_is_playing(snd_BombThrow)) audio_stop_sound(snd_BombThrow);
					audio_play_sound(snd_BombThrow,0,false);
					var bomb = instance_create_depth(x,y - 2,depth - 1,obj_Projectile_Bomb);
					bomb.enemy = true;
					bomb.destroyableByPlayer = true;
					bomb.destroyableByEnemy = false;
					bomb.hurtsObject = false;
					bomb.hurtsEnemy = false;
					bomb.hurtsPlayer = true;
					bomb.hsp = 2.5 * dirX;
					bomb.vsp = -4.5;
					bomb.angleSpd = bomb.hsp * 4;
					jumpable = false;
					attack = true;
					attackStopTimer = attackStopTimerMax;
				}
				else
				{
					if (audio_is_playing(snd_EnemyJump2)) audio_stop_sound(snd_EnemyJump2);
					audio_play_sound(snd_EnemyJump2,0,false);
					jumpCount += 1;
					scaleExX = -.25;
					scaleExY = .25;
					vsp = -jumpspeed;
					jump = false;
					duck = false;
				}
			}
		}
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != "self"))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if (attack)
			{
				sprite_index = sprAttack;
			}
			else
			{
				if (place_meeting(x,y + 1,collisionY))
				{
					if ((duck) or (walkDuck))
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
						if (jumpCount == 0)
						{
							sprite_index = sprWalk;
						}
						else
						{
							sprite_index = sprJump;
						}
					}
					else
					{
						sprite_index = sprFall;
					}
				}
			}
		}
		break;
		
		//Three Bombs
		
		case 1:
		if (instance_exists(obj_Player))
		{
			if (obj_Player.x < x)
			{
				dirX = -1;
			}
			else
			{
				dirX = 1;
			}
		}
		
		if (jumpable)
		{
			if (place_meeting(x,y + 1,collisionY))
			{
				if (jumpCount == 4)
				{
					for (var i = 0; i < 3; i++)
					{
						var bomb = instance_create_depth(x,y - 2,depth - 1,obj_Projectile_Bomb);
						bomb.enemy = true;
						bomb.destroyableByPlayer = true;
						bomb.destroyableByEnemy = false;
						bomb.hurtsObject = false;
						bomb.hurtsEnemy = false;
						bomb.hurtsPlayer = true;
						bomb.hsp = (2 + (i * .5)) * dirX;
						bomb.vsp = -3 + (i * -1.5);
						bomb.angleSpd = bomb.hsp * 4;
					}
					jumpable = false;
					attack = true;
					attackStopTimer = attackStopTimerMax;
				}
				else
				{
					jumpCount += 1;
					scaleExX = -.15;
					scaleExY = .15;
					vsp = -jumpspeed;
					jump = false;
					duck = false;
				}
			}
		}
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != "self"))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if (attack)
			{
				sprite_index = sprAttack;
			}
			else
			{
				if (place_meeting(x,y + 1,collisionY))
				{
					if ((duck) or (walkDuck))
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
						if (jumpCount == 0)
						{
							sprite_index = sprWalk;
						}
						else
						{
							sprite_index = sprJump;
						}
					}
					else
					{
						sprite_index = sprFall;
					}
				}
			}
		}
		break;
		
		//Single Bomb and Run
		
		case 2:
		if (running)
		{
			scr_AI_HorizontalStraightMovement(true,false);
		}
		else
		{
			hsp = 0;
			if (instance_exists(obj_Player))
			{
				if (obj_Player.x < x)
				{
					dirX = -1;
				}
				else
				{
					dirX = 1;
				}
			}
		}
		
		if (jumpable)
		{
			if (place_meeting(x,y + 1,collisionY))
			{
				if (jumpCount == 4)
				{
					var bomb = instance_create_depth(x,y,depth - 1,obj_Projectile_Bomb);
					bomb.enemy = true;
					bomb.destroyableByPlayer = true;
					bomb.destroyableByEnemy = false;
					bomb.hurtsObject = false;
					bomb.hurtsEnemy = false;
					bomb.hurtsPlayer = true;
					bomb.hsp = 2.5 * dirX;
					bomb.vsp = -4.5;
					bomb.angleSpd = bomb.hsp * 4;
					jumpable = false;
					attack = true;
					attackStopTimer = floor(attackStopTimerMax / 3);
				}
				else
				{
					jumpCount += 1;
					scaleExX = -.15;
					scaleExY = .15;
					vsp = -jumpspeed;
					jump = false;
					duck = false;
				}
			}
		}
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != "self"))
		{
			sprite_index = sprHurt;
		}
		else
		{
			if (attack)
			{
				sprite_index = sprAttack;
			}
			else if (running)
			{
				sprite_index = sprWalk;
			}
			else
			{
				if (place_meeting(x,y + 1,collisionY))
				{
					if ((duck) or (walkDuck))
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
						if (jumpCount == 0)
						{
							sprite_index = sprWalk;
						}
						else
						{
							sprite_index = sprJump;
						}
					}
					else
					{
						sprite_index = sprFall;
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
	
	if (jumpTimer > 0)
	{
		jumpTimer -= 1;
	}
	else if (jumpTimer == 0)
	{
		if (jumpCount == 0)
		{
			if ((!hurt) and (place_meeting(x,y + 1,collisionY)) and (!place_meeting(x,y - jumpspeed,collisionY)))
			{
				jumpCount += 1;
				scaleExX = -.15;
				scaleExY = .15;
				vsp = -jumpspeed;
				jump = false;
				duck = false;
				jumpTimer = 45;
			}
			else
			{
				jumpCount = 0;
				jump = false;
				duck = false;
				jumpTimer = jumpTimerMax;
			}
		}
		else
		{
			jumpable = true;
			jumpTimer = -1;
		}
	}
	
	//Attack Stop Timer
	
	if (attackStopTimer > 0)
	{
		attackStopTimer -= 1;
	}
	else if (attackStopTimer == 0)
	{
		attack = false;
		jumpCount = 0;
		if (state == 2)
		{
			dirX *= -1;
			walkDirX = dirX;
			running = true;
		}
		else
		{
			jumpTimer = jumpTimerMax;
		}
		attackStopTimer = -1;
	}
}
else
{
	image_speed = 0;
	shakeX = 0;
	shakeY = 0;
}