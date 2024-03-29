///@description Save Game
///@param {real} file Which file to write.

function scr_SaveGame(argument0)
{
	if (file_exists(argument0)) file_delete(argument0);
	
	ini_open(argument0);
	
	if (global.gameTimeSeconds != 0) ini_write_real("stats","gameTimeSeconds",global.gameTimeSeconds);
	if (global.gameTimeMinutes != 0) ini_write_real("stats","gameTimeMinutes",global.gameTimeMinutes);
	if (global.gameTimeHours != 0) ini_write_real("stats","gameTimeHours",global.gameTimeHours);
	if (global.pointStars != 0) ini_write_real("stats","pointStars",global.pointStars);
	if (global.points != 0) ini_write_real("stats","points",global.points);
	if (global.playerLives != 3) ini_write_real("stats","lives",global.playerLives);
	if (global.goldenTomatoAmountP1 != 0) ini_write_real("stats","goldenTomatoAmountP1",global.goldenTomatoAmountP1);
	if (global.goldenTomatoAmountP2 != 0) ini_write_real("stats","goldenTomatoAmountP2",global.goldenTomatoAmountP2);
	if (global.goldenTomatoAmountP3 != 0) ini_write_real("stats","goldenTomatoAmountP3",global.goldenTomatoAmountP3);
	if (global.goldenTomatoAmountP4 != 0) ini_write_real("stats","goldenTomatoAmountP4",global.goldenTomatoAmountP4);
	if (global.abilityP1 != playerAbilities.none) ini_write_real("stats","abilityP1",global.abilityP1);
	if (global.abilityP2 != playerAbilities.none) ini_write_real("stats","abilityP2",global.abilityP2);
	if (global.abilityP3 != playerAbilities.none) ini_write_real("stats","abilityP3",global.abilityP3);
	if (global.abilityP4 != playerAbilities.none) ini_write_real("stats","abilityP4",global.abilityP4);
	
	if (global.cutterAbilityObtained != false) ini_write_real("stats","cutterAbilityObtained",global.cutterAbilityObtained);
	if (global.beamAbilityObtained != false) ini_write_real("stats","beamAbilityObtained",global.beamAbilityObtained);
	if (global.mysticBeamAbilityObtained != false) ini_write_real("stats","mysticBeamAbilityObtained",global.mysticBeamAbilityObtained);
	if (global.stoneAbilityObtained != false) ini_write_real("stats","stoneAbilityObtained",global.stoneAbilityObtained);
	if (global.ufoAbilityObtained != false) ini_write_real("stats","ufoAbilityObtained",global.ufoAbilityObtained);
	if (global.mirrorAbilityObtained != false) ini_write_real("stats","mirrorAbilityObtained",global.mirrorAbilityObtained);
	if (global.ninjaAbilityObtained != false) ini_write_real("stats","ninjaAbilityObtained",global.ninjaAbilityObtained);
	if (global.bombAbilityObtained != false) ini_write_real("stats","bombAbilityObtained",global.bombAbilityObtained);
	if (global.fireAbilityObtained != false) ini_write_real("stats","fireAbilityObtained",global.fireAbilityObtained);
	if (global.mysticFireAbilityObtained != false) ini_write_real("stats","mysticFireAbilityObtained",global.mysticFireAbilityObtained);
	if (global.iceAbilityObtained != false) ini_write_real("stats","iceAbilityObtained",global.iceAbilityObtained);
	if (global.sparkAbilityObtained != false) ini_write_real("stats","sparkAbilityObtained",global.sparkAbilityObtained);
	if (global.yoyoAbilityObtained != false) ini_write_real("stats","yoyoAbilityObtained",global.yoyoAbilityObtained);
	if (global.wheelAbilityObtained != false) ini_write_real("stats","wheelAbilityObtained",global.wheelAbilityObtained);
	if (global.artistAbilityObtained != false) ini_write_real("stats","artistAbilityObtained",global.artistAbilityObtained);
	if (global.fighterAbilityObtained != false) ini_write_real("stats","fighterAbilityObtained",global.fighterAbilityObtained);
	if (global.suplexAbilityObtained != false) ini_write_real("stats","suplexAbilityObtained",global.suplexAbilityObtained);
	if (global.wingAbilityObtained != false) ini_write_real("stats","wingAbilityObtained",global.wingAbilityObtained);
	if (global.jetAbilityObtained != false) ini_write_real("stats","jetAbilityObtained",global.jetAbilityObtained);
	if (global.swordAbilityObtained != false) ini_write_real("stats","swordAbilityObtained",global.swordAbilityObtained);
	if (global.parasolAbilityObtained != false) ini_write_real("stats","parasolAbilityObtained",global.parasolAbilityObtained);
	if (global.hammerAbilityObtained != false) ini_write_real("stats","hammerAbilityObtained",global.hammerAbilityObtained);
	if (global.bellAbilityObtained != false) ini_write_real("stats","bellAbilityObtained",global.bellAbilityObtained);
	if (global.waterAbilityObtained != false) ini_write_real("stats","waterAbilityObtained",global.waterAbilityObtained);
	if (global.hiJumpAbilityObtained != false) ini_write_real("stats","hiJumpAbilityObtained",global.hiJumpAbilityObtained);
	if (global.gearAbilityObtained != false) ini_write_real("stats","gearAbilityObtained",global.gearAbilityObtained);
	if (global.sleepAbilityObtained != false) ini_write_real("stats","sleepAbilityObtained",global.sleepAbilityObtained);
	if (global.crashAbilityObtained != false) ini_write_real("stats","crashAbilityObtained",global.crashAbilityObtained);
	if (global.micAbilityObtained != false) ini_write_real("stats","micAbilityObtained",global.micAbilityObtained);
	if (global.chefAbilityObtained != false) ini_write_real("stats","chefAbilityObtained",global.chefAbilityObtained);
	if (global.ultraSwordAbilityObtained != false) ini_write_real("stats","ultraSwordAbilityObtained",global.ultraSwordAbilityObtained);
	if (global.cosmicBladeAbilityObtained != false) ini_write_real("stats","cosmicBladeAbilityObtained",global.cosmicBladeAbilityObtained);
	
	if (global.cutterAbilityKills != 0) ini_write_real("stats","cutterAbilityKills",global.cutterAbilityKills);
	if (global.beamAbilityKills != 0) ini_write_real("stats","beamAbilityKills",global.beamAbilityKills);
	if (global.mysticBeamAbilityKills != 0) ini_write_real("stats","mysticBeamAbilityKills",global.mysticBeamAbilityKills);
	if (global.stoneAbilityKills != 0) ini_write_real("stats","stoneAbilityKills",global.stoneAbilityKills);
	if (global.ufoAbilityKills != 0) ini_write_real("stats","ufoAbilityKills",global.ufoAbilityKills);
	if (global.mirrorAbilityKills != 0) ini_write_real("stats","mirrorAbilityKills",global.mirrorAbilityKills);
	if (global.ninjaAbilityKills != 0) ini_write_real("stats","ninjaAbilityKills",global.ninjaAbilityKills);
	if (global.bombAbilityKills != 0) ini_write_real("stats","bombAbilityKills",global.bombAbilityKills);
	if (global.fireAbilityKills != 0) ini_write_real("stats","fireAbilityKills",global.fireAbilityKills);
	if (global.mysticFireAbilityKills != 0) ini_write_real("stats","mysticFireAbilityKills",global.mysticFireAbilityKills);
	if (global.iceAbilityKills != 0) ini_write_real("stats","iceAbilityKills",global.iceAbilityKills);
	if (global.sparkAbilityKills != 0) ini_write_real("stats","sparkAbilityKills",global.sparkAbilityKills);
	if (global.yoyoAbilityKills != 0) ini_write_real("stats","yoyoAbilityKills",global.yoyoAbilityKills);
	if (global.wheelAbilityKills != 0) ini_write_real("stats","wheelAbilityKills",global.wheelAbilityKills);
	if (global.artistAbilityKills != 0) ini_write_real("stats","artistAbilityKills",global.artistAbilityKills);
	if (global.fighterAbilityKills != 0) ini_write_real("stats","fighterAbilityKills",global.fighterAbilityKills);
	if (global.suplexAbilityKills != 0) ini_write_real("stats","suplexAbilityKills",global.suplexAbilityKills);
	if (global.wingAbilityKills != 0) ini_write_real("stats","wingAbilityKills",global.wingAbilityKills);
	if (global.jetAbilityKills != 0) ini_write_real("stats","jetAbilityKills",global.jetAbilityKills);
	if (global.swordAbilityKills != 0) ini_write_real("stats","swordAbilityKills",global.swordAbilityKills);
	if (global.parasolAbilityKills != 0) ini_write_real("stats","parasolAbilityKills",global.parasolAbilityKills);
	if (global.hammerAbilityKills != 0) ini_write_real("stats","hammerAbilityKills",global.hammerAbilityKills);
	if (global.bellAbilityKills != 0) ini_write_real("stats","bellAbilityKills",global.bellAbilityKills);
	if (global.waterAbilityKills != 0) ini_write_real("stats","waterAbilityKills",global.waterAbilityKills);
	if (global.hiJumpAbilityKills != 0) ini_write_real("stats","hiJumpAbilityKills",global.hiJumpAbilityKills);
	if (global.gearAbilityKills != 0) ini_write_real("stats","gearAbilityKills",global.gearAbilityKills);
	if (global.sleepAbilityKills != 0) ini_write_real("stats","sleepAbilityKills",global.sleepAbilityKills);
	if (global.crashAbilityKills != 0) ini_write_real("stats","crashAbilityKills",global.crashAbilityKills);
	if (global.micAbilityKills != 0) ini_write_real("stats","micAbilityKills",global.micAbilityKills);
	if (global.chefAbilityKills != 0) ini_write_real("stats","chefAbilityKills",global.chefAbilityKills);
	if (global.ultraSwordAbilityKills != 0) ini_write_real("stats","ultraSwordAbilityKills",global.ultraSwordAbilityKills);
	if (global.cosmicBladeAbilityKills != 0) ini_write_real("stats","cosmicBladeAbilityKills",global.cosmicBladeAbilityKills);
	
	if (global.progression != progression.greenGreens) ini_write_real("progression","progression",global.progression);
	
	if (global.beatGreenGreens != false) ini_write_real("progression","beatGreenGreens",global.beatGreenGreens);
	if (global.beatBattleshipHalberd != false) ini_write_real("progression","beatBattleshipHalberd",global.beatBattleshipHalberd);
	if (global.beatAsteroidFields != false) ini_write_real("progression","beatAsteroidFields",global.beatAsteroidFields);
	if (global.beatYolkYard != false) ini_write_real("progression","beatYolkYard",global.beatYolkYard);
	if (global.beatGrandTempleAvgo != false) ini_write_real("progression","beatGrandTempleAvgo",global.beatGrandTempleAvgo);
	if (global.beatFloralYolkCaves != false) ini_write_real("progression","beatFloralYolkCaves",global.beatFloralYolkCaves);
	if (global.beatStormTheFortress != false) ini_write_real("progression","beatStormTheFortress",global.beatStormTheFortress);
	if (global.beatCentralLab != false) ini_write_real("progression","beatCentralLab",global.beatCentralLab);
	if (global.beatPathToTheNastyMachine != false) ini_write_real("progression","beatPathToTheNastyMachine",global.beatPathToTheNastyMachine);
	if (global.beatSandshellBeach != false) ini_write_real("progression","beatSandshellBeach",global.beatSandshellBeach);
	if (global.beatUpTheStraw != false) ini_write_real("progression","beatUpTheStraw",global.beatUpTheStraw);
	if (global.beatSacredAquatia != false) ini_write_real("progression","beatSacredAquatia",global.beatSacredAquatia);
	if (global.beatCosmicPalace != false) ini_write_real("progression","beatCosmicPalace",global.beatCosmicPalace);
	if (global.beatPopstarMoon != false) ini_write_real("progression","beatPopstarMoon",global.beatPopstarMoon);
	if (global.beatChapter1 != false) ini_write_real("progression","beatChapter1",global.beatChapter1);
	
	if (global.customizeMenuFirstTime != false) ini_write_real("progression","customizeMenuFirstTime",global.customizeMenuFirstTime);
	if (global.bestiaryMenuFirstTime != false) ini_write_real("progression","bestiaryMenuFirstTime",global.bestiaryMenuFirstTime);
	if (global.upgradesMenuFirstTime != false) ini_write_real("progression","upgradesMenuFirstTime",global.upgradesMenuFirstTime);
	if (global.cheatsMenuFirstTime != false) ini_write_real("progression","cheatsMenuFirstTime",global.cheatsMenuFirstTime);
	if (global.trophiesMenuFirstTime != false) ini_write_real("progression","trophiesMenuFirstTime",global.trophiesMenuFirstTime);
	if (global.stagesMenuFirstTime != false) ini_write_real("progression","stagesMenuFirstTime",global.stagesMenuFirstTime);
	if (global.soundTestMenuFirstTime != false) ini_write_real("progression","soundTestMenuFirstTime",global.soundTestMenuFirstTime);
	if (global.galleryMenuFirstTime != false) ini_write_real("progression","galleryMenuFirstTime",global.galleryMenuFirstTime);
	
	if (global.shopGearCubeFirstTime != true) ini_write_real("progression","shopGearCubeFirstTime",global.shopGearCubeFirstTime);
	if (global.shopGearCubeNewItem != false) ini_write_real("progression","shopGearCubeNewItem",global.shopGearCubeNewItem);
	
	#region Stage Missions
	#region Control
	#endregion
	
	#region Green Greens
	if (global.stageComplete_GreenGreens != false) ini_write_real("progression","stageComplete_GreenGreens",global.stageComplete_GreenGreens);
	
	if (global.stageMission_GreenGreens[0] != false) ini_write_real("progression","stageMission_GreenGreens_0",global.stageMission_GreenGreens[0]);
	if (global.stageMission_GreenGreens[1] != false) ini_write_real("progression","stageMission_GreenGreens_1",global.stageMission_GreenGreens[1]);
	if (global.stageMission_GreenGreens[2] != false) ini_write_real("progression","stageMission_GreenGreens_2",global.stageMission_GreenGreens[2]);
	if (global.stageMission_GreenGreens[3] != false) ini_write_real("progression","stageMission_GreenGreens_3",global.stageMission_GreenGreens[3]);
	
	if (global.stageCollectible_GreenGreens[0] != false) ini_write_real("progression","stageCollectible_GreenGreens_0",global.stageCollectible_GreenGreens[0]);
	if (global.stageCollectible_GreenGreens[1] != false) ini_write_real("progression","stageCollectible_GreenGreens_1",global.stageCollectible_GreenGreens[1]);
	if (global.stageCollectible_GreenGreens[2] != false) ini_write_real("progression","stageCollectible_GreenGreens_2",global.stageCollectible_GreenGreens[2]);
	if (global.stageCollectible_GreenGreens[3] != false) ini_write_real("progression","stageCollectible_GreenGreens_3",global.stageCollectible_GreenGreens[3]);
	#endregion
	
	#region Battleship Halberd
	if (global.stageComplete_BattleshipHalberd != false) ini_write_real("progression","stageComplete_BattleshipHalberd",global.stageComplete_BattleshipHalberd);
	
	if (global.stageMission_BattleshipHalberd[0] != false) ini_write_real("progression","stageMission_BattleshipHalberd_0",global.stageMission_BattleshipHalberd[0]);
	if (global.stageMission_BattleshipHalberd[1] != false) ini_write_real("progression","stageMission_BattleshipHalberd_1",global.stageMission_BattleshipHalberd[1]);
	if (global.stageMission_BattleshipHalberd[2] != false) ini_write_real("progression","stageMission_BattleshipHalberd_2",global.stageMission_BattleshipHalberd[2]);
	if (global.stageMission_BattleshipHalberd[3] != false) ini_write_real("progression","stageMission_BattleshipHalberd_3",global.stageMission_BattleshipHalberd[3]);
	
	if (global.stageCollectible_BattleshipHalberd[0] != false) ini_write_real("progression","stageCollectible_BattleshipHalberd_0",global.stageCollectible_BattleshipHalberd[0]);
	if (global.stageCollectible_BattleshipHalberd[1] != false) ini_write_real("progression","stageCollectible_BattleshipHalberd_1",global.stageCollectible_BattleshipHalberd[1]);
	if (global.stageCollectible_BattleshipHalberd[2] != false) ini_write_real("progression","stageCollectible_BattleshipHalberd_2",global.stageCollectible_BattleshipHalberd[2]);
	if (global.stageCollectible_BattleshipHalberd[3] != false) ini_write_real("progression","stageCollectible_BattleshipHalberd_3",global.stageCollectible_BattleshipHalberd[3]);
	#endregion
	
	#region Asteroid Fields
	if (global.stageComplete_AsteroidFields != false) ini_write_real("progression","stageComplete_AsteroidFields",global.stageComplete_AsteroidFields);
	
	if (global.stageMission_AsteroidFields[0] != false) ini_write_real("progression","stageMission_AsteroidFields_0",global.stageMission_AsteroidFields[0]);
	if (global.stageMission_AsteroidFields[1] != false) ini_write_real("progression","stageMission_AsteroidFields_1",global.stageMission_AsteroidFields[1]);
	if (global.stageMission_AsteroidFields[2] != false) ini_write_real("progression","stageMission_AsteroidFields_2",global.stageMission_AsteroidFields[2]);
	if (global.stageMission_AsteroidFields[3] != false) ini_write_real("progression","stageMission_AsteroidFields_3",global.stageMission_AsteroidFields[3]);
	
	if (global.stageCollectible_AsteroidFields[0] != false) ini_write_real("progression","stageCollectible_AsteroidFields_0",global.stageCollectible_AsteroidFields[0]);
	if (global.stageCollectible_AsteroidFields[1] != false) ini_write_real("progression","stageCollectible_AsteroidFields_1",global.stageCollectible_AsteroidFields[1]);
	if (global.stageCollectible_AsteroidFields[2] != false) ini_write_real("progression","stageCollectible_AsteroidFields_2",global.stageCollectible_AsteroidFields[2]);
	if (global.stageCollectible_AsteroidFields[3] != false) ini_write_real("progression","stageCollectible_AsteroidFields_3",global.stageCollectible_AsteroidFields[3]);
	#endregion
	
	#region Yolk Yard
	if (global.stageComplete_YolkYard != false) ini_write_real("progression","stageComplete_YolkYard",global.stageComplete_YolkYard);
	
	if (global.stageMission_YolkYard[0] != false) ini_write_real("progression","stageMission_YolkYard_0",global.stageMission_YolkYard[0]);
	if (global.stageMission_YolkYard[1] != false) ini_write_real("progression","stageMission_YolkYard_1",global.stageMission_YolkYard[1]);
	if (global.stageMission_YolkYard[2] != false) ini_write_real("progression","stageMission_YolkYard_2",global.stageMission_YolkYard[2]);
	if (global.stageMission_YolkYard[3] != false) ini_write_real("progression","stageMission_YolkYard_3",global.stageMission_YolkYard[3]);
	
	if (global.stageCollectible_YolkYard[0] != false) ini_write_real("progression","stageCollectible_YolkYard_0",global.stageCollectible_YolkYard[0]);
	if (global.stageCollectible_YolkYard[1] != false) ini_write_real("progression","stageCollectible_YolkYard_1",global.stageCollectible_YolkYard[1]);
	if (global.stageCollectible_YolkYard[2] != false) ini_write_real("progression","stageCollectible_YolkYard_2",global.stageCollectible_YolkYard[2]);
	if (global.stageCollectible_YolkYard[3] != false) ini_write_real("progression","stageCollectible_YolkYard_3",global.stageCollectible_YolkYard[3]);
	#endregion
	
	#region Grand Temple Avgo
	if (global.stageComplete_GrandTempleAvgo != false) ini_write_real("progression","stageComplete_GrandTempleAvgo",global.stageComplete_GrandTempleAvgo);
	
	if (global.stageMission_GrandTempleAvgo[0] != false) ini_write_real("progression","stageMission_GrandTempleAvgo_0",global.stageMission_GrandTempleAvgo[0]);
	if (global.stageMission_GrandTempleAvgo[1] != false) ini_write_real("progression","stageMission_GrandTempleAvgo_1",global.stageMission_GrandTempleAvgo[1]);
	if (global.stageMission_GrandTempleAvgo[2] != false) ini_write_real("progression","stageMission_GrandTempleAvgo_2",global.stageMission_GrandTempleAvgo[2]);
	if (global.stageMission_GrandTempleAvgo[3] != false) ini_write_real("progression","stageMission_GrandTempleAvgo_3",global.stageMission_GrandTempleAvgo[3]);
	
	if (global.stageCollectible_GrandTempleAvgo[0] != false) ini_write_real("progression","stageCollectible_GrandTempleAvgo_0",global.stageCollectible_GrandTempleAvgo[0]);
	if (global.stageCollectible_GrandTempleAvgo[1] != false) ini_write_real("progression","stageCollectible_GrandTempleAvgo_1",global.stageCollectible_GrandTempleAvgo[1]);
	if (global.stageCollectible_GrandTempleAvgo[2] != false) ini_write_real("progression","stageCollectible_GrandTempleAvgo_2",global.stageCollectible_GrandTempleAvgo[2]);
	if (global.stageCollectible_GrandTempleAvgo[3] != false) ini_write_real("progression","stageCollectible_GrandTempleAvgo_3",global.stageCollectible_GrandTempleAvgo[3]);
	#endregion
	
	#region Floral Yolk Caves
	if (global.stageComplete_FloralYolkCaves != false) ini_write_real("progression","stageComplete_FloralYolkCaves",global.stageComplete_FloralYolkCaves);
	
	if (global.stageMission_FloralYolkCaves[0] != false) ini_write_real("progression","stageMission_FloralYolkCaves_0",global.stageMission_FloralYolkCaves[0]);
	if (global.stageMission_FloralYolkCaves[1] != false) ini_write_real("progression","stageMission_FloralYolkCaves_1",global.stageMission_FloralYolkCaves[1]);
	if (global.stageMission_FloralYolkCaves[2] != false) ini_write_real("progression","stageMission_FloralYolkCaves_2",global.stageMission_FloralYolkCaves[2]);
	if (global.stageMission_FloralYolkCaves[3] != false) ini_write_real("progression","stageMission_FloralYolkCaves_3",global.stageMission_FloralYolkCaves[3]);
	
	if (global.stageCollectible_FloralYolkCaves[0] != false) ini_write_real("progression","stageCollectible_FloralYolkCaves_0",global.stageCollectible_FloralYolkCaves[0]);
	if (global.stageCollectible_FloralYolkCaves[1] != false) ini_write_real("progression","stageCollectible_FloralYolkCaves_1",global.stageCollectible_FloralYolkCaves[1]);
	if (global.stageCollectible_FloralYolkCaves[2] != false) ini_write_real("progression","stageCollectible_FloralYolkCaves_2",global.stageCollectible_FloralYolkCaves[2]);
	if (global.stageCollectible_FloralYolkCaves[3] != false) ini_write_real("progression","stageCollectible_FloralYolkCaves_3",global.stageCollectible_FloralYolkCaves[3]);
	#endregion
	
	#region Storm The Fortress
	if (global.stageComplete_StormTheFortress != false) ini_write_real("progression","stageComplete_StormTheFortress",global.stageComplete_StormTheFortress);
	
	if (global.stageMission_StormTheFortress[0] != false) ini_write_real("progression","stageMission_StormTheFortress_0",global.stageMission_StormTheFortress[0]);
	if (global.stageMission_StormTheFortress[1] != false) ini_write_real("progression","stageMission_StormTheFortress_1",global.stageMission_StormTheFortress[1]);
	if (global.stageMission_StormTheFortress[2] != false) ini_write_real("progression","stageMission_StormTheFortress_2",global.stageMission_StormTheFortress[2]);
	if (global.stageMission_StormTheFortress[3] != false) ini_write_real("progression","stageMission_StormTheFortress_3",global.stageMission_StormTheFortress[3]);
	
	if (global.stageCollectible_StormTheFortress[0] != false) ini_write_real("progression","stageCollectible_StormTheFortress_0",global.stageCollectible_StormTheFortress[0]);
	if (global.stageCollectible_StormTheFortress[1] != false) ini_write_real("progression","stageCollectible_StormTheFortress_1",global.stageCollectible_StormTheFortress[1]);
	if (global.stageCollectible_StormTheFortress[2] != false) ini_write_real("progression","stageCollectible_StormTheFortress_2",global.stageCollectible_StormTheFortress[2]);
	if (global.stageCollectible_StormTheFortress[3] != false) ini_write_real("progression","stageCollectible_StormTheFortress_3",global.stageCollectible_StormTheFortress[3]);
	#endregion
	
	#region Central Lab
	if (global.stageComplete_CentralLab != false) ini_write_real("progression","stageComplete_CentralLab",global.stageComplete_CentralLab);
	
	if (global.stageMission_CentralLab[0] != false) ini_write_real("progression","stageMission_CentralLab_0",global.stageMission_CentralLab[0]);
	if (global.stageMission_CentralLab[1] != false) ini_write_real("progression","stageMission_CentralLab_1",global.stageMission_CentralLab[1]);
	if (global.stageMission_CentralLab[2] != false) ini_write_real("progression","stageMission_CentralLab_2",global.stageMission_CentralLab[2]);
	if (global.stageMission_CentralLab[3] != false) ini_write_real("progression","stageMission_CentralLab_3",global.stageMission_CentralLab[3]);
	
	if (global.stageCollectible_CentralLab[0] != false) ini_write_real("progression","stageCollectible_CentralLab_0",global.stageCollectible_CentralLab[0]);
	if (global.stageCollectible_CentralLab[1] != false) ini_write_real("progression","stageCollectible_CentralLab_1",global.stageCollectible_CentralLab[1]);
	if (global.stageCollectible_CentralLab[2] != false) ini_write_real("progression","stageCollectible_CentralLab_2",global.stageCollectible_CentralLab[2]);
	if (global.stageCollectible_CentralLab[3] != false) ini_write_real("progression","stageCollectible_CentralLab_3",global.stageCollectible_CentralLab[3]);
	#endregion
	
	#region Path to the Nasty Machine
	if (global.stageComplete_PathToTheNastyMachine != false) ini_write_real("progression","stageComplete_PathToTheNastyMachine",global.stageComplete_PathToTheNastyMachine);
	
	if (global.stageMission_PathToTheNastyMachine[0] != false) ini_write_real("progression","stageMission_PathToTheNastyMachine_0",global.stageMission_PathToTheNastyMachine[0]);
	if (global.stageMission_PathToTheNastyMachine[1] != false) ini_write_real("progression","stageMission_PathToTheNastyMachine_1",global.stageMission_PathToTheNastyMachine[1]);
	if (global.stageMission_PathToTheNastyMachine[2] != false) ini_write_real("progression","stageMission_PathToTheNastyMachine_2",global.stageMission_PathToTheNastyMachine[2]);
	if (global.stageMission_PathToTheNastyMachine[3] != false) ini_write_real("progression","stageMission_PathToTheNastyMachine_3",global.stageMission_PathToTheNastyMachine[3]);
	
	if (global.stageCollectible_PathToTheNastyMachine[0] != false) ini_write_real("progression","stageCollectible_PathToTheNastyMachine_0",global.stageCollectible_PathToTheNastyMachine[0]);
	if (global.stageCollectible_PathToTheNastyMachine[1] != false) ini_write_real("progression","stageCollectible_PathToTheNastyMachine_1",global.stageCollectible_PathToTheNastyMachine[1]);
	if (global.stageCollectible_PathToTheNastyMachine[2] != false) ini_write_real("progression","stageCollectible_PathToTheNastyMachine_2",global.stageCollectible_PathToTheNastyMachine[2]);
	if (global.stageCollectible_PathToTheNastyMachine[3] != false) ini_write_real("progression","stageCollectible_PathToTheNastyMachine_3",global.stageCollectible_PathToTheNastyMachine[3]);
	#endregion
	
	#region Sandshell Beach
	if (global.stageComplete_SandshellBeach != false) ini_write_real("progression","stageComplete_SandshellBeach",global.stageComplete_SandshellBeach);
	
	if (global.stageMission_SandshellBeach[0] != false) ini_write_real("progression","stageMission_SandshellBeach_0",global.stageMission_SandshellBeach[0]);
	if (global.stageMission_SandshellBeach[1] != false) ini_write_real("progression","stageMission_SandshellBeach_1",global.stageMission_SandshellBeach[1]);
	if (global.stageMission_SandshellBeach[2] != false) ini_write_real("progression","stageMission_SandshellBeach_2",global.stageMission_SandshellBeach[2]);
	if (global.stageMission_SandshellBeach[3] != false) ini_write_real("progression","stageMission_SandshellBeach_3",global.stageMission_SandshellBeach[3]);
	
	if (global.stageCollectible_SandshellBeach[0] != false) ini_write_real("progression","stageCollectible_SandshellBeach_0",global.stageCollectible_SandshellBeach[0]);
	if (global.stageCollectible_SandshellBeach[1] != false) ini_write_real("progression","stageCollectible_SandshellBeach_1",global.stageCollectible_SandshellBeach[1]);
	if (global.stageCollectible_SandshellBeach[2] != false) ini_write_real("progression","stageCollectible_SandshellBeach_2",global.stageCollectible_SandshellBeach[2]);
	if (global.stageCollectible_SandshellBeach[3] != false) ini_write_real("progression","stageCollectible_SandshellBeach_3",global.stageCollectible_SandshellBeach[3]);
	#endregion
	
	#region Up The Straw
	if (global.stageComplete_UpTheStraw != false) ini_write_real("progression","stageComplete_UpTheStraw",global.stageComplete_UpTheStraw);
	
	if (global.stageMission_UpTheStraw[0] != false) ini_write_real("progression","stageMission_UpTheStraw_0",global.stageMission_UpTheStraw[0]);
	if (global.stageMission_UpTheStraw[1] != false) ini_write_real("progression","stageMission_UpTheStraw_1",global.stageMission_UpTheStraw[1]);
	if (global.stageMission_UpTheStraw[2] != false) ini_write_real("progression","stageMission_UpTheStraw_2",global.stageMission_UpTheStraw[2]);
	if (global.stageMission_UpTheStraw[3] != false) ini_write_real("progression","stageMission_UpTheStraw_3",global.stageMission_UpTheStraw[3]);
	
	if (global.stageCollectible_UpTheStraw[0] != false) ini_write_real("progression","stageCollectible_UpTheStraw_0",global.stageCollectible_UpTheStraw[0]);
	if (global.stageCollectible_UpTheStraw[1] != false) ini_write_real("progression","stageCollectible_UpTheStraw_1",global.stageCollectible_UpTheStraw[1]);
	if (global.stageCollectible_UpTheStraw[2] != false) ini_write_real("progression","stageCollectible_UpTheStraw_2",global.stageCollectible_UpTheStraw[2]);
	if (global.stageCollectible_UpTheStraw[3] != false) ini_write_real("progression","stageCollectible_UpTheStraw_3",global.stageCollectible_UpTheStraw[3]);
	#endregion
	
	#region Sacred Aquatia
	if (global.stageComplete_SacredAquatia != false) ini_write_real("progression","stageComplete_SacredAquatia",global.stageComplete_SacredAquatia);
	
	if (global.stageMission_SacredAquatia[0] != false) ini_write_real("progression","stageMission_SacredAquatia_0",global.stageMission_SacredAquatia[0]);
	if (global.stageMission_SacredAquatia[1] != false) ini_write_real("progression","stageMission_SacredAquatia_1",global.stageMission_SacredAquatia[1]);
	if (global.stageMission_SacredAquatia[2] != false) ini_write_real("progression","stageMission_SacredAquatia_2",global.stageMission_SacredAquatia[2]);
	if (global.stageMission_SacredAquatia[3] != false) ini_write_real("progression","stageMission_SacredAquatia_3",global.stageMission_SacredAquatia[3]);
	
	if (global.stageCollectible_SacredAquatia[0] != false) ini_write_real("progression","stageCollectible_SacredAquatia_0",global.stageCollectible_SacredAquatia[0]);
	if (global.stageCollectible_SacredAquatia[1] != false) ini_write_real("progression","stageCollectible_SacredAquatia_1",global.stageCollectible_SacredAquatia[1]);
	if (global.stageCollectible_SacredAquatia[2] != false) ini_write_real("progression","stageCollectible_SacredAquatia_2",global.stageCollectible_SacredAquatia[2]);
	if (global.stageCollectible_SacredAquatia[3] != false) ini_write_real("progression","stageCollectible_SacredAquatia_3",global.stageCollectible_SacredAquatia[3]);
	#endregion
	
	#region Cosmic Palace
	if (global.stageComplete_CosmicPalace != false) ini_write_real("progression","stageComplete_CosmicPalace",global.stageComplete_CosmicPalace);
	
	if (global.stageMission_CosmicPalace[0] != false) ini_write_real("progression","stageMission_CosmicPalace_0",global.stageMission_CosmicPalace[0]);
	if (global.stageMission_CosmicPalace[1] != false) ini_write_real("progression","stageMission_CosmicPalace_1",global.stageMission_CosmicPalace[1]);
	if (global.stageMission_CosmicPalace[2] != false) ini_write_real("progression","stageMission_CosmicPalace_2",global.stageMission_CosmicPalace[2]);
	if (global.stageMission_CosmicPalace[3] != false) ini_write_real("progression","stageMission_CosmicPalace_3",global.stageMission_CosmicPalace[3]);
	
	if (global.stageCollectible_CosmicPalace[0] != false) ini_write_real("progression","stageCollectible_CosmicPalace_0",global.stageCollectible_CosmicPalace[0]);
	if (global.stageCollectible_CosmicPalace[1] != false) ini_write_real("progression","stageCollectible_CosmicPalace_1",global.stageCollectible_CosmicPalace[1]);
	if (global.stageCollectible_CosmicPalace[2] != false) ini_write_real("progression","stageCollectible_CosmicPalace_2",global.stageCollectible_CosmicPalace[2]);
	if (global.stageCollectible_CosmicPalace[3] != false) ini_write_real("progression","stageCollectible_CosmicPalace_3",global.stageCollectible_CosmicPalace[3]);
	#endregion
	
	#region Popstar Moon
	if (global.stageComplete_PopstarMoon != false) ini_write_real("progression","stageComplete_PopstarMoon",global.stageComplete_PopstarMoon);
	
	if (global.stageMission_PopstarMoon[0] != false) ini_write_real("progression","stageMission_PopstarMoon_0",global.stageMission_PopstarMoon[0]);
	if (global.stageMission_PopstarMoon[1] != false) ini_write_real("progression","stageMission_PopstarMoon_1",global.stageMission_PopstarMoon[1]);
	if (global.stageMission_PopstarMoon[2] != false) ini_write_real("progression","stageMission_PopstarMoon_2",global.stageMission_PopstarMoon[2]);
	if (global.stageMission_PopstarMoon[3] != false) ini_write_real("progression","stageMission_PopstarMoon_3",global.stageMission_PopstarMoon[3]);
	
	if (global.stageCollectible_PopstarMoon[0] != false) ini_write_real("progression","stageCollectible_PopstarMoon_0",global.stageCollectible_PopstarMoon[0]);
	if (global.stageCollectible_PopstarMoon[1] != false) ini_write_real("progression","stageCollectible_PopstarMoon_1",global.stageCollectible_PopstarMoon[1]);
	if (global.stageCollectible_PopstarMoon[2] != false) ini_write_real("progression","stageCollectible_PopstarMoon_2",global.stageCollectible_PopstarMoon[2]);
	if (global.stageCollectible_PopstarMoon[3] != false) ini_write_real("progression","stageCollectible_PopstarMoon_3",global.stageCollectible_PopstarMoon[3]);
	#endregion
	#endregion
	
	if (global.collectionMenuUnlocked != false) ini_write_real("unlocks","collectionMenuUnlocked",global.collectionMenuUnlocked);
	if (global.collectionMenuUnlockedFirstTime != false) ini_write_real("unlocks","collectionMenuUnlockedFirstTime",global.collectionMenuUnlockedFirstTime);
	if (global.extraModeUnlocked != false) ini_write_real("unlocks","extraModeUnlocked",global.extraModeUnlocked);
	if (global.extraModeUnlockedFirstTime != false) ini_write_real("unlocks","extraModeUnlockedFirstTime",global.extraModeUnlockedFirstTime);
	if (global.maykrUnlocked != false) ini_write_real("unlocks","maykrUnlocked",global.maykrUnlocked);
	if (global.maykrUnlockedFirstTime != false) ini_write_real("unlocks","maykrUnlockedFirstTime",global.maykrUnlockedFirstTime);
	if (global.skylandsUnlocked != false) ini_write_real("unlocks","skylandsUnlocked",global.skylandsUnlocked);
	if (global.skylandsUnlockedFirstTime != false) ini_write_real("unlocks","skylandsUnlockedFirstTime",global.skylandsUnlockedFirstTime);
	if (global.gamblionUnlocked != false) ini_write_real("unlocks","gamblionUnlocked",global.gamblionUnlocked);
	if (global.gamblionUnlockedFirstTime != false) ini_write_real("unlocks","gamblionUnlockedFirstTime",global.gamblionUnlockedFirstTime);
	if (global.strimpsMatrixUnlocked != false) ini_write_real("unlocks","strimpsMatrixUnlocked",global.strimpsMatrixUnlocked);
	if (global.strimpsMatrixUnlockedFirstTime != false) ini_write_real("unlocks","strimpsMatrixUnlockedFirstTime",global.strimpsMatrixUnlockedFirstTime);
	if (global.bitcrushedUnlocked != false) ini_write_real("unlocks","bitcrushedUnlocked",global.bitcrushedUnlocked);
	if (global.bitcrushedUnlockedFirstTime != false) ini_write_real("unlocks","bitcrushedUnlockedFirstTime",global.bitcrushedUnlockedFirstTime);
	if (global.samuraiKirbyUnlocked != false) ini_write_real("unlocks","samuraiKirbyUnlocked",global.samuraiKirbyUnlocked);
	if (global.samuraiKirbyUnlockedFirstTime != false) ini_write_real("unlocks","samuraiKirbyUnlockedFirstTime",global.samuraiKirbyUnlockedFirstTime);
	
	if (global.kirbyUnlocked != true) ini_write_real("unlocks","kirbyUnlocked",global.kirbyUnlocked);
	if (global.gambleUnlocked != false) ini_write_real("unlocks","gambleUnlocked",global.gambleUnlocked);
	if (global.metaKnightUnlocked != false) ini_write_real("unlocks","metaKnightUnlocked",global.metaKnightUnlocked);
	if (global.keebyUnlocked != false) ini_write_real("unlocks","keebyUnlocked",global.keebyUnlocked);
	if (global.helperUnlocked != false) ini_write_real("unlocks","helperUnlocked",global.helperUnlocked);
	if (global.gooeyUnlocked != false) ini_write_real("unlocks","gooeyUnlocked",global.gooeyUnlocked);
	if (global.magolorUnlocked != false) ini_write_real("unlocks","magolorUnlocked",global.magolorUnlocked);
	if (global.princeFluffUnlocked != false) ini_write_real("unlocks","princeFluffUnlocked",global.princeFluffUnlocked);
	
	if (global.friendlyPinkSprayPaintUnlocked != true) ini_write_real("unlocks","friendlyPinkSprayPaintUnlocked",global.friendlyPinkSprayPaintUnlocked);
	if (global.yellowSprayPaintUnlocked != true) ini_write_real("unlocks","yellowSprayPaintUnlocked",global.yellowSprayPaintUnlocked);
	if (global.redSprayPaintUnlocked != true) ini_write_real("unlocks","redSprayPaintUnlocked",global.redSprayPaintUnlocked);
	if (global.greenSprayPaintUnlocked != true) ini_write_real("unlocks","greenSprayPaintUnlocked",global.greenSprayPaintUnlocked);
	if (global.dreamyBlueberrySprayPaintUnlocked != false) ini_write_real("unlocks","dreamyBlueberrySprayPaintUnlocked",global.dreamyBlueberrySprayPaintUnlocked);
	if (global.carbonSprayPaintUnlocked != false) ini_write_real("unlocks","carbonSprayPaintUnlocked",global.carbonSprayPaintUnlocked);
	if (global.cherrySprayPaintUnlocked != false) ini_write_real("unlocks","cherrySprayPaintUnlocked",global.cherrySprayPaintUnlocked);
	if (global.deepFriedKirbSprayPaintUnlocked != false) ini_write_real("unlocks","deepFriedKirbSprayPaintUnlocked",global.deepFriedKirbSprayPaintUnlocked);
	if (global.emeraldSprayPaintUnlocked != false) ini_write_real("unlocks","emeraldSprayPaintUnlocked",global.emeraldSprayPaintUnlocked);
	if (global.gameKirbSprayPaintUnlocked != false) ini_write_real("unlocks","gameKirbSprayPaintUnlocked",global.gameKirbSprayPaintUnlocked);
	if (global.hauntingPurpleSprayPaintUnlocked != false) ini_write_real("unlocks","hauntingPurpleSprayPaintUnlocked",global.hauntingPurpleSprayPaintUnlocked);
	if (global.invisSprinkleSprayPaintUnlocked != false) ini_write_real("unlocks","invisSprinkleSprayPaintUnlocked",global.invisSprinkleSprayPaintUnlocked);
	if (global.monochromeKirbSprayPaintUnlocked != false) ini_write_real("unlocks","monochromeKirbSprayPaintUnlocked",global.monochromeKirbSprayPaintUnlocked);
	if (global.yolkTempleSprayPaintUnlocked != false) ini_write_real("unlocks","yolkTempleSprayPaintUnlocked",global.yolkTempleSprayPaintUnlocked);
	if (global.plumpTomatoSprayPaintUnlocked != false) ini_write_real("unlocks","plumpTomatoSprayPaintUnlocked",global.plumpTomatoSprayPaintUnlocked);
	if (global.waddleWaddleSprayPaintUnlocked != false) ini_write_real("unlocks","waddleWaddleSprayPaintUnlocked",global.waddleWaddleSprayPaintUnlocked);
	if (global.mysticSprayPaintUnlocked != false) ini_write_real("unlocks","mysticSprayPaintUnlocked",global.mysticSprayPaintUnlocked);
	if (global.shadowOfTheMirrorSprayPaintUnlocked != false) ini_write_real("unlocks","shadowOfTheMirrorSprayPaintUnlocked",global.shadowOfTheMirrorSprayPaintUnlocked);
	if (global.deliriousSprayPaintUnlocked != false) ini_write_real("unlocks","deliriousSprayPaintUnlocked",global.deliriousSprayPaintUnlocked);
	if (global.greenjoltSprayPaintUnlocked != false) ini_write_real("unlocks","greenjoltSprayPaintUnlocked",global.greenjoltSprayPaintUnlocked);
	if (global.butterKnifeSprayPaintUnlocked != false) ini_write_real("unlocks","butterKnifeSprayPaintUnlocked",global.butterKnifeSprayPaintUnlocked);
	if (global.blurpleSprayPaintUnlocked != false) ini_write_real("unlocks","blurpleSprayPaintUnlocked",global.blurpleSprayPaintUnlocked);
	if (global.beamSprayPaintUnlocked != false) ini_write_real("unlocks","beamSprayPaintUnlocked",global.beamSprayPaintUnlocked);
	if (global.stoneSprayPaintUnlocked != false) ini_write_real("unlocks","stoneSprayPaintUnlocked",global.stoneSprayPaintUnlocked);
	if (global.mirrorSprayPaintUnlocked != false) ini_write_real("unlocks","mirrorSprayPaintUnlocked",global.mirrorSprayPaintUnlocked);
	if (global.ninjaSprayPaintUnlocked != false) ini_write_real("unlocks","ninjaSprayPaintUnlocked",global.ninjaSprayPaintUnlocked);
	if (global.fireSprayPaintUnlocked != false) ini_write_real("unlocks","fireSprayPaintUnlocked",global.fireSprayPaintUnlocked);
	if (global.iceSprayPaintUnlocked != false) ini_write_real("unlocks","iceSprayPaintUnlocked",global.iceSprayPaintUnlocked);
	if (global.plasmaSprayPaintUnlocked != false) ini_write_real("unlocks","plasmaSprayPaintUnlocked",global.plasmaSprayPaintUnlocked);
	if (global.unearthlyHandSprayPaintUnlocked != false) ini_write_real("unlocks","unearthlyHandSprayPaintUnlocked",global.unearthlyHandSprayPaintUnlocked);
	if (global.soMetaSprayPaintUnlocked != false) ini_write_real("unlocks","soMetaSprayPaintUnlocked",global.soMetaSprayPaintUnlocked);
	if (global.gooeyBlueSprayPaintUnlocked != false) ini_write_real("unlocks","gooeyBlueSprayPaintUnlocked",global.gooeyBlueSprayPaintUnlocked);
	if (global.eggBrownSprayPaintUnlocked != false) ini_write_real("unlocks","eggBrownSprayPaintUnlocked",global.eggBrownSprayPaintUnlocked);
	if (global.telltaleKeebySprayPaintUnlocked != false) ini_write_real("unlocks","telltaleKeebySprayPaintUnlocked",global.telltaleKeebySprayPaintUnlocked);
	if (global.royalYarnSprayPaintUnlocked != false) ini_write_real("unlocks","royalYarnSprayPaintUnlocked",global.royalYarnSprayPaintUnlocked);
	if (global.smileyWhiteSprayPaintUnlocked != false) ini_write_real("unlocks","smileyWhiteSprayPaintUnlocked",global.smileyWhiteSprayPaintUnlocked);
	if (global.eddSprayPaintUnlocked != false) ini_write_real("unlocks","eddSprayPaintUnlocked",global.eddSprayPaintUnlocked);
	if (global.musiciansLightSprayPaintUnlocked != false) ini_write_real("unlocks","musiciansLightSprayPaintUnlocked",global.musiciansLightSprayPaintUnlocked);
	
	#region Ability Hat Skins & Paints
	#region Cutter
	#region KSSU
	if (global.hatPaletteCutterKSSUBloodBladeUnlocked != false) ini_write_real("unlocks","hatPaletteCutterKSSUBloodBladeUnlocked",global.hatPaletteCutterKSSUBloodBladeUnlocked);
	if (global.hatPaletteCutterKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteCutterKSSUBitcrushedUnlocked",global.hatPaletteCutterKSSUBitcrushedUnlocked);
	if (global.hatPaletteCutterKSSUMallardGreenUnlocked != false) ini_write_real("unlocks","hatPaletteCutterKSSUMallardGreenUnlocked",global.hatPaletteCutterKSSUMallardGreenUnlocked);
	if (global.hatPaletteCutterKSSUBlackSwedishUnlocked != false) ini_write_real("unlocks","hatPaletteCutterKSSUBlackSwedishUnlocked",global.hatPaletteCutterKSSUBlackSwedishUnlocked);
	if (global.hatPaletteCutterKSSUFluxNostalgiaUnlocked != false) ini_write_real("unlocks","hatPaletteCutterKSSUFluxNostalgiaUnlocked",global.hatPaletteCutterKSSUFluxNostalgiaUnlocked);
	if (global.hatPaletteCutterKSSUSliverAndGoldUnlocked != false) ini_write_real("unlocks","hatPaletteCutterKSSUSliverAndGoldUnlocked",global.hatPaletteCutterKSSUSliverAndGoldUnlocked);
	#endregion
	#endregion
	
	#region Beam
	#region KSSU
	if (global.hatPaletteBeamKSSUFluxNostalgiaUnlocked != false) ini_write_real("unlocks","hatPaletteBeamKSSUFluxNostalgiaUnlocked",global.hatPaletteBeamKSSUFluxNostalgiaUnlocked);
	if (global.hatPaletteBeamKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteBeamKSSUBitcrushedUnlocked",global.hatPaletteBeamKSSUBitcrushedUnlocked);
	if (global.hatPaletteBeamKSSUChessmasterUnlocked != false) ini_write_real("unlocks","hatPaletteBeamKSSUChessmasterUnlocked",global.hatPaletteBeamKSSUChessmasterUnlocked);
	if (global.hatPaletteBeamKSSUCottonCandyUnlocked != false) ini_write_real("unlocks","hatPaletteBeamKSSUCottonCandyUnlocked",global.hatPaletteBeamKSSUCottonCandyUnlocked);
	if (global.hatPaletteBeamKSSUFrostyMageUnlocked != false) ini_write_real("unlocks","hatPaletteBeamKSSUFrostyMageUnlocked",global.hatPaletteBeamKSSUFrostyMageUnlocked);
	if (global.hatPaletteBeamKSSULemonLimeUnlocked != false) ini_write_real("unlocks","hatPaletteBeamKSSULemonLimeUnlocked",global.hatPaletteBeamKSSULemonLimeUnlocked);
	if (global.hatPaletteBeamKSSUMixingPaintsUnlocked != false) ini_write_real("unlocks","hatPaletteBeamKSSUMixingPaintsUnlocked",global.hatPaletteBeamKSSUMixingPaintsUnlocked);
	if (global.hatPaletteBeamKSSUWhosIdeaWasThisUnlocked != false) ini_write_real("unlocks","hatPaletteBeamKSSUWhosIdeaWasThisUnlocked",global.hatPaletteBeamKSSUWhosIdeaWasThisUnlocked);
	#endregion
	
	#region Marx Soul
	if (global.hatTypeBeamMarxSoulUnlocked != false) ini_write_real("unlocks","hatTypeBeamMarxSoulUnlocked",global.hatTypeBeamMarxSoulUnlocked);
	
	if (global.hatPaletteBeamMarxSoulSummerFruitsUnlocked != false) ini_write_real("unlocks","hatPaletteBeamMarxSoulSummerFruitsUnlocked",global.hatPaletteBeamMarxSoulSummerFruitsUnlocked);
	if (global.hatPaletteBeamMarxSoulBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteBeamMarxSoulBitcrushedUnlocked",global.hatPaletteBeamMarxSoulBitcrushedUnlocked);
	#endregion
	#endregion
	
	#region Mystic Beam
	#region GGS
	if (global.hatPaletteMysticBeamGGSMageRoseUnlocked != false) ini_write_real("unlocks","hatPaletteMysticBeamGGSMageRoseUnlocked",global.hatPaletteMysticBeamGGSMageRoseUnlocked);
	if (global.hatPaletteMysticBeamGGSBlueberryUnlocked != false) ini_write_real("unlocks","hatPaletteMysticBeamGGSBlueberryUnlocked",global.hatPaletteMysticBeamGGSBlueberryUnlocked);
	if (global.hatPaletteMysticBeamGGSSourlimeUnlocked != false) ini_write_real("unlocks","hatPaletteMysticBeamGGSSourlimeUnlocked",global.hatPaletteMysticBeamGGSSourlimeUnlocked);
	if (global.hatPaletteMysticBeamGGSMonoUnlocked != false) ini_write_real("unlocks","hatPaletteMysticBeamGGSMonoUnlocked",global.hatPaletteMysticBeamGGSMonoUnlocked);
	if (global.hatPaletteMysticBeamGGSBubblegumUnlocked != false) ini_write_real("unlocks","hatPaletteMysticBeamGGSBubblegumUnlocked",global.hatPaletteMysticBeamGGSBubblegumUnlocked);
	#endregion
	#endregion
	
	#region Stone
	if (global.hatTypeStoneModernUnlocked != false) ini_write_real("unlocks","hatTypeStoneModernUnlocked",global.hatTypeStoneModernUnlocked);
	
	#region KSSU
	if (global.hatPaletteStoneKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteStoneKSSUBitcrushedUnlocked",global.hatPaletteStoneKSSUBitcrushedUnlocked);
	#endregion
	
	#region Modern
	if (global.hatPaletteStoneModernMoltenRockUnlocked != false) ini_write_real("unlocks","hatPaletteStoneModernMoltenRockUnlocked",global.hatPaletteStoneModernMoltenRockUnlocked);
	if (global.hatPaletteStoneModernBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteStoneModernBitcrushedUnlocked",global.hatPaletteStoneModernBitcrushedUnlocked);
	if (global.hatPaletteStoneModernCryingCobblestoneUnlocked != false) ini_write_real("unlocks","hatPaletteStoneModernCryingCobblestoneUnlocked",global.hatPaletteStoneModernCryingCobblestoneUnlocked);
	if (global.hatPaletteStoneModernTheBronzeJadeUnlocked != false) ini_write_real("unlocks","hatPaletteStoneModernTheBronzeJadeUnlocked",global.hatPaletteStoneModernTheBronzeJadeUnlocked);
	#endregion
	#endregion
	
	#region Mirror
	if (global.hatTypeMirrorModernUnlocked != false) ini_write_real("unlocks","hatTypeMirrorModernUnlocked",global.hatTypeMirrorModernUnlocked);
	
	#region KSSU
	if (global.hatPaletteMirrorKSSUBetaBlockUnlocked != false) ini_write_real("unlocks","hatPaletteMirrorKSSUBetaBlockUnlocked",global.hatPaletteMirrorKSSUBetaBlockUnlocked);
	if (global.hatPaletteMirrorKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteMirrorKSSUBitcrushedUnlocked",global.hatPaletteMirrorKSSUBitcrushedUnlocked);
	#endregion
	
	#region Modern
	if (global.hatPaletteMirrorModernBetaBlockUnlocked != false) ini_write_real("unlocks","hatPaletteMirrorModernBetaBlockUnlocked",global.hatPaletteMirrorModernBetaBlockUnlocked);
	if (global.hatPaletteMirrorModernBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteMirrorModernBitcrushedUnlocked",global.hatPaletteMirrorModernBitcrushedUnlocked);
	#endregion
	#endregion
	
	#region Ninja
	if (global.hatTypeNinjaModernUnlocked != false) ini_write_real("unlocks","hatTypeNinjaModernUnlocked",global.hatTypeNinjaModernUnlocked);
	if (global.hatTypeNinjaSamuraiUnlocked != false) ini_write_real("unlocks","hatTypeNinjaSamuraiUnlocked",global.hatTypeNinjaSamuraiUnlocked);
	
	#region KSSU
	if (global.hatPaletteNinjaKSSUSilverLinedWarriorUnlocked != false) ini_write_real("unlocks","hatPaletteNinjaKSSUSilverLinedWarriorUnlocked",global.hatPaletteNinjaKSSUSilverLinedWarriorUnlocked);
	if (global.hatPaletteNinjaKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteNinjaKSSUBitcrushedUnlocked",global.hatPaletteNinjaKSSUBitcrushedUnlocked);
	#endregion
	
	#region Modern
	if (global.hatPaletteNinjaModernBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteNinjaModernBitcrushedUnlocked",global.hatPaletteNinjaModernBitcrushedUnlocked);
	if (global.hatPaletteNinjaModernViridianAmbushUnlocked != false) ini_write_real("unlocks","hatPaletteNinjaModernViridianAmbushUnlocked",global.hatPaletteNinjaModernViridianAmbushUnlocked);
	#endregion
	
	#region Samurai
	if (global.hatPaletteNinjaSamuraiClassicRedUnlocked != false) ini_write_real("unlocks","hatPaletteNinjaSamuraiClassicRedUnlocked",global.hatPaletteNinjaSamuraiClassicRedUnlocked);
	if (global.hatPaletteNinjaSamuraiDarkBrownUnlocked != false) ini_write_real("unlocks","hatPaletteNinjaSamuraiDarkBrownUnlocked",global.hatPaletteNinjaSamuraiDarkBrownUnlocked);
	if (global.hatPaletteNinjaSamuraiRipperBlondUnlocked != false) ini_write_real("unlocks","hatPaletteNinjaSamuraiRipperBlondUnlocked",global.hatPaletteNinjaSamuraiRipperBlondUnlocked);
	#endregion
	#endregion
	
	#region Bomb
	if (global.hatTypeBombModernUnlocked != false) ini_write_real("unlocks","hatTypeBombModernUnlocked",global.hatTypeBombModernUnlocked);
	
	#region KSSU
	if (global.hatPaletteBombKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteBombKSSUBitcrushedUnlocked",global.hatPaletteBombKSSUBitcrushedUnlocked);
	if (global.hatPaletteBombKSSUBloomingPoppyUnlocked != false) ini_write_real("unlocks","hatPaletteBombKSSUBloomingPoppyUnlocked",global.hatPaletteBombKSSUBloomingPoppyUnlocked);
	#endregion
	
	#region Modern
	if (global.hatPaletteBombModernBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteBombModernBitcrushedUnlocked",global.hatPaletteBombModernBitcrushedUnlocked);
	if (global.hatPaletteBombModernOutburstingConspiracyUnlocked != false) ini_write_real("unlocks","hatPaletteBombModernOutburstingConspiracyUnlocked",global.hatPaletteBombModernOutburstingConspiracyUnlocked);
	if (global.hatPaletteBombModernDragonsCastleUnlocked != false) ini_write_real("unlocks","hatPaletteBombModernDragonsCastleUnlocked",global.hatPaletteBombModernDragonsCastleUnlocked);
	#endregion
	#endregion
	
	#region Fire
	#region KSSU
	if (global.hatPaletteFireKSSUBlazingBlueUnlocked != false) ini_write_real("unlocks","hatPaletteFireKSSUBlazingBlueUnlocked",global.hatPaletteFireKSSUBlazingBlueUnlocked);
	if (global.hatPaletteFireKSSUFluxNostalgiaUnlocked != false) ini_write_real("unlocks","hatPaletteFireKSSUFluxNostalgiaUnlocked",global.hatPaletteFireKSSUFluxNostalgiaUnlocked);
	if (global.hatPaletteFireKSSUScarletRoseUnlocked != false) ini_write_real("unlocks","hatPaletteFireKSSUScarletRoseUnlocked",global.hatPaletteFireKSSUScarletRoseUnlocked);
	if (global.hatPaletteFireKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteFireKSSUBitcrushedUnlocked",global.hatPaletteFireKSSUBitcrushedUnlocked);
	if (global.hatPaletteFireKSSUNuclearMeltdownUnlocked != false) ini_write_real("unlocks","hatPaletteFireKSSUNuclearMeltdownUnlocked",global.hatPaletteFireKSSUNuclearMeltdownUnlocked);
	if (global.hatPaletteFireKSSUMidnightInfernoUnlocked != false) ini_write_real("unlocks","hatPaletteFireKSSUMidnightInfernoUnlocked",global.hatPaletteFireKSSUMidnightInfernoUnlocked);
	if (global.hatPaletteFireKSSUHotPinkUnlocked != false) ini_write_real("unlocks","hatPaletteFireKSSUHotPinkUnlocked",global.hatPaletteFireKSSUHotPinkUnlocked);
	#endregion
	#endregion
	
	#region Ice
	if (global.hatTypeBombSnowmanUnlocked != false) ini_write_real("unlocks","hatTypeBombSnowmanUnlocked",global.hatTypeBombSnowmanUnlocked);
	
	#region KSSU
	if (global.hatPaletteIceKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteIceKSSUBitcrushedUnlocked",global.hatPaletteIceKSSUBitcrushedUnlocked);
	if (global.hatPaletteIceKSSUFrostyObsidianUnlocked != false) ini_write_real("unlocks","hatPaletteIceKSSUFrostyObsidianUnlocked",global.hatPaletteIceKSSUFrostyObsidianUnlocked);
	if (global.hatPaletteIceKSSUFluxNostalgiaUnlocked != false) ini_write_real("unlocks","hatPaletteIceKSSUFluxNostalgiaUnlocked",global.hatPaletteIceKSSUFluxNostalgiaUnlocked);
	#endregion
	
	#region Snowman
	if (global.hatPaletteIceSnowmanBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteIceSnowmanBitcrushedUnlocked",global.hatPaletteIceSnowmanBitcrushedUnlocked);
	if (global.hatPaletteIceSnowmanChocolateMousseUnlocked != false) ini_write_real("unlocks","hatPaletteIceSnowmanChocolateMousseUnlocked",global.hatPaletteIceSnowmanChocolateMousseUnlocked);
	if (global.hatPaletteIceSnowmanStrawberryCreamUnlocked != false) ini_write_real("unlocks","hatPaletteIceSnowmanStrawberryCreamUnlocked",global.hatPaletteIceSnowmanStrawberryCreamUnlocked);
	#endregion
	#endregion
	
	#region Spark
	#region KSSU
	if (global.hatPaletteSparkKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteSparkKSSUBitcrushedUnlocked",global.hatPaletteSparkKSSUBitcrushedUnlocked);
	#endregion
	#endregion
	
	#region Yoyo
	#region KSSU
	if (global.hatPaletteYoyoKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteYoyoKSSUBitcrushedUnlocked",global.hatPaletteYoyoKSSUBitcrushedUnlocked);
	#endregion
	#endregion
	
	#region Wheel
	#region KSSU
	if (global.hatPaletteWheelKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteWheelKSSUBitcrushedUnlocked",global.hatPaletteWheelKSSUBitcrushedUnlocked);
	if (global.hatPaletteWheelKSSUMufflerBlueUnlocked != false) ini_write_real("unlocks","hatPaletteWheelKSSUMufflerBlueUnlocked",global.hatPaletteWheelKSSUMufflerBlueUnlocked);
	if (global.hatPaletteWheelKSSUFluxNostalgiaUnlocked != false) ini_write_real("unlocks","hatPaletteWheelKSSUFluxNostalgiaUnlocked",global.hatPaletteWheelKSSUFluxNostalgiaUnlocked);
	#endregion
	#endregion
	
	#region Artist
	#region KSSU
	if (global.hatPaletteArtistKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteArtistKSSUBitcrushedUnlocked",global.hatPaletteArtistKSSUBitcrushedUnlocked);
	#endregion
	#endregion
	
	#region Fighter
	#region KSSU
	if (global.hatPaletteFighterKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteFighterKSSUBitcrushedUnlocked",global.hatPaletteFighterKSSUBitcrushedUnlocked);
	#endregion
	#endregion
	
	#region Suplex
	#region KSSU
	if (global.hatPaletteSuplexKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteSuplexKSSUBitcrushedUnlocked",global.hatPaletteSuplexKSSUBitcrushedUnlocked);
	#endregion
	
	#region Buggzy
	if (global.hatTypeSuplexBuggzyUnlocked != false) ini_write_real("unlocks","hatTypeSuplexBuggzyUnlocked",global.hatTypeSuplexBuggzyUnlocked);
	
	if (global.hatPaletteSuplexBuggzyBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteSuplexBuggzyBitcrushedUnlocked",global.hatPaletteSuplexBuggzyBitcrushedUnlocked);
	#endregion
	#endregion
	
	#region Wing
	#region KSSU
	if (global.hatPaletteWingKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteWingKSSUBitcrushedUnlocked",global.hatPaletteWingKSSUBitcrushedUnlocked);
	if (global.hatPaletteWingKSSUPekinBreezeUnlocked != false) ini_write_real("unlocks","hatPaletteWingKSSUPekinBreezeUnlocked",global.hatPaletteWingKSSUPekinBreezeUnlocked);
	if (global.hatPaletteWingKSSUDynaBladeUnlocked != false) ini_write_real("unlocks","hatPaletteWingKSSUDynaBladeUnlocked",global.hatPaletteWingKSSUDynaBladeUnlocked);
	if (global.hatPaletteWingKSSUNocturneFriendUnlocked != false) ini_write_real("unlocks","hatPaletteWingKSSUNocturneFriendUnlocked",global.hatPaletteWingKSSUNocturneFriendUnlocked);
	#endregion
	#endregion
	
	#region Jet
	#region KSSU
	if (global.hatPaletteJetKSSUSpeedyScarletUnlocked != false) ini_write_real("unlocks","hatPaletteJetKSSUSpeedyScarletUnlocked",global.hatPaletteJetKSSUSpeedyScarletUnlocked);
	if (global.hatPaletteJetKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteJetKSSUBitcrushedUnlocked",global.hatPaletteJetKSSUBitcrushedUnlocked);
	if (global.hatPaletteJetKSSULavender01Unlocked != false) ini_write_real("unlocks","hatPaletteJetKSSULavender01Unlocked",global.hatPaletteJetKSSULavender01Unlocked);
	if (global.hatPaletteJetKSSUFluxNostalgiaUnlocked != false) ini_write_real("unlocks","hatPaletteJetKSSUFluxNostalgiaUnlocked",global.hatPaletteJetKSSUFluxNostalgiaUnlocked);
	#endregion
	#endregion
	
	#region Sword
	#region KSSU
	if (global.hatPaletteSwordKSSUThunderingCloudUnlocked != false) ini_write_real("unlocks","hatPaletteSwordKSSUThunderingCloudUnlocked",global.hatPaletteSwordKSSUThunderingCloudUnlocked);
	if (global.hatPaletteSwordKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteSwordKSSUBitcrushedUnlocked",global.hatPaletteSwordKSSUBitcrushedUnlocked);
	if (global.hatPaletteSwordKSSUFluxNostalgiaUnlocked != false) ini_write_real("unlocks","hatPaletteSwordKSSUFluxNostalgiaUnlocked",global.hatPaletteSwordKSSUFluxNostalgiaUnlocked);
	#endregion
	#endregion
	
	#region Parasol
	#region KSSU
	if (global.hatPaletteParasolKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteParasolKSSUBitcrushedUnlocked",global.hatPaletteParasolKSSUBitcrushedUnlocked);
	if (global.hatPaletteParasolKSSUWagasaDeeUnlocked != false) ini_write_real("unlocks","hatPaletteParasolKSSUWagasaDeeUnlocked",global.hatPaletteParasolKSSUWagasaDeeUnlocked);
	if (global.hatPaletteParasolKSSUAzureBandannaUnlocked != false) ini_write_real("unlocks","hatPaletteParasolKSSUAzureBandannaUnlocked",global.hatPaletteParasolKSSUAzureBandannaUnlocked);
	#endregion
	#endregion
	
	#region Hammer
	#region KSSU
	if (global.hatPaletteHammerKSSUConstructionWorkUnlocked != false) ini_write_real("unlocks","hatPaletteHammerKSSUConstructionWorkUnlocked",global.hatPaletteHammerKSSUConstructionWorkUnlocked);
	if (global.hatPaletteHammerKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteHammerKSSUBitcrushedUnlocked",global.hatPaletteHammerKSSUBitcrushedUnlocked);
	if (global.hatPaletteHammerKSSUFluxNostalgiaUnlocked != false) ini_write_real("unlocks","hatPaletteHammerKSSUFluxNostalgiaUnlocked",global.hatPaletteHammerKSSUFluxNostalgiaUnlocked);
	#endregion
	#endregion
	
	#region Bell
	#region Modern
	if (global.hatPaletteBellModernPrestoPurpleUnlocked != false) ini_write_real("unlocks","hatPaletteBellModernPrestoPurpleUnlocked",global.hatPaletteBellModernPrestoPurpleUnlocked);
	if (global.hatPaletteBellModernTempoTealUnlocked != false) ini_write_real("unlocks","hatPaletteBellModernTempoTealUnlocked",global.hatPaletteBellModernTempoTealUnlocked);
	if (global.hatPaletteBellModernRingingRoseUnlocked != false) ini_write_real("unlocks","hatPaletteBellModernRingingRoseUnlocked",global.hatPaletteBellModernRingingRoseUnlocked);
	if (global.hatPaletteBellModernCandescentCopperUnlocked != false) ini_write_real("unlocks","hatPaletteBellModernCandescentCopperUnlocked",global.hatPaletteBellModernCandescentCopperUnlocked);
	if (global.hatPaletteBellModernShiningSilverUnlocked != false) ini_write_real("unlocks","hatPaletteBellModernShiningSilverUnlocked",global.hatPaletteBellModernShiningSilverUnlocked);
	if (global.hatPaletteBellModernPolishedPlantUnlocked != false) ini_write_real("unlocks","hatPaletteBellModernPolishedPlantUnlocked",global.hatPaletteBellModernPolishedPlantUnlocked);
	if (global.hatPaletteBellModernIlluminatedIvoryUnlocked != false) ini_write_real("unlocks","hatPaletteBellModernIlluminatedIvoryUnlocked",global.hatPaletteBellModernIlluminatedIvoryUnlocked);
	if (global.hatPaletteBellModernBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteBellModernBitcrushedUnlocked",global.hatPaletteBellModernBitcrushedUnlocked);
	#endregion
	#endregion
	
	#region Sleep
	#region KSSU
	if (global.hatPaletteSleepKSSUNoddyPeachUnlocked != false) ini_write_real("unlocks","hatPaletteSleepKSSUNoddyPeachUnlocked",global.hatPaletteSleepKSSUNoddyPeachUnlocked);
	if (global.hatPaletteSleepKSSURoyalPurpleUnlocked != false) ini_write_real("unlocks","hatPaletteSleepKSSURoyalPurpleUnlocked",global.hatPaletteSleepKSSURoyalPurpleUnlocked);
	if (global.hatPaletteSleepKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteSleepKSSUBitcrushedUnlocked",global.hatPaletteSleepKSSUBitcrushedUnlocked);
	#endregion
	#endregion
	
	#region Scan
	#region KSSU
	if (global.hatPaletteScanKSSUBitcrushedUnlocked != false) ini_write_real("unlocks","hatPaletteScanKSSUBitcrushedUnlocked",global.hatPaletteScanKSSUBitcrushedUnlocked);
	if (global.hatPaletteScanKSSUMilitaryGreenUnlocked != false) ini_write_real("unlocks","hatPaletteScanKSSUMilitaryGreenUnlocked",global.hatPaletteScanKSSUMilitaryGreenUnlocked);
	#endregion
	#endregion
	#endregion
	
	if (global.gambleFamiliarUnlocked != false) ini_write_real("unlocks","gambleFamiliarUnlocked",global.gambleFamiliarUnlocked);
	if (global.gambleFamiliarLevel != 1) ini_write_real("unlocks","gambleFamiliarLevel",global.gambleFamiliarLevel);
	if (global.gambleFamiliarExp != 0) ini_write_real("unlocks","gambleFamiliarExp",global.gambleFamiliarExp);
	if (global.happyPeaFamiliarUnlocked != false) ini_write_real("unlocks","happyPeaFamiliarUnlocked",global.happyPeaFamiliarUnlocked);
	if (global.happyPeaFamiliarLevel != 1) ini_write_real("unlocks","happyPeaFamiliarLevel",global.happyPeaFamiliarLevel);
	if (global.happyPeaFamiliarExp != 0) ini_write_real("unlocks","happyPeaFamiliarExp",global.happyPeaFamiliarExp);
	if (global.epicJarFamiliarUnlocked != false) ini_write_real("unlocks","epicJarFamiliarUnlocked",global.epicJarFamiliarUnlocked);
	if (global.epicJarFamiliarLevel != 1) ini_write_real("unlocks","epicJarFamiliarLevel",global.epicJarFamiliarLevel);
	if (global.epicJarFamiliarExp != 0) ini_write_real("unlocks","epicJarFamiliarExp",global.epicJarFamiliarExp);
	if (global.krackleFamiliarUnlocked != false) ini_write_real("unlocks","krackleFamiliarUnlocked",global.krackleFamiliarUnlocked);
	if (global.krackleFamiliarLevel != 1) ini_write_real("unlocks","krackleFamiliarLevel",global.krackleFamiliarLevel);
	if (global.krackleFamiliarExp != 0) ini_write_real("unlocks","krackleFamiliarExp",global.krackleFamiliarExp);
	if (global.omegaMatterFamiliarUnlocked != false) ini_write_real("unlocks","omegaMatterFamiliarUnlocked",global.omegaMatterFamiliarUnlocked);
	if (global.omegaMatterFamiliarLevel != 1) ini_write_real("unlocks","omegaMatterFamiliarLevel",global.omegaMatterFamiliarLevel);
	if (global.omegaMatterFamiliarExp != 0) ini_write_real("unlocks","omegaMatterFamiliarExp",global.omegaMatterFamiliarExp);
	
	if (global.cutterMotorCutterUpgradeUnlocked != false) ini_write_real("unlocks","cutterMotorCutterUpgradeUnlocked",global.cutterMotorCutterUpgradeUnlocked);
	if (global.cutterPropellerWingUpgradeUnlocked != false) ini_write_real("unlocks","cutterPropellerWingUpgradeUnlocked",global.cutterPropellerWingUpgradeUnlocked);
	if (global.cutterSpectralCutterUpgradeUnlocked != false) ini_write_real("unlocks","cutterSpectralCutterUpgradeUnlocked",global.cutterSpectralCutterUpgradeUnlocked);
	if (global.beamGoldenFlareUpgradeUnlocked != false) ini_write_real("unlocks","beamGoldenFlareUpgradeUnlocked",global.beamGoldenFlareUpgradeUnlocked);
	if (global.mysticBeamVortexInAJarUpgradeUnlocked != false) ini_write_real("unlocks","mysticBeamVortexInAJarUpgradeUnlocked",global.mysticBeamVortexInAJarUpgradeUnlocked);
	if (global.stoneRockCandyUpgradeUnlocked != false) ini_write_real("unlocks","stoneRockCandyUpgradeUnlocked",global.stoneRockCandyUpgradeUnlocked);
	if (global.stoneComboCobaltUpgradeUnlocked != false) ini_write_real("unlocks","stoneComboCobaltUpgradeUnlocked",global.stoneComboCobaltUpgradeUnlocked);
	if (global.stonePsychicPebbleUpgradeUnlocked != false) ini_write_real("unlocks","stonePsychicPebbleUpgradeUnlocked",global.stonePsychicPebbleUpgradeUnlocked);
	if (global.ufoCowDollUpgradeUnlocked != false) ini_write_real("unlocks","ufoCowDollUpgradeUnlocked",global.ufoCowDollUpgradeUnlocked);
	if (global.bombLightShellsUpgradeUnlocked != false) ini_write_real("unlocks","bombLightShellsUpgradeUnlocked",global.bombLightShellsUpgradeUnlocked);
	if (global.bombEyeBombUpgradeUnlocked != false) ini_write_real("unlocks","bombEyeBombUpgradeUnlocked",global.bombEyeBombUpgradeUnlocked);
	if (global.bombStickyBombUpgradeUnlocked != false) ini_write_real("unlocks","bombStickyBombUpgradeUnlocked",global.bombStickyBombUpgradeUnlocked);
	if (global.bombMagmaBombUpgradeUnlocked != false) ini_write_real("unlocks","bombMagmaBombUpgradeUnlocked",global.bombMagmaBombUpgradeUnlocked);
	if (global.bombIceBombUpgradeUnlocked != false) ini_write_real("unlocks","bombIceBombUpgradeUnlocked",global.bombIceBombUpgradeUnlocked);
	if (global.bombExplosivePowderUpgradeUnlocked != false) ini_write_real("unlocks","bombExplosivePowderUpgradeUnlocked",global.bombExplosivePowderUpgradeUnlocked);
	if (global.fireMagicCharcoalUpgradeUnlocked != false) ini_write_real("unlocks","fireMagicCharcoalUpgradeUnlocked",global.fireMagicCharcoalUpgradeUnlocked);
	if (global.iceEmptyConeUpgradeUnlocked != false) ini_write_real("unlocks","iceEmptyConeUpgradeUnlocked",global.iceEmptyConeUpgradeUnlocked);
	if (global.sparkBrightPluggUpgradeUnlocked != false) ini_write_real("unlocks","sparkBrightPluggUpgradeUnlocked",global.sparkBrightPluggUpgradeUnlocked);
	if (global.parasolWaddleBrellaUpgradeUnlocked != false) ini_write_real("unlocks","parasolWaddleBrellaUpgradeUnlocked",global.parasolWaddleBrellaUpgradeUnlocked);
	if (global.waterEggSoilUpgradeUnlocked != false) ini_write_real("unlocks","waterEggSoilUpgradeUnlocked",global.waterEggSoilUpgradeUnlocked);
	
	if (global.cheatLifelessUnlocked != false) ini_write_real("cheats","cheatLifelessUnlocked",global.cheatLifelessUnlocked);
	if (global.cheatStarstormUnlocked != false) ini_write_real("cheats","cheatStarstormUnlocked",global.cheatStarstormUnlocked);
	if (global.cheatFlipsideUnlocked != false) ini_write_real("cheats","cheatFlipsideUnlocked",global.cheatFlipsideUnlocked);
	if (global.cheatGamerBoyUnlocked != false) ini_write_real("cheats","cheatGamerBoyUnlocked",global.cheatGamerBoyUnlocked);
	if (global.cheatEyeBleachUnlocked != false) ini_write_real("cheats","cheatEyeBleachUnlocked",global.cheatEyeBleachUnlocked);
	if (global.cheatAwaitingForTheNewMoonUnlocked != false) ini_write_real("cheats","cheatAwaitingForTheNewMoonUnlocked",global.cheatAwaitingForTheNewMoonUnlocked);
	if (global.cheatGatherBattleUnlocked != false) ini_write_real("cheats","cheatGatherBattleUnlocked",global.cheatGatherBattleUnlocked);
	if (global.cheatFashionableUnlocked != false) ini_write_real("cheats","cheatFashionableUnlocked",global.cheatFashionableUnlocked);
	if (global.cheatStrimpsDinerUnlocked != false) ini_write_real("cheats","cheatStrimpsDinerUnlocked",global.cheatStrimpsDinerUnlocked);
	
	if (global.bestiaryEnemiesWaddleDeeUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesWaddleDeeUnlocked",global.bestiaryEnemiesWaddleDeeUnlocked);
	if (global.bestiaryEnemiesWaddleDooUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesWaddleDooUnlocked",global.bestiaryEnemiesWaddleDooUnlocked);
	if (global.bestiaryEnemiesBrontoBurtUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesBrontoBurtUnlocked",global.bestiaryEnemiesBrontoBurtUnlocked);
	if (global.bestiaryEnemiesTwizzyUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesTwizzyUnlocked",global.bestiaryEnemiesTwizzyUnlocked);
	if (global.bestiaryEnemiesTookeyUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesTookeyUnlocked",global.bestiaryEnemiesTookeyUnlocked);
	if (global.bestiaryEnemiesSirKibbleUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesSirKibbleUnlocked",global.bestiaryEnemiesSirKibbleUnlocked);
	if (global.bestiaryEnemiesGordoUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesGordoUnlocked",global.bestiaryEnemiesGordoUnlocked);
	if (global.bestiaryEnemiesBloodGordoUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesBloodGordoUnlocked",global.bestiaryEnemiesBloodGordoUnlocked);
	if (global.bestiaryEnemiesGhostGordoUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesGhostGordoUnlocked",global.bestiaryEnemiesGhostGordoUnlocked);
	if (global.bestiaryEnemiesShotzoUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesShotzoUnlocked",global.bestiaryEnemiesShotzoUnlocked);
	if (global.bestiaryEnemiesMysticDooUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesMysticDooUnlocked",global.bestiaryEnemiesMysticDooUnlocked);
	if (global.bestiaryEnemiesBouncyUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesBouncyUnlocked",global.bestiaryEnemiesBouncyUnlocked);
	if (global.bestiaryEnemiesMrBoogieUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesMrBoogieUnlocked",global.bestiaryEnemiesMrBoogieUnlocked);
	if (global.bestiaryEnemiesSearchesUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesSearchesUnlocked",global.bestiaryEnemiesSearchesUnlocked);
	if (global.bestiaryEnemiesHiveDroneUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesHiveDroneUnlocked",global.bestiaryEnemiesHiveDroneUnlocked);
	if (global.bestiaryEnemiesWapodUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesWapodUnlocked",global.bestiaryEnemiesWapodUnlocked);
	if (global.bestiaryEnemiesFlamebelchUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesFlamebelchUnlocked",global.bestiaryEnemiesFlamebelchUnlocked);
	if (global.bestiaryEnemiesCappyUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesCappyUnlocked",global.bestiaryEnemiesCappyUnlocked);
	if (global.bestiaryEnemiesBroomHatterUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesBroomHatterUnlocked",global.bestiaryEnemiesBroomHatterUnlocked);
	if (global.bestiaryEnemiesCoconutUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesCoconutUnlocked",global.bestiaryEnemiesCoconutUnlocked);
	if (global.bestiaryEnemiesNoddyUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesNoddyUnlocked",global.bestiaryEnemiesNoddyUnlocked);
	if (global.bestiaryEnemiesBladoUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesBladoUnlocked",global.bestiaryEnemiesBladoUnlocked);
	if (global.bestiaryEnemiesScarfyUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesScarfyUnlocked",global.bestiaryEnemiesScarfyUnlocked);
	if (global.bestiaryEnemiesRockyUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesRockyUnlocked",global.bestiaryEnemiesRockyUnlocked);
	if (global.bestiaryEnemiesGrizzoUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesGrizzoUnlocked",global.bestiaryEnemiesGrizzoUnlocked);
	if (global.bestiaryEnemiesJungleBombUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesJungleBombUnlocked",global.bestiaryEnemiesJungleBombUnlocked);
	if (global.bestiaryEnemiesGlunkUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesGlunkUnlocked",global.bestiaryEnemiesGlunkUnlocked);
	if (global.bestiaryEnemiesKabuUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesKabuUnlocked",global.bestiaryEnemiesKabuUnlocked);
	if (global.bestiaryEnemiesBurningLeoUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesBurningLeoUnlocked",global.bestiaryEnemiesBurningLeoUnlocked);
	if (global.bestiaryEnemiesTomatooUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesTomatooUnlocked",global.bestiaryEnemiesTomatooUnlocked);
	if (global.bestiaryEnemiesOnionUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesOnionUnlocked",global.bestiaryEnemiesOnionUnlocked);
	if (global.bestiaryEnemiesAnemoneeUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesAnemoneeUnlocked",global.bestiaryEnemiesAnemoneeUnlocked);
	if (global.bestiaryEnemiesGimUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesGimUnlocked",global.bestiaryEnemiesGimUnlocked);
	if (global.bestiaryEnemiesPoppyBrosJrUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesPoppyBrosJrUnlocked",global.bestiaryEnemiesPoppyBrosJrUnlocked);
	if (global.bestiaryEnemiesBoboUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesBoboUnlocked",global.bestiaryEnemiesBoboUnlocked);
	if (global.bestiaryEnemiesFoleyUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesFoleyUnlocked",global.bestiaryEnemiesFoleyUnlocked);
	if (global.bestiaryEnemiesNidooUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesNidooUnlocked",global.bestiaryEnemiesNidooUnlocked);
	if (global.bestiaryEnemiesComoUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesComoUnlocked",global.bestiaryEnemiesComoUnlocked);
	if (global.bestiaryEnemiesCairnUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesCairnUnlocked",global.bestiaryEnemiesCairnUnlocked);
	if (global.bestiaryEnemiesBomberUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesBomberUnlocked",global.bestiaryEnemiesBomberUnlocked);
	if (global.bestiaryEnemiesSimirrorUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesSimirrorUnlocked",global.bestiaryEnemiesSimirrorUnlocked);
	if (global.bestiaryEnemiesGimUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesGimUnlocked",global.bestiaryEnemiesGimUnlocked);
	if (global.bestiaryEnemiesHotheadUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesHotheadUnlocked",global.bestiaryEnemiesHotheadUnlocked);
	if (global.bestiaryEnemiesSparkyUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesSparkyUnlocked",global.bestiaryEnemiesSparkyUnlocked);
	if (global.bestiaryEnemiesYolkyUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesYolkyUnlocked",global.bestiaryEnemiesYolkyUnlocked);
	if (global.bestiaryEnemiesWheelieUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesWheelieUnlocked",global.bestiaryEnemiesWheelieUnlocked);
	if (global.bestiaryEnemiesPacloudUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesPacloudUnlocked",global.bestiaryEnemiesPacloudUnlocked);
	if (global.bestiaryEnemiesLaserBallUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesLaserBallUnlocked",global.bestiaryEnemiesLaserBallUnlocked);
	if (global.bestiaryEnemiesJackleUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesJackleUnlocked",global.bestiaryEnemiesJackleUnlocked);
	if (global.bestiaryEnemiesKooklerUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesKooklerUnlocked",global.bestiaryEnemiesKooklerUnlocked);
	if (global.bestiaryEnemiesUfoUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesUfoUnlocked",global.bestiaryEnemiesUfoUnlocked);
	if (global.bestiaryEnemiesBouncySisUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesBouncySisUnlocked",global.bestiaryEnemiesBouncySisUnlocked);
	if (global.bestiaryEnemiesFlamerUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesFlamerUnlocked",global.bestiaryEnemiesFlamerUnlocked);
	if (global.bestiaryEnemiesChuckieUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesChuckieUnlocked",global.bestiaryEnemiesChuckieUnlocked);
	if (global.bestiaryEnemiesWalkyUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesWalkyUnlocked",global.bestiaryEnemiesWalkyUnlocked);
	if (global.bestiaryEnemiesMysticBlockUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesMysticBlockUnlocked",global.bestiaryEnemiesMysticBlockUnlocked);
	if (global.bestiaryEnemiesLovelyUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesLovelyUnlocked",global.bestiaryEnemiesLovelyUnlocked);
	if (global.bestiaryEnemiesPlasmaWispUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesPlasmaWispUnlocked",global.bestiaryEnemiesPlasmaWispUnlocked);
	if (global.bestiaryEnemiesCapsuleJ2Unlocked != false) ini_write_real("unlocks","bestiaryEnemiesCapsuleJ2Unlocked",global.bestiaryEnemiesCapsuleJ2Unlocked);
	if (global.bestiaryEnemiesCeruleanUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesCeruleanUnlocked",global.bestiaryEnemiesCeruleanUnlocked);
	if (global.bestiaryEnemiesWizzerUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesWizzerUnlocked",global.bestiaryEnemiesWizzerUnlocked);
	if (global.bestiaryEnemiesMopooUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesMopooUnlocked",global.bestiaryEnemiesMopooUnlocked);
	if (global.bestiaryEnemiesGolemUnlocked != false) ini_write_real("unlocks","bestiaryEnemiesGolemUnlocked",global.bestiaryEnemiesGolemUnlocked);
	
	if (global.skinKirbyP1 != "normal") ini_write_string("playerCustomization","skinKirbyP1",global.skinKirbyP1);
	if (global.skinGambleP1 != "normal") ini_write_string("playerCustomization","skinGambleP1",global.skinGambleP1);
	if (global.skinMetaKnightP1 != "normal") ini_write_string("playerCustomization","skinMetaKnightP1",global.skinMetaKnightP1);
	if (global.skinGooeyP1 != "normal") ini_write_string("playerCustomization","skinGooeyP1",global.skinGooeyP1);
	if (global.skinMagolorP1 != "normal") ini_write_string("playerCustomization","skinMagolorP1",global.skinMagolorP1);
	
	if (global.skinKirbyP2 != "normal") ini_write_string("playerCustomization","skinKirbyP2",global.skinKirbyP2);
	if (global.skinGambleP2 != "normal") ini_write_string("playerCustomization","skinGambleP2",global.skinGambleP2);
	if (global.skinMetaKnightP2 != "normal") ini_write_string("playerCustomization","skinMetaKnightP2",global.skinMetaKnightP2);
	if (global.skinGooeyP2 != "normal") ini_write_string("playerCustomization","skinGooeyP2",global.skinGooeyP2);
	if (global.skinMagolorP2 != "normal") ini_write_string("playerCustomization","skinMagolorP2",global.skinMagolorP2);
	
	if (global.skinKirbyP3 != "normal") ini_write_string("playerCustomization","skinKirbyP3",global.skinKirbyP3);
	if (global.skinGambleP3 != "normal") ini_write_string("playerCustomization","skinGambleP3",global.skinGambleP3);
	if (global.skinMetaKnightP3 != "normal") ini_write_string("playerCustomization","skinMetaKnightP3",global.skinMetaKnightP3);
	if (global.skinGooeyP3 != "normal") ini_write_string("playerCustomization","skinGooeyP3",global.skinGooeyP3);
	if (global.skinMagolorP3 != "normal") ini_write_string("playerCustomization","skinMagolorP3",global.skinMagolorP3);
	
	if (global.skinKirbyP4 != "normal") ini_write_string("playerCustomization","skinKirbyP4",global.skinKirbyP4);
	if (global.skinGambleP4 != "normal") ini_write_string("playerCustomization","skinGambleP4",global.skinGambleP4);
	if (global.skinMetaKnightP4 != "normal") ini_write_string("playerCustomization","skinMetaKnightP4",global.skinMetaKnightP4);
	if (global.skinGooeyP4 != "normal") ini_write_string("playerCustomization","skinGooeyP4",global.skinGooeyP4);
	if (global.skinMagolorP4 != "normal") ini_write_string("playerCustomization","skinMagolorP4",global.skinMagolorP4);
	
	if (global.sprayPaintKirbyP1 != playerSprayPaints.friendlyPink) ini_write_real("playerCustomization","sprayPaintKirbyP1",global.sprayPaintKirbyP1);
	if (global.sprayPaintGambleP1 != playerSprayPaints.unearthlyHand) ini_write_real("playerCustomization","sprayPaintGambleP1",global.sprayPaintGambleP1);
	if (global.sprayPaintMetaKnightP1 != playerSprayPaints.soMeta) ini_write_real("playerCustomization","sprayPaintMetaKnightP1",global.sprayPaintMetaKnightP1);
	if (global.sprayPaintGooeyP1 != playerSprayPaints.gooeyBlue) ini_write_real("playerCustomization","sprayPaintGooeyP1",global.sprayPaintGooeyP1);
	if (global.sprayPaintMagolorP1 != playerSprayPaints.eggBrown) ini_write_real("playerCustomization","sprayPaintMagolorP1",global.sprayPaintMagolorP1);
	
	if (global.sprayPaintKirbyP2 != playerSprayPaints.yellow) ini_write_real("playerCustomization","sprayPaintKirbyP2",global.sprayPaintKirbyP2);
	if (global.sprayPaintGambleP2 != playerSprayPaints.yellow) ini_write_real("playerCustomization","sprayPaintGambleP2",global.sprayPaintGambleP2);
	if (global.sprayPaintMetaKnightP2 != playerSprayPaints.yellow) ini_write_real("playerCustomization","sprayPaintMetaKnightP2",global.sprayPaintMetaKnightP2);
	if (global.sprayPaintGooeyP2 != playerSprayPaints.yellow) ini_write_real("playerCustomization","sprayPaintGooeyP2",global.sprayPaintGooeyP2);
	if (global.sprayPaintMagolorP2 != playerSprayPaints.yellow) ini_write_real("playerCustomization","sprayPaintMagolorP2",global.sprayPaintMagolorP2);
	
	if (global.sprayPaintKirbyP3 != playerSprayPaints.red) ini_write_real("playerCustomization","sprayPaintKirbyP3",global.sprayPaintKirbyP3);
	if (global.sprayPaintGambleP3 != playerSprayPaints.red) ini_write_real("playerCustomization","sprayPaintGambleP3",global.sprayPaintGambleP3);
	if (global.sprayPaintMetaKnightP3 != playerSprayPaints.red) ini_write_real("playerCustomization","sprayPaintMetaKnightP3",global.sprayPaintMetaKnightP3);
	if (global.sprayPaintGooeyP3 != playerSprayPaints.red) ini_write_real("playerCustomization","sprayPaintGooeyP3",global.sprayPaintGooeyP3);
	if (global.sprayPaintMagolorP3 != playerSprayPaints.red) ini_write_real("playerCustomization","sprayPaintMagolorP3",global.sprayPaintMagolorP3);
	
	if (global.sprayPaintKirbyP4 != playerSprayPaints.green) ini_write_real("playerCustomization","sprayPaintKirbyP4",global.sprayPaintKirbyP4);
	if (global.sprayPaintGambleP4 != playerSprayPaints.green) ini_write_real("playerCustomization","sprayPaintGambleP4",global.sprayPaintGambleP4);
	if (global.sprayPaintMetaKnightP4 != playerSprayPaints.green) ini_write_real("playerCustomization","sprayPaintMetaKnightP4",global.sprayPaintMetaKnightP4);
	if (global.sprayPaintGooeyP4 != playerSprayPaints.green) ini_write_real("playerCustomization","sprayPaintGooeyP4",global.sprayPaintGooeyP4);
	if (global.sprayPaintMagolorP4 != playerSprayPaints.green) ini_write_real("playerCustomization","sprayPaintMagolorP4",global.sprayPaintMagolorP4);
	
	if (global.characterP1 != playerCharacters.kirby) ini_write_real("playerCustomization","characterP1",global.characterP1);
	if (global.isHelperP1 != false) ini_write_real("playerCustomization","isHelperP1",global.isHelperP1);
	if (global.familiarP1 != familiars.none) ini_write_real("playerCustomization","familiarP1",global.familiarP1);
	
	if (global.characterP2 != playerCharacters.kirby) ini_write_real("playerCustomization","characterP2",global.characterP2);
	if (global.isHelperP2 != false) ini_write_real("playerCustomization","isHelperP2",global.isHelperP2);
	if (global.familiarP2 != familiars.none) ini_write_real("playerCustomization","familiarP2",global.familiarP2);
	
	if (global.characterP3 != playerCharacters.kirby) ini_write_real("playerCustomization","characterP3",global.characterP3);
	if (global.isHelperP3 != false) ini_write_real("playerCustomization","isHelperP3",global.isHelperP3);
	if (global.familiarP3 != familiars.none) ini_write_real("playerCustomization","familiarP3",global.familiarP3);
	
	if (global.characterP4 != playerCharacters.kirby) ini_write_real("playerCustomization","characterP4",global.characterP4);
	if (global.isHelperP4 != false) ini_write_real("playerCustomization","isHelperP4",global.isHelperP4);
	if (global.familiarP4 != familiars.none) ini_write_real("playerCustomization","familiarP4",global.familiarP4);
	
	if (global.hatTypeCutterP1 != abilityHatSkins.cutter_kssu) ini_write_real("playerCustomization","hatTypeCutterP1",global.hatTypeCutterP1);
	if (global.hatTypeBeamP1 != abilityHatSkins.beam_kssu) ini_write_real("playerCustomization","hatTypeBeamP1",global.hatTypeBeamP1);
	if (global.hatTypeMysticBeamP1 != abilityHatSkins.mysticBeam_ggs) ini_write_real("playerCustomization","hatTypeMysticBeamP1",global.hatTypeMysticBeamP1);
	if (global.hatTypeStoneP1 != abilityHatSkins.stone_kssu) ini_write_real("playerCustomization","hatTypeStoneP1",global.hatTypeStoneP1);
	if (global.hatTypeUfoP1 != abilityHatSkins.ufo_modern) ini_write_real("playerCustomization","hatTypeUfoP1",global.hatTypeUfoP1);
	if (global.hatTypeMirrorP1 != abilityHatSkins.mirror_kssu) ini_write_real("playerCustomization","hatTypeMirrorP1",global.hatTypeMirrorP1);
	if (global.hatTypeNinjaP1 != abilityHatSkins.ninja_kssu) ini_write_real("playerCustomization","hatTypeNinjaP1",global.hatTypeNinjaP1);
	if (global.hatTypeBombP1 != abilityHatSkins.bomb_kssu) ini_write_real("playerCustomization","hatTypeBombP1",global.hatTypeBombP1);
	if (global.hatTypeFireP1 != abilityHatSkins.fire_kssu) ini_write_real("playerCustomization","hatTypeFireP1",global.hatTypeFireP1);
	if (global.hatTypeIceP1 != abilityHatSkins.ice_kssu) ini_write_real("playerCustomization","hatTypeIceP1",global.hatTypeIceP1);
	if (global.hatTypeSparkP1 != abilityHatSkins.spark_kssu) ini_write_real("playerCustomization","hatTypeSparkP1",global.hatTypeSparkP1);
	if (global.hatTypeYoyoP1 != abilityHatSkins.yoyo_kssu) ini_write_real("playerCustomization","hatTypeYoyoP1",global.hatTypeYoyoP1);
	if (global.hatTypeWheelP1 != abilityHatSkins.wheel_kssu) ini_write_real("playerCustomization","hatTypeWheelP1",global.hatTypeWheelP1);
	if (global.hatTypeArtistP1 != abilityHatSkins.artist_kssu) ini_write_real("playerCustomization","hatTypeArtistP1",global.hatTypeArtistP1);
	if (global.hatTypeFighterP1 != abilityHatSkins.fighter_kssu) ini_write_real("playerCustomization","hatTypeFighterP1",global.hatTypeFighterP1);
	if (global.hatTypeSuplexP1 != abilityHatSkins.suplex_kssu) ini_write_real("playerCustomization","hatTypeSuplexP1",global.hatTypeSuplexP1);
	if (global.hatTypeWingP1 != abilityHatSkins.wing_kssu) ini_write_real("playerCustomization","hatTypeWingP1",global.hatTypeWingP1);
	if (global.hatTypeJetP1 != abilityHatSkins.jet_kssu) ini_write_real("playerCustomization","hatTypeJetP1",global.hatTypeJetP1);
	if (global.hatTypeSwordP1 != abilityHatSkins.sword_kssu) ini_write_real("playerCustomization","hatTypeSwordP1",global.hatTypeSwordP1);
	if (global.hatTypeParasolP1 != abilityHatSkins.parasol_kssu) ini_write_real("playerCustomization","hatTypeParasolP1",global.hatTypeParasolP1);
	if (global.hatTypeHammerP1 != abilityHatSkins.hammer_kssu) ini_write_real("playerCustomization","hatTypeHammerP1",global.hatTypeHammerP1);
	if (global.hatTypeBellP1 != abilityHatSkins.bell_modern) ini_write_real("playerCustomization","hatTypeBellP1",global.hatTypeBellP1);
	if (global.hatTypeWaterP1 != abilityHatSkins.water_modern) ini_write_real("playerCustomization","hatTypeWaterP1",global.hatTypeWaterP1);
	if (global.hatTypeSleepP1 != abilityHatSkins.sleep_kssu) ini_write_real("playerCustomization","hatTypeSleepP1",global.hatTypeSleepP1);
	if (global.hatTypeScanP1 != abilityHatSkins.scan_kssu) ini_write_real("playerCustomization","hatTypeScanP1",global.hatTypeScanP1);
	if (global.hatTypeCrashP1 != abilityHatSkins.crash_kssu) ini_write_real("playerCustomization","hatTypeCrashP1",global.hatTypeCrashP1);
	if (global.hatTypeMicP1 != abilityHatSkins.mic_kssu) ini_write_real("playerCustomization","hatTypeMicP1",global.hatTypeMicP1);

	if (global.hatTypeCutterP2 != abilityHatSkins.cutter_kssu) ini_write_real("playerCustomization","hatTypeCutterP2",global.hatTypeCutterP2);
	if (global.hatTypeBeamP2 != abilityHatSkins.beam_kssu) ini_write_real("playerCustomization","hatTypeBeamP2",global.hatTypeBeamP2);
	if (global.hatTypeMysticBeamP2 != abilityHatSkins.mysticBeam_ggs) ini_write_real("playerCustomization","hatTypeMysticBeamP2",global.hatTypeMysticBeamP2);
	if (global.hatTypeStoneP2 != abilityHatSkins.stone_kssu) ini_write_real("playerCustomization","hatTypeStoneP2",global.hatTypeStoneP2);
	if (global.hatTypeUfoP2 != abilityHatSkins.ufo_modern) ini_write_real("playerCustomization","hatTypeUfoP2",global.hatTypeUfoP2);
	if (global.hatTypeMirrorP2 != abilityHatSkins.mirror_kssu) ini_write_real("playerCustomization","hatTypeMirrorP2",global.hatTypeMirrorP2);
	if (global.hatTypeNinjaP2 != abilityHatSkins.ninja_kssu) ini_write_real("playerCustomization","hatTypeNinjaP2",global.hatTypeNinjaP2);
	if (global.hatTypeBombP2 != abilityHatSkins.bomb_kssu) ini_write_real("playerCustomization","hatTypeBombP2",global.hatTypeBombP2);
	if (global.hatTypeFireP2 != abilityHatSkins.fire_kssu) ini_write_real("playerCustomization","hatTypeFireP2",global.hatTypeFireP2);
	if (global.hatTypeIceP2 != abilityHatSkins.ice_kssu) ini_write_real("playerCustomization","hatTypeIceP2",global.hatTypeIceP2);
	if (global.hatTypeSparkP2 != abilityHatSkins.spark_kssu) ini_write_real("playerCustomization","hatTypeSparkP2",global.hatTypeSparkP2);
	if (global.hatTypeYoyoP2 != abilityHatSkins.yoyo_kssu) ini_write_real("playerCustomization","hatTypeYoyoP2",global.hatTypeYoyoP2);
	if (global.hatTypeWheelP2 != abilityHatSkins.wheel_kssu) ini_write_real("playerCustomization","hatTypeWheelP2",global.hatTypeWheelP2);
	if (global.hatTypeArtistP2 != abilityHatSkins.artist_kssu) ini_write_real("playerCustomization","hatTypeArtistP2",global.hatTypeArtistP2);
	if (global.hatTypeFighterP2 != abilityHatSkins.fighter_kssu) ini_write_real("playerCustomization","hatTypeFighterP2",global.hatTypeFighterP2);
	if (global.hatTypeSuplexP2 != abilityHatSkins.suplex_kssu) ini_write_real("playerCustomization","hatTypeSuplexP2",global.hatTypeSuplexP2);
	if (global.hatTypeWingP2 != abilityHatSkins.wing_kssu) ini_write_real("playerCustomization","hatTypeWingP2",global.hatTypeWingP2);
	if (global.hatTypeJetP2 != abilityHatSkins.jet_kssu) ini_write_real("playerCustomization","hatTypeJetP2",global.hatTypeJetP2);
	if (global.hatTypeSwordP2 != abilityHatSkins.sword_kssu) ini_write_real("playerCustomization","hatTypeSwordP2",global.hatTypeSwordP2);
	if (global.hatTypeParasolP2 != abilityHatSkins.parasol_kssu) ini_write_real("playerCustomization","hatTypeParasolP2",global.hatTypeParasolP2);
	if (global.hatTypeHammerP2 != abilityHatSkins.hammer_kssu) ini_write_real("playerCustomization","hatTypeHammerP2",global.hatTypeHammerP2);
	if (global.hatTypeBellP2 != abilityHatSkins.bell_modern) ini_write_real("playerCustomization","hatTypeBellP2",global.hatTypeBellP2);
	if (global.hatTypeWaterP2 != abilityHatSkins.water_modern) ini_write_real("playerCustomization","hatTypeWaterP2",global.hatTypeWaterP2);
	if (global.hatTypeSleepP2 != abilityHatSkins.sleep_kssu) ini_write_real("playerCustomization","hatTypeSleepP2",global.hatTypeSleepP2);
	if (global.hatTypeScanP2 != abilityHatSkins.scan_kssu) ini_write_real("playerCustomization","hatTypeScanP2",global.hatTypeScanP2);
	if (global.hatTypeCrashP2 != abilityHatSkins.crash_kssu) ini_write_real("playerCustomization","hatTypeCrashP2",global.hatTypeCrashP2);
	if (global.hatTypeMicP2 != abilityHatSkins.mic_kssu) ini_write_real("playerCustomization","hatTypeMicP2",global.hatTypeMicP2);

	if (global.hatTypeCutterP3 != abilityHatSkins.cutter_kssu) ini_write_real("playerCustomization","hatTypeCutterP3",global.hatTypeCutterP3);
	if (global.hatTypeBeamP3 != abilityHatSkins.beam_kssu) ini_write_real("playerCustomization","hatTypeBeamP3",global.hatTypeBeamP3);
	if (global.hatTypeMysticBeamP3 != abilityHatSkins.mysticBeam_ggs) ini_write_real("playerCustomization","hatTypeMysticBeamP3",global.hatTypeMysticBeamP3);
	if (global.hatTypeStoneP3 != abilityHatSkins.stone_kssu) ini_write_real("playerCustomization","hatTypeStoneP3",global.hatTypeStoneP3);
	if (global.hatTypeUfoP3 != abilityHatSkins.ufo_modern) ini_write_real("playerCustomization","hatTypeUfoP3",global.hatTypeUfoP3);
	if (global.hatTypeMirrorP3 != abilityHatSkins.mirror_kssu) ini_write_real("playerCustomization","hatTypeMirrorP3",global.hatTypeMirrorP3);
	if (global.hatTypeNinjaP3 != abilityHatSkins.ninja_kssu) ini_write_real("playerCustomization","hatTypeNinjaP3",global.hatTypeNinjaP3);
	if (global.hatTypeBombP3 != abilityHatSkins.bomb_kssu) ini_write_real("playerCustomization","hatTypeBombP3",global.hatTypeBombP3);
	if (global.hatTypeFireP3 != abilityHatSkins.fire_kssu) ini_write_real("playerCustomization","hatTypeFireP3",global.hatTypeFireP3);
	if (global.hatTypeIceP3 != abilityHatSkins.ice_kssu) ini_write_real("playerCustomization","hatTypeIceP3",global.hatTypeIceP3);
	if (global.hatTypeSparkP3 != abilityHatSkins.spark_kssu) ini_write_real("playerCustomization","hatTypeSparkP3",global.hatTypeSparkP3);
	if (global.hatTypeYoyoP3 != abilityHatSkins.yoyo_kssu) ini_write_real("playerCustomization","hatTypeYoyoP3",global.hatTypeYoyoP3);
	if (global.hatTypeWheelP3 != abilityHatSkins.wheel_kssu) ini_write_real("playerCustomization","hatTypeWheelP3",global.hatTypeWheelP3);
	if (global.hatTypeArtistP3 != abilityHatSkins.artist_kssu) ini_write_real("playerCustomization","hatTypeArtistP3",global.hatTypeArtistP3);
	if (global.hatTypeFighterP3 != abilityHatSkins.fighter_kssu) ini_write_real("playerCustomization","hatTypeFighterP3",global.hatTypeFighterP3);
	if (global.hatTypeSuplexP3 != abilityHatSkins.suplex_kssu) ini_write_real("playerCustomization","hatTypeSuplexP3",global.hatTypeSuplexP3);
	if (global.hatTypeWingP3 != abilityHatSkins.wing_kssu) ini_write_real("playerCustomization","hatTypeWingP3",global.hatTypeWingP3);
	if (global.hatTypeJetP3 != abilityHatSkins.jet_kssu) ini_write_real("playerCustomization","hatTypeJetP3",global.hatTypeJetP3);
	if (global.hatTypeSwordP3 != abilityHatSkins.sword_kssu) ini_write_real("playerCustomization","hatTypeSwordP3",global.hatTypeSwordP3);
	if (global.hatTypeParasolP3 != abilityHatSkins.parasol_kssu) ini_write_real("playerCustomization","hatTypeParasolP3",global.hatTypeParasolP3);
	if (global.hatTypeHammerP3 != abilityHatSkins.hammer_kssu) ini_write_real("playerCustomization","hatTypeHammerP3",global.hatTypeHammerP3);
	if (global.hatTypeBellP3 != abilityHatSkins.bell_modern) ini_write_real("playerCustomization","hatTypeBellP3",global.hatTypeBellP3);
	if (global.hatTypeWaterP3 != abilityHatSkins.water_modern) ini_write_real("playerCustomization","hatTypeWaterP3",global.hatTypeWaterP3);
	if (global.hatTypeSleepP3 != abilityHatSkins.sleep_kssu) ini_write_real("playerCustomization","hatTypeSleepP3",global.hatTypeSleepP3);
	if (global.hatTypeScanP3 != abilityHatSkins.scan_kssu) ini_write_real("playerCustomization","hatTypeScanP3",global.hatTypeScanP3);
	if (global.hatTypeCrashP3 != abilityHatSkins.crash_kssu) ini_write_real("playerCustomization","hatTypeCrashP3",global.hatTypeCrashP3);
	if (global.hatTypeMicP3 != abilityHatSkins.mic_kssu) ini_write_real("playerCustomization","hatTypeMicP3",global.hatTypeMicP3);

	if (global.hatTypeCutterP4 != abilityHatSkins.cutter_kssu) ini_write_real("playerCustomization","hatTypeCutterP4",global.hatTypeCutterP4);
	if (global.hatTypeBeamP4 != abilityHatSkins.beam_kssu) ini_write_real("playerCustomization","hatTypeBeamP4",global.hatTypeBeamP4);
	if (global.hatTypeMysticBeamP4 != abilityHatSkins.mysticBeam_ggs) ini_write_real("playerCustomization","hatTypeMysticBeamP4",global.hatTypeMysticBeamP4);
	if (global.hatTypeStoneP4 != abilityHatSkins.stone_kssu) ini_write_real("playerCustomization","hatTypeStoneP4",global.hatTypeStoneP4);
	if (global.hatTypeUfoP4 != abilityHatSkins.ufo_modern) ini_write_real("playerCustomization","hatTypeUfoP4",global.hatTypeUfoP4);
	if (global.hatTypeMirrorP4 != abilityHatSkins.mirror_kssu) ini_write_real("playerCustomization","hatTypeMirrorP4",global.hatTypeMirrorP4);
	if (global.hatTypeNinjaP4 != abilityHatSkins.ninja_kssu) ini_write_real("playerCustomization","hatTypeNinjaP4",global.hatTypeNinjaP4);
	if (global.hatTypeBombP4 != abilityHatSkins.bomb_kssu) ini_write_real("playerCustomization","hatTypeBombP4",global.hatTypeBombP4);
	if (global.hatTypeFireP4 != abilityHatSkins.fire_kssu) ini_write_real("playerCustomization","hatTypeFireP4",global.hatTypeFireP4);
	if (global.hatTypeIceP4 != abilityHatSkins.ice_kssu) ini_write_real("playerCustomization","hatTypeIceP4",global.hatTypeIceP4);
	if (global.hatTypeSparkP4 != abilityHatSkins.spark_kssu) ini_write_real("playerCustomization","hatTypeSparkP4",global.hatTypeSparkP4);
	if (global.hatTypeYoyoP4 != abilityHatSkins.yoyo_kssu) ini_write_real("playerCustomization","hatTypeYoyoP4",global.hatTypeYoyoP4);
	if (global.hatTypeWheelP4 != abilityHatSkins.wheel_kssu) ini_write_real("playerCustomization","hatTypeWheelP4",global.hatTypeWheelP4);
	if (global.hatTypeArtistP4 != abilityHatSkins.artist_kssu) ini_write_real("playerCustomization","hatTypeArtistP4",global.hatTypeArtistP4);
	if (global.hatTypeFighterP4 != abilityHatSkins.fighter_kssu) ini_write_real("playerCustomization","hatTypeFighterP4",global.hatTypeFighterP4);
	if (global.hatTypeSuplexP4 != abilityHatSkins.suplex_kssu) ini_write_real("playerCustomization","hatTypeSuplexP4",global.hatTypeSuplexP4);
	if (global.hatTypeWingP4 != abilityHatSkins.wing_kssu) ini_write_real("playerCustomization","hatTypeWingP4",global.hatTypeWingP4);
	if (global.hatTypeJetP4 != abilityHatSkins.jet_kssu) ini_write_real("playerCustomization","hatTypeJetP4",global.hatTypeJetP4);
	if (global.hatTypeSwordP4 != abilityHatSkins.sword_kssu) ini_write_real("playerCustomization","hatTypeSwordP4",global.hatTypeSwordP4);
	if (global.hatTypeParasolP4 != abilityHatSkins.parasol_kssu) ini_write_real("playerCustomization","hatTypeParasolP4",global.hatTypeParasolP4);
	if (global.hatTypeHammerP4 != abilityHatSkins.hammer_kssu) ini_write_real("playerCustomization","hatTypeHammerP4",global.hatTypeHammerP4);
	if (global.hatTypeBellP4 != abilityHatSkins.bell_modern) ini_write_real("playerCustomization","hatTypeBellP4",global.hatTypeBellP4);
	if (global.hatTypeWaterP4 != abilityHatSkins.water_modern) ini_write_real("playerCustomization","hatTypeWaterP4",global.hatTypeWaterP4);
	if (global.hatTypeSleepP4 != abilityHatSkins.sleep_kssu) ini_write_real("playerCustomization","hatTypeSleepP4",global.hatTypeSleepP4);
	if (global.hatTypeScanP4 != abilityHatSkins.scan_kssu) ini_write_real("playerCustomization","hatTypeScanP4",global.hatTypeScanP4);
	if (global.hatTypeCrashP4 != abilityHatSkins.crash_kssu) ini_write_real("playerCustomization","hatTypeCrashP4",global.hatTypeCrashP4);
	if (global.hatTypeMicP4 != abilityHatSkins.mic_kssu) ini_write_real("playerCustomization","hatTypeMicP4",global.hatTypeMicP4);

	if (global.hatPaletteCutterKSSUP1 != abilityHatPaints.cutter_kssu_slicingGold) ini_write_real("playerCustomization","hatPaletteCutterKSSUP1",global.hatPaletteCutterKSSUP1);
	if (global.hatPaletteBeamKSSUP1 != abilityHatPaints.beam_kssu_sparklingBeam) ini_write_real("playerCustomization","hatPaletteBeamKSSUP1",global.hatPaletteBeamKSSUP1);
	if (global.hatPaletteBeamMarxSoulP1 != abilityHatPaints.beam_marxSoul_jesterSpirit) ini_write_real("playerCustomization","hatPaletteBeamMarxSoulP1",global.hatPaletteBeamMarxSoulP1);
	if (global.hatPaletteMysticBeamGGSP1 != abilityHatPaints.mysticBeam_ggs_nastyFlux) ini_write_real("playerCustomization","hatPaletteMysticBeamGGSP1",global.hatPaletteMysticBeamGGSP1);
	if (global.hatPaletteStoneKSSUP1 != abilityHatPaints.stone_kssu_rockyRoad) ini_write_real("playerCustomization","hatPaletteStoneKSSUP1",global.hatPaletteStoneKSSUP1);
	if (global.hatPaletteStoneModernP1 != abilityHatPaints.stone_modern_rockyRoad) ini_write_real("playerCustomization","hatPaletteStoneModernP1",global.hatPaletteStoneModernP1);
	if (global.hatPaletteUfoKSSUP1 != 0) ini_write_real("playerCustomization","hatPaletteUfoKSSUP1",global.hatPaletteUfoKSSUP1);
	if (global.hatPaletteMirrorKSSUP1 != abilityHatPaints.mirror_kssu_jesterReflection) ini_write_real("playerCustomization","hatPaletteMirrorKSSUP1",global.hatPaletteMirrorKSSUP1);
	if (global.hatPaletteMirrorModernP1 != abilityHatPaints.mirror_modern_jesterReflection) ini_write_real("playerCustomization","hatPaletteMirrorModernP1",global.hatPaletteMirrorModernP1);
	if (global.hatPaletteNinjaKSSUP1 != abilityHatPaints.ninja_kssu_stealthyMaroon) ini_write_real("playerCustomization","hatPaletteNinjaKSSUP1",global.hatPaletteNinjaKSSUP1);
	if (global.hatPaletteNinjaModernP1 != abilityHatPaints.ninja_modern_stealthyMaroon) ini_write_real("playerCustomization","hatPaletteNinjaModernP1",global.hatPaletteNinjaModernP1);
	if (global.hatPaletteNinjaSamuraiP1 != abilityHatPaints.ninja_samurai_menacingBlack) ini_write_real("playerCustomization","hatPaletteNinjaSamuraiP1",global.hatPaletteNinjaSamuraiP1);
	if (global.hatPaletteBombKSSUP1 != abilityHatPaints.bomb_kssu_explosiveB) ini_write_real("playerCustomization","hatPaletteBombKSSUP1",global.hatPaletteBombKSSUP1);
	if (global.hatPaletteBombModernP1 != abilityHatPaints.bomb_modern_explosiveB) ini_write_real("playerCustomization","hatPaletteBombModernP1",global.hatPaletteBombModernP1);
	if (global.hatPaletteFireKSSUP1 != abilityHatPaints.fire_kssu_scorchingScarlet) ini_write_real("playerCustomization","hatPaletteFireKSSUP1",global.hatPaletteFireKSSUP1);
	if (global.hatPaletteIceKSSUP1 != abilityHatPaints.ice_kssu_frostedShard) ini_write_real("playerCustomization","hatPaletteIceKSSUP1",global.hatPaletteIceKSSUP1);
	if (global.hatPaletteIceSnowmanP1 != abilityHatPaints.ice_snowman_chilly) ini_write_real("playerCustomization","hatPaletteIceSnowmanP1",global.hatPaletteIceSnowmanP1);
	if (global.hatPaletteSparkKSSUP1 != abilityHatPaints.spark_kssu_electroMarine) ini_write_real("playerCustomization","hatPaletteSparkKSSUP1",global.hatPaletteSparkKSSUP1);
	if (global.hatPaletteYoyoKSSUP1 != abilityHatPaints.yoyo_kssu_spinningViolet) ini_write_real("playerCustomization","hatPaletteYoyoKSSUP1",global.hatPaletteYoyoKSSUP1);
	if (global.hatPaletteWheelKSSUP1 != abilityHatPaints.wheel_kssu_rushingRed) ini_write_real("playerCustomization","hatPaletteWheelKSSUP1",global.hatPaletteWheelKSSUP1);
	if (global.hatPaletteArtistKSSUP1 != abilityHatPaints.artist_kssu_dapperPainter) ini_write_real("playerCustomization","hatPaletteArtistKSSUP1",global.hatPaletteArtistKSSUP1);
	if (global.hatPaletteArtistModernP1 != 0) ini_write_real("playerCustomization","hatPaletteArtistModernP1",global.hatPaletteArtistModernP1);
	if (global.hatPaletteFighterKSSUP1 != abilityHatPaints.fighter_kssu_crimsonChampion) ini_write_real("playerCustomization","hatPaletteFighterKSSUP1",global.hatPaletteFighterKSSUP1);
	if (global.hatPaletteSuplexKSSUP1 != abilityHatPaints.suplex_kssu_blueBanner) ini_write_real("playerCustomization","hatPaletteSuplexKSSUP1",global.hatPaletteSuplexKSSUP1);
	if (global.hatPaletteSuplexBuggzyP1 != abilityHatPaints.suplex_buggzy_beetleViolet) ini_write_real("playerCustomization","hatPaletteSuplexBuggzyP1",global.hatPaletteSuplexBuggzyP1);
	if (global.hatPaletteWingKSSUP1 != abilityHatPaints.wing_kssu_rainbowFlight) ini_write_real("playerCustomization","hatPaletteWingKSSUP1",global.hatPaletteWingKSSUP1);
	if (global.hatPaletteJetKSSUP1 != abilityHatPaints.jet_kssu_speedMachine) ini_write_real("playerCustomization","hatPaletteJetKSSUP1",global.hatPaletteJetKSSUP1);
	if (global.hatPaletteSwordKSSUP1 != abilityHatPaints.sword_kssu_slicingGreen) ini_write_real("playerCustomization","hatPaletteSwordKSSUP1",global.hatPaletteSwordKSSUP1);
	if (global.hatPaletteParasolKSSUP1 != abilityHatPaints.parasol_kssu_lazyRed) ini_write_real("playerCustomization","hatPaletteParasolKSSUP1",global.hatPaletteParasolKSSUP1);
	if (global.hatPaletteHammerKSSUP1 != abilityHatPaints.hammer_kssu_crushingBrown) ini_write_real("playerCustomization","hatPaletteHammerKSSUP1",global.hatPaletteHammerKSSUP1);
	if (global.hatPaletteBellModernP1 != abilityHatPaints.bell_modern_dazzlingDefault) ini_write_real("playerCustomization","hatPaletteBellModernP1",global.hatPaletteBellModernP1);
	if (global.hatPaletteSleepKSSUP1 != abilityHatPaints.sleep_kssu_bubblyGreen) ini_write_real("playerCustomization","hatPaletteSleepKSSUP1",global.hatPaletteSleepKSSUP1);
	if (global.hatPaletteScanKSSUP1 != abilityHatPaints.scan_kssu_metallicRed) ini_write_real("playerCustomization","hatPaletteScanKSSUP1",global.hatPaletteScanKSSUP1);
	if (global.hatPaletteCrashKSSUP1 != abilityHatPaints.crash_kssu_none) ini_write_real("playerCustomization","hatPaletteCrashKSSUP1",global.hatPaletteCrashKSSUP1);
	if (global.hatPaletteMicKSSUP1 != abilityHatPaints.mic_kssu_loudMike) ini_write_real("playerCustomization","hatPaletteMicKSSUP1",global.hatPaletteMicKSSUP1);

	if (global.hatPaletteCutterKSSUP2 != abilityHatPaints.cutter_kssu_slicingGold) ini_write_real("playerCustomization","hatPaletteCutterKSSUP2",global.hatPaletteCutterKSSUP2);
	if (global.hatPaletteBeamKSSUP2 != abilityHatPaints.beam_kssu_sparklingBeam) ini_write_real("playerCustomization","hatPaletteBeamKSSUP2",global.hatPaletteBeamKSSUP2);
	if (global.hatPaletteBeamMarxSoulP2 != abilityHatPaints.beam_marxSoul_jesterSpirit) ini_write_real("playerCustomization","hatPaletteBeamMarxSoulP2",global.hatPaletteBeamMarxSoulP2);
	if (global.hatPaletteMysticBeamGGSP2 != abilityHatPaints.mysticBeam_ggs_nastyFlux) ini_write_real("playerCustomization","hatPaletteMysticBeamGGSP2",global.hatPaletteMysticBeamGGSP2);
	if (global.hatPaletteStoneKSSUP2 != abilityHatPaints.stone_kssu_rockyRoad) ini_write_real("playerCustomization","hatPaletteStoneKSSUP2",global.hatPaletteStoneKSSUP2);
	if (global.hatPaletteStoneModernP2 != abilityHatPaints.stone_modern_rockyRoad) ini_write_real("playerCustomization","hatPaletteStoneModernP2",global.hatPaletteStoneModernP2);
	if (global.hatPaletteUfoKSSUP2 != 0) ini_write_real("playerCustomization","hatPaletteUfoKSSUP2",global.hatPaletteUfoKSSUP2);
	if (global.hatPaletteMirrorKSSUP2 != abilityHatPaints.mirror_kssu_jesterReflection) ini_write_real("playerCustomization","hatPaletteMirrorKSSUP2",global.hatPaletteMirrorKSSUP2);
	if (global.hatPaletteMirrorModernP2 != abilityHatPaints.mirror_modern_jesterReflection) ini_write_real("playerCustomization","hatPaletteMirrorModernP2",global.hatPaletteMirrorModernP2);
	if (global.hatPaletteNinjaKSSUP2 != abilityHatPaints.ninja_kssu_stealthyMaroon) ini_write_real("playerCustomization","hatPaletteNinjaKSSUP2",global.hatPaletteNinjaKSSUP2);
	if (global.hatPaletteNinjaModernP2 != abilityHatPaints.ninja_modern_stealthyMaroon) ini_write_real("playerCustomization","hatPaletteNinjaModernP2",global.hatPaletteNinjaModernP2);
	if (global.hatPaletteNinjaSamuraiP2 != abilityHatPaints.ninja_samurai_menacingBlack) ini_write_real("playerCustomization","hatPaletteNinjaSamuraiP2",global.hatPaletteNinjaSamuraiP2);
	if (global.hatPaletteBombKSSUP2 != abilityHatPaints.bomb_kssu_explosiveB) ini_write_real("playerCustomization","hatPaletteBombKSSUP2",global.hatPaletteBombKSSUP2);
	if (global.hatPaletteBombModernP2 != abilityHatPaints.bomb_modern_explosiveB) ini_write_real("playerCustomization","hatPaletteBombModernP2",global.hatPaletteBombModernP2);
	if (global.hatPaletteFireKSSUP2 != abilityHatPaints.fire_kssu_scorchingScarlet) ini_write_real("playerCustomization","hatPaletteFireKSSUP2",global.hatPaletteFireKSSUP2);
	if (global.hatPaletteIceKSSUP2 != abilityHatPaints.ice_kssu_frostedShard) ini_write_real("playerCustomization","hatPaletteIceKSSUP2",global.hatPaletteIceKSSUP2);
	if (global.hatPaletteIceSnowmanP2 != abilityHatPaints.ice_snowman_chilly) ini_write_real("playerCustomization","hatPaletteIceSnowmanP2",global.hatPaletteIceSnowmanP2);
	if (global.hatPaletteSparkKSSUP2 != abilityHatPaints.spark_kssu_electroMarine) ini_write_real("playerCustomization","hatPaletteSparkKSSUP2",global.hatPaletteSparkKSSUP2);
	if (global.hatPaletteYoyoKSSUP2 != abilityHatPaints.yoyo_kssu_spinningViolet) ini_write_real("playerCustomization","hatPaletteYoyoKSSUP2",global.hatPaletteYoyoKSSUP2);
	if (global.hatPaletteWheelKSSUP2 != abilityHatPaints.wheel_kssu_rushingRed) ini_write_real("playerCustomization","hatPaletteWheelKSSUP2",global.hatPaletteWheelKSSUP2);
	if (global.hatPaletteArtistKSSUP2 != abilityHatPaints.artist_kssu_dapperPainter) ini_write_real("playerCustomization","hatPaletteArtistKSSUP2",global.hatPaletteArtistKSSUP2);
	if (global.hatPaletteArtistModernP2 != 0) ini_write_real("playerCustomization","hatPaletteArtistModernP2",global.hatPaletteArtistModernP2);
	if (global.hatPaletteFighterKSSUP2 != abilityHatPaints.fighter_kssu_crimsonChampion) ini_write_real("playerCustomization","hatPaletteFighterKSSUP2",global.hatPaletteFighterKSSUP2);
	if (global.hatPaletteSuplexKSSUP2 != abilityHatPaints.suplex_kssu_blueBanner) ini_write_real("playerCustomization","hatPaletteSuplexKSSUP2",global.hatPaletteSuplexKSSUP2);
	if (global.hatPaletteSuplexBuggzyP2 != abilityHatPaints.suplex_buggzy_beetleViolet) ini_write_real("playerCustomization","hatPaletteSuplexBuggzyP2",global.hatPaletteSuplexBuggzyP2);
	if (global.hatPaletteWingKSSUP2 != abilityHatPaints.wing_kssu_rainbowFlight) ini_write_real("playerCustomization","hatPaletteWingKSSUP2",global.hatPaletteWingKSSUP2);
	if (global.hatPaletteJetKSSUP2 != abilityHatPaints.jet_kssu_speedMachine) ini_write_real("playerCustomization","hatPaletteJetKSSUP2",global.hatPaletteJetKSSUP2);
	if (global.hatPaletteSwordKSSUP2 != abilityHatPaints.sword_kssu_slicingGreen) ini_write_real("playerCustomization","hatPaletteSwordKSSUP2",global.hatPaletteSwordKSSUP2);
	if (global.hatPaletteParasolKSSUP2 != abilityHatPaints.parasol_kssu_lazyRed) ini_write_real("playerCustomization","hatPaletteParasolKSSUP2",global.hatPaletteParasolKSSUP2);
	if (global.hatPaletteHammerKSSUP2 != abilityHatPaints.hammer_kssu_crushingBrown) ini_write_real("playerCustomization","hatPaletteHammerKSSUP2",global.hatPaletteHammerKSSUP2);
	if (global.hatPaletteBellModernP2 != abilityHatPaints.bell_modern_dazzlingDefault) ini_write_real("playerCustomization","hatPaletteBellModernP2",global.hatPaletteBellModernP2);
	if (global.hatPaletteSleepKSSUP2 != abilityHatPaints.sleep_kssu_bubblyGreen) ini_write_real("playerCustomization","hatPaletteSleepKSSUP2",global.hatPaletteSleepKSSUP2);
	if (global.hatPaletteScanKSSUP2 != abilityHatPaints.scan_kssu_metallicRed) ini_write_real("playerCustomization","hatPaletteScanKSSUP2",global.hatPaletteScanKSSUP2);
	if (global.hatPaletteCrashKSSUP2 != abilityHatPaints.crash_kssu_none) ini_write_real("playerCustomization","hatPaletteCrashKSSUP2",global.hatPaletteCrashKSSUP2);
	if (global.hatPaletteMicKSSUP2 != abilityHatPaints.mic_kssu_loudMike) ini_write_real("playerCustomization","hatPaletteMicKSSUP2",global.hatPaletteMicKSSUP2);

	if (global.hatPaletteCutterKSSUP3 != abilityHatPaints.cutter_kssu_slicingGold) ini_write_real("playerCustomization","hatPaletteCutterKSSUP3",global.hatPaletteCutterKSSUP3);
	if (global.hatPaletteBeamKSSUP3 != abilityHatPaints.beam_kssu_sparklingBeam) ini_write_real("playerCustomization","hatPaletteBeamKSSUP3",global.hatPaletteBeamKSSUP3);
	if (global.hatPaletteBeamMarxSoulP3 != abilityHatPaints.beam_marxSoul_jesterSpirit) ini_write_real("playerCustomization","hatPaletteBeamMarxSoulP3",global.hatPaletteBeamMarxSoulP3);
	if (global.hatPaletteMysticBeamGGSP3 != abilityHatPaints.mysticBeam_ggs_nastyFlux) ini_write_real("playerCustomization","hatPaletteMysticBeamGGSP3",global.hatPaletteMysticBeamGGSP3);
	if (global.hatPaletteStoneKSSUP3 != abilityHatPaints.stone_kssu_rockyRoad) ini_write_real("playerCustomization","hatPaletteStoneKSSUP3",global.hatPaletteStoneKSSUP3);
	if (global.hatPaletteStoneModernP3 != abilityHatPaints.stone_modern_rockyRoad) ini_write_real("playerCustomization","hatPaletteStoneModernP3",global.hatPaletteStoneModernP3);
	if (global.hatPaletteUfoKSSUP3 != 0) ini_write_real("playerCustomization","hatPaletteUfoKSSUP3",global.hatPaletteUfoKSSUP3);
	if (global.hatPaletteMirrorKSSUP3 != abilityHatPaints.mirror_kssu_jesterReflection) ini_write_real("playerCustomization","hatPaletteMirrorKSSUP3",global.hatPaletteMirrorKSSUP3);
	if (global.hatPaletteMirrorModernP3 != abilityHatPaints.mirror_modern_jesterReflection) ini_write_real("playerCustomization","hatPaletteMirrorModernP3",global.hatPaletteMirrorModernP3);
	if (global.hatPaletteNinjaKSSUP3 != abilityHatPaints.ninja_kssu_stealthyMaroon) ini_write_real("playerCustomization","hatPaletteNinjaKSSUP3",global.hatPaletteNinjaKSSUP3);
	if (global.hatPaletteNinjaModernP3 != abilityHatPaints.ninja_modern_stealthyMaroon) ini_write_real("playerCustomization","hatPaletteNinjaModernP3",global.hatPaletteNinjaModernP3);
	if (global.hatPaletteNinjaSamuraiP3 != abilityHatPaints.ninja_samurai_menacingBlack) ini_write_real("playerCustomization","hatPaletteNinjaSamuraiP3",global.hatPaletteNinjaSamuraiP3);
	if (global.hatPaletteBombKSSUP3 != abilityHatPaints.bomb_kssu_explosiveB) ini_write_real("playerCustomization","hatPaletteBombKSSUP3",global.hatPaletteBombKSSUP3);
	if (global.hatPaletteBombModernP3 != abilityHatPaints.bomb_modern_explosiveB) ini_write_real("playerCustomization","hatPaletteBombModernP3",global.hatPaletteBombModernP3);
	if (global.hatPaletteFireKSSUP3 != abilityHatPaints.fire_kssu_scorchingScarlet) ini_write_real("playerCustomization","hatPaletteFireKSSUP3",global.hatPaletteFireKSSUP3);
	if (global.hatPaletteIceKSSUP3 != abilityHatPaints.ice_kssu_frostedShard) ini_write_real("playerCustomization","hatPaletteIceKSSUP3",global.hatPaletteIceKSSUP3);
	if (global.hatPaletteIceSnowmanP3 != abilityHatPaints.ice_snowman_chilly) ini_write_real("playerCustomization","hatPaletteIceSnowmanP3",global.hatPaletteIceSnowmanP3);
	if (global.hatPaletteSparkKSSUP3 != abilityHatPaints.spark_kssu_electroMarine) ini_write_real("playerCustomization","hatPaletteSparkKSSUP3",global.hatPaletteSparkKSSUP3);
	if (global.hatPaletteYoyoKSSUP3 != abilityHatPaints.yoyo_kssu_spinningViolet) ini_write_real("playerCustomization","hatPaletteYoyoKSSUP3",global.hatPaletteYoyoKSSUP3);
	if (global.hatPaletteWheelKSSUP3 != abilityHatPaints.wheel_kssu_rushingRed) ini_write_real("playerCustomization","hatPaletteWheelKSSUP3",global.hatPaletteWheelKSSUP3);
	if (global.hatPaletteArtistKSSUP3 != abilityHatPaints.artist_kssu_dapperPainter) ini_write_real("playerCustomization","hatPaletteArtistKSSUP3",global.hatPaletteArtistKSSUP3);
	if (global.hatPaletteArtistModernP3 != 0) ini_write_real("playerCustomization","hatPaletteArtistModernP3",global.hatPaletteArtistModernP3);
	if (global.hatPaletteFighterKSSUP3 != abilityHatPaints.fighter_kssu_crimsonChampion) ini_write_real("playerCustomization","hatPaletteFighterKSSUP3",global.hatPaletteFighterKSSUP3);
	if (global.hatPaletteSuplexKSSUP3 != abilityHatPaints.suplex_kssu_blueBanner) ini_write_real("playerCustomization","hatPaletteSuplexKSSUP3",global.hatPaletteSuplexKSSUP3);
	if (global.hatPaletteSuplexBuggzyP3 != abilityHatPaints.suplex_buggzy_beetleViolet) ini_write_real("playerCustomization","hatPaletteSuplexBuggzyP3",global.hatPaletteSuplexBuggzyP3);
	if (global.hatPaletteWingKSSUP3 != abilityHatPaints.wing_kssu_rainbowFlight) ini_write_real("playerCustomization","hatPaletteWingKSSUP3",global.hatPaletteWingKSSUP3);
	if (global.hatPaletteJetKSSUP3 != abilityHatPaints.jet_kssu_speedMachine) ini_write_real("playerCustomization","hatPaletteJetKSSUP3",global.hatPaletteJetKSSUP3);
	if (global.hatPaletteSwordKSSUP3 != abilityHatPaints.sword_kssu_slicingGreen) ini_write_real("playerCustomization","hatPaletteSwordKSSUP3",global.hatPaletteSwordKSSUP3);
	if (global.hatPaletteParasolKSSUP3 != abilityHatPaints.parasol_kssu_lazyRed) ini_write_real("playerCustomization","hatPaletteParasolKSSUP3",global.hatPaletteParasolKSSUP3);
	if (global.hatPaletteHammerKSSUP3 != abilityHatPaints.hammer_kssu_crushingBrown) ini_write_real("playerCustomization","hatPaletteHammerKSSUP3",global.hatPaletteHammerKSSUP3);
	if (global.hatPaletteBellModernP3 != abilityHatPaints.bell_modern_dazzlingDefault) ini_write_real("playerCustomization","hatPaletteBellModernP3",global.hatPaletteBellModernP3);
	if (global.hatPaletteSleepKSSUP3 != abilityHatPaints.sleep_kssu_bubblyGreen) ini_write_real("playerCustomization","hatPaletteSleepKSSUP3",global.hatPaletteSleepKSSUP3);
	if (global.hatPaletteScanKSSUP3 != abilityHatPaints.scan_kssu_metallicRed) ini_write_real("playerCustomization","hatPaletteScanKSSUP3",global.hatPaletteScanKSSUP3);
	if (global.hatPaletteCrashKSSUP3 != abilityHatPaints.crash_kssu_none) ini_write_real("playerCustomization","hatPaletteCrashKSSUP3",global.hatPaletteCrashKSSUP3);
	if (global.hatPaletteMicKSSUP3 != abilityHatPaints.mic_kssu_loudMike) ini_write_real("playerCustomization","hatPaletteMicKSSUP3",global.hatPaletteMicKSSUP3);

	if (global.hatPaletteCutterKSSUP4 != abilityHatPaints.cutter_kssu_slicingGold) ini_write_real("playerCustomization","hatPaletteCutterKSSUP4",global.hatPaletteCutterKSSUP4);
	if (global.hatPaletteBeamKSSUP4 != abilityHatPaints.beam_kssu_sparklingBeam) ini_write_real("playerCustomization","hatPaletteBeamKSSUP4",global.hatPaletteBeamKSSUP4);
	if (global.hatPaletteBeamMarxSoulP4 != abilityHatPaints.beam_marxSoul_jesterSpirit) ini_write_real("playerCustomization","hatPaletteBeamMarxSoulP4",global.hatPaletteBeamMarxSoulP4);
	if (global.hatPaletteMysticBeamGGSP4 != abilityHatPaints.mysticBeam_ggs_nastyFlux) ini_write_real("playerCustomization","hatPaletteMysticBeamGGSP4",global.hatPaletteMysticBeamGGSP4);
	if (global.hatPaletteStoneKSSUP4 != abilityHatPaints.stone_kssu_rockyRoad) ini_write_real("playerCustomization","hatPaletteStoneKSSUP4",global.hatPaletteStoneKSSUP4);
	if (global.hatPaletteStoneModernP4 != abilityHatPaints.stone_modern_rockyRoad) ini_write_real("playerCustomization","hatPaletteStoneModernP4",global.hatPaletteStoneModernP4);
	if (global.hatPaletteUfoKSSUP4 != 0) ini_write_real("playerCustomization","hatPaletteUfoKSSUP4",global.hatPaletteUfoKSSUP4);
	if (global.hatPaletteMirrorKSSUP4 != abilityHatPaints.mirror_kssu_jesterReflection) ini_write_real("playerCustomization","hatPaletteMirrorKSSUP4",global.hatPaletteMirrorKSSUP4);
	if (global.hatPaletteMirrorModernP4 != abilityHatPaints.mirror_modern_jesterReflection) ini_write_real("playerCustomization","hatPaletteMirrorModernP4",global.hatPaletteMirrorModernP4);
	if (global.hatPaletteNinjaKSSUP4 != abilityHatPaints.ninja_kssu_stealthyMaroon) ini_write_real("playerCustomization","hatPaletteNinjaKSSUP4",global.hatPaletteNinjaKSSUP4);
	if (global.hatPaletteNinjaModernP4 != abilityHatPaints.ninja_modern_stealthyMaroon) ini_write_real("playerCustomization","hatPaletteNinjaModernP4",global.hatPaletteNinjaModernP4);
	if (global.hatPaletteNinjaSamuraiP4 != abilityHatPaints.ninja_samurai_menacingBlack) ini_write_real("playerCustomization","hatPaletteNinjaSamuraiP4",global.hatPaletteNinjaSamuraiP4);
	if (global.hatPaletteBombKSSUP4 != abilityHatPaints.bomb_kssu_explosiveB) ini_write_real("playerCustomization","hatPaletteBombKSSUP4",global.hatPaletteBombKSSUP4);
	if (global.hatPaletteBombModernP4 != abilityHatPaints.bomb_modern_explosiveB) ini_write_real("playerCustomization","hatPaletteBombModernP4",global.hatPaletteBombModernP4);
	if (global.hatPaletteFireKSSUP4 != abilityHatPaints.fire_kssu_scorchingScarlet) ini_write_real("playerCustomization","hatPaletteFireKSSUP4",global.hatPaletteFireKSSUP4);
	if (global.hatPaletteIceKSSUP4 != abilityHatPaints.ice_kssu_frostedShard) ini_write_real("playerCustomization","hatPaletteIceKSSUP4",global.hatPaletteIceKSSUP4);
	if (global.hatPaletteIceSnowmanP4 != abilityHatPaints.ice_snowman_chilly) ini_write_real("playerCustomization","hatPaletteIceSnowmanP4",global.hatPaletteIceSnowmanP4);
	if (global.hatPaletteSparkKSSUP4 != abilityHatPaints.spark_kssu_electroMarine) ini_write_real("playerCustomization","hatPaletteSparkKSSUP4",global.hatPaletteSparkKSSUP4);
	if (global.hatPaletteYoyoKSSUP4 != abilityHatPaints.yoyo_kssu_spinningViolet) ini_write_real("playerCustomization","hatPaletteYoyoKSSUP4",global.hatPaletteYoyoKSSUP4);
	if (global.hatPaletteWheelKSSUP4 != abilityHatPaints.wheel_kssu_rushingRed) ini_write_real("playerCustomization","hatPaletteWheelKSSUP4",global.hatPaletteWheelKSSUP4);
	if (global.hatPaletteArtistKSSUP4 != abilityHatPaints.artist_kssu_dapperPainter) ini_write_real("playerCustomization","hatPaletteArtistKSSUP4",global.hatPaletteArtistKSSUP4);
	if (global.hatPaletteArtistModernP4 != 0) ini_write_real("playerCustomization","hatPaletteArtistModernP4",global.hatPaletteArtistModernP4);
	if (global.hatPaletteFighterKSSUP4 != abilityHatPaints.fighter_kssu_crimsonChampion) ini_write_real("playerCustomization","hatPaletteFighterKSSUP4",global.hatPaletteFighterKSSUP4);
	if (global.hatPaletteSuplexKSSUP4 != abilityHatPaints.suplex_kssu_blueBanner) ini_write_real("playerCustomization","hatPaletteSuplexKSSUP4",global.hatPaletteSuplexKSSUP4);
	if (global.hatPaletteSuplexBuggzyP4 != abilityHatPaints.suplex_buggzy_beetleViolet) ini_write_real("playerCustomization","hatPaletteSuplexBuggzyP4",global.hatPaletteSuplexBuggzyP4);
	if (global.hatPaletteWingKSSUP4 != abilityHatPaints.wing_kssu_rainbowFlight) ini_write_real("playerCustomization","hatPaletteWingKSSUP4",global.hatPaletteWingKSSUP4);
	if (global.hatPaletteJetKSSUP4 != abilityHatPaints.jet_kssu_speedMachine) ini_write_real("playerCustomization","hatPaletteJetKSSUP4",global.hatPaletteJetKSSUP4);
	if (global.hatPaletteSwordKSSUP4 != abilityHatPaints.sword_kssu_slicingGreen) ini_write_real("playerCustomization","hatPaletteSwordKSSUP4",global.hatPaletteSwordKSSUP4);
	if (global.hatPaletteParasolKSSUP4 != abilityHatPaints.parasol_kssu_lazyRed) ini_write_real("playerCustomization","hatPaletteParasolKSSUP4",global.hatPaletteParasolKSSUP4);
	if (global.hatPaletteHammerKSSUP4 != abilityHatPaints.hammer_kssu_crushingBrown) ini_write_real("playerCustomization","hatPaletteHammerKSSUP4",global.hatPaletteHammerKSSUP4);
	if (global.hatPaletteBellModernP4 != abilityHatPaints.bell_modern_dazzlingDefault) ini_write_real("playerCustomization","hatPaletteBellModernP4",global.hatPaletteBellModernP4);
	if (global.hatPaletteSleepKSSUP4 != abilityHatPaints.sleep_kssu_bubblyGreen) ini_write_real("playerCustomization","hatPaletteSleepKSSUP4",global.hatPaletteSleepKSSUP4);
	if (global.hatPaletteScanKSSUP4 != abilityHatPaints.scan_kssu_metallicRed) ini_write_real("playerCustomization","hatPaletteScanKSSUP4",global.hatPaletteScanKSSUP4);
	if (global.hatPaletteCrashKSSUP4 != abilityHatPaints.crash_kssu_none) ini_write_real("playerCustomization","hatPaletteCrashKSSUP4",global.hatPaletteCrashKSSUP4);
	if (global.hatPaletteMicKSSUP4 != abilityHatPaints.mic_kssu_loudMike) ini_write_real("playerCustomization","hatPaletteMicKSSUP4",global.hatPaletteMicKSSUP4);
	
	if (global.cutterMotorCutterUpgradeEquipped != false) ini_write_real("playerCustomization","cutterMotorCutterUpgradeEquipped",global.cutterMotorCutterUpgradeEquipped);
	if (global.cutterPropellerWingUpgradeEquipped != false) ini_write_real("playerCustomization","cutterPropellerWingUpgradeEquipped",global.cutterPropellerWingUpgradeEquipped);
	if (global.cutterSpectralCutterUpgradeEquipped != false) ini_write_real("playerCustomization","cutterSpectralCutterUpgradeEquipped",global.cutterSpectralCutterUpgradeEquipped);
	if (global.beamGoldenFlareUpgradeEquipped != false) ini_write_real("playerCustomization","beamGoldenFlareUpgradeEquipped",global.beamGoldenFlareUpgradeEquipped);
	if (global.mysticBeamVortexInAJarUpgradeEquipped != false) ini_write_real("playerCustomization","mysticBeamVortexInAJarUpgradeEquipped",global.mysticBeamVortexInAJarUpgradeEquipped);
	if (global.stoneRockCandyUpgradeEquipped != false) ini_write_real("playerCustomization","stoneRockCandyUpgradeEquipped",global.stoneRockCandyUpgradeEquipped);
	if (global.stoneComboCobaltUpgradeEquipped != false) ini_write_real("playerCustomization","stoneComboCobaltUpgradeEquipped",global.stoneComboCobaltUpgradeEquipped);
	if (global.stonePsychicPebbleUpgradeEquipped != false) ini_write_real("playerCustomization","stonePsychicPebbleUpgradeEquipped",global.stonePsychicPebbleUpgradeEquipped);
	if (global.ufoCowDollUpgradeEquipped != false) ini_write_real("playerCustomization","ufoCowDollUpgradeEquipped",global.ufoCowDollUpgradeEquipped);
	if (global.bombLightShellsUpgradeEquipped != false) ini_write_real("playerCustomization","bombLightShellsUpgradeEquipped",global.bombLightShellsUpgradeEquipped);
	if (global.bombEyeBombUpgradeEquipped != false) ini_write_real("playerCustomization","bombEyeBombUpgradeEquipped",global.bombEyeBombUpgradeEquipped);
	if (global.bombStickyBombUpgradeEquipped != false) ini_write_real("playerCustomization","bombStickyBombUpgradeEquipped",global.bombStickyBombUpgradeEquipped);
	if (global.bombMagmaBombUpgradeEquipped != false) ini_write_real("playerCustomization","bombMagmaBombUpgradeEquipped",global.bombMagmaBombUpgradeEquipped);
	if (global.bombIceBombUpgradeEquipped != false) ini_write_real("playerCustomization","bombIceBombUpgradeEquipped",global.bombIceBombUpgradeEquipped);
	if (global.bombExplosivePowderUpgradeEquipped != false) ini_write_real("playerCustomization","bombExplosivePowderUpgradeEquipped",global.bombExplosivePowderUpgradeEquipped);
	if (global.fireMagicCharcoalUpgradeEquipped != false) ini_write_real("playerCustomization","fireMagicCharcoalUpgradeEquipped",global.fireMagicCharcoalUpgradeEquipped);
	if (global.iceEmptyConeUpgradeEquipped != false) ini_write_real("playerCustomization","iceEmptyConeUpgradeEquipped",global.iceEmptyConeUpgradeEquipped);
	if (global.sparkBrightPluggUpgradeEquipped != false) ini_write_real("playerCustomization","sparkBrightPluggUpgradeEquipped",global.sparkBrightPluggUpgradeEquipped);
	if (global.parasolWaddleBrellaUpgradeEquipped != false) ini_write_real("playerCustomization","parasolWaddleBrellaUpgradeEquipped",global.parasolWaddleBrellaUpgradeEquipped);
	if (global.waterEggSoilUpgradeEquipped != false) ini_write_real("playerCustomization","waterEggSoilUpgradeEquipped",global.waterEggSoilUpgradeEquipped);
	
	if (global.cheatLifelessEquipped != false) ini_write_real("cheats","cheatLifelessEquipped",global.cheatLifelessEquipped);
	if (global.cheatStarstormEquipped != false) ini_write_real("cheats","cheatStarstormEquipped",global.cheatStarstormEquipped);
	if (global.cheatFlipsideEquipped != false) ini_write_real("cheats","cheatFlipsideEquipped",global.cheatFlipsideEquipped);
	if (global.cheatGamerBoyEquipped != false) ini_write_real("cheats","cheatGamerBoyEquipped",global.cheatGamerBoyEquipped);
	if (global.cheatEyeBleachEquipped != false) ini_write_real("cheats","cheatEyeBleachEquipped",global.cheatEyeBleachEquipped);
	if (global.cheatAwaitingForTheNewMoonEquipped != false) ini_write_real("cheats","cheatAwaitingForTheNewMoonEquipped",global.cheatAwaitingForTheNewMoonEquipped);
	if (global.cheatGatherBattleEquipped != false) ini_write_real("cheats","cheatGatherBattleEquipped",global.cheatGatherBattleEquipped);
	if (global.cheatFashionableEquipped != false) ini_write_real("cheats","cheatFashionableEquipped",global.cheatFashionableEquipped);
	if (global.cheatStrimpsDinerEquipped != false) ini_write_real("cheats","cheatStrimpsDinerEquipped",global.cheatStrimpsDinerEquipped);
	if (global.cheatColoredAbilitiesEquipped != false) ini_write_real("cheats","cheatColoredAbilitiesEquipped",global.cheatColoredAbilitiesEquipped);
	
	if (global.exTut_Treasure != false) ini_write_real("extraTutorials","exTut_Treasure",global.exTut_Treasure);
	if (global.exTut_AntiFloat != false) ini_write_real("extraTutorials","exTut_AntiFloat",global.exTut_AntiFloat);
	
	//Keycard Content
	
	if (global.kirbyBattleBlitzCrossoverKeycard != false) ini_write_real("doNotEdit","KBB0",global.kirbyBattleBlitzCrossoverKeycard);
	if (global.kirbysDreamLandPlusCrossoverKeycard != false) ini_write_real("doNotEdit","KDLP0",global.kirbysDreamLandPlusCrossoverKeycard);
	if (global.dreamCrafterCrossoverKeycard != false) ini_write_real("doNotEdit","DC0",global.dreamCrafterCrossoverKeycard);
	if (global.eternalParadiseCrossoverKeycard != false) ini_write_real("doNotEdit","EP0",global.eternalParadiseCrossoverKeycard);
	if (global.bollCrossoverKeycard != false) ini_write_real("doNotEdit","B0",global.bollCrossoverKeycard);
	
	if (global.abilitySpraysKeycard != false) ini_write_real("doNotEdit","AS0",global.abilitySpraysKeycard);
	
	ini_close();
}