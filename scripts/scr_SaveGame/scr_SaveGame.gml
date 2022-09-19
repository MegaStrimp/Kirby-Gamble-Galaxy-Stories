///@description Save Game
///@param {real} file Which file to write.

function scr_SaveGame(argument0)
{
	ini_open(argument0);
	
	ini_write_real("stats","gameTimeSeconds",global.gameTimeSeconds);
	ini_write_real("stats","gameTimeMinutes",global.gameTimeMinutes);
	ini_write_real("stats","gameTimeHours",global.gameTimeHours);
	ini_write_real("stats","pointStars",global.pointStars);
	ini_write_real("stats","points",global.points);
	ini_write_real("stats","lives",global.playerLives);
	ini_write_real("stats","goldenTomato",global.goldenTomato);
	ini_write_real("stats","abilityP1",global.abilityP1);
	ini_write_real("stats","abilityP2",global.abilityP2);
	
	ini_write_real("stats","cutterAbilityKills",global.cutterAbilityKills);
	ini_write_real("stats","beamAbilityKills",global.beamAbilityKills);
	ini_write_real("stats","mysticBeamAbilityKills",global.mysticBeamAbilityKills);
	ini_write_real("stats","stoneAbilityKills",global.stoneAbilityKills);
	ini_write_real("stats","ufoAbilityKills",global.ufoAbilityKills);
	ini_write_real("stats","mirrorAbilityKills",global.mirrorAbilityKills);
	ini_write_real("stats","ninjaAbilityKills",global.ninjaAbilityKills);
	ini_write_real("stats","bombAbilityKills",global.bombAbilityKills);
	ini_write_real("stats","fireAbilityKills",global.fireAbilityKills);
	ini_write_real("stats","mysticFireAbilityKills",global.mysticFireAbilityKills);
	ini_write_real("stats","iceAbilityKills",global.iceAbilityKills);
	ini_write_real("stats","sparkAbilityKills",global.sparkAbilityKills);
	ini_write_real("stats","yoyoAbilityKills",global.yoyoAbilityKills);
	ini_write_real("stats","wheelAbilityKills",global.wheelAbilityKills);
	ini_write_real("stats","artistAbilityKills",global.artistAbilityKills);
	ini_write_real("stats","fighterAbilityKills",global.fighterAbilityKills);
	ini_write_real("stats","suplexAbilityKills",global.suplexAbilityKills);
	ini_write_real("stats","wingAbilityKills",global.wingAbilityKills);
	ini_write_real("stats","jetAbilityKills",global.jetAbilityKills);
	ini_write_real("stats","swordAbilityKills",global.swordAbilityKills);
	ini_write_real("stats","parasolAbilityKills",global.parasolAbilityKills);
	ini_write_real("stats","hammerAbilityKills",global.hammerAbilityKills);
	ini_write_real("stats","bellAbilityKills",global.bellAbilityKills);
	ini_write_real("stats","waterAbilityKills",global.waterAbilityKills);
	ini_write_real("stats","sleepAbilityKills",global.sleepAbilityKills);
	ini_write_real("stats","crashAbilityKills",global.crashAbilityKills);
	ini_write_real("stats","micAbilityKills",global.micAbilityKills);
	ini_write_real("stats","chefAbilityKills",global.chefAbilityKills);
	ini_write_real("stats","ultraSwordAbilityKills",global.ultraSwordAbilityKills);
	ini_write_real("stats","cosmicBladeAbilityKills",global.cosmicBladeAbilityKills);
	
	ini_write_real("progression","progression",global.progression);
	
	ini_write_real("progression","beatGreenGreens",global.beatGreenGreens);
	ini_write_real("progression","beatBattleshipHalberd",global.beatBattleshipHalberd);
	ini_write_real("progression","beatAsteroidFields",global.beatAsteroidFields);
	ini_write_real("progression","beatEggGardenSurface",global.beatEggGardenSurface);
	ini_write_real("progression","beatEggGardenTemple",global.beatEggGardenTemple);
	ini_write_real("progression","beatEggGardenCaves",global.beatEggGardenCaves);
	ini_write_real("progression","beatGearCubeHangar",global.beatGearCubeHangar);
	ini_write_real("progression","beatGearCubeCore",global.beatGearCubeCore);
	ini_write_real("progression","beatGearCubeDepths",global.beatGearCubeDepths);
	ini_write_real("progression","beatAquatiaHarbor",global.beatAquatiaHarbor);
	ini_write_real("progression","beatAquatiaUnderwater",global.beatAquatiaUnderwater);
	ini_write_real("progression","beatAquatiaParadise",global.beatAquatiaParadise);
	ini_write_real("progression","beatCosmicPalace",global.beatCosmicPalace);
	ini_write_real("progression","beatPopstarMoon",global.beatPopstarMoon);
	ini_write_real("progression","beatChapter1",global.beatChapter1);
	
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
	ini_write_real("unlocks","metaKnightUnlocked",global.metaKnightUnlocked);
	ini_write_real("unlocks","keebyUnlocked",global.keebyUnlocked);
	ini_write_real("unlocks","helperUnlocked",global.helperUnlocked);
	ini_write_real("unlocks","gooeyUnlocked",global.gooeyUnlocked);
	ini_write_real("unlocks","magolorUnlocked",global.magolorUnlocked);
	ini_write_real("unlocks","princeFluffUnlocked",global.princeFluffUnlocked);
	
	ini_write_real("unlocks","friendlyPinkSprayPaintUnlocked",global.friendlyPinkSprayPaintUnlocked);
	ini_write_real("unlocks","yellowSprayPaintUnlocked",global.yellowSprayPaintUnlocked);
	ini_write_real("unlocks","redSprayPaintUnlocked",global.redSprayPaintUnlocked);
	ini_write_real("unlocks","greenSprayPaintUnlocked",global.greenSprayPaintUnlocked);
	ini_write_real("unlocks","dreamyBlueberrySprayPaintUnlocked",global.dreamyBlueberrySprayPaintUnlocked);
	ini_write_real("unlocks","carbonSprayPaintUnlocked",global.carbonSprayPaintUnlocked);
	ini_write_real("unlocks","cherrySprayPaintUnlocked",global.cherrySprayPaintUnlocked);
	ini_write_real("unlocks","deepFriedKirbSprayPaintUnlocked",global.deepFriedKirbSprayPaintUnlocked);
	ini_write_real("unlocks","emeraldSprayPaintUnlocked",global.emeraldSprayPaintUnlocked);
	ini_write_real("unlocks","gameKirbSprayPaintUnlocked",global.gameKirbSprayPaintUnlocked);
	ini_write_real("unlocks","hauntingPurpleSprayPaintUnlocked",global.hauntingPurpleSprayPaintUnlocked);
	ini_write_real("unlocks","invisSprinkleSprayPaintUnlocked",global.invisSprinkleSprayPaintUnlocked);
	ini_write_real("unlocks","monochromeKirbSprayPaintUnlocked",global.monochromeKirbSprayPaintUnlocked);
	ini_write_real("unlocks","yolkTempleSprayPaintUnlocked",global.yolkTempleSprayPaintUnlocked);
	ini_write_real("unlocks","plumpTomatoSprayPaintUnlocked",global.plumpTomatoSprayPaintUnlocked);
	ini_write_real("unlocks","waddleWaddleSprayPaintUnlocked",global.waddleWaddleSprayPaintUnlocked);
	ini_write_real("unlocks","mysticSprayPaintUnlocked",global.mysticSprayPaintUnlocked);
	ini_write_real("unlocks","shadowOfTheMirrorSprayPaintUnlocked",global.shadowOfTheMirrorSprayPaintUnlocked);
	ini_write_real("unlocks","deliriousSprayPaintUnlocked",global.deliriousSprayPaintUnlocked);
	ini_write_real("unlocks","greenjoltSprayPaintUnlocked",global.greenjoltSprayPaintUnlocked);
	ini_write_real("unlocks","butterKnifeSprayPaintUnlocked",global.butterKnifeSprayPaintUnlocked);
	ini_write_real("unlocks","blurpleSprayPaintUnlocked",global.blurpleSprayPaintUnlocked);
	ini_write_real("unlocks","beamSprayPaintUnlocked",global.beamSprayPaintUnlocked);
	ini_write_real("unlocks","stoneSprayPaintUnlocked",global.stoneSprayPaintUnlocked);
	ini_write_real("unlocks","mirrorSprayPaintUnlocked",global.mirrorSprayPaintUnlocked);
	ini_write_real("unlocks","ninjaSprayPaintUnlocked",global.ninjaSprayPaintUnlocked);
	ini_write_real("unlocks","fireSprayPaintUnlocked",global.fireSprayPaintUnlocked);
	ini_write_real("unlocks","iceSprayPaintUnlocked",global.iceSprayPaintUnlocked);
	ini_write_real("unlocks","plasmaSprayPaintUnlocked",global.plasmaSprayPaintUnlocked);
	ini_write_real("unlocks","unearthlyHandSprayPaintUnlocked",global.unearthlyHandSprayPaintUnlocked);
	ini_write_real("unlocks","soMetaSprayPaintUnlocked",global.soMetaSprayPaintUnlocked);
	ini_write_real("unlocks","gooeyBlueSprayPaintUnlocked",global.gooeyBlueSprayPaintUnlocked);
	ini_write_real("unlocks","eggBrownSprayPaintUnlocked",global.eggBrownSprayPaintUnlocked);
	ini_write_real("unlocks","telltaleKeebySprayPaintUnlocked",global.telltaleKeebySprayPaintUnlocked);
	ini_write_real("unlocks","royalYarnSprayPaintUnlocked",global.royalYarnSprayPaintUnlocked);
	ini_write_real("unlocks","smileyWhiteSprayPaintUnlocked",global.smileyWhiteSprayPaintUnlocked);
	ini_write_real("unlocks","eddSprayPaintUnlocked",global.eddSprayPaintUnlocked);
	ini_write_real("unlocks","musiciansLightSprayPaintUnlocked",global.musiciansLightSprayPaintUnlocked);
	
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
	ini_write_real("unlocks","omegaMatterFamiliarUnlocked",global.omegaMatterFamiliarUnlocked);
	ini_write_real("unlocks","omegaMatterFamiliarLevel",global.omegaMatterFamiliarLevel);
	ini_write_real("unlocks","omegaMatterFamiliarExp",global.omegaMatterFamiliarExp);
	
	ini_write_real("unlocks","cutterMotorCutterUpgradeUnlocked",global.cutterMotorCutterUpgradeUnlocked);
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
	
	ini_write_real("unlocks","bestiaryEnemiesWaddleDeeUnlocked",global.bestiaryEnemiesWaddleDeeUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesWaddleDooUnlocked",global.bestiaryEnemiesWaddleDooUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesBrontoBurtUnlocked",global.bestiaryEnemiesBrontoBurtUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesTwizzyUnlocked",global.bestiaryEnemiesTwizzyUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesTookeyUnlocked",global.bestiaryEnemiesTookeyUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesSirKibbleUnlocked",global.bestiaryEnemiesSirKibbleUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesGordoUnlocked",global.bestiaryEnemiesGordoUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesBloodGordoUnlocked",global.bestiaryEnemiesBloodGordoUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesShotzoUnlocked",global.bestiaryEnemiesShotzoUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesMysticDooUnlocked",global.bestiaryEnemiesMysticDooUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesBouncyUnlocked",global.bestiaryEnemiesBouncyUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesMrBoogieUnlocked",global.bestiaryEnemiesMrBoogieUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesSearchUnlocked",global.bestiaryEnemiesSearchUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesHiveDroneUnlocked",global.bestiaryEnemiesHiveDroneUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesWapodUnlocked",global.bestiaryEnemiesWapodUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesFlamebelchUnlocked",global.bestiaryEnemiesFlamebelchUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesCappyUnlocked",global.bestiaryEnemiesCappyUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesBroomHatterUnlocked",global.bestiaryEnemiesBroomHatterUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesCoconutUnlocked",global.bestiaryEnemiesCoconutUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesNoddyUnlocked",global.bestiaryEnemiesNoddyUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesBladoUnlocked",global.bestiaryEnemiesBladoUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesScarfyUnlocked",global.bestiaryEnemiesScarfyUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesRockyUnlocked",global.bestiaryEnemiesRockyUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesGrizzoUnlocked",global.bestiaryEnemiesGrizzoUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesJungleBombUnlocked",global.bestiaryEnemiesJungleBombUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesGlunkUnlocked",global.bestiaryEnemiesGlunkUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesKabuUnlocked",global.bestiaryEnemiesKabuUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesBurningLeoUnlocked",global.bestiaryEnemiesBurningLeoUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesTomatooUnlocked",global.bestiaryEnemiesTomatooUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesOnionUnlocked",global.bestiaryEnemiesOnionUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesAnemoneeUnlocked",global.bestiaryEnemiesAnemoneeUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesGimUnlocked",global.bestiaryEnemiesGimUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesPoppyBrosJrUnlocked",global.bestiaryEnemiesPoppyBrosJrUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesBoboUnlocked",global.bestiaryEnemiesBoboUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesFoleyUnlocked",global.bestiaryEnemiesFoleyUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesNidooUnlocked",global.bestiaryEnemiesNidooUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesComoUnlocked",global.bestiaryEnemiesComoUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesCairnUnlocked",global.bestiaryEnemiesCairnUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesBomberUnlocked",global.bestiaryEnemiesBomberUnlocked);
	ini_write_real("unlocks","bestiaryEnemiesSimirrorUnlocked",global.bestiaryEnemiesSimirrorUnlocked);
	
	ini_write_string("playerCustomization","skinKirbyP1",global.skinKirbyP1);
	ini_write_string("playerCustomization","skinKirbyP2",global.skinKirbyP2);
	ini_write_string("playerCustomization","skinGambleP1",global.skinGambleP1);
	ini_write_string("playerCustomization","skinGambleP2",global.skinGambleP2);
	ini_write_string("playerCustomization","skinMetaKnightP1",global.skinMetaKnightP1);
	ini_write_string("playerCustomization","skinMetaKnightP2",global.skinMetaKnightP2);
	ini_write_string("playerCustomization","skinGooeyP1",global.skinGooeyP1);
	ini_write_string("playerCustomization","skinGooeyP2",global.skinGooeyP2);
	ini_write_string("playerCustomization","skinMagolorP1",global.skinMagolorP1);
	ini_write_string("playerCustomization","skinMagolorP2",global.skinMagolorP2);
	
	ini_write_real("playerCustomization","sprayPaintKirbyP1",global.sprayPaintKirbyP1);
	ini_write_real("playerCustomization","sprayPaintKirbyP2",global.sprayPaintKirbyP2);
	ini_write_real("playerCustomization","sprayPaintGambleP1",global.sprayPaintGambleP1);
	ini_write_real("playerCustomization","sprayPaintGambleP2",global.sprayPaintGambleP2);
	ini_write_real("playerCustomization","sprayPaintMetaKnightP1",global.sprayPaintMetaKnightP1);
	ini_write_real("playerCustomization","sprayPaintMetaKnightP2",global.sprayPaintMetaKnightP2);
	ini_write_real("playerCustomization","sprayPaintGooeyP1",global.sprayPaintGooeyP1);
	ini_write_real("playerCustomization","sprayPaintGooeyP2",global.sprayPaintGooeyP2);
	ini_write_real("playerCustomization","sprayPaintMagolorP1",global.sprayPaintMagolorP1);
	ini_write_real("playerCustomization","sprayPaintMagolorP2",global.sprayPaintMagolorP2);
	
	ini_write_real("playerCustomization","characterP1",global.characterP1);
	ini_write_real("playerCustomization","characterP2",global.characterP2);
	ini_write_real("playerCustomization","isHelperP1",global.isHelperP1);
	ini_write_real("playerCustomization","isHelperP2",global.isHelperP2);
	ini_write_real("playerCustomization","familiarP1",global.familiarP1);
	ini_write_real("playerCustomization","familiarP2",global.familiarP2);
	
	ini_write_real("playerCustomization","hatTypeCutterP1",global.hatTypeCutterP1);
	ini_write_real("playerCustomization","hatTypeBeamP1",global.hatTypeBeamP1);
	ini_write_real("playerCustomization","hatTypeMysticBeamP1",global.hatTypeMysticBeamP1);
	ini_write_real("playerCustomization","hatTypeStoneP1",global.hatTypeStoneP1);
	ini_write_real("playerCustomization","hatTypeUfoP1",global.hatTypeUfoP1);
	ini_write_real("playerCustomization","hatTypeMirrorP1",global.hatTypeMirrorP1);
	ini_write_real("playerCustomization","hatTypeNinjaP1",global.hatTypeNinjaP1);
	ini_write_real("playerCustomization","hatTypeBombP1",global.hatTypeBombP1);
	ini_write_real("playerCustomization","hatTypeFireP1",global.hatTypeFireP1);
	ini_write_real("playerCustomization","hatTypeIceP1",global.hatTypeIceP1);
	ini_write_real("playerCustomization","hatTypeSparkP1",global.hatTypeSparkP1);
	ini_write_real("playerCustomization","hatTypeYoyoP1",global.hatTypeYoyoP1);
	ini_write_real("playerCustomization","hatTypeWheelP1",global.hatTypeWheelP1);
	ini_write_real("playerCustomization","hatTypeArtistP1",global.hatTypeArtistP1);
	ini_write_real("playerCustomization","hatTypeFighterP1",global.hatTypeFighterP1);
	ini_write_real("playerCustomization","hatTypeSuplexP1",global.hatTypeSuplexP1);
	ini_write_real("playerCustomization","hatTypeWingP1",global.hatTypeWingP1);
	ini_write_real("playerCustomization","hatTypeJetP1",global.hatTypeJetP1);
	ini_write_real("playerCustomization","hatTypeSwordP1",global.hatTypeSwordP1);
	ini_write_real("playerCustomization","hatTypeParasolP1",global.hatTypeParasolP1);
	ini_write_real("playerCustomization","hatTypeHammerP1",global.hatTypeHammerP1);
	ini_write_real("playerCustomization","hatTypeBellP1",global.hatTypeBellP1);
	ini_write_real("playerCustomization","hatTypeWaterP1",global.hatTypeWaterP1);
	ini_write_real("playerCustomization","hatTypeSleepP1",global.hatTypeSleepP1);
	ini_write_real("playerCustomization","hatTypeScanP1",global.hatTypeScanP1);

	ini_write_real("playerCustomization","hatTypeCutterP2",global.hatTypeCutterP2);
	ini_write_real("playerCustomization","hatTypeBeamP2",global.hatTypeBeamP2);
	ini_write_real("playerCustomization","hatTypeMysticBeamP2",global.hatTypeMysticBeamP2);
	ini_write_real("playerCustomization","hatTypeStoneP2",global.hatTypeStoneP2);
	ini_write_real("playerCustomization","hatTypeUfoP2",global.hatTypeUfoP2);
	ini_write_real("playerCustomization","hatTypeMirrorP2",global.hatTypeMirrorP2);
	ini_write_real("playerCustomization","hatTypeNinjaP2",global.hatTypeNinjaP2);
	ini_write_real("playerCustomization","hatTypeBombP2",global.hatTypeBombP2);
	ini_write_real("playerCustomization","hatTypeFireP2",global.hatTypeFireP2);
	ini_write_real("playerCustomization","hatTypeIceP2",global.hatTypeIceP2);
	ini_write_real("playerCustomization","hatTypeSparkP2",global.hatTypeSparkP2);
	ini_write_real("playerCustomization","hatTypeYoyoP2",global.hatTypeYoyoP2);
	ini_write_real("playerCustomization","hatTypeWheelP2",global.hatTypeWheelP2);
	ini_write_real("playerCustomization","hatTypeArtistP2",global.hatTypeArtistP2);
	ini_write_real("playerCustomization","hatTypeFighterP2",global.hatTypeFighterP2);
	ini_write_real("playerCustomization","hatTypeSuplexP2",global.hatTypeSuplexP2);
	ini_write_real("playerCustomization","hatTypeWingP2",global.hatTypeWingP2);
	ini_write_real("playerCustomization","hatTypeJetP2",global.hatTypeJetP2);
	ini_write_real("playerCustomization","hatTypeSwordP2",global.hatTypeSwordP2);
	ini_write_real("playerCustomization","hatTypeParasolP2",global.hatTypeParasolP2);
	ini_write_real("playerCustomization","hatTypeHammerP2",global.hatTypeHammerP2);
	ini_write_real("playerCustomization","hatTypeBellP2",global.hatTypeBellP2);
	ini_write_real("playerCustomization","hatTypeWaterP2",global.hatTypeWaterP2);
	ini_write_real("playerCustomization","hatTypeSleepP2",global.hatTypeSleepP2);
	ini_write_real("playerCustomization","hatTypeScanP2",global.hatTypeScanP2);

	ini_write_real("playerCustomization","hatPaletteCutterKSSUP1",global.hatPaletteCutterKSSUP1);
	ini_write_real("playerCustomization","hatPaletteBeamKSSUP1",global.hatPaletteBeamKSSUP1);
	ini_write_real("playerCustomization","hatPaletteBeamMarxSoulP1",global.hatPaletteBeamMarxSoulP1);
	ini_write_real("playerCustomization","hatPaletteMysticBeamGGSP1",global.hatPaletteMysticBeamGGSP1);
	ini_write_real("playerCustomization","hatPaletteStoneKSSUP1",global.hatPaletteStoneKSSUP1);
	ini_write_real("playerCustomization","hatPaletteStoneModernP1",global.hatPaletteStoneModernP1);
	ini_write_real("playerCustomization","hatPaletteUfoKSSUP1",global.hatPaletteUfoKSSUP1);
	ini_write_real("playerCustomization","hatPaletteMirrorKSSUP1",global.hatPaletteMirrorKSSUP1);
	ini_write_real("playerCustomization","hatPaletteMirrorModernP1",global.hatPaletteMirrorModernP1);
	ini_write_real("playerCustomization","hatPaletteNinjaKSSUP1",global.hatPaletteNinjaKSSUP1);
	ini_write_real("playerCustomization","hatPaletteNinjaModernP1",global.hatPaletteNinjaModernP1);
	ini_write_real("playerCustomization","hatPaletteBombKSSUP1",global.hatPaletteBombKSSUP1);
	ini_write_real("playerCustomization","hatPaletteBombModernP1",global.hatPaletteBombModernP1);
	ini_write_real("playerCustomization","hatPaletteFireKSSUP1",global.hatPaletteFireKSSUP1);
	ini_write_real("playerCustomization","hatPaletteIceKSSUP1",global.hatPaletteIceKSSUP1);
	ini_write_real("playerCustomization","hatPaletteIceSnowmanP1",global.hatPaletteIceSnowmanP1);
	ini_write_real("playerCustomization","hatPaletteSparkKSSUP1",global.hatPaletteSparkKSSUP1);
	ini_write_real("playerCustomization","hatPaletteYoyoKSSUP1",global.hatPaletteYoyoKSSUP1);
	ini_write_real("playerCustomization","hatPaletteWheelKSSUP1",global.hatPaletteWheelKSSUP1);
	ini_write_real("playerCustomization","hatPaletteArtistKSSUP1",global.hatPaletteArtistKSSUP1);
	ini_write_real("playerCustomization","hatPaletteArtistModernP1",global.hatPaletteArtistModernP1);
	ini_write_real("playerCustomization","hatPaletteFighterKSSUP1",global.hatPaletteFighterKSSUP1);
	ini_write_real("playerCustomization","hatPaletteSuplexKSSUP1",global.hatPaletteSuplexKSSUP1);
	ini_write_real("playerCustomization","hatPaletteWingKSSUP1",global.hatPaletteWingKSSUP1);
	ini_write_real("playerCustomization","hatPaletteJetKSSUP1",global.hatPaletteJetKSSUP1);
	ini_write_real("playerCustomization","hatPaletteSwordKSSUP1",global.hatPaletteSwordKSSUP1);
	ini_write_real("playerCustomization","hatPaletteParasolKSSUP1",global.hatPaletteParasolKSSUP1);
	ini_write_real("playerCustomization","hatPaletteHammerKSSUP1",global.hatPaletteHammerKSSUP1);
	ini_write_real("playerCustomization","hatPaletteBellModernP1",global.hatPaletteBellModernP1);
	ini_write_real("playerCustomization","hatPaletteSleepKSSUP1",global.hatPaletteSleepKSSUP1);
	ini_write_real("playerCustomization","hatPaletteScanKSSUP1",global.hatPaletteScanKSSUP1);

	ini_write_real("playerCustomization","hatPaletteCutterKSSUP2",global.hatPaletteCutterKSSUP2);
	ini_write_real("playerCustomization","hatPaletteBeamKSSUP2",global.hatPaletteBeamKSSUP2);
	ini_write_real("playerCustomization","hatPaletteBeamMarxSoulP2",global.hatPaletteBeamMarxSoulP2);
	ini_write_real("playerCustomization","hatPaletteMysticBeamGGSP2",global.hatPaletteMysticBeamGGSP2);
	ini_write_real("playerCustomization","hatPaletteStoneKSSUP2",global.hatPaletteStoneKSSUP2);
	ini_write_real("playerCustomization","hatPaletteStoneModernP2",global.hatPaletteStoneModernP2);
	ini_write_real("playerCustomization","hatPaletteUfoKSSUP2",global.hatPaletteUfoKSSUP2);
	ini_write_real("playerCustomization","hatPaletteMirrorKSSUP2",global.hatPaletteMirrorKSSUP2);
	ini_write_real("playerCustomization","hatPaletteMirrorModernP2",global.hatPaletteMirrorModernP2);
	ini_write_real("playerCustomization","hatPaletteNinjaKSSUP2",global.hatPaletteNinjaKSSUP2);
	ini_write_real("playerCustomization","hatPaletteNinjaModernP2",global.hatPaletteNinjaModernP2);
	ini_write_real("playerCustomization","hatPaletteBombKSSUP2",global.hatPaletteBombKSSUP2);
	ini_write_real("playerCustomization","hatPaletteBombModernP2",global.hatPaletteBombModernP2);
	ini_write_real("playerCustomization","hatPaletteFireKSSUP2",global.hatPaletteFireKSSUP2);
	ini_write_real("playerCustomization","hatPaletteIceKSSUP2",global.hatPaletteIceKSSUP2);
	ini_write_real("playerCustomization","hatPaletteIceSnowmanP2",global.hatPaletteIceSnowmanP2);
	ini_write_real("playerCustomization","hatPaletteSparkKSSUP2",global.hatPaletteSparkKSSUP2);
	ini_write_real("playerCustomization","hatPaletteYoyoKSSUP2",global.hatPaletteYoyoKSSUP2);
	ini_write_real("playerCustomization","hatPaletteWheelKSSUP2",global.hatPaletteWheelKSSUP2);
	ini_write_real("playerCustomization","hatPaletteArtistKSSUP2",global.hatPaletteArtistKSSUP2);
	ini_write_real("playerCustomization","hatPaletteArtistModernP2",global.hatPaletteArtistModernP2);
	ini_write_real("playerCustomization","hatPaletteFighterKSSUP2",global.hatPaletteFighterKSSUP2);
	ini_write_real("playerCustomization","hatPaletteSuplexKSSUP2",global.hatPaletteSuplexKSSUP2);
	ini_write_real("playerCustomization","hatPaletteWingKSSUP2",global.hatPaletteWingKSSUP2);
	ini_write_real("playerCustomization","hatPaletteJetKSSUP2",global.hatPaletteJetKSSUP2);
	ini_write_real("playerCustomization","hatPaletteSwordKSSUP2",global.hatPaletteSwordKSSUP2);
	ini_write_real("playerCustomization","hatPaletteParasolKSSUP2",global.hatPaletteParasolKSSUP2);
	ini_write_real("playerCustomization","hatPaletteHammerKSSUP2",global.hatPaletteHammerKSSUP2);
	ini_write_real("playerCustomization","hatPaletteBellModernP2",global.hatPaletteBellModernP2);
	ini_write_real("playerCustomization","hatPaletteScanKSSUP2",global.hatPaletteScanKSSUP2);
	
	ini_write_real("playerCustomization","cutterMotorCutterUpgradeEquipped",global.cutterMotorCutterUpgradeEquipped);
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
	
	ini_write_real("extraTutorials","exTut_Treasure",global.exTut_Treasure);
	ini_write_real("extraTutorials","exTut_AntiFloat",global.exTut_AntiFloat);
	
	//Keycard Content
	
	ini_write_real("doNotEdit","KBB0",global.kirbyBattleBlitzCrossoverKeycard);
	ini_write_real("doNotEdit","KDLP0",global.kirbysDreamLandPlusCrossoverKeycard);
	ini_write_real("doNotEdit","DC0",global.dreamCrafterCrossoverKeycard);
	ini_close();
}