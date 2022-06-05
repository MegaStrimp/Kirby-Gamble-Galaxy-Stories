///@description Main

#region Death
if (hp <= 0)
{
	var fade = instance_create_depth(x,y,-999,obj_Fade);
	fade.targetRoom = rm_StageSelect;
}
#endregion

#region Event Inherited
event_inherited();
#endregion

if (!global.pause)
{
	#region Hurt Player
	scr_Enemy_HurtsPlayer(dmg);
	#endregion
	
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
	#region Attack Choose Timer
	if (attackChooseTimer > 0)
	{
		attackChooseTimer -= 1;
	}
	else if (attackChooseTimer == 0)
	{
		var attack = -1;
		if (phase == 1)
		{
			attack = choose(0,1,2,3,4);
			attack = choose(0,1,2,3);
		}
		else if (phase == 3)
		{
		}
		
		switch (attack)
		{
			#region Airpuff
			case 0:
			airpuffTimer = 0;
			break;
			#endregion
			
			#region Spike
			case 1:
			spikeTimer = 0;
			break;
			#endregion
			
			#region Throw Object
			case 2:
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
			case 3:
			bigAirpuffTimer = 0;
			break;
			#endregion
			
			#region Inhale
			case 4:
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
			if (audio_is_playing(snd_AirPuff)) audio_stop_sound(snd_AirPuff);
			audio_play_sound(snd_AirPuff,0,false);
			var proj = instance_create_depth(x + ((28 + 22) * dirX),y - 52,depth + 1,obj_AirPuff);
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
			airpuffCount += 1;
			airpuffTimer = airpuffTimerMax;
		}
		else
		{
			airpuffCount = 0;
			attackChooseTimer = attackChooseTimerMax;
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
			var proj = instance_create_depth(x + ((30 + (72 * spikeCount)) * dirX),y + 8,depth + 1,obj_Projectile_WhispyRoot);
			proj.owner = id;
			proj.enemy = true;
			proj.destroyableByWall = false;
			proj.destroyableByPlayer = false;
			proj.destroyableByEnemy = false;
			proj.destroyableByObject = false;
			proj.destroyableByProjectile = false;
			proj.hurtsObject = false;
			proj.hurtsEnemy = false;
			proj.hurtsPlayer = true;
			proj.rootIndex = irandom_range(1,3);
			if (spikeCount == spikeCountMax) proj.recoilTimer = 120;
			spikeTimer = spikeTimerMax;
		}
		else
		{
			spikeCount = 0;
			attackChooseTimer = attackChooseTimerMax;
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
		obj.objValue = objValue;
		obj.destroyOutsideView = true;
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
			var proj = instance_create_depth(x + ((28 + 22) * dirX),y - 52,depth + 1,obj_AirPuff);
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
			proj.scale = 4;
			proj.image_xscale = proj.dirX * 4;
			proj.image_yscale = 4;
			proj.hsp = ((10 * dirX) + hsp);
			proj.sprIdle = spr_AirPuff_Normal_Idle;
			proj.sprDestroy = spr_AirPuff_Normal_Destroy;
			proj.sprite_index = proj.sprIdle;
			proj.character = 0;
			bigAirpuffTimer = 90;
			break;
			
			case 2:
			bigAirpuffState = 0;
			attackChooseTimer = attackChooseTimerMax;
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