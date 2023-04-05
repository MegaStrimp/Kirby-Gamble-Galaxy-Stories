///@description Execute Attack - Wing Normal
///@param {bool} playerAbility Player Ability
///@param {bool} playerCharacter Player Character

function scr_Player_ExecuteAttack_WingNormal(argument0,argument1)
{
	#region Arguments
	var playerAbility = argument0;
	var playerCharacter = argument1;
	#endregion
	
	#region Sound Effect
	if (audio_is_playing(snd_WingShot)) audio_stop_sound(snd_WingShot);
	audio_play_sound(snd_WingShot,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.wingNormal;
	attackTimer = 10;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprWingAttack1;
	image_index = 0;
	#endregion
	
	#region Feather Projectile
	var projectile = instance_create_depth(x + (10 * dir),y - 1 + (irandom_range(-3,3)),depth - 1,obj_Projectile_WingFeather);
	projectile.owner = id;
	projectile.abilityType = playerAbilities.wing;
	switch (wingFeatherPos)
	{
		case 0:
		projectile.image_index = 2;
		projectile.hsp = dir * 3;
		wingFeatherPos += 1;
		break;
		
		case 1:
		projectile.image_index = 1;
		projectile.hsp = dir * 3;
		projectile.vsp = -1;
		projectile.dirY = -1;
		wingFeatherPos += 1;
		break;
		
		case 2:
		projectile.image_index = 1;
		projectile.hsp = dir * 3;
		projectile.vsp = 1;
		wingFeatherPos += 1;
		break;
		
		case 3:
		projectile.image_index = 2;
		projectile.hsp = dir * 3;
		wingFeatherPos += 1;
		break;
		
		case 4:
		projectile.image_index = 0;
		projectile.hsp = dir * 3;
		projectile.vsp = -1.5;
		projectile.dirY = -1;
		wingFeatherPos += 1;
		break;
		
		case 5:
		projectile.image_index = 0;
		projectile.hsp = dir * 3;
		projectile.vsp = 1.5;
		wingFeatherPos = 0;
		break;
	}
	projectile.dmg = kirby_WingNormal_Damage;
	scr_Attack_SetKnockback(projectile,kirby_WingNormal_Strength,kirby_WingNormal_HitStopAffectSource,kirby_WingNormal_HitStopAffectPlayer,kirby_WingNormal_HitStopAffectTarget,kirby_WingNormal_HitStopLength,kirby_WingNormal_HitStopShakeStrength);
	projectile.dirX = dir;
	projectile.image_xscale = projectile.scale * projectile.dirX;
	projectile.image_yscale = projectile.scale * projectile.dirY;
	projectile.enemy = false;
	projectile.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
	#endregion
}