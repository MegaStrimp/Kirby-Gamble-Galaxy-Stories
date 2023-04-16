///@description Player - Attack Passive - Cutter Normal
///@param {bool} playerCharacter Player Character
///@param {bool} playerAbility Player Ability
///@param {bool} hasSpectralCutter Has Spectral Cutter

function scr_Player_AttackPassive_CutterNormal(argument0,argument1,argument2)
{
	#region Arguments
	var playerCharacter = argument0;
	var playerAbility = argument1;
	var hasSpectralCutter = argument2;
	#endregion
	
	if ((attackable) and (round(image_index) == (image_number - 1)))
	{
		#region Sound Effect
		if (audio_is_playing(snd_Cutter)) audio_stop_sound(snd_Cutter);
		audio_play_sound(snd_Cutter,0,false);
		#endregion
		
		#region Attack Attributes
		attackable = false;
		attackTimer = 35;
		#endregion
		
		#region Cutter Projectile
		var projectile = instance_create_depth(x,y - 5,depth,obj_Projectile_Cutter);
		projectile.owner = id;
		projectile.abilityType = playerAbilities.cutter;
		projectile.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
		projectile.dmg = kirby_CutterNormal_Damage;
		scr_Attack_SetKnockback(projectile,kirby_CutterNormal_Strength,kirby_CutterNormal_HitStopAffectSource,kirby_CutterNormal_HitStopAffectPlayer,kirby_CutterNormal_HitStopAffectTarget,kirby_CutterNormal_HitStopLength,kirby_CutterNormal_HitStopShakeStrength);
		projectile.sprite_index = projectile.sprIdle;
		projectile.hsp = dir * projectile.decelMax;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.destroyableByObject = false;
		projectile.player = player;
		if (cutterSpectralCutterUpgrade)
		{
			projectile.destroyableByEnemy = false;
			projectile.image_alpha = .5;
		}
		#endregion
	}
}