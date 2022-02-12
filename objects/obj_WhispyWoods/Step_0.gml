///@description Main

//Death

if (hp <= 0)
{
	var fade = instance_create_depth(x,y,-999,obj_Fade);
	fade.targetRoom = rm_StageSelect;
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Hurt Player
	
	scr_Enemy_HurtsPlayer();
	
	//Follow Player
	
	if (instance_exists(obj_Player))
	{
		if (obj_Player.x >= x)
		{
			dirX = 1;
		}
		else
		{
			dirX = -1;
		}
	}
	
	switch (phase)
	{
		#region Inactive
		case "inactive":
		readyCounter += 1;
		if (readyCounter >= readyCounterMax)
		{
			if (audio_is_playing(snd_DeathParticles)) audio_stop_sound(snd_DeathParticles);
			audio_play_sound(snd_DeathParticles,0,false);
			phase = "ready";
			readyCounter = 0;
		}
		break;
		#endregion
		
		#region Ready
		case "ready":
		if (audio_is_playing(snd_BossHealth)) audio_stop_sound(snd_BossHealth);
		audio_play_sound(snd_BossHealth,0,false);
		bossHbHp += hp / 60;
		if (bossHbHp >= hp)
		{
			bossHbHp = hp;
			phase = "1";
			readyCounter = 0;
		}
		break;
		#endregion
		
		#region Phase 1
		case "1":
		if (!attack)
		{
			if (!hurt) attackCounter += 1;
			if (attackCounter >= attackCounterMax)
			{
				attackCount += 1;
				attack = true;
				switch (attackCount)
				{
					case 1:
					attackState = "apple";
					break;
					
					case 2:
					attackState = choose("spit","apple");
					break;
					
					case 3:
					attackState = "spit";
					attackCount = 0;
					break;
				}
				switch (attackState)
				{
					case "spit":
					spitVar = choose(0,1);
					faceSprite = sprSpit;
					break;
					
					case "apple":
					appleSpawnCounter = appleSpawnCounterMax;
					break;
				}
				attackCounter = 0;
				attackCounterMax = irandom_range(60,90);
			}
		}
		else
		{
			if (attackStop)
			{
				if (!hurt) attackStopCounter += 1;
				if (attackStopCounter >= attackStopCounterMax)
				{
					attackStop = false;
					attack = false;
					attackState = "none";
					faceSprite = sprIdle;
					attackStopCounter = 0;
				}
			}
			else
			{
				switch (attackState)
				{
					case "spit":
					faceIndex += .1;
					if (faceIndex >= sprite_get_number(sprSpit))
					{
						if (audio_is_playing(snd_Spit)) audio_stop_sound(snd_Spit);
						audio_play_sound(snd_Spit,0,false);
						switch (spitVar)
						{
							case 0:
							var puff = instance_create_depth(x + (16 * dirX),y - 32,depth - 1,obj_Projectile_WhispyPuff);
							puff.owner = id;
							puff.enemy = true;
							puff.destroyableByWall = true;
							puff.destroyableByPlayer = true;
							puff.destroyableByEnemy = false;
							puff.destroyableByObject = true;
							puff.hurtsObject = false;
							puff.hurtsEnemy = false;
							puff.hurtsPlayer = true;
							var dirr = point_direction(x,y,obj_Player.x,obj_Player.y) + irandom_range(-5,5);
							if (dirr < 0) dirr += 360;
							if (dirr >= 360) dirr -= 360;
							puff.direction = dirr;
							puff.dirX = dirX;
							spitCounter += 1;
							faceIndex = 0;
							if (spitCounter >= spitCounterMax)
							{
								spitCounter = 0;
								attackStop = true;
							}
							break;
							
							case 1:
							for (var i = 0; i < 3; i++)
							{
								var puff = instance_create_depth(x + (16 * dirX),y - 32,depth - 1,obj_Projectile_WhispyPuff);
								puff.owner = id;
								puff.enemy = true;
								puff.destroyableByWall = true;
								puff.destroyableByPlayer = true;
								puff.destroyableByEnemy = false;
								puff.destroyableByObject = true;
								puff.hurtsObject = false;
								puff.hurtsEnemy = false;
								puff.hurtsPlayer = true;
								var dirr = (90 - ((85 + (i * 5)) * dirX));
								if (dirr < 0) dirr += 360;
								if (dirr >= 360) dirr -= 360;
								puff.direction = dirr;
								puff.dirX = dirX;
							}
							faceIndex = 0;
							attackStop = true;
							break;
						}
					}
					break;
					
					case "apple":
					appleSpawnCounter += 1;
					if (appleSpawnCounter >= appleSpawnCounterMax)
					{
						var attackChance = irandom_range(0,1);
						switch (attackChance)
						{
							case 0:
							var xx = x + ((irandom_range(29,99)) * dirX);
							var yy = y - ((irandom_range(101,171)) * dirY);
							var apple = instance_create_depth(xx,yy,depth - 1,obj_WhispyApple);
							apple.owner = id;
							apple.jumpspeed = random_range(2.5,7);
							apple.movespeed = random_range(1,2.5);
							apple.state = 1;
							apple.dirX = dirX;
							apple.hurtable = false;
							apple.sprite_index = spr_Gordo_Normal_Idle;
							break;
							
							default:
							var xx = x + ((irandom_range(29,99)) * dirX);
							var yy = y - ((irandom_range(101,171)) * dirY);
							var apple = instance_create_depth(xx,yy,depth - 1,obj_WhispyApple);
							apple.owner = id;
							apple.jumpspeed = random_range(2.5,7);
							apple.movespeed = random_range(1,2.5);
							apple.state = 0;
							apple.dirX = dirX;
							break;
						}
						appleCounter += 1;
						appleSpawnCounter = 0;
						if (appleCounter >= appleCounterMax)
						{
							appleCounter = 0;
							attackStop = true;
						}
					}
					break;
				}
			}
		}
		break;
		#endregion
		
		#region Phase 2
		case "2":
		//Movement
		
		hsp = (movespeed / (attack + 1)) * walkDirX;
		
		/*if (place_meeting(x,y + 1,obj_Wall))
		{
			scaleExX = -.25;
			scaleExY = .25;
			vsp = -jumpspeed;
		}*/
		
		//Attack
		
		if (!attack)
		{
			if (!hurt) attackCounter += 1;
			if (attackCounter >= attackCounterMax)
			{
				attack = true;
				attackState = choose("spit","apple");
				switch (attackState)
				{
					case "spit":
					faceSprite = sprSpit;
					break;
					
					case "apple":
					appleSpawnCounter = appleSpawnCounterMax;
					break;
				}
				attackCounter = 0;
				attackCounterMax = irandom_range(120,180);
			}
		}
		else
		{
			if (attackStop)
			{
				attackStopCounter += 1;
				if (attackStopCounter >= attackStopCounterMax)
				{
					attackStop = false;
					attack = false;
					attackState = "none";
					faceSprite = sprIdle;
					attackStopCounter = 0;
				}
			}
			else
			{
				switch (attackState)
				{
					case "spit":
					if (!hurt) faceIndex += .1;
					if (faceIndex >= sprite_get_number(sprSpit))
					{
						if (audio_is_playing(snd_Spit)) audio_stop_sound(snd_Spit);
						audio_play_sound(snd_Spit,0,false);
						var puff = instance_create_depth(x + (16 * dirX),y - 32,depth - 1,obj_Projectile_WhispyPuff);
						puff.owner = id;
						puff.enemy = true;
						puff.destroyableByWall = true;
						puff.destroyableByPlayer = true;
						puff.destroyableByEnemy = false;
						puff.destroyableByObject = true;
						puff.hurtsObject = false;
						puff.hurtsEnemy = false;
						puff.hurtsPlayer = true;
						var dirr = point_direction(x,y,obj_Player.x,obj_Player.y) + irandom_range(-5,5);
						if (dirr < 0) dirr += 360;
						if (dirr >= 360) dirr -= 360;
						puff.direction = dirr;
						puff.dirX = dirX;
						spitCounter += 1;
						faceIndex = 0;
						if (spitCounter >= spitCounterMax)
						{
							spitCounter = 0;
							attackStop = true;
						}
					}
					break;
					
					case "apple":
					appleSpawnCounter += 1;
					if (appleSpawnCounter >= appleSpawnCounterMax)
					{
						var xx = x + ((irandom_range(29,99)) * dirX);
						var yy = y - ((irandom_range(101,171)) * dirY);
						var apple = instance_create_depth(xx,yy,depth - 1,obj_WhispyApple);
						apple.owner = id;
						apple.dirX = dirX;
						appleCounter += 1;
						appleSpawnCounter = 0;
						if (appleCounter >= appleCounterMax)
						{
							appleCounter = 0;
							attackStop = true;
						}
					}
					break;
				}
			}
		}
		break;
		#endregion
	}
	
	if (faceSprite == sprIdle)
	{
		idleCounter += 1;
		if (idleCounter >= idleCounterMax)
		{
			faceSprite = sprBlink;
			idleCounter = 0;
			idleCounterMax = irandom_range(30,120);
		}
	}
	
	if (faceSprite == sprBlink)
	{
		faceIndex += .4;
		if (faceIndex >= sprite_get_number(sprBlink))
		{
			faceSprite = sprIdle;
			faceIndex = 0;
		}
	}
	
	gambleIndex += .2;
	if (gambleIndex >= sprite_get_number(sprGamble))
	{
		gambleIndex = 0;
	}
	
	gambleShakeCounter += 1;
	if (gambleShakeCounter >= gambleShakeCounterMax)
	{
		if (gambleShake)
		{
			gambleShake = false;
		}
		else
		{
			gambleShake = true;
		}
		gambleShakeCounter = 0;
	}
	
	leafCounter += 1;
	if (leafCounter >= leafCounterMax)
	{
		for (var i = 0; i < floor(room_height / 48); i++)
		{
			var par = instance_create_depth(camera_get_view_x(gameView) + camera_get_view_width(gameView) + 64,(i * 48),choose(depth + 1,depth - 1,obj_Player.depth - 1),obj_Particle);
			par.sprite_index = spr_FallingLeaf_Normal_Idle;
			par.direction = 180 + irandom_range(-5,5);
			par.image_blend = c_green;
			par.image_speed = random_range(.75,1.25);
			par.spdBuiltIn = random_range(1,3);
			par.destroyAfterAnimation = false;
			par.destroyOutsideRoom = true;
		}
		leafCounter = 0;
	}
	
	if ((phase != "inactive") and (phase != "ready")) bossHbHp = hp;
}