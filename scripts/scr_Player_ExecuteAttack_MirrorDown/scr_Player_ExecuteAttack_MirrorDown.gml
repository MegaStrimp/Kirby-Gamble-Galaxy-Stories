///@description Execute Attack - Mirror Down
///@param {bool} playerCharacter Player Character
///@param {bool} playerAbility Player Ability

function scr_Player_ExecuteAttack_MirrorDown(argument0,argument1)
{
	#region Arguments
	var playerCharacter = argument0;
	var playerAbility = argument1;
	#endregion
	
	#region Sound Effect
	if (audio_is_playing(snd_Mirror4)) audio_stop_sound(snd_Mirror4);
	audio_play_sound(snd_Mirror4,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.mirrorDown;
	state = playerStates.mirrorDash;
	invincible = true;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprMirrorAttack4;
	image_index = 0;
	#endregion
	
	#region Mirror Projectile
	var mirrorSpawner = instance_create_depth(x,y,depth,obj_MirrorAttackSpawner);
	mirrorSpawner.owner = id;
	mirrorSpawner.dir = dir;
	mirrorSpawner.spriteIndex = sprMirrorAttack4;
	mirrorSpawner.paletteIndex = paletteIndex;
	mirrorSpawner.hatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
	mirrorSpawner.hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
	mirrorSpawner.hatPaletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
	for (var i = 0; i < 3; i++)
	{
		var par = instance_create_depth(x,y - 7,depth + 1,obj_Particle);
		par.direction = random_range(0,359);
		par.sprite_index = spr_Particle_Mirror1;
		par.spdBuiltIn = irandom_range(1,2);
		par.destroyAfterAnimation = true;
	}
	#endregion
}