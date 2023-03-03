///@description Execute Attack - Beam Normal

function scr_Player_ExecuteAttack_BeamNormal()
{
	if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
	sndBeam = audio_play_sound(snd_Beam,0,false);
	attackable = false;
	attack = true;
	attackNumber = playerAttacks.beamNormal;
	vsp = 1;
	sprite_index = sprBeamAttack1;
	image_index = 0;
	attackTimer = 35;
	parBeamCycle1 = instance_create_depth(-100,-100,depth - 1,obj_Particle);
	parBeamCycle1.followObject = false;
	parBeamCycle1.followedObject = id;
	parBeamCycle1.sprite_index = spr_Particle_BeamCycle;
	parBeamCycle1.turnSpd = (5 * -dir);
	parBeamCycle1.turnAroundObject = true;
	parBeamCycle1.angle = 90 + (10 * dir);
	parBeamCycle1.orbit = 20;
	parBeamCycle1.invisTimerMax = 2;
	parBeamCycle1.invisTimer = parBeamCycle1.invisTimerMax;
	parBeamCycle1.destroyTimer = attackTimer;
	for (var i = 0; i < (5 + beamGoldenFlareUpgrade); i++)
	{
		var projBeam = instance_create_depth(-100,-100,depth + 1,obj_Projectile_Beam);
		projBeam.owner = id;
		projBeam.abilityType = playerAbilities.beam;
		projBeam.player = player;
		projBeam.dmg = kirby_BeamNormal_Damage;
		scr_Attack_SetKnockback(projBeam,kirby_BeamNormal_Strength,kirby_BeamNormal_HitStopAffectSource,kirby_BeamNormal_HitStopAffectPlayer,kirby_BeamNormal_HitStopAffectTarget,kirby_BeamNormal_HitStopLength,kirby_BeamNormal_HitStopShakeStrength);
		switch (i)
		{
			case 0:
			projBeam.angle = 90 + (30 * -dir);
			break;
				
			case 1:
			projBeam.angle = 90 + (25 * -dir);
			break;
				
			case 2:
			projBeam.angle = 90 + (15 * -dir);
			break;
				
			case 3:
			projBeam.angle = 90 + (0 * -dir);
			break;
				
			case 4:
			projBeam.angle = 90 - (18 * -dir);
			break;
				
			case 5:
			projBeam.angle = 90 - (36 * -dir);
			break;
		}
		projBeam.centerX = (10 * dir);
		projBeam.centerY = -5;
		projBeam.orbit = 20 + (15 * i);
		projBeam.invisTimer = -1 + (2 * i);
		if (i > 0) projBeam.visible = false;
		projBeam.imageIndex = i - 1;
		if (projBeam.imageIndex < 0) projBeam.imageIndex = 0;
		if (projBeam.imageIndex > 3) projBeam.imageIndex = 3;
		projBeam.spd = (3 + (i * .4)) * -dir;
		projBeam.image_index = projBeam.imageIndex;
		projBeam.enemy = false;
		projBeam.destroyableByWall = false;
		projBeam.destroyableByEnemy = false;
		projBeam.destroyableByObject = false;
		projBeam.hitInvincibility = projBeam.hitInvincibilityMax;
		projBeam.pulseTimer = projBeam.pulseTimerMax;
		projBeam.invisTimerMax = -1;
		projBeam.destroyTimer = 25 + (2 * i);
		if (beamGoldenFlareUpgrade)
		{
			projBeam.character = 6;
			projBeam.sprite_index = spr_Projectile_Beam_Gold;
		}
		if (((player == 0) and (global.hatTypeBeamP1 == abilityHatSkins.beam_marxSoul))
		or ((player == 1) and (global.hatTypeBeamP2 == abilityHatSkins.beam_marxSoul))
		or ((player == 2) and (global.hatTypeBeamP3 == abilityHatSkins.beam_marxSoul))
		or ((player == 3) and (global.hatTypeBeamP4 == abilityHatSkins.beam_marxSoul)))
		{
			if (i % 2)
			{
				projBeam.character = 9;
				projBeam.sprite_index = spr_Projectile_Beam_MarxSoul1;
			}
			else
			{
				projBeam.character = 10;
				projBeam.sprite_index = spr_Projectile_Beam_MarxSoul2;
			}
		}
	}
}