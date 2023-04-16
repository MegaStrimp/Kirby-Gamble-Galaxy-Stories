///@description Player - Attack Passive - Mystic Beam Charge

function scr_Player_AttackPassive_MysticBeamCharge()
{
	#region Charge Flash
	if (beamCharge == beamChargeMax - 1)
	{
		audio_play_sound(snd_Charge_Ready,0,false);
		var particle = instance_create_depth(x - (16 * dir),y - 15,depth - 1,obj_Particle);
		particle.sprite_index = spr_Particle_Flash1;
		particle.scale = 1.5;
		particle.destroyAfterAnimation = true;
	}
	else if (beamCharge == 0) mysticBeamChargeEx = 0;
	#endregion
	
	#region Increase Charge
	beamCharge += 1;
	#endregion
	
	#region Begin Charge State
	if (beamCharge >= 6)
	{
		#region Charge Sprite
		if (beamCharge == 6)
		{
			sprite_index = sprBeamCharge;
			image_index = 0;
		}
		#endregion
		
		#region Sound Effects
		if ((!audio_is_playing(snd_Charge_Intro)) and (!audio_is_playing(snd_Charge_Loop)))
		{
			if (chargeSfxState == "intro")
			{
				chargeSfx = audio_play_sound(snd_Charge_Intro,0,false);
				chargeSfxState = "loop";
			}
			else
			{
				chargeSfx = audio_play_sound(snd_Charge_Loop,0,false);
			}
		}
		#endregion
	}
	#endregion
	
	#region Change Direction
	if (keyRightHold)
	{
		dir = 1;
	}
	if (keyLeftHold)
	{
		dir = -1;
	}
	#endregion
	
	if (beamCharge < beamChargeMax)
	{
		#region Not Charged
		if ((!global.cutscene) and (keyAttackReleased))
		{
			#region Cancel Charge
			beamCharge = 0;
			if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
			chargeSfxState = "intro";
			#endregion
			
			#region Barrier Break
			with (obj_Projectile_Beam)
			{
				if ((isMystic) and (state == 2) and (owner == other.id))
				{
					if (audio_is_playing(snd_MysticBeamLaunch)) audio_stop_sound(snd_MysticBeamLaunch);
					audio_play_sound(snd_MysticBeamLaunch,0,false);
					
					var proj = instance_create_depth(x,y,depth,obj_Projectile_BarrierBreak);
					proj.image_angle = angle_difference(angle - 45,image_angle);
					proj.owner = id;
					proj.abilityType = playerAbilities.mysticBeam;
					proj.dmg = kirby_MysticBeamBarrierBreak_Damage;
					scr_Attack_SetKnockback(proj,kirby_MysticBeamBarrierBreak_Strength,kirby_MysticBeamBarrierBreak_HitStopAffectSource,kirby_MysticBeamBarrierBreak_HitStopAffectPlayer,kirby_MysticBeamBarrierBreak_HitStopAffectTarget,kirby_MysticBeamBarrierBreak_HitStopLength,kirby_MysticBeamBarrierBreak_HitStopShakeStrength);
					proj.destroyableByEnemy = false;
					proj.destroyableByObject = false;
					proj.destroyableByWall = false;
					var particle = instance_create_depth(other.x,other.y,depth,obj_Particle);
					particle.sprite_index = spr_Projectile_BarrierBreak_Normal_Tail;
					particle.image_angle = angle + 45;
					particle.destroyAfterAnimation = true;
					
					instance_destroy();
				}
			}
			#endregion
			
			if (canMysticBeamShield)
			{
				#region Execute Normal Attack
				scr_Player_ExecuteAttack_MysticBeamNormal();
				#endregion
			}
			else
			{
				#region Execute Barrier Break
				scr_Player_ExecuteAttack_MysticBeamBarrierBreak();
				#endregion
			}
		}
		#endregion
	}
	else
	{
		#region Charged
		if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
		if ((!global.cutscene) and (keyAttackReleased))
		{
			#region Cancel Charge
			beamCharge = 0;
			if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
			chargeSfxState = "intro";
			invincibleFlash = false;
			invincibleFlashTimer = -1;
			#endregion
			
			#region Execute Charge Attack
			scr_Player_ExecuteAttack_MysticBeamChargeAttack(mysticBeamVortexInAJarUpgrade);
			#endregion
		}
		#endregion
	}
}