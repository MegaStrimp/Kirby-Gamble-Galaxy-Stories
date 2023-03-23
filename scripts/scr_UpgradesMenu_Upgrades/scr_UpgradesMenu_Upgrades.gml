///@description Upgrades Menu - Upgrades

function scr_UpgradesMenu_Upgrades()
{
	/*
	0 - Index
	1 - Sprite
	2 - Title
	3 - Description
	4 - Unlocked
	5 - Unlock Method
	6 - X Offset
	7 - Y Offset
	8 - Scale
	9 - Alpha
	10 - Equipped
	11 - Color
	12 - Ability Star
	*/
	
	if (ds_exists(upgradesArray,ds_type_grid)) ds_grid_destroy(upgradesArray);
	
	upgradesArray = ds_grid_create(99,13);
	ds_grid_clear(upgradesArray,-1);
	
	var i = 0;
	
	#region Motor Cutter
	upgradesArray[# i,0] = abilityUpgrades.motorCutter;
	upgradesArray[# i,1] = spr_Menu_Upgrades_MotorCutter;
	upgradesArray[# i,2] = str("Upgrades.Motor Cutter.Title");
	upgradesArray[# i,3] = str("Upgrades.Motor Cutter.Description");
	upgradesArray[# i,4] = global.cutterMotorCutterUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Motor Cutter.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.cutterMotorCutterUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(255,255,102);
	upgradesArray[# i,12] = spr_AbilityStar_Cutter;
	i += 1;
	#endregion
	
	#region Propeller Wing
	upgradesArray[# i,0] = abilityUpgrades.propellerWing;
	upgradesArray[# i,1] = spr_Menu_Upgrades_PropellerWing;
	upgradesArray[# i,2] = str("Upgrades.Propeller Wing.Title");
	upgradesArray[# i,3] = str("Upgrades.Propeller Wing.Description");
	upgradesArray[# i,4] = global.cutterPropellerWingUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Propeller Wing.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.cutterPropellerWingUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(255,255,102);
	upgradesArray[# i,12] = spr_AbilityStar_Cutter;
	i += 1;
	#endregion
	
	#region Spectral Cutter
	upgradesArray[# i,0] = abilityUpgrades.spectralCutter;
	upgradesArray[# i,1] = spr_Menu_Upgrades_SpectralCutter;
	upgradesArray[# i,2] = str("Upgrades.Spectral Cutter.Title");
	upgradesArray[# i,3] = str("Upgrades.Spectral Cutter.Description");
	upgradesArray[# i,4] = global.cutterSpectralCutterUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Spectral Cutter.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.cutterSpectralCutterUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(255,255,102);
	upgradesArray[# i,12] = spr_AbilityStar_Cutter;
	i += 1;
	#endregion
	
	#region Golden Flare
	upgradesArray[# i,0] = abilityUpgrades.goldenFlare;
	upgradesArray[# i,1] = spr_Menu_Upgrades_GoldenFlare;
	upgradesArray[# i,2] = str("Upgrades.Golden Flare.Title");
	upgradesArray[# i,3] = str("Upgrades.Golden Flare.Description");
	upgradesArray[# i,4] = global.beamGoldenFlareUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Golden Flare.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.beamGoldenFlareUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(248,216,96);
	upgradesArray[# i,12] = spr_AbilityStar_Beam;
	i += 1;
	#endregion
	
	#region Vortex In A Jar
	upgradesArray[# i,0] = abilityUpgrades.vortexInAJar;
	upgradesArray[# i,1] = spr_Menu_Upgrades_VortexInAJar;
	upgradesArray[# i,2] = str("Upgrades.Vortex In A Jar.Title");
	upgradesArray[# i,3] = str("Upgrades.Vortex In A Jar.Description");
	upgradesArray[# i,4] = global.mysticBeamVortexInAJarUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Vortex In A Jar.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.mysticBeamVortexInAJarUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(144,92,196);
	upgradesArray[# i,12] = spr_AbilityStar_MysticBeam;
	i += 1;
	#endregion
	
	#region Rock Candy
	upgradesArray[# i,0] = abilityUpgrades.rockCandy;
	upgradesArray[# i,1] = spr_Menu_Upgrades_RockCandy;
	upgradesArray[# i,2] = str("Upgrades.Rock Candy.Title");
	upgradesArray[# i,3] = str("Upgrades.Rock Candy.Description");
	upgradesArray[# i,4] = global.stoneRockCandyUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Rock Candy.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.stoneRockCandyUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(216,136,104);
	upgradesArray[# i,12] = spr_AbilityStar_Stone;
	i += 1;
	#endregion
	
	#region Combo Cobalt
	upgradesArray[# i,0] = abilityUpgrades.comboCobalt;
	upgradesArray[# i,1] = spr_Menu_Upgrades_ComboCobalt;
	upgradesArray[# i,2] = str("Upgrades.Combo Cobalt.Title");
	upgradesArray[# i,3] = str("Upgrades.Combo Cobalt.Description");
	upgradesArray[# i,4] = global.stoneComboCobaltUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Combo Cobalt.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.stoneComboCobaltUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(216,136,104);
	upgradesArray[# i,12] = spr_AbilityStar_Stone;
	i += 1;
	#endregion
	
	#region Psychic Pebble
	upgradesArray[# i,0] = abilityUpgrades.psychicPebble;
	upgradesArray[# i,1] = spr_Menu_Upgrades_PsychicPebble;
	upgradesArray[# i,2] = str("Upgrades.Psychic Pebble.Title");
	upgradesArray[# i,3] = str("Upgrades.Psychic Pebble.Description");
	upgradesArray[# i,4] = global.stonePsychicPebbleUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Psychic Pebble.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.stonePsychicPebbleUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(216,136,104);
	upgradesArray[# i,12] = spr_AbilityStar_Stone;
	i += 1;
	#endregion
	
	#region Cow Doll
	upgradesArray[# i,0] = abilityUpgrades.cowDoll;
	upgradesArray[# i,1] = spr_Menu_Upgrades_CowDoll;
	upgradesArray[# i,2] = str("Upgrades.Cow Doll.Title");
	upgradesArray[# i,3] = str("Upgrades.Cow Doll.Description");
	upgradesArray[# i,4] = global.ufoCowDollUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Cow Doll.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.ufoCowDollUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(255,104,177);
	upgradesArray[# i,12] = spr_AbilityStar_Ufo;
	i += 1;
	#endregion
	
	#region Light Shells
	upgradesArray[# i,0] = abilityUpgrades.lightShells;
	upgradesArray[# i,1] = spr_Menu_Upgrades_LightShells;
	upgradesArray[# i,2] = str("Upgrades.Light Shells.Title");
	upgradesArray[# i,3] = str("Upgrades.Light Shells.Description");
	upgradesArray[# i,4] = global.bombLightShellsUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Light Shells.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.bombLightShellsUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(134,107,125);
	upgradesArray[# i,12] = spr_AbilityStar_Bomb;
	i += 1;
	#endregion
	
	#region Eye Bomb
	upgradesArray[# i,0] = abilityUpgrades.eyeBomb;
	upgradesArray[# i,1] = spr_Menu_Upgrades_EyeBomb;
	upgradesArray[# i,2] = str("Upgrades.Eye Bomb.Title");
	upgradesArray[# i,3] = str("Upgrades.Eye Bomb.Description");
	upgradesArray[# i,4] = global.bombEyeBombUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Eye Bomb.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.bombEyeBombUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(134,107,125);
	upgradesArray[# i,12] = spr_AbilityStar_Bomb;
	i += 1;
	#endregion
	
	#region Sticky Bomb
	upgradesArray[# i,0] = abilityUpgrades.stickyBomb;
	upgradesArray[# i,1] = spr_Menu_Upgrades_StickyBomb;
	upgradesArray[# i,2] = str("Upgrades.Sticky Bomb.Title");
	upgradesArray[# i,3] = str("Upgrades.Sticky Bomb.Description");
	upgradesArray[# i,4] = global.bombStickyBombUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Sticky Bomb.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.bombStickyBombUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(134,107,125);
	upgradesArray[# i,12] = spr_AbilityStar_Bomb;
	i += 1;
	#endregion
	
	#region Magma Bomb
	upgradesArray[# i,0] = abilityUpgrades.magmaBomb;
	upgradesArray[# i,1] = spr_Menu_Upgrades_MagmaBomb;
	upgradesArray[# i,2] = str("Upgrades.Magma Bomb.Title");
	upgradesArray[# i,3] = str("Upgrades.Magma Bomb.Description");
	upgradesArray[# i,4] = global.bombMagmaBombUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Magma Bomb.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.bombMagmaBombUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(134,107,125);
	upgradesArray[# i,12] = spr_AbilityStar_Bomb;
	i += 1;
	#endregion
	
	#region Ice Bomb
	upgradesArray[# i,0] = abilityUpgrades.iceBomb;
	upgradesArray[# i,1] = spr_Menu_Upgrades_IceBomb;
	upgradesArray[# i,2] = str("Upgrades.Ice Bomb.Title");
	upgradesArray[# i,3] = str("Upgrades.Ice Bomb.Description");
	upgradesArray[# i,4] = global.bombIceBombUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Ice Bomb.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.bombIceBombUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(134,107,125);
	upgradesArray[# i,12] = spr_AbilityStar_Bomb;
	i += 1;
	#endregion
	
	#region Explosive Powder
	upgradesArray[# i,0] = abilityUpgrades.explosivePowder;
	upgradesArray[# i,1] = spr_Menu_Upgrades_ExplosivePowder;
	upgradesArray[# i,2] = str("Upgrades.Explosive Powder.Title");
	upgradesArray[# i,3] = str("Upgrades.Explosive Powder.Description");
	upgradesArray[# i,4] = global.bombExplosivePowderUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Explosive Powder.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.bombExplosivePowderUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(134,107,125);
	upgradesArray[# i,12] = spr_AbilityStar_Bomb;
	i += 1;
	#endregion
	
	#region Magic Charcoal
	upgradesArray[# i,0] = abilityUpgrades.magicCharcoal;
	upgradesArray[# i,1] = spr_Menu_Upgrades_MagicCharcoal;
	upgradesArray[# i,2] = str("Upgrades.Magic Charcoal.Title");
	upgradesArray[# i,3] = str("Upgrades.Magic Charcoal.Description");
	upgradesArray[# i,4] = global.fireMagicCharcoalUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Magic Charcoal.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.fireMagicCharcoalUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(248,104,120);
	upgradesArray[# i,12] = spr_AbilityStar_Fire;
	i += 1;
	#endregion
	
	#region Empty Cone
	upgradesArray[# i,0] = abilityUpgrades.emptyCone;
	upgradesArray[# i,1] = spr_Menu_Upgrades_EmptyCone;
	upgradesArray[# i,2] = str("Upgrades.Empty Cone.Title");
	upgradesArray[# i,3] = str("Upgrades.Empty Cone.Description");
	upgradesArray[# i,4] = global.iceEmptyConeUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Empty Cone.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.iceEmptyConeUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(144,248,248);
	upgradesArray[# i,12] = spr_AbilityStar_Ice;
	i += 1;
	#endregion
	
	#region Bright Plugg
	upgradesArray[# i,0] = abilityUpgrades.brightPlugg;
	upgradesArray[# i,1] = spr_Menu_Upgrades_BrightPlugg;
	upgradesArray[# i,2] = str("Upgrades.Bright Plugg.Title");
	upgradesArray[# i,3] = str("Upgrades.Bright Plugg.Description");
	upgradesArray[# i,4] = global.sparkBrightPluggUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Bright Plugg.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.sparkBrightPluggUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(176,248,104);
	upgradesArray[# i,12] = spr_AbilityStar_Spark;
	i += 1;
	#endregion
	
	#region Waddle Brella
	upgradesArray[# i,0] = abilityUpgrades.waddleBrella;
	upgradesArray[# i,1] = spr_Menu_Upgrades_WaddleBrella;
	upgradesArray[# i,2] = str("Upgrades.Waddle Brella.Title");
	upgradesArray[# i,3] = str("Upgrades.Waddle Brella.Description");
	upgradesArray[# i,4] = global.parasolWaddleBrellaUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Waddle Brella.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.parasolWaddleBrellaUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(255,58,58);
	upgradesArray[# i,12] = spr_AbilityStar_Parasol;
	i += 1;
	#endregion
	
	#region Egg Soil
	upgradesArray[# i,0] = abilityUpgrades.eggSoil;
	upgradesArray[# i,1] = spr_Menu_Upgrades_EggSoil;
	upgradesArray[# i,2] = str("Upgrades.Egg Soil.Title");
	upgradesArray[# i,3] = str("Upgrades.Egg Soil.Description");
	upgradesArray[# i,4] = global.waterEggSoilUpgradeUnlocked;
	upgradesArray[# i,5] = str("Upgrades.Egg Soil.Unlock Method");
	upgradesArray[# i,6] = 240 + ((i - upgradeSelection) * 82);
	upgradesArray[# i,7] = 0;
	upgradesArray[# i,8] = 1;
	upgradesArray[# i,9] = 1;
	upgradesArray[# i,10] = global.waterEggSoilUpgradeEquipped;
	upgradesArray[# i,11] = make_color_rgb(39,10,47);
	upgradesArray[# i,12] = spr_AbilityStar_Water;
	i += 1;
	#endregion
	
	upgradesMax = i;
}