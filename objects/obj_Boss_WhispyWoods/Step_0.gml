///@description Main

#region Death
if (death)
{
	if (!deathFlag)
	{
		deathFlag = true;
		global.demoBeatGreenGreens = true;
		var fade = instance_create_depth(x,y,-999,obj_FadeTimer);
		fade.alphaSpd = .005;
		fade.targetRoom = rm_DemoEnd;
		fade.fadeTimer = 160;
	}
	
	idleAnimation = false;
	idleAnimationTimer = 0;
	idleAnimationTimerMax = -1;
	attackNumber = -1;
	attackChooseTimer = -1;
	spikeTimer = -1;
	airpuffTimer = -1;
	throwObjectTimer = -1;
	bigAirpuffTimer = -1;
	inhaleTimer = -1;
}
#endregion

#region Event Inherited
event_inherited();
#endregion

#region Hurt Player
//if (!death) scr_Enemy_HurtsPlayer(dmg);
#endregion

if (!childPause)
{
	#region Phases
	switch (phase)
	{
		#region Ready Phase 1
		case 0:
		attackChooseTimer = attackChooseTimerMax;
		phase = 1;
		break;
		#endregion
		
		#region Phase 1
		case 1:
		#region Animation
		faceIndex += sprite_get_speed(faceSprite) / 60;
		
		image_speed = 1;
		
		if (death)
		{
			faceSprite = sprDeath;
		}
		else
		{
			switch (attackNumber)
			{
				default:
				if (hurt)
				{
					faceSprite = sprHurt;
				}
				else
				{
					if (!idleAnimation)
					{
						faceSprite = sprIdle;
					}
					else
					{
						faceSprite = sprBlink;
						if (faceIndex >= sprite_get_number(faceSprite))
						{
							idleAnimation = false;
							idleAnimationTimer = 0;
							idleAnimationTimerMax = choose(60,90,120);
						}
					}
				}
				break;
				
				case enemyAttacks.whispyWoods_airpuff:
				faceSprite = sprSpit;
				//if (faceIndex >= sprite_get_number(faceSprite)) faceIndex -= sprite_get_number(faceSprite);
				if (faceIndex >= sprite_get_number(faceSprite)) faceIndex = sprite_get_number(faceSprite) - 1;
				break;
				
				case enemyAttacks.whispyWoods_bigAirpuff:
				faceSprite = sprBigSpit;
				if (faceIndex >= sprite_get_number(faceSprite)) faceIndex = sprite_get_number(faceSprite) - 1;
				break;
			}
		}
		#endregion
		break;
		#endregion
		
		#region Ready Phase 2
		case 2:
		break;
		#endregion
		
		#region Phase 2
		case 3:
		break;
		#endregion
		
		#region Death
		case 4:
		break;
		#endregion
	}
	#endregion
	
	#region Timers
	#region Phase Change Timer
	if (phaseChangeTimer > 0)
	{
		phaseChangeTimer -= 1;
	}
	else if (phaseChangeTimer == 0)
	{
		phaseChangeTimer = -1;
	}
	#endregion
	
	#region Idle Animation Timer
	if (!idleAnimation)
	{
		if ((idleAnimationTimer < idleAnimationTimerMax) and (attackNumber == -1))
		{
			idleAnimationTimer += 1;
		}
		else
		{
			faceIndex = 0;
			idleAnimationTimer = 0;
			idleAnimation = true;
		}
	}
	#endregion
	
	#region Attack Choose Timer
	if (attackChooseTimer > 0)
	{
		attackChooseTimer -= 1;
	}
	else if (attackChooseTimer == 0)
	{
		faceSprite = sprIdle;
		idleAnimation = false;
		idleAnimationTimer = 0;
		idleAnimationTimerMax = choose(10,30,45);
		attackNumber = -1;
		if (phase == 1)
		{
			attackNumber = choose(enemyAttacks.whispyWoods_airpuff,enemyAttacks.whispyWoods_airpuff,enemyAttacks.whispyWoods_airpuff,enemyAttacks.whispyWoods_spike,enemyAttacks.whispyWoods_spike,enemyAttacks.whispyWoods_throwObject,enemyAttacks.whispyWoods_throwObject,enemyAttacks.whispyWoods_throwObject,enemyAttacks.whispyWoods_bigAirpuff);
		}
		else if (phase == 3)
		{
		}
		
		switch (attackNumber)
		{
			#region Airpuff
			case enemyAttacks.whispyWoods_airpuff:
			image_index = 0;
			airpuffTimer = 0;
			break;
			#endregion
			
			#region Spike
			case enemyAttacks.whispyWoods_spike:
			spikeTimer = 0;
			break;
			#endregion
			
			#region Throw Object
			case enemyAttacks.whispyWoods_throwObject:
			throwObjectList = ds_list_create();
			for (var i = 0; i < 4; i++)
			{
				while (throwObjectChance[i] > 0)
				{
					var maxChance = throwObjectChance[i] % 100;
					if (maxChance == 0) maxChance = 100;
					var rng = irandom_range(1,100);
				
					if (rng <= maxChance) ds_list_add(throwObjectList,i);
					throwObjectChance[i] -= maxChance;
				}
			}

			throwObjectTimer = 0;
			throwObjectChance[0] = throwObjectChanceMax[0];
			throwObjectChance[1] = throwObjectChanceMax[1];
			throwObjectChance[2] = throwObjectChanceMax[2];
			throwObjectChance[3] = throwObjectChanceMax[3];
			break;
			#endregion
			
			#region Big Airpuff
			case enemyAttacks.whispyWoods_bigAirpuff:
			image_index = 0;
			bigAirpuffTimer = 0;
			break;
			#endregion
			
			#region Inhale
			case enemyAttacks.whispyWoods_inhale:
			inhaleTimer = 0;
			break;
			#endregion
		}
		attackChooseTimer = -1;
	}
	#endregion
	
	#region Airpuff Timer
	if (airpuffTimer > 0)
	{
		airpuffTimer -= 1;
	}
	else if (airpuffTimer == 0)
	{
		if (airpuffCount < airpuffCountMax)
		{
			if (faceIndex >= 2)
			{
				if (audio_is_playing(snd_AirPuff)) audio_stop_sound(snd_AirPuff);
				audio_play_sound(snd_AirPuff,0,false);
				faceIndex = 2;
				var proj = instance_create_depth(x + ((28 + 22) * dirX),y - 52,depth - 1,obj_Projectile_AirPuff);
				proj.owner = id;
				proj.enemy = true;
				proj.destroyableByWall = true;
				proj.destroyableByPlayer = true;
				proj.destroyableByEnemy = false;
				proj.destroyableByObject = false;
				proj.hurtsObject = false;
				proj.hurtsEnemy = false;
				proj.hurtsPlayer = true;
				proj.dirX = dirX;
				proj.scale = 2;
				proj.image_xscale = proj.dirX * 2;
				proj.image_yscale = 2;
				proj.hsp = ((6 * dirX) + hsp);
				proj.decel = 0;
				proj.grav = .02;
				proj.gravLimit = 3;
				proj.sprIdle = spr_AirPuff_Normal_Idle;
				proj.sprDestroy = spr_AirPuff_Normal_Destroy;
				proj.sprite_index = proj.sprIdle;
				proj.character = 0;
				proj.isBoss = true;
				airpuffCount += 1;
				airpuffTimer = airpuffTimerMax;
			}
		}
		else
		{
			airpuffCount = 0;
			attackChooseTimer = attackChooseTimerMax;
			attackNumber = -1;
			airpuffTimer = -1;
		}
	}
	#endregion
	
	#region Spike Timer
	if (spikeTimer > 0)
	{
		spikeTimer -= 1;
	}
	else if (spikeTimer == 0)
	{
		if (spikeCount < spikeCountMax)
		{
			spikeCount += 1;
			var proj = instance_create_depth(x + ((30 + (96 * spikeCount)) * dirX),y + 10,depth + 1,obj_Projectile_WhispyRoot);
			proj.owner = id;
			proj.enemy = true;
			proj.destroyableByWall = false;
			proj.destroyableByPlayer = false;
			proj.destroyableByEnemy = false;
			proj.destroyableByObject = false;
			proj.destroyableByProjectile = false;
			proj.hurtsObject = false;
			proj.hurtsEnemy = false;
			proj.hurtsPlayer = false;
			proj.isBoss = true;
			proj.rootIndex = irandom_range(1,3);
			if (spikeCount == spikeCountMax) proj.recoilTimer = 120;
			spikeTimer = spikeTimerMax;
		}
		else
		{
			spikeCount = 0;
			attackChooseTimer = attackChooseTimerMax;
			attackNumber = -1;
			spikeTimer = -1;
		}
	}
	#endregion
	
	#region Throw Object Timer
	if (throwObjectTimer > 0)
	{
		throwObjectTimer -= 1;
	}
	else if (throwObjectTimer == 0)
	{
		var objValue = ds_list_find_value(throwObjectList,throwObjectCount);
		
		var obj = instance_create_depth(x + ((30 + irandom_range(0,320)) * dirX),irandom_range(0,72),depth - 101,obj_WhispyApple);
		obj.owner = id;
		obj.objValue = objValue;
		obj.destroyOutsideView = true;
		obj.isBossMinion = true;
		switch (objValue)
		{
			#region Apple
			case 0:
			obj.sprite_index = sprApple;
			break;
			#endregion
			
			#region Gordo
			case 1:
			obj.sprite_index = spr_Gordo_Normal_Idle;
			break;
			#endregion
			
			#region Como
			case 2:
			obj.sprite_index = spr_Como_Normal_Idle;
			break;
			#endregion
			
			#region Waddle Dee
			case 3:
			obj.sprite_index = spr_WaddleDee_Normal_Fall;
			break;
			#endregion
		}
		
		throwObjectCount += 1;
		if (throwObjectCount < (ds_list_size(throwObjectList)))
		{
			throwObjectTimer = throwObjectTimerMax;
		}
		else
		{
			ds_list_destroy(throwObjectList);
			throwObjectCount = 0;
			attackChooseTimer = attackChooseTimerMax;
			attackNumber = -1;
			throwObjectTimer = -1;
		}
	}
	#endregion
	
	#region Big Airpuff Timer
	if (bigAirpuffTimer > 0)
	{
		bigAirpuffTimer -= 1;
	}
	else if (bigAirpuffTimer == 0)
	{
		switch (bigAirpuffState)
		{
			case 0:
			bigAirpuffState = 1;
			bigAirpuffTimer = 30;
			break;
			
			case 1:
			bigAirpuffState = 2;
			if (audio_is_playing(snd_AirPuff)) audio_stop_sound(snd_AirPuff);
			audio_play_sound(snd_AirPuff,0,false);
			var proj = instance_create_depth(x + ((28 + 22) * dirX),y - 52,depth - 1,obj_Projectile_AirPuff);
			proj.owner = id;
			proj.enemy = true;
			proj.destroyableByWall = true;
			proj.destroyableByPlayer = false;
			proj.destroyableByEnemy = false;
			proj.destroyableByObject = false;
			proj.destroyableByProjectile = false;
			proj.hurtsObject = false;
			proj.hurtsEnemy = false;
			proj.hurtsPlayer = true;
			proj.canBeReflected = false;
			proj.dirX = dirX;
			proj.hsp = ((10 * dirX) + hsp);
			proj.sprIdle = spr_AirPuff_WhispyBig_Idle;
			proj.sprDestroy = -1;
			proj.sprite_index = proj.sprIdle;
			proj.character = 2;
			proj.isBoss = true;
			bigAirpuffTimer = 90;
			break;
			
			case 2:
			bigAirpuffState = 0;
			attackChooseTimer = attackChooseTimerMax;
			attackNumber = -1;
			bigAirpuffTimer = -1;
			break;
		}
	}
	#endregion
	
	#region Inhale Timer
	if (inhaleTimer > 0)
	{
		inhaleTimer -= 1;
	}
	else if (inhaleTimer == 0)
	{
		inhaleTimer = -1;
	}
	#endregion
	#endregion
	
	#region Gamble Sprite
	if (global.progression == 0)
	{
		gambleIndex += .2;
		if (gambleIndex >= sprite_get_number(sprGamble))
		{
			gambleIndex = 0;
		}
		
		#region Gamble Shake Timer
		if (gambleShakeTimer > 0)
		{
			gambleShakeTimer -= 1;
		}
		else if (gambleShakeTimer == 0)
		{
			gambleShake = !gambleShake;
			gambleShakeTimer = gambleShakeTimerMax;
		}
		#endregion
	}
	#endregion
	
	#region Healthbar HP
	if (phase != 0) bossHbHp = hp;
	#endregion
}