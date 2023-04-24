///@description Player - Attack Passive - Ufo Charge

function scr_Player_AttackPassive_UfoCharge()
{
	#region Charge Flash
	if (ufoCharge == ufoChargeMax - 1)
	{
		audio_play_sound(snd_Charge_Ready,0,false);
		var particle = instance_create_depth(x - (16 * dir),y - 15,depth - 1,obj_Particle);
		particle.sprite_index = spr_Particle_Flash1;
		particle.scale = 1.5;
		particle.destroyAfterAnimation = true;
	}
	#endregion
	
	#region Increase Charge
	ufoCharge += 1;
	#endregion
	
	#region Begin Charge State
	if (ufoCharge >= 6)
	{
		#region Charge Sprite
		if (ufoCharge == 6)
		{
			sprite_index = sprUfoCharge;
			image_index = 0;
		}
		#endregion
		
		#region Sound Effects
		if ((!audio_is_playing(snd_Charge_Intro)) and (!audio_is_playing(snd_Charge_Loop)))
		{
			if (chargeSfxState == 0)
			{
				chargeSfx = audio_play_sound(snd_Charge_Intro,0,false);
				chargeSfxState = 1;
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
	
	if (ufoCharge < ufoChargeMax)
	{
		#region Not Charged
		if ((!global.cutscene) and (keyAttackReleased))
		{
			#region Cancel Charge
			ufoCharge = 0;
			if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
			chargeSfxState = 0;
			#endregion
			
			#region Execute Normal Attack
			scr_Player_ExecuteAttack_UfoBeam();
			#endregion
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
			ufoCharge = 0;
			if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
			chargeSfxState = 0;
			invincibleFlash = false;
			invincibleFlashTimer = -1;
			#endregion
			
			#region Execute Charge Attack
			#endregion
		}
		#endregion
	}
}