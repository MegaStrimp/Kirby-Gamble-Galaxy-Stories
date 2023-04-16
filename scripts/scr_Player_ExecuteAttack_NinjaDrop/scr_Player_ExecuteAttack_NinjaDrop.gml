///@description Execute Attack - Ninja Drop

function scr_Player_ExecuteAttack_NinjaDrop()
{
	#region Sound Effect
	if (audio_is_playing(snd_Slash)) audio_stop_sound(snd_Slash);
	audio_play_sound(snd_Slash,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.ninjaDrop;
	state = playerStates.ninjaDrop;
	invincible = true;
	hsp = 4.5 * dir;
	vsp = 4.5;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprCutterAttack3;
	image_index = 0;
	#endregion
	
	#region Ninja Drop Mask
	var ninjaDropMask = instance_create_depth(x,y,depth,obj_Projectile_NinjaDropMask);
	ninjaDropMask.owner = id;
	ninjaDropMask.abilityType = playerAbilities.ninja;
	ninjaDropMask.dmg = kirby_NinjaDrop_Damage;
	scr_Attack_SetKnockback(ninjaDropMask,kirby_NinjaDrop_Strength,kirby_NinjaDrop_HitStopAffectSource,kirby_NinjaDrop_HitStopAffectPlayer,kirby_NinjaDrop_HitStopAffectTarget,kirby_NinjaDrop_HitStopLength,kirby_NinjaDrop_HitStopShakeStrength);
	ninjaDropMask.image_xscale = image_xscale;
	ninjaDropMask.image_yscale = image_yscale;
	#endregion
}