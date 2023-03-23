///@description Execute Attack - Beam Charge Attack

function scr_Player_ExecuteAttack_BeamChargeAttack(argument0,argument1)
{
	#region Arguments
	var hasGoldenFlare = argument0;
	var hasMarxSoulHat = argument1;
	#endregion
	
	#region Sound Effect
	if (audio_is_playing(snd_BeamCharge)) audio_stop_sound(snd_BeamCharge);
	audio_play_sound(snd_BeamCharge,0,false);
	
	if (hasMarxSoulHat) audio_play_sound(snd_BeamChargeMarxAlt,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackNumber = playerAttacks.beamChargeAttack;
	scaleExX = .2;
	scaleExY = -.2;
	hsp = 1 * -dir;
	attackTimer = 20;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprBeamAttack5;
	image_index = 0;
	#endregion
	
	#region Beam Projectile
	var projectile = instance_create_depth(x + (6 * dir),y - 2,depth,obj_Projectile_BeamCharge);
	projectile.owner = id;
	projectile.abilityType = playerAbilities.beam;
	projectile.player = player;
	projectile.dmg = kirby_BeamChargeAttack_Damage;
	scr_Attack_SetKnockback(projectile,kirby_BeamChargeAttack_Strength,kirby_BeamChargeAttack_HitStopAffectSource,kirby_BeamChargeAttack_HitStopAffectPlayer,kirby_BeamChargeAttack_HitStopAffectTarget,kirby_BeamChargeAttack_HitStopLength,kirby_BeamChargeAttack_HitStopShakeStrength);
	projectile.hsp = dir * 6.5;
	projectile.dirX = dir;
	projectile.image_xscale = projectile.dirX;
	projectile.enemy = false;
	if (hasGoldenFlare)
	{
		projectile.character = 1;
		projectile.sprite_index = spr_Projectile_BeamCharge_Gold_Form1;
		projectile.upgradeProjTimer = projectile.upgradeProjTimerMax;
	}
	#endregion
}