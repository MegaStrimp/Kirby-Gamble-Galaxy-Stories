///@description Execute Attack - Mystic Beam Normal

function scr_Player_ExecuteAttack_MysticBeamNormal()
{
	#region Sound Effect
	if (audio_is_playing(snd_MysticBeam)) audio_stop_sound(snd_MysticBeam);
	sndMysticBeam = audio_play_sound(snd_MysticBeam,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.mysticBeamNormal;
	attackTimer = 35;
	canMysticBeamShield = false;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprBeamAttack1;
	image_index = 0;
	#endregion
	
	#region Cycle Particle
	parBeamCycle1 = instance_create_depth(-100,-100,depth - 1,obj_Particle);
	parBeamCycle1.followObject = false;
	parBeamCycle1.followedObject = id;
	parBeamCycle1.sprite_index = spr_Particle_MysticBeamCycle;
	parBeamCycle1.turnSpd = (5 * -dir);
	parBeamCycle1.turnAroundObject = true;
	parBeamCycle1.angle = 90 + (10 * dir);
	parBeamCycle1.orbit = 20;
	parBeamCycle1.invisTimerMax = 2;
	parBeamCycle1.invisTimer = parBeamCycle1.invisTimerMax;
	parBeamCycle1.destroyTimer = attackTimer;
	#endregion
	
	#region Beam Projectile
	var maxBeam = 4;
	
	for (var i = 0; i < maxBeam; i++)
	{
		var projBeam = instance_create_depth(x,y,depth,obj_Projectile_Beam);
		projBeam.owner = id;
		projBeam.abilityType = playerAbilities.mysticBeam;
		projBeam.player = player;
		if (i % 2 == 0) projBeam.image_index = 1;
		projBeam.movespeed = 4;
		projBeam.jumpspeed = 0;
		projBeam.angle = (((360 / maxBeam) * i) * -dir);
		projBeam.spd = 5 * dir;
		projBeam.dmg = kirby_MysticBeamNormal_Damage;
		scr_Attack_SetKnockback(projBeam,kirby_MysticBeamNormal_Strength,kirby_MysticBeamNormal_HitStopAffectSource,kirby_MysticBeamNormal_HitStopAffectPlayer,kirby_MysticBeamNormal_HitStopAffectTarget,kirby_MysticBeamNormal_HitStopLength,kirby_MysticBeamNormal_HitStopShakeStrength);
		projBeam.dir = dir;
		projBeam.orbit = 0;
		projBeam.orbitMax = 35;
		projBeam.owner = id;
		projBeam.player = player;
		projBeam.state = 2;
		projBeam.enemy = false;
		projBeam.hurtsObject = true;
		projBeam.hurtsEnemy = true;
		projBeam.hurtsPlayer = false;
		projBeam.destroyableByWall = false;
		projBeam.destroyableByEnemy = true;
		projBeam.destroyableByObject = true;
		projBeam.character = 2;
		projBeam.sprIdle = spr_Projectile_MysticBeam_Normal;
		projBeam.isMystic = true;
		projBeam.trailSpr = spr_Projectile_MysticBeam_Normal_Trail;
		projBeam.trailTimer = 0;
		projBeam.destroyTimer = -1;
	}
	#endregion
}