///@description Player - Attack Passive - Ufo Beam

function scr_Player_AttackPassive_UfoBeam()
{
	if ((attackable) and (image_index > 3))
	{
		#region Sound Effect
		if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
		sndBeam = audio_play_sound(snd_Beam,0,false);
		#endregion
		
		#region Attack Attributes
		attackable = false;
		attackTimer = 35;
		#endregion
		
		#region Beam Projectile
		for (var i = 0; i < 5; i++)
		{
			var projBeam = instance_create_depth(-100,-100,depth + 1,obj_Projectile_Beam);
			projBeam.owner = id;
			projBeam.abilityType = playerAbilities.ufo;
			projBeam.player = player;
			projBeam.dmg = kirby_UfoBeam_Damage;
			scr_Attack_SetKnockback(projBeam,kirby_UfoBeam_Strength,kirby_UfoBeam_HitStopAffectSource,kirby_UfoBeam_HitStopAffectPlayer,kirby_UfoBeam_HitStopAffectTarget,kirby_UfoBeam_HitStopLength,kirby_UfoBeam_HitStopShakeStrength);
			switch (i)
			{
				case 0:
				projBeam.angle = 90 + (40 * -dir);
				break;
					
				case 1:
				projBeam.angle = 90 + (35 * -dir);
				break;
					
				case 2:
				projBeam.angle = 90 + (25 * -dir);
				break;
					
				case 3:
				projBeam.angle = 90 + (10 * -dir);
				break;
					
				case 4:
				projBeam.angle = 90 - (8 * -dir);
				break;
					
				case 5:
				projBeam.angle = 90 - (26 * -dir);
				break;
			}
			projBeam.centerX = 0;
			projBeam.centerY = 0;
			projBeam.orbit = 25 + (15 * i);
			projBeam.invisTimer = -1 + (2 * i);
			if (i > 0) projBeam.visible = false;
			projBeam.imageIndex = i - 1;
			if (projBeam.imageIndex < 0) projBeam.imageIndex = 0;
			if (projBeam.imageIndex > 3) projBeam.imageIndex = 3;
			projBeam.spd = (3.5 + (i * .4)) * -dir;
			projBeam.image_index = projBeam.imageIndex;
			projBeam.enemy = false;
			projBeam.destroyableByWall = false;
			projBeam.destroyableByEnemy = false;
			projBeam.destroyableByObject = false;
			projBeam.isUfo = true;
			projBeam.hitInvincibility = projBeam.hitInvincibilityMax;
			projBeam.pulseTimer = projBeam.pulseTimerMax;
			projBeam.invisTimerMax = -1;
			projBeam.destroyTimer = 25 + (2 * i);
		}
		#endregion
	}
}