///@description Main

if (!global.pause)
{
	//Inputs
	
	scr_Player_Inputs(0);
	
	if ((keyUpPressed) or (keyDownPressed) or (keyLeftPressed) or (keyRightPressed)) audio_play_sound(snd_BossHealth,0,false);
	
	if (keyUpPressed) selection -= maxPerLine;
	if (keyDownPressed) selection += maxPerLine;
	if (keyLeftPressed) selection -= 1;
	if (keyRightPressed) selection += 1;
	
	if (selection > maxButtons - 1) selection -= maxButtons;
	if (selection < 0) selection += maxButtons;
	
	if ((keyJumpPressed) or (keyStartPressed))
	{
		if (audio_is_playing(snd_ButtonYes)) audio_stop_sound(snd_ButtonYes);
		audio_play_sound(snd_ButtonYes,0,false);
		select = true;
	}
	
	if (select)
	{
		switch (upgradeTitle[selection])
		{
			case "Motor Cutter":
			if (global.cutterMotorCutterUpgradeEquipped)
			{
				global.cutterMotorCutterUpgradeEquipped = false;
			}
			else
			{
				global.cutterMotorCutterUpgradeEquipped = true;
			}
			break;
			
			case "Golden Flare":
			if (global.beamGoldenFlareUpgradeEquipped)
			{
				global.beamGoldenFlareUpgradeEquipped = false;
			}
			else
			{
				global.beamGoldenFlareUpgradeEquipped = true;
			}
			break;
			
			case "Vortex In A Jar":
			if (global.mysticBeamVortexInAJarUpgradeEquipped)
			{
				global.mysticBeamVortexInAJarUpgradeEquipped = false;
			}
			else
			{
				global.mysticBeamVortexInAJarUpgradeEquipped = true;
			}
			break;
			
			case "Rock Candy":
			if (global.stoneRockCandyUpgradeEquipped)
			{
				global.stoneRockCandyUpgradeEquipped = false;
			}
			else
			{
				global.stoneRockCandyUpgradeEquipped = true;
			}
			break;
			
			case "Combo Cobalt":
			if (global.stoneComboCobaltUpgradeEquipped)
			{
				global.stoneComboCobaltUpgradeEquipped = false;
			}
			else
			{
				global.stoneComboCobaltUpgradeEquipped = true;
			}
			break;
			
			case "Multi Bomb":
			if (global.bombMultiBombUpgradeEquipped)
			{
				global.bombMultiBombUpgradeEquipped = false;
			}
			else
			{
				global.bombMultiBombUpgradeEquipped = true;
			}
			break;
			
			case "Eye Bomb":
			if (global.bombEyeBombUpgradeEquipped)
			{
				global.bombEyeBombUpgradeEquipped = false;
			}
			else
			{
				global.bombEyeBombUpgradeEquipped = true;
			}
			break;
			
			case "Smart Bomb":
			if (global.bombSmartBombUpgradeEquipped)
			{
				global.bombSmartBombUpgradeEquipped = false;
			}
			else
			{
				global.bombSmartBombUpgradeEquipped = true;
			}
			break;
			
			case "Magma Bomb":
			if (global.bombMagmaBombUpgradeEquipped)
			{
				global.bombMagmaBombUpgradeEquipped = false;
			}
			else
			{
				global.bombMagmaBombUpgradeEquipped = true;
			}
			break;
			
			case "Explosive Powder":
			if (global.bombExplosivePowderUpgradeUnlocked)
			{
				global.bombExplosivePowderUpgradeEquipped = false;
			}
			else
			{
				global.bombExplosivePowderUpgradeEquipped = true;
			}
			break;
			
			case "Magic Charcoal":
			if (global.fireMagicCharcoalUpgradeEquipped)
			{
				global.fireMagicCharcoalUpgradeEquipped = false;
			}
			else
			{
				global.fireMagicCharcoalUpgradeEquipped = true;
			}
			break;
			
			case "Empty Cone":
			if (global.iceEmptyConeUpgradeEquipped)
			{
				global.iceEmptyConeUpgradeEquipped = false;
			}
			else
			{
				global.iceEmptyConeUpgradeEquipped = true;
			}
			break;
			
			case "Bright Plugg":
			if (global.sparkBrightPluggUpgradeEquipped)
			{
				global.sparkBrightPluggUpgradeEquipped = false;
			}
			else
			{
				global.sparkBrightPluggUpgradeEquipped = true;
			}
			break;
			
			case "Egg Soil":
			if (global.waterEggSoilUpgradeEquipped)
			{
				global.waterEggSoilUpgradeEquipped = false;
			}
			else
			{
				global.waterEggSoilUpgradeEquipped = true;
			}
			break;
		}
		select = false;
	}
	
	if (!instance_exists(obj_Fade))
	{
		if (keyAttackPressed)
		{
			if (audio_is_playing(snd_ButtonNo)) audio_stop_sound(snd_ButtonNo);
			audio_play_sound(snd_ButtonNo,0,false);
			goBack = true;
		}
	}
	
	if (goBack)
	{
		if ((!global.debug) and (global.canSave)) scr_SaveGame(global.selectedSave);
		var fade = instance_create_depth(x,y,-999,obj_Fade);
		fade.targetRoom = rm_Collection;
		goBack = false;
	}
}