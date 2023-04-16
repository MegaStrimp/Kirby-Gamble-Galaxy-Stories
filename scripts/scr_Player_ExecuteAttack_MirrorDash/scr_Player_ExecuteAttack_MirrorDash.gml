///@description Execute Attack - Mirror Dash
///@param {bool} playerCharacter Player Character
///@param {bool} playerAbility Player Ability

function scr_Player_ExecuteAttack_MirrorDash(argument0,argument1)
{
	#region Arguments
	var playerCharacter = argument0;
	var playerAbility = argument1;
	#endregion
	
	#region Sound Effect
	if (audio_is_playing(snd_Mirror2)) audio_stop_sound(snd_Mirror2);
	audio_play_sound(snd_Mirror2,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.mirrorDash;
	state = playerStates.mirrorDash;
	invincible = true;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprMirrorAttack3;
	image_index = 0;
	#endregion
	
	#region Mirror Particles
	for (var i = 0; i < 3; i++)
	{
		var par = instance_create_depth(x,y - 7,depth + 1,obj_Particle);
		par.direction = random_range(0,359);
		par.sprite_index = spr_Particle_Mirror1;
		par.spdBuiltIn = irandom_range(1,2);
		par.destroyAfterAnimation = true;
	}
	#endregion
	
	#region Mirror Projectile
	for (var i = 0; i < 2; i++)
	{
		var projMirror = instance_create_depth(x,y,depth,obj_Projectile_MirrorPlayer);
		projMirror.owner = id;
		projMirror.abilityType = playerAbilities.mirror;
		projMirror.player = player;
		projMirror.dmg = kirby_MirrorDash_Damage;
		scr_Attack_SetKnockback(projMirror,kirby_MirrorDash_Strength,kirby_MirrorDash_HitStopAffectSource,kirby_MirrorDash_HitStopAffectPlayer,kirby_MirrorDash_HitStopAffectTarget,kirby_MirrorDash_HitStopLength,kirby_MirrorDash_HitStopShakeStrength);
		projMirror.dirX = 1;
		projMirror.image_xscale = scale * dir;
		projMirror.destroyableByWall = false;
		projMirror.destroyableByEnemy = false;
		projMirror.destroyableByObject = false;
		if (i == 1)
		{
			projMirror.dirX = -1;
			projMirror.image_xscale = -(scale * dir);
		}
		if (vsp != 0)
		{
			if (hsp > 0)
			{
				projMirror.jumpAngle = point_direction(0,0,hsp,vsp);
			}
			else if (hsp < 0)
			{
				projMirror.jumpAngle = point_direction(0,0,-hsp,-vsp);
			}
			projMirror.jumpAngle = point_direction(0,0,-hsp,-vsp);
		}
		projMirror.spriteIndex = sprMirrorAttack3;
		projMirror.paletteIndex = paletteIndex;
		if ((playerCharacter == playerCharacters.kirby) and (global.abilitySpraysKeycard) and (global.cheatColoredAbilitiesEquipped)) projMirror.paletteIndex = spr_Kirby_Normal_Palette_Mirror;
		projMirror.hatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
		projMirror.hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
		projMirror.hatPaletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
	}
	#endregion
}