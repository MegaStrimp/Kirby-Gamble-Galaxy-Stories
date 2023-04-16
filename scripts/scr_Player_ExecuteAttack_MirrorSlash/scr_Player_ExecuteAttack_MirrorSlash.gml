///@description Execute Attack - Mirror Slash

function scr_Player_ExecuteAttack_MirrorSlash()
{
	#region Sound Effect
	if (audio_is_playing(snd_Slash)) audio_stop_sound(snd_Slash);
	audio_play_sound(snd_Slash,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.mirrorSlash;
	attackTimer = 20;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprMirrorAttack1;
	image_index = 0;
	#endregion
	
	#region Mirror Projectile
	mirrorSlashProj = instance_create_depth(x,y,depth - 1,obj_Projectile_MirrorSlash);
	mirrorSlashProj.owner = id;
	mirrorSlashProj.abilityType = playerAbilities.mirror;
	mirrorSlashProj.dmg = kirby_MirrorSlash_Damage;
	scr_Attack_SetKnockback(mirrorSlashProj,kirby_MirrorSlash_Strength,kirby_MirrorSlash_HitStopAffectSource,kirby_MirrorSlash_HitStopAffectPlayer,kirby_MirrorSlash_HitStopAffectTarget,kirby_MirrorSlash_HitStopLength,kirby_MirrorSlash_HitStopShakeStrength);
	mirrorSlashProj.enemy = false;
	mirrorSlashProj.dirX = dir;
	mirrorSlashProj.image_xscale = mirrorSlashProj.dirX;
	#endregion
}