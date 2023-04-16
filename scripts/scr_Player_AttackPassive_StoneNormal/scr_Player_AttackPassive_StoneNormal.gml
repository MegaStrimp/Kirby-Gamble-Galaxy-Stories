///@description Player - Attack Passive - Stone Normal

function scr_Player_AttackPassive_StoneNormal()
{
	#region Fall To Ground
	if ((!stoneFallen) and (!stoneReady) and (place_meeting(x,y + vsp + 1,obj_ParentWall)) and (sign(vsp) == 1))
	{
		#region Sound Effects
		if (audio_is_playing(snd_StoneFallen)) audio_stop_sound(snd_StoneFallen);
		audio_play_sound(snd_StoneFallen,0,false);
		
		if ((sprite_index == sprStoneAttack1Rare) and (floor(image_index) == 6))
		{
			if (audio_is_playing(snd_JellyStone)) audio_stop_sound(snd_JellyStone);
			audio_play_sound(snd_JellyStone,0,false);
		}
		#endregion
		
		#region Attack Attributes
		stoneFallen = true;
		scaleExX = .2;
		scaleExY = -.2;
		shakeY = 3;
		#endregion
		
		#region Release Recoil Stars
		for (var i = 0; i < 2; i++)
		{
			var parXDir = 4;
			if (i == 1) var parXDir = -4;
			var par = instance_create_depth(x + parXDir,y + 3,depth - 1,obj_RecoilStar);
			par.owner = id;
			par.abilityType = playerAbilities.stone;
			if (i == 0)
			{
				par.hsp = 3;
			}
			else if (i == 1)
			{
				par.hsp = -3;
			}
			par.dir = sign(par.hsp);
			par.hurtsObject = true;
			par.hurtsEnemy = true;
			par.canBeInhaled = false;
			par.destroyTimer = 15;
		}
		#endregion
		
		#region Screenshake
		with (obj_Camera)
		{
			shakeX = 2;
			shakeY = 2;
		}
		#endregion
	}
	#endregion
						
	if (stoneReady)
	{
		#region Shake
		shakeX = 2;
		#endregion
	}
	else if (!global.cutscene)
	{
		#region Move Stone With Inhale
		with (obj_InhaleMask)
		{
			if (place_meeting(x,y,other))
			{
				other.shakeX = 2;
				other.hsp += -owner.dir / 7;
			}
		}
		#endregion
		
		#region Cancel Attack
		if (keyAttackPressed)
		{
			#region Sound Effects
			if (audio_is_playing(snd_StoneRelease)) audio_stop_sound(snd_StoneRelease);
			audio_play_sound(snd_StoneRelease,0,false);
			#endregion
			
			#region Attack Attributes
			attack = false;
			attackNumber = playerAttacks.none;
			attackTimer = 15;
			vsp = -(jumpspeed / 3);
			grounded = false;
			grav = gravNormal;
			gravLimit = gravLimitNormal;
			invincible = false;
			stoneReady = true;
			stoneFallen = false;
			if (stoneReleaseParticleTimer == -1) stoneReleaseParticleTimer = stoneReleaseParticleTimerMax;
			#endregion
			
			#region Destroy Stone Mask
			if (instance_exists(stoneMaskProj)) instance_destroy(stoneMaskProj);
			#endregion
			
			#region Stone Stop Mask
			var stoneEnd = instance_create_depth(x,y,depth - 1,obj_Projectile_StoneStop);
			stoneEnd.owner = id;
			stoneEnd.abilityType = playerAbilities.stone;
			stoneEnd.dmg = kirby_StoneNormalEnd_Damage;
			scr_Attack_SetKnockback(stoneEnd,kirby_StoneNormalEnd_Strength,kirby_StoneNormalEnd_HitStopAffectSource,kirby_StoneNormalEnd_HitStopAffectPlayer,kirby_StoneNormalEnd_HitStopAffectTarget,kirby_StoneNormalEnd_HitStopLength,kirby_StoneNormalEnd_HitStopShakeStrength);
			stoneEnd.enemy = false;
			#endregion
		}
		#endregion
	}
}