///@description Player - Cancel Ability
///@param {real} objectToCheck Which object to check.

function scr_Player_CancelAbility(argument0)
{
	var objectToCheck = argument0;
	
	scr_Player_CancelAttack(objectToCheck);
	with (objectToCheck)
	{
		duckJumpCharge = 0;
		cutterCharge = 0;
		beamCharge = 0;
		stoneParticleCount = 0;
		stoneReady = true;
		stoneFallen = false;
		stoneFistReady = true;
		mirrorHold = false;
		mirrorFirstAttack = true;
		mirrorAttackDir = 1;
		ufoCharge = 0;
		stoneReadyTimer = -1;
		stoneParticleTimer = -1;
		stoneFistReadyTimer = -1;
		stoneFistReleaseTimer = -1;
		bombDir = 0;
		bombDirMax = 60;
		bombDownReady = false;
		fireBackCharge = 0;
		iceReady = true;
		iceRelease = false;
		icePosition = 0;
		sparkCharge = 0;
		sparkMaxCharge = false;
		isSleeping = false;
		if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
		chargeSfxState = "intro";
		attack = false;
		attackable = true;
		attackNumber = "none";
	}
	
	with (obj_Projectile_Beam)
	{
		if ((owner == objectToCheck) and (isMystic) and (state == 2))
		{
			instance_destroy();
		}
	}
	if (objectToCheck.sparkMaxCharge) with (obj_Projectile_SparkAura) if (owner == objectToCheck) instance_destroy();
}