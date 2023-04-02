///@description Execute Attack - Beam Up

function scr_Player_ExecuteAttack_BeamUp(argument0,argument1)
{
	#region Arguments
	var hasGoldenFlare = argument0;
	var hasMarxSoulHat = argument1;
	#endregion
	
	#region Sound Effect
	if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
	sndBeam = audio_play_sound(snd_Beam,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackNumber = playerAttacks.beamUp;
	vsp = 1;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprBeamAttack4;
	image_index = 0;
	#endregion
	
	#region Beam Projectile
	for (var i = 0; i < (5 + beamGoldenFlareUpgrade); i++)
	{
		var projBeam = instance_create_depth(-100,-100,depth + 1,obj_Projectile_Beam);
		projBeam.owner = id;
		projBeam.abilityType = playerAbilities.beam;
		projBeam.player = player;
		projBeam.dmg = kirby_BeamUp_Damage;
		scr_Attack_SetKnockback(projBeam,kirby_BeamUp_Strength,kirby_BeamUp_HitStopAffectSource,kirby_BeamUp_HitStopAffectPlayer,kirby_BeamUp_HitStopAffectTarget,kirby_BeamUp_HitStopLength,kirby_BeamUp_HitStopShakeStrength);
		switch (i)
		{
			case 0:
			projBeam.angle = (270 + (dir * 100)) - (38 * -dir);
			break;
			
			case 1:
			projBeam.angle = (270 + (dir * 100)) - (35 * -dir);
			break;
			
			case 2:
			projBeam.angle = (270 + (dir * 100)) - (26 * -dir);
			break;
			
			case 3:
			projBeam.angle = (270 + (dir * 100)) - (14 * -dir);
			break;
			
			case 4:
			projBeam.angle = (270 + (dir * 100)) + (0 * -dir);
			break;
			
			case 5:
			projBeam.angle = (270 + (dir * 100)) + (14 * -dir);
			break;
		}
		projBeam.orbit = 38 + (15 * i);
		projBeam.invisTimer = -1 + (2 * i);
		if (i > 0) projBeam.visible = false;
		projBeam.imageIndex = i - 1;
		if (projBeam.imageIndex < 0) projBeam.imageIndex = 0;
		if (projBeam.imageIndex > 3) projBeam.imageIndex = 3;
		projBeam.spd = (2.8 + (i * .4)) * dir;
		projBeam.image_index = projBeam.imageIndex;
		projBeam.enemy = false;
		projBeam.destroyableByWall = false;
		projBeam.destroyableByEnemy = false;
		projBeam.destroyableByObject = false;
		projBeam.hasLimit = false;
		projBeam.hitInvincibility = projBeam.hitInvincibilityMax;
		projBeam.pulseTimer = projBeam.pulseTimerMax;
		projBeam.invisTimerMax = -1;
		projBeam.destroyTimer = 25 + (2 * i);
		
		#region Golden Flare Upgrade
		if (hasGoldenFlare)
		{
			projBeam.character = 6;
			projBeam.sprite_index = spr_Projectile_Beam_Gold;
		}
		#endregion
		
		#region Marx Soul Hat Skin
		if (hasMarxSoulHat)
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
		#endregion
	}
	#endregion
}