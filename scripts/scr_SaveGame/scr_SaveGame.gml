///@description Save Game

function scr_SaveGame(argument0)
{
	ini_open(argument0);
	
	ini_write_real("stats","pointStars",global.pointStars);
	ini_write_real("stats","points",global.points);
	ini_write_real("stats","lives",global.playerLives);
	ini_write_real("stats","goldenTomato",global.goldenTomato);
	
	ini_write_real("shop","shopGearCubeFirstTime",global.shopGearCubeFirstTime);
	ini_write_real("shop","shopGearCubeNewItem",global.shopGearCubeNewItem);
	
	ini_write_real("unlocks","extraModeUnlocked",global.extraModeUnlocked);
	ini_write_real("unlocks","maykrUnlocked",global.maykrUnlocked);
	ini_write_real("unlocks","skylandsUnlocked",global.skylandsUnlocked);
	ini_write_real("unlocks","gamblionUnlocked",global.gamblionUnlocked);
	ini_write_real("unlocks","bitcrushedUnlocked",global.bitcrushedUnlocked);
	ini_write_real("unlocks","samuraiKirbyUnlocked",global.samuraiKirbyUnlocked);
	
	ini_write_real("unlocks","kirbyUnlocked",global.kirbyUnlocked);
	ini_write_real("unlocks","gambleUnlocked",global.gambleUnlocked);
	ini_write_real("unlocks","gooeyUnlocked",global.gooeyUnlocked);
	ini_write_real("unlocks","metaKnightUnlocked",global.metaKnightUnlocked);
	ini_write_real("unlocks","keebyUnlocked",global.keebyUnlocked);
	ini_write_real("unlocks","princeFluffUnlocked",global.princeFluffUnlocked);
	
	ini_write_real("unlocks","friendlyPinkSprayPaintUnlocked",global.friendlyPinkSprayPaintUnlocked);
	ini_write_real("unlocks","yellowSprayPaintUnlocked",global.yellowSprayPaintUnlocked);
	ini_write_real("unlocks","redSprayPaintUnlocked",global.redSprayPaintUnlocked);
	ini_write_real("unlocks","greenSprayPaintUnlocked",global.greenSprayPaintUnlocked);
	ini_write_real("unlocks","dreamyBlueberrySprayPaintUnlocked",global.dreamyBlueberrySprayPaintUnlocked);
	ini_write_real("unlocks","waddleWaddleSprayPaintUnlocked",global.waddleWaddleSprayPaintUnlocked);
	ini_write_real("unlocks","mysticSprayPaintUnlocked",global.mysticSprayPaintUnlocked);
	ini_write_real("unlocks","shadowOfTheMirrorSprayPaintUnlocked",global.shadowOfTheMirrorSprayPaintUnlocked);
	ini_write_real("unlocks","greenjoltSprayPaintUnlocked",global.greenjoltSprayPaintUnlocked);
	ini_write_real("unlocks","butterKnifeSprayPaintUnlocked",global.butterKnifeSprayPaintUnlocked);
	ini_write_real("unlocks","blurpleSprayPaintUnlocked",global.blurpleSprayPaintUnlocked);
	ini_write_real("unlocks","beamSprayPaintUnlocked",global.beamSprayPaintUnlocked);
	ini_write_real("unlocks","stoneSprayPaintUnlocked",global.stoneSprayPaintUnlocked);
	ini_write_real("unlocks","mirrorSprayPaintUnlocked",global.mirrorSprayPaintUnlocked);
	ini_write_real("unlocks","fireSprayPaintUnlocked",global.fireSprayPaintUnlocked);
	ini_write_real("unlocks","iceSprayPaintUnlocked",global.iceSprayPaintUnlocked);
	ini_write_real("unlocks","plasmaSprayPaintUnlocked",global.plasmaSprayPaintUnlocked);
	ini_write_real("unlocks","unearthlyHandSprayPaintUnlocked",global.unearthlyHandSprayPaintUnlocked);
	ini_write_real("unlocks","soMetaSprayPaintUnlocked",global.soMetaSprayPaintUnlocked);
	ini_write_real("unlocks","telltaleKeebySprayPaintUnlocked",global.telltaleKeebySprayPaintUnlocked);
	ini_write_real("unlocks","royalYarnSprayPaintUnlocked",global.royalYarnSprayPaintUnlocked);
	ini_write_real("unlocks","smileyWhiteSprayPaintUnlocked",global.smileyWhiteSprayPaintUnlocked);
	ini_write_real("unlocks","eddSprayPaintUnlocked",global.eddSprayPaintUnlocked);
	
	ini_write_real("unlocks","gambleFamiliarUnlocked",global.gambleFamiliarUnlocked);
	ini_write_real("unlocks","gambleFamiliarLevel",global.gambleFamiliarLevel);
	ini_write_real("unlocks","gambleFamiliarExp",global.gambleFamiliarExp);
	ini_write_real("unlocks","happyPeaFamiliarUnlocked",global.happyPeaFamiliarUnlocked);
	ini_write_real("unlocks","happyPeaFamiliarLevel",global.happyPeaFamiliarLevel);
	ini_write_real("unlocks","happyPeaFamiliarExp",global.happyPeaFamiliarExp);
	ini_write_real("unlocks","epicJarFamiliarUnlocked",global.epicJarFamiliarUnlocked);
	ini_write_real("unlocks","epicJarFamiliarLevel",global.epicJarFamiliarLevel);
	ini_write_real("unlocks","epicJarFamiliarExp",global.epicJarFamiliarExp);
	ini_write_real("unlocks","krackleFamiliarUnlocked",global.krackleFamiliarUnlocked);
	ini_write_real("unlocks","krackleFamiliarLevel",global.krackleFamiliarLevel);
	ini_write_real("unlocks","krackleFamiliarExp",global.krackleFamiliarExp);
	
	ini_write_real("unlocks","beamGoldenFlareUpgradeUnlocked",global.beamGoldenFlareUpgradeUnlocked);
	ini_write_real("unlocks","mysticBeamVortexInAJarUpgradeUnlocked",global.mysticBeamVortexInAJarUpgradeUnlocked);
	ini_write_real("unlocks","stoneRockCandyUpgradeUnlocked",global.stoneRockCandyUpgradeUnlocked);
	ini_write_real("unlocks","stoneComboCobaltUpgradeUnlocked",global.stoneComboCobaltUpgradeUnlocked);
	ini_write_real("unlocks","bombMultiBombUpgradeUnlocked",global.bombMultiBombUpgradeUnlocked);
	ini_write_real("unlocks","bombEyeBombUpgradeUnlocked",global.bombEyeBombUpgradeUnlocked);
	ini_write_real("unlocks","bombSmartBombUpgradeUnlocked",global.bombSmartBombUpgradeUnlocked);
	ini_write_real("unlocks","bombMagmaBombUpgradeUnlocked",global.bombMagmaBombUpgradeUnlocked);
	ini_write_real("unlocks","bombExplosivePowderUpgradeUnlocked",global.bombExplosivePowderUpgradeUnlocked);
	ini_write_real("unlocks","fireMagicCharcoalUpgradeUnlocked",global.fireMagicCharcoalUpgradeUnlocked);
	ini_write_real("unlocks","iceEmptyConeUpgradeUnlocked",global.iceEmptyConeUpgradeUnlocked);
	ini_write_real("unlocks","sparkBrightPluggUpgradeUnlocked",global.sparkBrightPluggUpgradeUnlocked);
	ini_write_real("unlocks","waterEggSoilUpgradeUnlocked",global.waterEggSoilUpgradeUnlocked);
	
	ini_write_string("playerCustomization","sprayPaintKirbyP1",sprite_get_name(global.sprayPaintKirbyP1));
	ini_write_string("playerCustomization","sprayPaintKirbyP2",sprite_get_name(global.sprayPaintKirbyP2));
	ini_write_string("playerCustomization","sprayPaintGambleP1",sprite_get_name(global.sprayPaintGambleP1));
	ini_write_string("playerCustomization","sprayPaintGambleP2",sprite_get_name(global.sprayPaintGambleP2));
	ini_write_string("playerCustomization","sprayPaintGooeyP1",sprite_get_name(global.sprayPaintGooeyP1));
	ini_write_string("playerCustomization","sprayPaintGooeyP2",sprite_get_name(global.sprayPaintGooeyP2));
	
	ini_write_string("playerCustomization","characterP1",global.characterP1);
	ini_write_string("playerCustomization","characterP2",global.characterP2);
	ini_write_real("playerCustomization","isHelperP1",global.isHelperP1);
	ini_write_real("playerCustomization","isHelperP2",global.isHelperP2);
	ini_write_string("playerCustomization","familiarP1",global.familiarP1);
	ini_write_string("playerCustomization","familiarP2",global.familiarP2);
	
	ini_write_string("playerCustomization","hatTypeCutterP1",global.hatTypeCutterP1);
	ini_write_string("playerCustomization","hatTypeBeamP1",global.hatTypeBeamP1);
	ini_write_string("playerCustomization","hatTypeStoneP1",global.hatTypeStoneP1);
	ini_write_string("playerCustomization","hatTypeUfoP1",global.hatTypeUfoP1);
	ini_write_string("playerCustomization","hatTypeMirrorP1",global.hatTypeMirrorP1);
	ini_write_string("playerCustomization","hatTypeNinjaP1",global.hatTypeNinjaP1);
	ini_write_string("playerCustomization","hatTypeBombP1",global.hatTypeBombP1);
	ini_write_string("playerCustomization","hatTypeFireP1",global.hatTypeFireP1);
	ini_write_string("playerCustomization","hatTypeIceP1",global.hatTypeIceP1);
	ini_write_string("playerCustomization","hatTypeSparkP1",global.hatTypeSparkP1);
	ini_write_string("playerCustomization","hatTypeYoyoP1",global.hatTypeYoyoP1);
	ini_write_string("playerCustomization","hatTypeWheelP1",global.hatTypeWheelP1);
	ini_write_string("playerCustomization","hatTypeArtistP1",global.hatTypeArtistP1);
	ini_write_string("playerCustomization","hatTypeFighterP1",global.hatTypeFighterP1);
	ini_write_string("playerCustomization","hatTypeSuplexP1",global.hatTypeSuplexP1);
	ini_write_string("playerCustomization","hatTypeWingP1",global.hatTypeWingP1);
	ini_write_string("playerCustomization","hatTypeJetP1",global.hatTypeJetP1);
	ini_write_string("playerCustomization","hatTypeSwordP1",global.hatTypeSwordP1);
	ini_write_string("playerCustomization","hatTypeParasolP1",global.hatTypeParasolP1);
	ini_write_string("playerCustomization","hatTypeHammerP1",global.hatTypeHammerP1);
	ini_write_string("playerCustomization","hatTypeBellP1",global.hatTypeBellP1);
	ini_write_string("playerCustomization","hatTypeSleepP1",global.hatTypeSleepP1);
	ini_write_string("playerCustomization","hatTypeScanP1",global.hatTypeScanP1);

	ini_write_string("playerCustomization","hatTypeCutterP2",global.hatTypeCutterP2);
	ini_write_string("playerCustomization","hatTypeBeamP2",global.hatTypeBeamP2);
	ini_write_string("playerCustomization","hatTypeStoneP2",global.hatTypeStoneP2);
	ini_write_string("playerCustomization","hatTypeUfoP2",global.hatTypeUfoP2);
	ini_write_string("playerCustomization","hatTypeMirrorP2",global.hatTypeMirrorP2);
	ini_write_string("playerCustomization","hatTypeNinjaP2",global.hatTypeNinjaP2);
	ini_write_string("playerCustomization","hatTypeBombP2",global.hatTypeBombP2);
	ini_write_string("playerCustomization","hatTypeFireP2",global.hatTypeFireP2);
	ini_write_string("playerCustomization","hatTypeIceP2",global.hatTypeIceP2);
	ini_write_string("playerCustomization","hatTypeSparkP2",global.hatTypeSparkP2);
	ini_write_string("playerCustomization","hatTypeYoyoP2",global.hatTypeYoyoP2);
	ini_write_string("playerCustomization","hatTypeWheelP2",global.hatTypeWheelP2);
	ini_write_string("playerCustomization","hatTypeArtistP2",global.hatTypeArtistP2);
	ini_write_string("playerCustomization","hatTypeFighterP2",global.hatTypeFighterP2);
	ini_write_string("playerCustomization","hatTypeSuplexP2",global.hatTypeSuplexP2);
	ini_write_string("playerCustomization","hatTypeWingP2",global.hatTypeWingP2);
	ini_write_string("playerCustomization","hatTypeJetP2",global.hatTypeJetP2);
	ini_write_string("playerCustomization","hatTypeSwordP2",global.hatTypeSwordP2);
	ini_write_string("playerCustomization","hatTypeParasolP2",global.hatTypeParasolP2);
	ini_write_string("playerCustomization","hatTypeHammerP2",global.hatTypeHammerP2);
	ini_write_string("playerCustomization","hatTypeBellP2",global.hatTypeBellP2);
	ini_write_string("playerCustomization","hatTypeSleepP2",global.hatTypeSleepP2);
	ini_write_string("playerCustomization","hatTypeScanP2",global.hatTypeScanP2);

	ini_write_real("playerCustomization","hatPaletteCutterKssuP1",global.hatPaletteCutterKssuP1);
	ini_write_real("playerCustomization","hatPaletteBeamKssuP1",global.hatPaletteBeamKssuP1);
	ini_write_real("playerCustomization","hatPaletteBeamMarxSoulP1",global.hatPaletteBeamMarxSoulP1);
	ini_write_real("playerCustomization","hatPaletteStoneKssuP1",global.hatPaletteStoneKssuP1);
	ini_write_real("playerCustomization","hatPaletteStoneModernP1",global.hatPaletteStoneModernP1);
	ini_write_real("playerCustomization","hatPaletteUfoKssuP1",global.hatPaletteUfoKssuP1);
	ini_write_real("playerCustomization","hatPaletteMirrorKssuP1",global.hatPaletteMirrorKssuP1);
	ini_write_real("playerCustomization","hatPaletteMirrorModernP1",global.hatPaletteMirrorModernP1);
	ini_write_real("playerCustomization","hatPaletteNinjaKssuP1",global.hatPaletteNinjaKssuP1);
	ini_write_real("playerCustomization","hatPaletteNinjaModernP1",global.hatPaletteNinjaModernP1);
	ini_write_real("playerCustomization","hatPaletteBombKssuP1",global.hatPaletteBombKssuP1);
	ini_write_real("playerCustomization","hatPaletteBombModernP1",global.hatPaletteBombModernP1);
	ini_write_real("playerCustomization","hatPaletteFireKssuP1",global.hatPaletteFireKssuP1);
	ini_write_real("playerCustomization","hatPaletteIceKssuP1",global.hatPaletteIceKssuP1);
	ini_write_real("playerCustomization","hatPaletteIceSnowmanP1",global.hatPaletteIceSnowmanP1);
	ini_write_real("playerCustomization","hatPaletteSparkKssuP1",global.hatPaletteSparkKssuP1);
	ini_write_real("playerCustomization","hatPaletteYoyoKssuP1",global.hatPaletteYoyoKssuP1);
	ini_write_real("playerCustomization","hatPaletteWheelKssuP1",global.hatPaletteWheelKssuP1);
	ini_write_real("playerCustomization","hatPaletteArtistKssuP1",global.hatPaletteArtistKssuP1);
	ini_write_real("playerCustomization","hatPaletteArtistModernP1",global.hatPaletteArtistModernP1);
	ini_write_real("playerCustomization","hatPaletteFighterKssuP1",global.hatPaletteFighterKssuP1);
	ini_write_real("playerCustomization","hatPaletteSuplexKssuP1",global.hatPaletteSuplexKssuP1);
	ini_write_real("playerCustomization","hatPaletteWingKssuP1",global.hatPaletteWingKssuP1);
	ini_write_real("playerCustomization","hatPaletteJetKssuP1",global.hatPaletteJetKssuP1);
	ini_write_real("playerCustomization","hatPaletteSwordKssuP1",global.hatPaletteSwordKssuP1);
	ini_write_real("playerCustomization","hatPaletteParasolKssuP1",global.hatPaletteParasolKssuP1);
	ini_write_real("playerCustomization","hatPaletteHammerKssuP1",global.hatPaletteHammerKssuP1);
	ini_write_real("playerCustomization","hatPaletteBellModernP1",global.hatPaletteBellModernP1);
	ini_write_real("playerCustomization","hatPaletteSleepKssuP1",global.hatPaletteSleepKssuP1);
	ini_write_real("playerCustomization","hatPaletteScanKssuP1",global.hatPaletteScanKssuP1);

	ini_write_real("playerCustomization","hatPaletteCutterKssuP2",global.hatPaletteCutterKssuP2);
	ini_write_real("playerCustomization","hatPaletteBeamKssuP2",global.hatPaletteBeamKssuP2);
	ini_write_real("playerCustomization","hatPaletteBeamMarxSoulP2",global.hatPaletteBeamMarxSoulP2);
	ini_write_real("playerCustomization","hatPaletteStoneKssuP2",global.hatPaletteStoneKssuP2);
	ini_write_real("playerCustomization","hatPaletteStoneModernP2",global.hatPaletteStoneModernP2);
	ini_write_real("playerCustomization","hatPaletteUfoKssuP2",global.hatPaletteUfoKssuP2);
	ini_write_real("playerCustomization","hatPaletteMirrorKssuP2",global.hatPaletteMirrorKssuP2);
	ini_write_real("playerCustomization","hatPaletteMirrorModernP2",global.hatPaletteMirrorModernP2);
	ini_write_real("playerCustomization","hatPaletteNinjaKssuP2",global.hatPaletteNinjaKssuP2);
	ini_write_real("playerCustomization","hatPaletteNinjaModernP2",global.hatPaletteNinjaModernP2);
	ini_write_real("playerCustomization","hatPaletteBombKssuP2",global.hatPaletteBombKssuP2);
	ini_write_real("playerCustomization","hatPaletteBombModernP2",global.hatPaletteBombModernP2);
	ini_write_real("playerCustomization","hatPaletteFireKssuP2",global.hatPaletteFireKssuP2);
	ini_write_real("playerCustomization","hatPaletteIceKssuP2",global.hatPaletteIceKssuP2);
	ini_write_real("playerCustomization","hatPaletteIceSnowmanP2",global.hatPaletteIceSnowmanP2);
	ini_write_real("playerCustomization","hatPaletteSparkKssuP2",global.hatPaletteSparkKssuP2);
	ini_write_real("playerCustomization","hatPaletteYoyoKssuP2",global.hatPaletteYoyoKssuP2);
	ini_write_real("playerCustomization","hatPaletteWheelKssuP2",global.hatPaletteWheelKssuP2);
	ini_write_real("playerCustomization","hatPaletteArtistKssuP2",global.hatPaletteArtistKssuP2);
	ini_write_real("playerCustomization","hatPaletteArtistModernP2",global.hatPaletteArtistModernP2);
	ini_write_real("playerCustomization","hatPaletteFighterKssuP2",global.hatPaletteFighterKssuP2);
	ini_write_real("playerCustomization","hatPaletteSuplexKssuP2",global.hatPaletteSuplexKssuP2);
	ini_write_real("playerCustomization","hatPaletteWingKssuP2",global.hatPaletteWingKssuP2);
	ini_write_real("playerCustomization","hatPaletteJetKssuP2",global.hatPaletteJetKssuP2);
	ini_write_real("playerCustomization","hatPaletteSwordKssuP2",global.hatPaletteSwordKssuP2);
	ini_write_real("playerCustomization","hatPaletteParasolKssuP2",global.hatPaletteParasolKssuP2);
	ini_write_real("playerCustomization","hatPaletteHammerKssuP2",global.hatPaletteHammerKssuP2);
	ini_write_real("playerCustomization","hatPaletteBellModernP2",global.hatPaletteBellModernP2);
	ini_write_real("playerCustomization","hatPaletteScanKssuP2",global.hatPaletteScanKssuP2);
	
	ini_write_real("playerCustomization","beamGoldenFlareUpgradeEquipped",global.beamGoldenFlareUpgradeEquipped);
	ini_write_real("playerCustomization","mysticBeamVortexInAJarUpgradeEquipped",global.mysticBeamVortexInAJarUpgradeEquipped);
	ini_write_real("playerCustomization","stoneRockCandyUpgradeEquipped",global.stoneRockCandyUpgradeEquipped);
	ini_write_real("playerCustomization","stoneComboCobaltUpgradeEquipped",global.stoneComboCobaltUpgradeEquipped);
	ini_write_real("playerCustomization","bombMultiBombUpgradeEquipped",global.bombMultiBombUpgradeEquipped);
	ini_write_real("playerCustomization","bombEyeBombUpgradeEquipped",global.bombEyeBombUpgradeEquipped);
	ini_write_real("playerCustomization","bombSmartBombUpgradeEquipped",global.bombSmartBombUpgradeEquipped);
	ini_write_real("playerCustomization","bombMagmaBombUpgradeEquipped",global.bombMagmaBombUpgradeEquipped);
	ini_write_real("playerCustomization","bombExplosivePowderUpgradeEquipped",global.bombExplosivePowderUpgradeEquipped);
	ini_write_real("playerCustomization","fireMagicCharcoalUpgradeEquipped",global.fireMagicCharcoalUpgradeEquipped);
	ini_write_real("playerCustomization","iceEmptyConeUpgradeEquipped",global.iceEmptyConeUpgradeEquipped);
	ini_write_real("playerCustomization","sparkBrightPluggUpgradeEquipped",global.sparkBrightPluggUpgradeEquipped);
	ini_write_real("playerCustomization","waterEggSoilUpgradeEquipped",global.waterEggSoilUpgradeEquipped);
	
	ini_close();
}