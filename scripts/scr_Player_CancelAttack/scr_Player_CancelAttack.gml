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
		
		if (attackNumber == "cutterDash")
		{
			if (audio_is_playing(slideSfx)) audio_stop_sound(slideSfx);
	        if (instance_exists(cutterDashMaskProj)) instance_destroy(cutterDashMaskProj);
			state = playerStates.normal;
		}
		if ((attackNumber == "cutterAir") or (attackNumber == "cutterDrop"))
		{
	        invincible = false;
	        state = playerStates.normal;
		}
		if ((attackNumber == "beamNormal") or (attackNumber == "beamAir") or (attackNumber == "beamUp"))
		{
			audio_stop_sound(sndBeam);
			beamAttack2Timer = -1;
		}
		if (attackNumber == "beamDash")
		{
			beamDashAttackTimer = -1;
		}
		if ((attackNumber == "beamGrab") or (attackNumber == "mysticBeamGrab") or (attackNumber == "iceGrab"))
		{
			if (instance_exists(grabObj)) grabObj.destroyTimer = 0;
			state = playerStates.normal;
		}
		if ((attackNumber == "mysticBeamNormal") or (attackNumber == "mysticBeamAir"))
		{
			audio_stop_sound(sndMysticBeam);
			beamAttack2Timer = -1;
		}
		if ((attackNumber == "stoneNormal") or (attackNumber == "gooeyStoneNormal"))
		{
			grav = gravNormal;
			gravLimit = gravLimitNormal;
		}
		if (attackNumber == "stoneUp")
		{
			if (instance_exists(stoneFistMaskProj)) instance_destroy(stoneFistMaskProj);
			stoneFistReady = true;
		}/*
		if ((attackNumber == "mirrorDash") or (attackNumber == "mirrorUp") or (attackNumber == "mirrorDown"))
		{
	        state = playerStates.normal;
		}*/
		if ((attackNumber == "fireDash") or (attackNumber == "gooeyFireDash"))
		{
			if (instance_exists(fireDashMaskProj)) instance_destroy(fireDashMaskProj);
			invincible = false;
			state = playerStates.normal;
		}
		if (attackNumber == "fireAerial")
		{
			if (instance_exists(fireMaskProj)) instance_destroy(fireMaskProj);
			invincible = false;
		}
		if (attackNumber == "fireWheel")
		{
			if (instance_exists(fireMaskProj)) instance_destroy(fireMaskProj);
			invincible = false;
		}
		if (attackNumber == "fireBack")
		{
			if (instance_exists(fireMaskProj)) instance_destroy(fireMaskProj);
			fireBackCharge = 0;
			invincible = false;
		}
		if ((attackNumber == "sparkUp") or (attackNumber == "sparkDown"))
		{
			if (audio_is_playing(snd_Spark6)) audio_stop_sound(snd_Spark6);
		}
		if (attackNumber == "wingDash")
		{
			if (audio_is_playing(wingDashSfx)) audio_stop_sound(wingDashSfx);
	        if (instance_exists(wingMaskProj)) instance_destroy(wingMaskProj);
			invincible = false;
			state = playerStates.normal;
		}
		if (attackNumber == "sleepNormal")
		{
			isSleeping = false;
			sleepEnd = false;
			if (player == 0)
			{
				global.abilityP1 = "none";
			}
			else
			{
				global.abilityP2 = "none";
			}
		}
		attack = false;
		attackable = true;
		attackNumber = "none";
	}
}