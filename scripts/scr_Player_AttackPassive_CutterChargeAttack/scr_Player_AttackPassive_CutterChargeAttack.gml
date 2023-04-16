///@description Player - Attack Passive - Cutter Charge Attack
///@param {bool} playerCharacter Player Character
///@param {bool} playerAbility Player Ability
///@param {bool} hasSpectralCutter Has Spectral Cutter

function scr_Player_AttackPassive_CutterChargeAttack(argument0,argument1,argument2)
{
	#region Arguments
	var playerCharacter = argument0;
	var playerAbility = argument1;
	var hasSpectralCutter = argument2;
	#endregion
	
	if ((attackable) and (round(image_index) == (image_number - 1)))
	{
		#region Sound Effect
		if (audio_is_playing(snd_CutterCharge)) audio_stop_sound(snd_CutterCharge);
		audio_play_sound(snd_CutterCharge,0,false);
		#endregion
		
		#region Attack Attributes
		attackable = false;
		attackTimer = 35;
		#endregion
		
		#region Cutter Projectile
		var projectile = instance_create_depth(x,y - 8,depth,obj_Projectile_Cutter);
		projectile.owner = id;
		projectile.abilityType = playerAbilities.cutter;
		projectile.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
		projectile.dmg = kirby_CutterChargeAttack_Damage;
		scr_Attack_SetKnockback(projectile,kirby_CutterChargeAttack_Strength,kirby_CutterChargeAttack_HitStopAffectSource,kirby_CutterChargeAttack_HitStopAffectPlayer,kirby_CutterChargeAttack_HitStopAffectTarget,kirby_CutterChargeAttack_HitStopLength,kirby_CutterChargeAttack_HitStopShakeStrength);
		projectile.sprite_index = projectile.sprCharge;
		projectile.decelMax = projectile.decelMax * 1.2;
		projectile.hsp = dir * projectile.decelMax;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.destroyableByEnemy = false;
		projectile.destroyableByObject = false;
		projectile.destroyableByProjectile = false;
		projectile.player = player;
		projectile.angleSpd = -30;
		projectile.charge = true;
		if (hasSpectralCutter)
		{
			projectile.image_alpha = .5;
		}
		#endregion
	}
}