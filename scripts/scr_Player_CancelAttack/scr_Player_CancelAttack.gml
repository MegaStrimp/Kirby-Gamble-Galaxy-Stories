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
		
		if (attackNumber == playerAttacks.cutterDash)
		{
			if (audio_is_playing(slideSfx)) audio_stop_sound(slideSfx);
	        if (instance_exists(cutterDashMaskProj)) instance_destroy(cutterDashMaskProj);
			state = playerStates.normal;
		}
		if ((attackNumber == playerAttacks.cutterAir) or (attackNumber == playerAttacks.cutterDrop))
		{
	        invincible = false;
	        state = playerStates.normal;
		}
		if ((attackNumber == playerAttacks.beamNormal) or (attackNumber == playerAttacks.beamAir) or (attackNumber == playerAttacks.beamUp))
		{
			audio_stop_sound(sndBeam);
			beamAttack2Timer = -1;
		}
		if (attackNumber == playerAttacks.beamDash)
		{
			beamDashAttackTimer = -1;
		}
		if ((attackNumber == playerAttacks.beamGrab) or (attackNumber == playerAttacks.mysticBeamGrab) or (attackNumber == playerAttacks.iceGrab))
		{
			if (instance_exists(grabObj)) grabObj.destroyTimer = 0;
			state = playerStates.normal;
		}
		if ((attackNumber == playerAttacks.mysticBeamNormal) or (attackNumber == playerAttacks.mysticBeamAir))
		{
			audio_stop_sound(sndMysticBeam);
			beamAttack2Timer = -1;
		}
		if ((attackNumber == playerAttacks.stoneNormal) or (attackNumber == "gooeyStoneNormal"))
		{
			grav = gravNormal;
			gravLimit = gravLimitNormal;
		}
		if (attackNumber == playerAttacks.stoneUp)
		{
			if (instance_exists(stoneFistMaskProj)) instance_destroy(stoneFistMaskProj);
			stoneFistReady = true;
		}/*
		if ((attackNumber == playerAttacks.mirrorDash) or (attackNumber == playerAttacks.mirrorUp) or (attackNumber == playerAttacks.mirrorDown))
		{
	        state = playerStates.normal;
		}*/
		if ((attackNumber == playerAttacks.fireDash) or (attackNumber == "gooeyFireDash"))
		{
			if (instance_exists(fireDashMaskProj)) instance_destroy(fireDashMaskProj);
			invincible = false;
			state = playerStates.normal;
		}
		if (attackNumber == playerAttacks.fireAerial)
		{
			if (instance_exists(fireMaskProj)) instance_destroy(fireMaskProj);
			invincible = false;
		}
		if (attackNumber == playerAttacks.fireWheel)
		{
			if (instance_exists(fireMaskProj)) instance_destroy(fireMaskProj);
			invincible = false;
		}
		if (attackNumber == playerAttacks.fireBack)
		{
			if (instance_exists(fireMaskProj)) instance_destroy(fireMaskProj);
			fireBackCharge = 0;
			invincible = false;
		}
		if ((attackNumber == playerAttacks.sparkUp) or (attackNumber == playerAttacks.sparkDown))
		{
			if (audio_is_playing(snd_Spark6)) audio_stop_sound(snd_Spark6);
		}
		if (attackNumber == playerAttacks.wheelNormal)
		{
			//if (instance_exists(wheelProj)) instance_destroy(wheelProj);
			invincible = false;
			state = playerStates.normal;
		}
		if (attackNumber == playerAttacks.wingDash)
		{
			if (audio_is_playing(wingDashSfx)) audio_stop_sound(wingDashSfx);
	        if (instance_exists(wingMaskProj)) instance_destroy(wingMaskProj);
			invincible = false;
			state = playerStates.normal;
		}
		if (attackNumber == playerAttacks.swordDash)
		{
			if (audio_is_playing(slideSfx)) audio_stop_sound(slideSfx);
	        if (instance_exists(swordDashMaskProj)) instance_destroy(swordDashMaskProj);
			state = playerStates.normal;
		}
		if (attackNumber == playerAttacks.sleepNormal)
		{
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
		}
		attack = false;
		attackable = true;
		attackNumber = "none";
	}
}