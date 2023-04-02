///@description Execute Attack - Cutter Drop

function scr_Player_ExecuteAttack_CutterDrop()
{
	#region Sound Effect
	if (audio_is_playing(snd_Slash)) audio_stop_sound(snd_Slash);
	audio_play_sound(snd_Slash,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackNumber = playerAttacks.cutterDrop;
	invincible = true;
	state = playerStates.cutterDrop;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprCutterAttack3;
	image_index = 0;
	#endregion
	
	#region Cutter Drop Mask
	var cutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CutterDropMask);
	cutterMaskProj.owner = id;
	cutterMaskProj.abilityType = playerAbilities.cutter;
	cutterMaskProj.dmg = kirby_CutterDrop_Damage;
	scr_Attack_SetKnockback(cutterMaskProj,kirby_CutterDrop_Strength,kirby_CutterDrop_HitStopAffectSource,kirby_CutterDrop_HitStopAffectPlayer,kirby_CutterDrop_HitStopAffectTarget,kirby_CutterDrop_HitStopLength,kirby_CutterDrop_HitStopShakeStrength);
	cutterMaskProj.image_xscale = image_xscale;
	cutterMaskProj.image_yscale = image_yscale;
	#endregion
}