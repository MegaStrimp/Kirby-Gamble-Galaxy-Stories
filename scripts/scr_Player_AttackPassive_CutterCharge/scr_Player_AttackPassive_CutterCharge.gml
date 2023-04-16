///@description Player - Attack Passive - Cutter Charge

function scr_Player_AttackPassive_CutterCharge()
{
	#region Charge Flash
	if (cutterCharge == cutterChargeMax - 1)
	{
		audio_play_sound(snd_Charge_Ready,0,false);
		var particle = instance_create_depth(x - (16 * dir),y - 15,depth - 1,obj_Particle);
		particle.sprite_index = spr_Particle_Flash1;
		particle.scale = 1.5;
		particle.destroyAfterAnimation = true;
	}
	#endregion
	
	#region Increase Charge
	cutterCharge += 1;
	#endregion
	
	#region Begin Charge State
	if (cutterCharge >= 6)
	{
		#region Charge Sprite
		if (cutterCharge == 6)
		{
			sprite_index = sprCutterCharge;
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
	
	if (cutterCharge < cutterChargeMax)
	{
		#region Not Charged
		if ((!global.cutscene) and (keyAttackReleased))
		{
			#region Cancel Charge
			cutterCharge = 0;
			if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
			chargeSfxState = "intro";
			#endregion
			
			#region Execute Normal Attack
			scr_Player_ExecuteAttack_CutterNormal();
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
			cutterCharge = 0;
			if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
			chargeSfxState = "intro";
			invincibleFlash = false;
			invincibleFlashTimer = -1;
			#endregion
			
			#region Execute Charge Attack
			scr_Player_ExecuteAttack_CutterChargeAttack();
			#endregion
		}
		#endregion
	}
}