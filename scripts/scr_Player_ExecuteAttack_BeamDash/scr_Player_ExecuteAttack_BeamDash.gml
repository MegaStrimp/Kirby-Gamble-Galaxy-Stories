///@description Execute Attack - Beam Dash

function scr_Player_ExecuteAttack_BeamDash()
{
	#region Sound Effect
	if (audio_is_playing(snd_BeamDash)) audio_stop_sound(snd_BeamDash);
	sndBeam = audio_play_sound(snd_BeamDash,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackNumber = playerAttacks.beamDash;
	invincible = true;
	invincibleTimer = 30;
	attackTimer = 60;
	beamDashAttackTimer = 0;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprBeamAttack3;
	image_index = 0;
	#endregion
	
	#region Beam Projectile
	var proj = instance_create_depth(x + (21 * dir),y - 7,depth - 1,obj_Projectile_BeamDash);
	proj.owner = id;
	proj.abilityType = playerAbilities.beam;
	proj.dmg = kirby_BeamDash_Damage;
	scr_Attack_SetKnockback(proj,kirby_BeamDash_Strength,kirby_BeamDash_HitStopAffectSource,kirby_BeamDash_HitStopAffectPlayer,kirby_BeamDash_HitStopAffectTarget,kirby_BeamDash_HitStopLength,kirby_BeamDash_HitStopShakeStrength);
	proj.enemy = false;
	proj.dirX = dir;
	proj.player = player;
	proj.image_xscale = proj.dirX;
	proj.hitInvincibility = 15;
	#endregion
}