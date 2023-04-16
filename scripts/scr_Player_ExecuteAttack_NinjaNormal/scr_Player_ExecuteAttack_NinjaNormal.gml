///@description Execute Attack - Ninja Normal

function scr_Player_ExecuteAttack_NinjaNormal()
{
	#region Sound Effect
	if (audio_is_playing(snd_NinjaKnife)) audio_stop_sound(snd_NinjaKnife);
	audio_play_sound(snd_NinjaKnife,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.ninjaNormal;
	attackTimer = 4;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprNinjaAttack1;
	image_index = 0;
	#endregion
	
	#region Ninja Projectile
	var projectile = instance_create_depth(x + (8 * dir),y - 5 + (irandom_range(-3,3)),depth - 1,obj_Projectile_NinjaKunai);
	projectile.owner = id;
	projectile.abilityType = playerAbilities.ninja;
	projectile.dmg = kirby_NinjaNormal_Damage;
	scr_Attack_SetKnockback(projectile,kirby_NinjaNormal_Strength,kirby_NinjaNormal_HitStopAffectSource,kirby_NinjaNormal_HitStopAffectPlayer,kirby_NinjaNormal_HitStopAffectTarget,kirby_NinjaNormal_HitStopLength,kirby_NinjaNormal_HitStopShakeStrength);
	projectile.hsp = dir * 7;
	projectile.dirX = dir;
	projectile.image_xscale = projectile.dirX;
	projectile.enemy = false;
	#endregion
}