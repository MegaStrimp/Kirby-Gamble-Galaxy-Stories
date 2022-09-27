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
		if (hurtSource.dmg >= targetObj.hp)
		{
			targetObj.bubbleX = x;
			targetObj.bubbleY = y;
			targetObj.hurtTimer = ((targetObj.hurtStopTimerMax + 5) * (!targetObj.instaDeath));
			if ((targetObj.hasDeathKnockback) and (!targetObj.isBoss) and (targetObj.isMiniBoss) and (targetObj.takenDamageType != damageTypes.ice)) targetObj.hurtStopTimer = targetObj.hurtStopTimerMax;
			targetObj.shake = 1;
			if (instance_exists(obj_Camera)) obj_Camera.shake = 3;
		}
		else
		{
			targetObj.hurtTimer = targetObj.hurtTimerMax;
		}
		if ((targetObj.canGetHealthbar) and ((!targetObj.isMiniBoss) or (!targetObj.isBoss))) global.healthbarMarkedEnemy = targetObj.id;
		targetObj.hp -= hurtSource.dmg;
		if (global.hitNumbers)
		{
			var hitNumber = instance_create_depth(hurtSource.x,hurtSource.y,-900,obj_HitNumbers);
			hitNumber.number = hurtSource.dmg;
			hitNumber.hsp = random_range(-1,1);
			hitNumber.vsp = -2;
		}
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
		if (!hurtSource.destroyableByEnemy)
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