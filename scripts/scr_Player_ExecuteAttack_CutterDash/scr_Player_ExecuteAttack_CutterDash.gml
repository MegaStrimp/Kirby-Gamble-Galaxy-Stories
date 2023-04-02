///@description Execute Attack - Cutter Dash

function scr_Player_ExecuteAttack_CutterDash()
{
	#region Sound Effect
	if (audio_is_playing(snd_CutterDash)) audio_stop_sound(snd_CutterDash);
	slideSfx = audio_play_sound(snd_CutterDash,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackNumber = playerAttacks.cutterDash;
	attackTimer = 45;
	invincible = true;
	cutterCatch = false;
	hspLimit = false;
	hsp = movespeedSlide * dir;
	isRunning = false;
	state = playerStates.cutterDash;
	if (runTurn) dir *= -1;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprCutterAttack2;
	image_index = 0;
	#endregion
	
	#region Cutter Dash Mask
	cutterDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CutterDashMask);
	cutterDashMaskProj.owner = id;
	cutterDashMaskProj.abilityType = playerAbilities.cutter;
	cutterDashMaskProj.dmgMax = kirby_CutterDash_DamageMax;
	cutterDashMaskProj.dmgMin = kirby_CutterDash_DamageMin;
	scr_Attack_SetKnockback(cutterDashMaskProj,kirby_CutterDash_Strength,kirby_CutterDash_HitStopAffectSource,kirby_CutterDash_HitStopAffectPlayer,kirby_CutterDash_HitStopAffectTarget,kirby_CutterDash_HitStopLength,kirby_CutterDash_HitStopShakeStrength);
	cutterDashMaskProj.image_xscale = image_xscale;
	cutterDashMaskProj.image_yscale = image_yscale;
	#endregion
}