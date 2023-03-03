///@description Main

//Hurt Sprite

if (place_meeting(x,y - 1,collisionY))
{
	sprHurt = sprHurtGround;
}
else
{
	sprHurt = sprHurtAir;
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
		//Stand Still
		
		case 0:
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
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
				sprite_index = sprIdle;
			}
		}
		break;
		
		//Horizontal Straight Movement
		
		case 1:
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
		
		//Animation
		
		image_speed = 1;
		
		if ((hurt) and (sprHurt != -1))
		{
			sprite_index = sprHurt;
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
		break;
	}
	
	//Attack Timer
	
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
					if (audio_is_playing(snd_LeoFireball)) audio_stop_sound(snd_LeoFireball);
					audio_play_sound(snd_LeoFireball,0,false);
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
				}
				else
				{
					var attackNumber = choose(0,1);
					
					switch (attackNumber)
					{
						//Fireball
						
						case 0:
						if (audio_is_playing(snd_LeoFireball)) audio_stop_sound(snd_LeoFireball);
						audio_play_sound(snd_LeoFireball,0,false);
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
	
	//Fire Timer
	
	if (attack)
	{
		if (fireTimer > 0)
		{
			fireTimer -= 1;
		}
		else if (fireTimer == 0)
		{
			if (audio_is_playing(snd_Fire2)) audio_stop_sound(snd_Fire2);
			audio_play_sound(snd_Fire2,0,false);
			var projectile = instance_create_depth(x + (10 * dirX),y - 2,depth - 1,obj_Projectile_Fire);
			projectile.owner = id;
			projectile.imageSpeed = 1;
			projectile.dmg = 1;
			projectile.sprite_index = projectile.sprIdle;
			projectile.enemy = true;
			projectile.destroyableByEnemy = false;
			projectile.hurtsObject = false;
			projectile.hurtsEnemy = false;
			projectile.hurtsPlayer = true;
			projectile.hsp = 2 * dirX;
	        projectile.vsp = random_range(-1.5,1.5);
			projectile.imageAngle = point_direction(0,0,projectile.hsp,projectile.vsp);
			projectile.image_angle = projectile.imageAngle;
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
}