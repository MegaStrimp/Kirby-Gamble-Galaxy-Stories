///@description Execute Attack - Ninja Slash

function scr_Player_ExecuteAttack_NinjaSlash()
{
	#region Sound Effect
	if (audio_is_playing(snd_NinjaSlash)) audio_stop_sound(snd_NinjaSlash);
	audio_play_sound(snd_NinjaSlash,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.ninjaSlash;
	attackTimer = 10;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprNinjaAttack2;
	image_index = 0;
	#endregion
	
	#region Ninja Projectile
	var projectile = instance_create_depth(x + (14 * dir),y - 12,depth - 1,obj_Projectile_NinjaSlash);
	projectile.owner = id;
	projectile.abilityType = playerAbilities.ninja;
	projectile.dmg = kirby_NinjaSlash_Damage;
	scr_Attack_SetKnockback(projectile,kirby_NinjaSlash_Strength,kirby_NinjaSlash_HitStopAffectSource,kirby_NinjaSlash_HitStopAffectPlayer,kirby_NinjaSlash_HitStopAffectTarget,kirby_NinjaSlash_HitStopLength,kirby_NinjaSlash_HitStopShakeStrength);
	projectile.dirX = dir;
	projectile.image_xscale = projectile.dirX;
	projectile.enemy = false;
	#endregion
}