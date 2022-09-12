///@description Player - Cancel Ability
///@param {real} objectToCheck Which object to check.

function scr_Player_CancelAttack(argument0)
{
	var objectToCheck = argument0;
	
	with (objectToCheck)
	{
		var playerAbility = global.abilityP1;
		if (player == 1) playerAbility = global.abilityP2;
		
		var playerCharacter = global.characterP1;
		if (player == 1) playerCharacter = global.characterP2;
		
		switch (attackNumber)
		{
			case playerAttacks.cutterDash:
			if (audio_is_playing(slideSfx)) audio_stop_sound(slideSfx);
	        if (instance_exists(cutterDashMaskProj)) instance_destroy(cutterDashMaskProj);
			state = playerStates.normal;
			break;
			
			case playerAttacks.cutterAir:
			case playerAttacks.cutterDrop:
	        invincible = false;
	        state = playerStates.normal;
			break;
			
			case playerAttacks.beamNormal:
			if (instance_exists(parBeamCycle1)) instance_destroy(parBeamCycle1);
			with (obj_Projectile_Beam) if ((state == 0) and (owner == other.id)) instance_destroy();
			case playerAttacks.beamUp:
			if (audio_is_playing(sndBeam)) audio_stop_sound(sndBeam);
			beamAttack2Timer = -1;
			break;
			
			case playerAttacks.beamAir:
			gravLimit = gravLimitNormal;
			if (audio_is_playing(sndBeam)) audio_stop_sound(sndBeam);
			beamAttack2Timer = -1;
			break;
			
			case playerAttacks.beamDash:
			with (obj_Projectile_BeamDash) if (owner == other.id) instance_destroy();
			beamDashAttackTimer = -1;
			break;
			
			case playerAttacks.beamGrab:
			case playerAttacks.mysticBeamGrab:
			if (instance_exists(grabObj)) grabObj.destroyTimer = 0;
			state = playerStates.normal;
			break;
			
			case playerAttacks.mysticBeamNormal:
			case playerAttacks.mysticBeamAir:
			audio_stop_sound(sndMysticBeam);
			beamAttack2Timer = -1;
			break;
			
			case playerAttacks.mysticBeamDash:
			//if (instance_exists(beamBombProj)) beamBombProj.explode = true;
			break;
			
			case playerAttacks.mysticBeamUp:
			mysticBeamUpAttackCount = 0;
			mysticBeamUpAttackTimer = -1;
			break;
			
			case playerAttacks.stoneNormal:
			case playerAttacks.gooeyStoneNormal:
			grav = gravNormal;
			gravLimit = gravLimitNormal;
			stoneParticleCount = 0;
			stoneReleaseParticleCount = 0;
			invincible = false;
			stoneReady = true;
			stoneFallen = false;
			break;
			
			case playerAttacks.stoneUp:
			if ((!stoneFistReady) and (instance_exists(stoneFistMaskProj))) instance_destroy(stoneFistMaskProj);
			stoneFistReady = true;
			break;
			
			/*
			case playerAttacks.mirrorDash:
			case playerAttacks.mirrorUp:
			case attackNumber == playerAttacks.mirrorDown:
	        state = playerStates.normal;
			break;*/
			
			case playerAttacks.fireDash:
			case playerAttacks.gooeyFireDash:
			if (instance_exists(fireDashMaskProj)) instance_destroy(fireDashMaskProj);
			invincible = false;
			state = playerStates.normal;
			break;
			
			case playerAttacks.fireAerial:
			case playerAttacks.fireWheel:
			if (instance_exists(fireMaskProj)) instance_destroy(fireMaskProj);
			invincible = false;
			break;
			
			case playerAttacks.fireBack:
			if (instance_exists(fireMaskProj)) instance_destroy(fireMaskProj);
			fireBackCharge = 0;
			invincible = false;
			break;
			
			case playerAttacks.sparkNormal:
			if (instance_exists(sparkProj)) instance_destroy(sparkProj);
			break;
			
			case playerAttacks.sparkUp:
			case playerAttacks.sparkDown:
			if (audio_is_playing(snd_Spark6)) audio_stop_sound(snd_Spark6);
			break;
			
			case playerAttacks.yoyoDash:
			if (audio_is_playing(yoyoDashSfx)) audio_stop_sound(yoyoDashSfx);
	        if (instance_exists(yoyoDashMaskProj)) instance_destroy(yoyoDashMaskProj);
			state = playerStates.normal;
			break;
			
			case playerAttacks.wheelNormal:
			//if (instance_exists(wheelProj)) instance_destroy(wheelProj);
			wheelReady = false;
			wheelCrash = false;
			invincible = false;
			state = playerStates.normal;
			break;
			
			case playerAttacks.wingDash:
			if (audio_is_playing(wingDashSfx)) audio_stop_sound(wingDashSfx);
	        if (instance_exists(wingMaskProj)) instance_destroy(wingMaskProj);
			invincible = false;
			state = playerStates.normal;
			break;
			
			case playerAttacks.swordDash:
			if (audio_is_playing(slideSfx)) audio_stop_sound(slideSfx);
	        if (instance_exists(swordDashMaskProj)) instance_destroy(swordDashMaskProj);
			state = playerStates.normal;
			break;
			
			case playerAttacks.parasolDash:
			if (audio_is_playing(parasolDashSfx)) audio_stop_sound(parasolDashSfx);
	        if (instance_exists(parasolDashMaskProj)) instance_destroy(parasolDashMaskProj);
			state = playerStates.normal;
			break;
			
			case playerAttacks.sleepNormal:
			isSleeping = false;
			sleepEnd = false;
			if (player == 0)
			{
				global.abilityP1 = playerAbilities.none;
			}
			else
			{
				global.abilityP2 = playerAbilities.none;
			}
			break;
		}
		attack = false;
		attackable = true;
		attackNumber = playerAttacks.none;
	}
}