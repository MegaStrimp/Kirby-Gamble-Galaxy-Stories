///@description Main

//Destroy

if ((!instance_exists(owner)) or (((owner.player == 0) and (global.characterP1 == playerCharacters.gamble)) or ((owner.player == 1) and (global.characterP2 == playerCharacters.gamble)))) instance_destroy();

if (!global.pause)
{
	//Setup Timer
	
	if (setupTimer > 0)
	{
		setupTimer -= 1;
	}
	else if (setupTimer == 0)
	{
		switch (character)
		{
			case "Happy Pea":
			attackTimerMax = 45;
			attackTimer = attackTimerMax;
			break;
			
			case "Epic Jar":
			attackTimerMax = 120;
			attackTimer = attackTimerMax;
			break;
		}
		setupTimer = -1;
	}
	
	//Movement

	vsp += (accel * walkDirY);
	if ((abs(vsp) >= jumpspeed)) walkDirY *= -1;
	
	switch (character)
	{
		#region Gamble
		case "Gamble":
		//Position
		
		posX = lerp(posX,25 * -dir,.15);
		
		dir = owner.dir;
		x = lerp(x,owner.x + posX,.15);
		y = lerp(y,owner.y - 15 + vsp,.15);
		
		//Shine Timer
		
		if (shineTimer > 0)
		{
			shineTimer -= 1;
		}
		else if (shineTimer == 0)
		{
			var particle = instance_create_depth(x + irandom_range(-(sprite_get_width(sprite_index) / 4),(sprite_get_width(sprite_index) / 4)),y + irandom_range(-(sprite_get_height(sprite_index) / 4),(sprite_get_height(sprite_index) / 4)),depth,obj_Particle);
			particle.sprite_index = spr_Particle_SmallSparkle_Yellow;
			particle.vsp = .5;
			particle.destroyAfterAnimation = true;
			shineTimer = shineTimerMax;
		}
		
		//Animation
		
		image_xscale = dir * scale;
		image_yscale = scale;
		
		image_speed = 1;
		
		if (place_meeting(owner.x,owner.y + 1,obj_Wall))
		{
			if (owner.hsp != 0)
			{
				sprite_index = spr_Gamble_Normal_Side_Walk;
			}
			else
			{
				sprite_index = spr_Gamble_Normal_Side_Idle;
			}
		}
		else
		{
			if (owner.vsp > 0)
			{
				sprite_index = spr_Gamble_Normal_Side_Jump;
				image_index = image_number - 1;
			}
			else
			{
				sprite_index = spr_Gamble_Normal_Side_Jump;
				image_index = 1;
			}
		}
		break;
		#endregion
		
		#region Happy Pea
		case "Happy Pea":
		//Position
		
		if (!attack)
		{
			if (attackTimer == -1) attackTimer = attackTimerMax;
			posX = lerp(posX,25 * -dir,.15);
			
			dir = owner.dir;
			x = lerp(x,owner.x + posX,.15);
			y = lerp(y,owner.y - 15 + vsp,.15);
		}
		else
		{
			y = lerp(y,owner.y + 2,.15);
		}
		attackYOffset = lerp(attackYOffset,attack * 7,.15);
		
		//Attack Timer
		
		if (!global.cutscene)
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
					attackTarget = -1;
					with (obj_Enemy)
					{
						if ((distance_to_object(other.owner) <= 144) and ((y <= other.owner.y + 12) and (y >= other.owner.y - 12)))
						{
							other.attackTarget = id;
							if (other.x < x)
							{
								other.dir = 1;
							}
							else
							{
								other.dir = -1;
							}
							break;
						}
					}
					
					if (attackTarget == -1)
					{
						attackTimer = attackTimerMax;
					}
					else
					{
						attack = true;
						attackState += 1;
						attackTimer = 10;
					}
					break;
					
					case 1:
					var sound = choose(snd_Peashooter1,snd_Peashooter2,snd_Peashooter3);
					audio_play_sound(sound,0,false);
					var projectile = instance_create_depth(x,y - 15 + attackYOffset,depth + 1,obj_Projectile_Peashooter);
					projectile.owner = id;
					projectile.dmg = 4;
					projectile.hsp = dir * 6;
					projectile.dirX = dir;
					projectile.image_xscale = projectile.dirX;
					projectile.enemy = false;
					projectile.isFamiliar = true;
					attackState += 1;
					attackTimer = 5;
					break;
					
					case 2:
					attack = false;
					attackState = 0;
					attackTimer = attackTimerMax;
					break;
				}
			}
		}
		
		//Animation
		
		image_xscale = dir * scale;
		image_yscale = scale;
		
		image_speed = 1;
		
		sprite_index = spr_Familiar_Peashooter_Root;
		break;
		#endregion
		
		#region Epic Jar
		case "Epic Jar":
		//Position
		
		if (!attack)
		{
			if (attackTimer == -1) attackTimer = attackTimerMax;
			posX = lerp(posX,25 * -dir,.15);
			
			dir = owner.dir;
			x = lerp(x,owner.x + posX,.15);
			y = lerp(y,owner.y - 15 + vsp,.15);
		}
		else
		{
			y = lerp(y,owner.y - 9,.15);
		}
		attackYOffset = lerp(attackYOffset,attack * 12,.15);
		
		//Attack Timer
		
		if (!global.cutscene)
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
					attackTarget = -1;
					with (obj_Enemy)
					{
						var root = power(other.throwSpeed,4) - (.2 * (.2 * ((-(other.x - x)) * (-(other.x - x))) + 2 * (other.y - y) * (other.throwSpeed * other.throwSpeed)));
						if (root > 0)
						{
							other.attackTarget = id;
							other.angle = darctan2(((other.throwSpeed * other.throwSpeed) + sqrt(root)),.2 * (-(other.x - x)));
							if (other.x < x)
							{
								other.dir = 1;
							}
							else
							{
								other.dir = -1;
							}
							break;
						}
					}
					
					if (attackTarget == -1)
					{
						attackTimer = attackTimerMax;
					}
					else
					{
						sprite_index = spr_Familiar_EpicJar_Fetus_AttackReady;
						attack = true;
						attackState += 1;
						attackTimer = 10;
					}
					break;
					
					case 1:
					sprite_index = spr_Familiar_EpicJar_Fetus_Attack;
					image_index = 0;
					var projectile = instance_create_depth(x,y - 10 - attackYOffset,depth + 1,obj_Projectile_Bomb);
					projectile.owner = id;	
					projectile.character = 3;
					projectile.objectOnHitDmg = 12;
					projectile.dirX = dir;
					projectile.hsp = lengthdir_x(throwSpeed,angle);
					projectile.vsp = lengthdir_y(throwSpeed,angle);
					projectile.image_xscale = projectile.dirX;
					projectile.enemy = false;
					projectile.angleSpd = projectile.hsp * 4;
					projectile.isFamiliar = true;
					attackState += 1;
					attackTimer = 15;
					break;
					
					case 2:
					sprite_index = spr_Familiar_EpicJar_Fetus_AttackStop;
					image_index = 0;
					attackState += 1;
					attackTimer = 15;
					break;
					
					case 3:
					attack = false;
					attackState = 0;
					attackTimer = attackTimerMax;
					break;
				}
			}
		}
		
		//Animation
		
		image_xscale = dir * scale;
		image_yscale = scale;
		
		image_speed = 1;
		
		if (!attack) sprite_index = spr_Familiar_EpicJar_Fetus_Idle;
		break;
		#endregion
		
		#region Krackle
		case "Krackle":
		//Position
		
		if (!attack)
		{
			attackTarget = -1;
			with (obj_Enemy)
			{
				if ((distance_to_object(other.owner) <= 320) and (!place_meeting(x,y - 36,obj_Wall)))
				{
					other.attackTarget = id;
					break;
				}
			}
			dir = owner.dir;
		}
			
		posX = lerp(posX,25 * -dir,.15);
		
		if (attackTarget == -1)
		{
			x = lerp(x,owner.x + posX,.15);
			y = lerp(y,owner.y - 15 + vsp,.15);	
		}
		else
		{
			if (!instance_exists(attackTarget)) attackTarget = -1;
			x = lerp(x,attackTarget.x,.15);
			y = lerp(y,attackTarget.bbox_top - 36,.15);
		}
		
		//Attack Timer
		
		if (!global.cutscene)
		{
			if (attackTimer == -1) attackTimer = attackTimerMax;
			if (attackTimer > 0)
			{
				attackTimer -= 1;
			}
			else if (attackTimer == 0)
			{
				switch (attackState)
				{
					case 0:
					if (attackTarget == -1)
					{
						attackTimer = attackTimerMax;
					}
					else
					{
						attack = true;
						attackState += 1;
						attackTimer = 10;
					}
					break;
					
					case 1:
					var sound = choose(snd_Peashooter1,snd_Peashooter2,snd_Peashooter3);
					audio_play_sound(sound,0,false);
					var projectile = instance_create_depth(x,y,depth + 1,obj_Projectile_Krackle);
					projectile.owner = id;
					projectile.dmg = 6;
					projectile.vsp = 6;
					projectile.enemy = false;
					projectile.isFamiliar = true;
					attackState += 1;
					attackTimer = 5;
					break;
					
					case 2:
					attack = false;
					attackState = 0;
					attackTimer = -1;
					break;
				}
			}
		}
		
		//Animation
		
		image_xscale = dir * scale;
		image_yscale = scale;
		
		image_speed = 1;
		
		sprite_index = spr_Familiar_Krackle_Cloud;
		break;
		#endregion
	}
}
else
{
	image_speed = 0;
}