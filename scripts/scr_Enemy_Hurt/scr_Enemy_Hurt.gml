// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Enemy_Hurt(argument0,argument1)
{
	var targetObj = argument0;
	var hurtSource = argument1;
	
	var canBeHurt = false;
	if ((hurtSource.owner != other) and (hurtSource.enemy != targetObj.enemy) and (((hurtSource.object_index == obj_Projectile_ExplosionMask)/* and (!targetObj.explosionResistance)*/) or (hurtSource.object_index != obj_Projectile_ExplosionMask)) and ((((!targetObj.isMiniBoss) and (!targetObj.isBoss)) and (hurtSource.hurtsEnemy)) or (((targetObj.isMiniBoss) or (targetObj.isBoss)) and (hurtSource.hurtsEnemy) and (hurtSource.hurtsBoss)))) canBeHurt = true;
	if (canBeHurt)
	{
		if (audio_is_playing(snd_EnemyHurt)) audio_stop_sound(snd_EnemyHurt);
		audio_play_sound(snd_EnemyHurt,0,false);
		targetObj.takenDamageType = hurtSource.damageType;
		targetObj.takenIsFamiliar = hurtSource.isFamiliar;
		if (hurtSource.dmg >= (targetObj.hp + 50))
		{
			targetObj.bubbleX = x;
			targetObj.bubbleY = y;
			targetObj.hurtTimer = ((targetObj.hurtStopTimerMax + 5) * (!targetObj.instaDeath));
			if ((targetObj.hasDeathKnockback) and (!targetObj.isBoss) and (targetObj.isMiniBoss) and (targetObj.takenDamageType != damageTypes.ice)) targetObj.hurtStopTimer = targetObj.hurtStopTimerMax;
			targetObj.shake = 1;
			with (obj_Camera)
			{
				shakeX = 3;
				shakeY = 3;
			}
		}
		else
		{
			targetObj.hurtTimer = targetObj.hurtTimerMax;
		}
		if ((global.enemyHealthbars) and (targetObj.canGetHealthbar) and ((!targetObj.isMiniBoss) or (!targetObj.isBoss))) global.healthbarMarkedEnemy = targetObj.id;
		targetObj.hp -= hurtSource.dmg;
		
		#region Hit Numbers
		if (global.hitNumbers)
		{
			var hitNumber = instance_create_depth(targetObj.x,targetObj.y,-900,obj_HitNumbers);
			hitNumber.number = hurtSource.dmg;
			hitNumber.hsp = random_range(-1,1);
			hitNumber.vsp = -2;
			
			switch (hurtSource.abilityType)
			{
				case playerAbilities.cutter:
				hitNumber.splitAmount = 2;
				break;
	
				case playerAbilities.beam:
				hitNumber.shake = 1;
				hitNumber.flashColor[0] = make_color_rgb(255,255,255);
				hitNumber.flashColor[1] = make_color_rgb(255,160,100);
				hitNumber.flashTimerMax = 3;
				hitNumber.flashTimer = hitNumber.flashTimerMax;
				break;
	
				case playerAbilities.mysticBeam:
				hitNumber.shake = 1;
				hitNumber.flashColor[0] = make_color_rgb(255,255,255);
				hitNumber.flashColor[1] = make_color_rgb(210,130,250);
				hitNumber.flashTimerMax = 3;
				hitNumber.flashTimer = hitNumber.flashTimerMax;
				break;
	
				case playerAbilities.stone:
				hitNumber.shake = 2;
				break;
	
				case playerAbilities.ufo:
				hitNumber.shake = 1;
				hitNumber.flashColor[0] = make_color_rgb(255,255,255);
				hitNumber.flashColor[1] = make_color_rgb(255,145,240);
				hitNumber.flashTimerMax = 3;
				hitNumber.flashTimer = hitNumber.flashTimerMax;
				break;
	
				case playerAbilities.mirror:
				hitNumber.canChangeColor = true;
				hitNumber.splitAmount = 2;
				hitNumber.redTarget = 130;
				hitNumber.greenTarget = 175;
				hitNumber.blueTarget = 240;
				break;
	
				case playerAbilities.ninja:
				hitNumber.canChangeColor = true;
				hitNumber.splitAmount = 2;
				hitNumber.redTarget = 75;
				hitNumber.greenTarget = 75;
				hitNumber.blueTarget = 75;
				break;
	
				case playerAbilities.bomb:
				hitNumber.shake = 1;
				hitNumber.flashColor[0] = make_color_rgb(255,255,255);
				hitNumber.flashColor[1] = make_color_rgb(150,150,150);
				hitNumber.flashTimerMax = 3;
				hitNumber.flashTimer = hitNumber.flashTimerMax;
				break;
	
				case playerAbilities.fire:
				hitNumber.canChangeColor = true;
				hitNumber.redTarget = 255;
				hitNumber.greenTarget = 80;
				hitNumber.blueTarget = 80;
				break;
	
				case playerAbilities.mysticFire:
				hitNumber.canChangeColor = true;
				hitNumber.redTarget = 200;
				hitNumber.greenTarget = 100;
				hitNumber.blueTarget = 255;
				break;
	
				case playerAbilities.ice:
				hitNumber.flashColor[0] = make_color_rgb(255,255,255);
				hitNumber.flashColor[1] = make_color_rgb(120,255,255);
				hitNumber.flashTimerMax = 3;
				hitNumber.flashTimer = hitNumber.flashTimerMax;
				break;
	
				case playerAbilities.spark:
				hitNumber.flashColor[0] = make_color_rgb(255,255,255);
				hitNumber.flashColor[1] = make_color_rgb(170,255,135);
				hitNumber.flashTimerMax = 3;
				hitNumber.flashTimer = hitNumber.flashTimerMax;
				break;
	
				case playerAbilities.yoyo:
				hitNumber.angleSpd = 4;
				break;
	
				case playerAbilities.wheel:
				hitNumber.shake = 1;
				hitNumber.angleSpd = 4;
				break;
	
				case playerAbilities.artist:
				hitNumber.flashColor[0] = make_color_rgb(255,255,255);
				hitNumber.flashColor[1] = make_color_rgb(255,100,100);
				hitNumber.flashColor[2] = make_color_rgb(255,226,102);
				hitNumber.flashColor[3] = make_color_rgb(102,255,211);
				hitNumber.flashTimerMax = 1;
				hitNumber.flashTimer = hitNumber.flashTimerMax;
				break;
	
				case playerAbilities.fighter:
				hitNumber.shake = 1;
				hitNumber.canChangeColor = true;
				hitNumber.redTarget = 255;
				hitNumber.greenTarget = 140;
				hitNumber.blueTarget = 140;
				break;
	
				case playerAbilities.suplex:
				hitNumber.shake = 1;
				hitNumber.angleSpd = 4;
				break;
	
				case playerAbilities.wing:
				hitNumber.hasGravity = false;
				break;
	
				case playerAbilities.jet:
				hitNumber.shake = 1;
				hitNumber.canChangeColor = true;
				hitNumber.redTarget = 74;
				hitNumber.greenTarget = 186;
				hitNumber.blueTarget = 255;
				break;
	
				case playerAbilities.sword:
				hitNumber.splitAmount = 2;
				break;
	
				case playerAbilities.parasol:
				hitNumber.hasGravity = false;
				break;
	
				case playerAbilities.hammer:
				hitNumber.shake = 2;
				break;
	
				case playerAbilities.bell:
				hitNumber.shake = 1;
				hitNumber.flashColor[0] = make_color_rgb(255,255,255);
				hitNumber.flashColor[1] = make_color_rgb(255,255,140);
				hitNumber.flashTimerMax = 3;
				hitNumber.flashTimer = hitNumber.flashTimerMax;
				break;
	
				case playerAbilities.water:
				hitNumber.canChangeColor = true;
				hitNumber.redTarget = 110;
				hitNumber.greenTarget = 200;
				hitNumber.blueTarget = 255;
				break;
	
				case playerAbilities.sleep:
				hitNumber.canChangeColor = true;
				hitNumber.redTarget = 245;
				hitNumber.greenTarget = 158;
				hitNumber.blueTarget = 255;
				break;
	
				case playerAbilities.scan:
				hitNumber.flashColor[0] = make_color_rgb(255,255,255);
				hitNumber.flashColor[1] = make_color_rgb(0,180,20);
				hitNumber.flashTimerMax = 3;
				hitNumber.flashTimer = hitNumber.flashTimerMax;
				break;
	
				case playerAbilities.crash:
				hitNumber.shake = 3;
				hitNumber.clampY = true;
				break;
	
				case playerAbilities.mic:
				hitNumber.canChangeColor = true;
				hitNumber.redTarget = 125;
				hitNumber.greenTarget = 75;
				hitNumber.blueTarget = 215;
				hitNumber.shake = 3;
				hitNumber.clampY = true;
				break;
	
				case playerAbilities.chef:
				hitNumber.shake = 3;
				hitNumber.clampY = true;
				break;
	
				case playerAbilities.ultraSword:
				hitNumber.shake = 3;
				hitNumber.clampY = true;
				hitNumber.flashColor[0] = make_color_rgb(255,255,255);
				hitNumber.flashColor[1] = make_color_rgb(255,100,100);
				hitNumber.flashColor[2] = make_color_rgb(255,226,102);
				hitNumber.flashColor[3] = make_color_rgb(102,255,211);
				hitNumber.flashTimerMax = 1;
				break;
	
				case playerAbilities.cosmicBlade:
				hitNumber.shake = 2;
				hitNumber.flashColor[0] = make_color_rgb(255,255,255);
				hitNumber.flashColor[1] = make_color_rgb(235,193,242);
				hitNumber.flashColor[2] = make_color_rgb(227,128,242);
				hitNumber.flashColor[3] = make_color_rgb(217,58,242);
				hitNumber.flashColor[4] = make_color_rgb(227,128,242);
				hitNumber.flashColor[5] = make_color_rgb(235,193,242);
				hitNumber.flashTimerMax = 1;
				break;
			}
		}
		#endregion
		
		if (targetObj.hp <= 0)
		{
			switch (hurtSource.abilityType)
			{
				case playerAbilities.cutter:
				global.cutterAbilityKills += 1;
				break;
	
				case playerAbilities.beam:
				global.beamAbilityKills += 1;
				break;
	
				case playerAbilities.mysticBeam:
				global.mysticBeamAbilityKills += 1;
				break;
	
				case playerAbilities.stone:
				global.stoneAbilityKills += 1;
				break;
	
				case playerAbilities.ufo:
				global.ufoAbilityKills += 1;
				break;
	
				case playerAbilities.mirror:
				global.mirrorAbilityKills += 1;
				break;
	
				case playerAbilities.ninja:
				global.ninjaAbilityKills += 1;
				break;
	
				case playerAbilities.bomb:
				global.bombAbilityKills += 1;
				break;
	
				case playerAbilities.fire:
				global.fireAbilityKills += 1;
				break;
	
				case playerAbilities.mysticFire:
				global.mysticFireAbilityKills += 1;
				break;
	
				case playerAbilities.ice:
				global.iceAbilityKills += 1;
				break;
	
				case playerAbilities.spark:
				global.sparkAbilityKills += 1;
				break;
	
				case playerAbilities.yoyo:
				global.yoyoAbilityKills += 1;
				break;
	
				case playerAbilities.wheel:
				global.wheelAbilityKills += 1;
				break;
	
				case playerAbilities.artist:
				global.artistAbilityKills += 1;
				break;
	
				case playerAbilities.fighter:
				global.fighterAbilityKills += 1;
				break;
	
				case playerAbilities.suplex:
				global.suplexAbilityKills += 1;
				break;
	
				case playerAbilities.wing:
				global.wingAbilityKills += 1;
				break;
	
				case playerAbilities.jet:
				global.jetAbilityKills += 1;
				break;
	
				case playerAbilities.sword:
				global.swordAbilityKills += 1;
				break;
	
				case playerAbilities.parasol:
				global.parasolAbilityKills += 1;
				break;
	
				case playerAbilities.hammer:
				global.hammerAbilityKills += 1;
				break;
	
				case playerAbilities.bell:
				global.bellAbilityKills += 1;
				break;
	
				case playerAbilities.water:
				global.waterAbilityKills += 1;
				break;
	
				case playerAbilities.hiJump:
				global.hiJumpAbilityKills += 1;
				break;
	
				case playerAbilities.gear:
				global.gearAbilityKills += 1;
				break;
	
				case playerAbilities.sleep:
				global.sleepAbilityKills += 1;
				break;
	
				case playerAbilities.scan:
				global.scanAbilityKills += 1;
				break;
	
				case playerAbilities.crash:
				global.crashAbilityKills += 1;
				break;
	
				case playerAbilities.mic:
				global.micAbilityKills += 1;
				break;
	
				case playerAbilities.chef:
				global.chefAbilityKills += 1;
				break;
	
				case playerAbilities.ultraSword:
				global.ultraSwordAbilityKills += 1;
				break;
	
				case playerAbilities.cosmicBlade:
				global.cosmicBladeAbilityKills += 1;
				break;
			}
		}
		targetObj.shakeX = 2;
		targetObj.shakeY = 2;
		targetObj.direction = point_direction(targetObj.x,targetObj.y,x,y) + irandom_range(150,210);
		scr_HurtKnockback(targetObj,hurtSource);
		if (hurtSource.hsp == 0)
		{
			if (x < targetObj.x) targetObj.projectileHitKnockbackDir = -1;
		}
		else
		{
			targetObj.projectileHitKnockbackDir = -sign(hurtSource.hsp);
		}
		targetObj.hurt = true;
		if (targetObj.sprHurt != -1) targetObj.hurtImageIndex = irandom_range(0,sprite_get_number(targetObj.sprHurt) - 1);
		if ((!hurtSource.destroyableByEnemy) or ((targetObj.collisionHitbox != -1) and (hurtSource.destroyableByEnemy)))
		{
			targetObj.invincible = true;
			targetObj.invincibleTimer = hitInvincibility;
			targetObj.invincibleFlashTimer = targetObj.invincibleFlashTimerMax;
		}
		if (targetObj.isMystic) targetObj.fluxOverlayAlpha = .8;
					
		if (hurtSource.object_index == obj_Projectile_SlideMask)
		{
			//Kill
			
			if ((targetObj.hp <= -30) and (instance_exists(obj_Camera)))
			{
				obj_Camera.freezeFrameTimer = obj_Camera.freezeFrameTimerMax;
				obj_Camera.shakeX = 3;
				obj_Camera.shakeY = 3;
				//obj_Camera.hitZoom += .05;
			}
			
			if (!targetObj.hurtable)
			{
				var parDir = 1;
				if (x < targetObj.x) parDir = -1;
				var parCarryStart = instance_create_depth(targetObj.x + ((sprite_get_width(targetObj.mask_index) / 2) * parDir),targetObj.y,targetObj.depth - 1,obj_Particle);
				parCarryStart.sprite_index = spr_Particle_SlideToSentry;
				parCarryStart.imageSpeed = 1;
				parCarryStart.destroyAfterAnimation = true;
			}
		}
	}
			
	if ((hurtSource.owner != targetObj) and (!hurtSource.enemy))
	{
		switch (hurtSource.damageType)
		{
			case playerAbilities.cutter:
			var particle = instance_create_depth(targetObj.x,targetObj.y,targetObj.depth - 1,obj_Particle);
			particle.sprite_index = spr_Particle_CutterHit;
			particle.destroyAfterAnimation = true;
			break;
				
			case playerAbilities.ninja:
			var particle = instance_create_depth(targetObj.x,targetObj.y,targetObj.depth - 1,obj_Particle);
			particle.sprite_index = spr_Particle_CutterHit;
			particle.destroyAfterAnimation = true;
			break;
				
			case playerAbilities.wing:
			var particle = instance_create_depth(targetObj.x,targetObj.y,targetObj.depth - 1,obj_Particle);
			particle.sprite_index = spr_Particle_CutterHit;
			particle.destroyAfterAnimation = true;
			break;
		}
	}
}