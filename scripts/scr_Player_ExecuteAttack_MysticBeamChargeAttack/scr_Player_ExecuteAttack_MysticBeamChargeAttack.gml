///@description Execute Attack - Mystic Beam Charge Attack
///@param {bool} hasVortexInAJar Has Vortex In A Jar

function scr_Player_ExecuteAttack_MysticBeamChargeAttack(argument0)
{
	#region Arguments
	var hasVortexInAJar = argument0;
	#endregion
	
	#region Sound Effect
	if (audio_is_playing(snd_MysticBeamCharge)) audio_stop_sound(snd_MysticBeamCharge);
	audio_play_sound(snd_MysticBeamCharge,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.mysticBeamChargeAttack;
	hsp = 1 * -dir;
	attackTimer = 210;
	scaleExX = .2;
	scaleExY = -.2;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprBeamAttack5;
	image_index = 0;
	#endregion
	
	#region Beam Charge Projectile
	mysticBeamCharge = instance_create_depth(x + (6 * dir),y - 2,depth,obj_Projectile_MysticBeamCharge);
	mysticBeamCharge.owner = id;
	mysticBeamCharge.abilityType = playerAbilities.mysticBeam;
	mysticBeamCharge.player = player;
	if (hasVortexInAJar)
	{
		mysticBeamCharge.character = 1;
	}
	else
	{
		mysticBeamCharge.character = 0;
	}
	mysticBeamCharge.dmg = floor(kirby_MysticBeamChargeAttack_Damage + (mysticBeamChargeEx * kirby_MysticBeamChargeAttack_DamageMult));
	scr_Attack_SetKnockback(mysticBeamCharge,kirby_MysticBeamChargeAttack_Strength,kirby_MysticBeamChargeAttack_HitStopAffectSource,kirby_MysticBeamChargeAttack_HitStopAffectPlayer,kirby_MysticBeamChargeAttack_HitStopAffectTarget,kirby_MysticBeamChargeAttack_HitStopLength,kirby_MysticBeamChargeAttack_HitStopShakeStrength);
	mysticBeamCharge.hsp = (2 + (mysticBeamChargeEx / .5)) * dir;
	mysticBeamCharge.dirX = dir;
	mysticBeamCharge.image_xscale = mysticBeamCharge.dirX;
	mysticBeamCharge.enemy = false;
	mysticBeamCharge.player = player;
	if (mysticBeamChargeEx > 0) mysticBeamCharge.supercharged = true;
	#endregion
}