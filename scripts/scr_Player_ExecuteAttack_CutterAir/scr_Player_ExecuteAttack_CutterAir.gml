///@description Execute Attack - Cutter Air

function scr_Player_ExecuteAttack_CutterAir()
{
	#region Sound Effect
	if (audio_is_playing(snd_Slash)) audio_stop_sound(snd_Slash);
	audio_play_sound(snd_Slash,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackNumber = playerAttacks.cutterAir;
	invincible = true;
	invincibleFlashTimer = invincibleFlashTimerMax;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprCutterAttack3;
	image_index = 0;
	#endregion
	
	#region Cutter Air Mask
	var cutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CutterDropMask);
	cutterMaskProj.owner = id;
	cutterMaskProj.abilityType = playerAbilities.cutter;
	cutterMaskProj.dmg = kirby_CutterAir_Damage;
	scr_Attack_SetKnockback(cutterMaskProj,kirby_CutterAir_Strength,kirby_CutterAir_HitStopAffectSource,kirby_CutterAir_HitStopAffectPlayer,kirby_CutterAir_HitStopAffectTarget,kirby_CutterAir_HitStopLength,kirby_CutterAir_HitStopShakeStrength);
	cutterMaskProj.image_xscale = image_xscale;
	cutterMaskProj.image_yscale = image_yscale;
	#endregion
}