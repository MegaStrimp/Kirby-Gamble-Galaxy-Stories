///@description Execute Attack - Ninja Dash

function scr_Player_ExecuteAttack_NinjaDash()
{
	#region Sound Effect
	if (audio_is_playing(snd_CutterDash)) audio_stop_sound(snd_CutterDash);
	slideSfx = audio_play_sound(snd_CutterDash,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.ninjaDash;
	state = playerStates.ninjaDash;
	attackTimer = 45;
	hspLimit = false;
	hsp = movespeedSlide * dir;
	isRunning = false;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprCutterAttack2;
	image_index = 0;
	#endregion
	
	#region Ninja Dash Mask
	ninjaDashMaskProj = instance_create_depth(x + (14 * dir),y - 12,depth - 1,obj_Projectile_NinjaDashMask);
	ninjaDashMaskProj.owner = id;
	ninjaDashMaskProj.abilityType = playerAbilities.ninja;
	ninjaDashMaskProj.dmg = kirby_NinjaDash_Damage;
	scr_Attack_SetKnockback(ninjaDashMaskProj,kirby_NinjaDash_Strength,kirby_NinjaDash_HitStopAffectSource,kirby_NinjaDash_HitStopAffectPlayer,kirby_NinjaDash_HitStopAffectTarget,kirby_NinjaDash_HitStopLength,kirby_NinjaDash_HitStopShakeStrength);
	ninjaDashMaskProj.hsp = 4 * dir;
	ninjaDashMaskProj.vsp = 2;
	ninjaDashMaskProj.dirX = dir;
	ninjaDashMaskProj.image_xscale = image_xscale;
	ninjaDashMaskProj.image_yscale = image_yscale;
	#endregion
}