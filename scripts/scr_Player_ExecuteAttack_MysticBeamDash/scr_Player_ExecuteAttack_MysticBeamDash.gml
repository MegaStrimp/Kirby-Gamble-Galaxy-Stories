///@description Execute Attack - Mystic Beam Dash

function scr_Player_ExecuteAttack_MysticBeamDash()
{
	#region Sound Effect
	if (audio_is_playing(snd_BeamBombRelease)) audio_stop_sound(snd_BeamBombRelease);
	audio_play_sound(snd_BeamBombRelease,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.mysticBeamDash;
	attackTimer = 20;
	isRunning = false;
	if (runTurn) dir *= -1;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprMysticBeamAttack1;
	image_index = 0;
	#endregion
	
	#region Particle
	var par = instance_create_depth(x + (16 * dir) + hsp,y - 9,depth - 1,obj_Particle);
	par.sprite_index = spr_Particle_MysticBeamLaser;
	par.dir = dir;
	par.attachedObject = id;
	par.attachedObjectXOffset = 16 * dir;
	par.attachedObjectYOffset = -9;
	par.destroyAfterAnimation = true;
	#endregion
	
	#region Beam Bomb Projectile
	beamBombProj = instance_create_depth(x + (17 * dir) + hsp,y - 9,depth + 1,obj_Projectile_BeamBomb);
	beamBombProj.owner = id;
	beamBombProj.abilityType = playerAbilities.mysticBeam;
	beamBombProj.dmg = kirby_MysticBeamDash_Damage;
	scr_Attack_SetKnockback(beamBombProj,kirby_MysticBeamDash_Strength,kirby_MysticBeamDash_HitStopAffectSource,kirby_MysticBeamDash_HitStopAffectPlayer,kirby_MysticBeamDash_HitStopAffectTarget,kirby_MysticBeamDash_HitStopLength,kirby_MysticBeamDash_HitStopShakeStrength);
	beamBombProj.hsp = 2 * dir;
	beamBombProj.destroyableByWall = false;
	beamBombProj.destroyableByEnemy = false;
	beamBombProj.destroyableByObject = false;
	#endregion
}