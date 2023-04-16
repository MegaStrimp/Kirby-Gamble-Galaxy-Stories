///@description Execute Attack - Yoyo Dash

function scr_Player_ExecuteAttack_YoyoDash()
{
	#region Sound Effect
	if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
	yoyoDashSfx = audio_play_sound(snd_Fire3,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.yoyoDash;
	attackTimer = 45;
	state = playerStates.yoyoDash;
	invincible = true;
	vsp = 0;
	isRunning = false;
	if (runTurn) dir *= -1;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprBeamAttack3;
	image_index = 0;
	#endregion
	
	#region Dash Mask
	yoyoDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_YoyoDashMask);
	yoyoDashMaskProj.owner = id;
	yoyoDashMaskProj.abilityType = playerAbilities.yoyo;
	yoyoDashMaskProj.dmgMin = kirby_YoyoDash_DamageMin;
	yoyoDashMaskProj.dmgMax = kirby_YoyoDash_DamageMax;
	scr_Attack_SetKnockback(yoyoDashMaskProj,kirby_YoyoDash_Strength,kirby_YoyoDash_HitStopAffectSource,kirby_YoyoDash_HitStopAffectPlayer,kirby_YoyoDash_HitStopAffectTarget,kirby_YoyoDash_HitStopLength,kirby_YoyoDash_HitStopShakeStrength);
	yoyoDashMaskProj.image_xscale = image_xscale;
	yoyoDashMaskProj.image_yscale = image_yscale;
	#endregion
}