///@description Execute Attack - Fire Dash
///@param {bool} hasMagicCharcoal Has Magic Charcoal

function scr_Player_ExecuteAttack_FireDash()
{
	#region Arguments
	var hasMagicCharcoal = argument0;
	#endregion
	
	#region Sound Effect
	if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
	audio_play_sound(snd_Fire3,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.fireDash;
	state = playerStates.fireDash;
	attackTimer = 45;
	invincible = true;
	fireDashHsp = (movespeedBurst * ((fireMagicCharcoalUpgrade / 2) + 1)) * dir;
	vsp = 0;
	fireDashDir = 0;
	fireReleaseTimer = 35;
	if (fireDashUp > 0)
	{
		if (keyUpHold)
		{
			fireDashDir = -1;
			fireDashUp -= 1;
		}
	}
	else
	{
		fireDashDir = 1;
	}
	#endregion
	
	#region Fire Mask
	fireDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_BurstMask);
	fireDashMaskProj.owner = id;
	fireDashMaskProj.abilityType = playerAbilities.fire;
	fireDashMaskProj.dmgMin = kirby_FireDash_DamageMin;
	fireDashMaskProj.dmgMax = kirby_FireDash_DamageMax;
	scr_Attack_SetKnockback(fireDashMaskProj,kirby_FireDash_Strength,kirby_FireDash_HitStopAffectSource,kirby_FireDash_HitStopAffectPlayer,kirby_FireDash_HitStopAffectTarget,kirby_FireDash_HitStopLength,kirby_FireDash_HitStopShakeStrength);
	fireDashMaskProj.image_xscale = image_xscale;
	fireDashMaskProj.image_yscale = image_yscale;
	#endregion
	
	#region Fire Particle
	var par = instance_create_depth(x + (dir * 10),y - 4,depth - 1,obj_Particle);
	par.dir = dir;
	par.sprite_index = spr_Particle_Fire2;
	par.scale = 1 + (fireMagicCharcoalUpgrade / 2);
	par.paletteSpriteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
	par.paletteIndex = 1;
	par.destroyAfterAnimation = true;
	#endregion
}