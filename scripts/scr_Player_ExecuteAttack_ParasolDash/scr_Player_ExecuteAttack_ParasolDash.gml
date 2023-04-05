///@description Execute Attack - Parasol Dash

function scr_Player_ExecuteAttack_ParasolDash()
{
	#region Sound Effect
	if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
	parasolDashSfx = audio_play_sound(snd_Fire3,0,false);
	#endregion
	
	#region Attack Attributes
	attack = true;
	attackable = false;
	attackNumber = playerAttacks.parasolDash;
	attackTimer = 45;
	state = playerStates.parasolDash;
	invincible = true;
	invincibleTimer = 30;
	vsp = 0;
	isRunning = false;
	if (runTurn) dir *= -1;
	#endregion
	
	#region Attack Sprite
	sprite_index = sprBeamAttack3;
	image_index = 0;
	#endregion
	
	#region Dash Mask
	parasolDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_ParasolDashMask);
	parasolDashMaskProj.owner = id;
	parasolDashMaskProj.abilityType = playerAbilities.parasol;
	parasolDashMaskProj.dmgMin = kirby_ParasolDash_DamageMin;
	parasolDashMaskProj.dmgMax = kirby_ParasolDash_DamageMax;
	scr_Attack_SetKnockback(parasolDashMaskProj,kirby_ParasolDash_Strength,kirby_ParasolDash_HitStopAffectSource,kirby_ParasolDash_HitStopAffectPlayer,kirby_ParasolDash_HitStopAffectTarget,kirby_ParasolDash_HitStopLength,kirby_ParasolDash_HitStopShakeStrength);
	parasolDashMaskProj.image_xscale = image_xscale;
	parasolDashMaskProj.image_yscale = image_yscale;
	#endregion
}