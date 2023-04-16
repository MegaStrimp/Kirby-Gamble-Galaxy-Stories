///@description Player - Attack Passive - Fire Normal

function scr_Player_AttackPassive_FireNormal()
{
	#region Shake
	shakeX = 1;
	#endregion
	
	#region Set Attack Timer
	if (fireNormalAttackTimer == -1) fireNormalAttackTimer = fireNormalAttackTimerMax;
	#endregion
	
	#region Cancel Attack
	if ((!global.cutscene) and (keyAttackReleased)) attackTimer = 0;
	#endregion
	
	#region Fire Back Attack
	if (fireBackCharge < fireBackChargeMax)
	{
		#region Fire Back Charge
		if (((dir == 1) and (keyLeftHold)) or ((dir == -1) and (keyRightHold)))
		{
			fireBackCharge += 1;
		}
		else
		{
			fireBackCharge = 0;
		}
		#endregion
	}
	else
	{
		#region Sound Effect
		if (audio_is_playing(snd_Fire2)) audio_stop_sound(snd_Fire2);
		if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
		audio_play_sound(snd_Fire3,0,false);
		#endregion
		
		#region Attack Attributes
		attack = true;
		attackable = false;
		attackNumber = playerAttacks.fireBack;
		fireBackCharge = 0;
		#endregion
		
		#region Attack Sprite
		sprite_index = sprFireAttack4;
		image_index = 0;
		#endregion
		
		#region Fire Mask
		fireMaskProj = instance_create_depth(x,y,depth,obj_Projectile_FireMask);
		fireMaskProj.owner = id;
		fireMaskProj.abilityType = playerAbilities.fire;
		fireMaskProj.sprite_index = sprFireAttack4;
		fireMaskProj.dmg = kirby_FireBack_Damage;
		scr_Attack_SetKnockback(fireMaskProj,kirby_FireBack_Strength,kirby_FireBack_HitStopAffectSource,kirby_FireBack_HitStopAffectPlayer,kirby_FireBack_HitStopAffectTarget,kirby_FireBack_HitStopLength,kirby_FireBack_HitStopShakeStrength);
		fireMaskProj.image_xscale = image_xscale;
		fireMaskProj.image_yscale = image_yscale;
		invincible = true;
		#endregion
	}
	#endregion
}