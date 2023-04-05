///@description Player - Attack Passive - Wing Dash

function scr_Player_AttackPassive_WingDash()
{
	#region Sound Effect
	if (audio_is_playing(snd_WingDash)) audio_stop_sound(snd_WingDash);
	wingDashSfx = audio_play_sound(snd_WingDash,0,false);
	#endregion
	
	#region Attack Attributes
	attackable = false;
	attackTimer = 35;
	state = playerStates.wingDash;
	isRunning = false;
	wingDashParticleTimer = wingDashParticleTimerMax;
	#endregion
	
	#region Dash Mask
	wingMaskProj = instance_create_depth(x,y,depth,obj_Projectile_WingDashMask);
	wingMaskProj.owner = id;
	wingMaskProj.abilityType = playerAbilities.wing;
	wingMaskProj.dmgMax = kirby_WingDash_DamageMax;
	wingMaskProj.dmgMin = kirby_WingDash_DamageMin;
	scr_Attack_SetKnockback(wingMaskProj,kirby_WingDash_Strength,kirby_WingDash_HitStopAffectSource,kirby_WingDash_HitStopAffectPlayer,kirby_WingDash_HitStopAffectTarget,kirby_WingDash_HitStopLength,kirby_WingDash_HitStopShakeStrength);
	wingMaskProj.image_xscale = image_xscale;
	wingMaskProj.image_yscale = image_yscale;
	#endregion
}