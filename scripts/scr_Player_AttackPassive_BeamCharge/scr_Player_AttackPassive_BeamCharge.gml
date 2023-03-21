///@description Player - Attack Passive - Beam Charge

function scr_Player_AttackPassive_BeamCharge()
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
			
			#region Execute Normal Attack
			var hasMarxSoulHat = false;
			if (((player == 0) and (global.hatTypeBeamP1 == abilityHatSkins.beam_marxSoul))
			or ((player == 1) and (global.hatTypeBeamP2 == abilityHatSkins.beam_marxSoul))
			or ((player == 2) and (global.hatTypeBeamP3 == abilityHatSkins.beam_marxSoul))
			or ((player == 3) and (global.hatTypeBeamP4 == abilityHatSkins.beam_marxSoul))) hasMarxSoulHat = true;
			scr_Player_ExecuteAttack_BeamNormal(beamGoldenFlareUpgrade,hasMarxSoulHat);
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
			beamCharge = 0;
			if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
			chargeSfxState = "intro";
			invincibleFlash = false;
			invincibleFlashTimer = -1;
			#endregion
			
			#region Execute Charge Attack
			var hasMarxSoulHat = false;
			if (((player == 0) and (global.hatTypeBeamP1 == abilityHatSkins.beam_marxSoul))
			or ((player == 1) and (global.hatTypeBeamP2 == abilityHatSkins.beam_marxSoul))
			or ((player == 2) and (global.hatTypeBeamP3 == abilityHatSkins.beam_marxSoul))
			or ((player == 3) and (global.hatTypeBeamP4 == abilityHatSkins.beam_marxSoul))) hasMarxSoulHat = true;
			scr_Player_ExecuteAttack_BeamChargeAttack(beamGoldenFlareUpgrade,hasMarxSoulHat);
			#endregion
		}
		#endregion
	}
}