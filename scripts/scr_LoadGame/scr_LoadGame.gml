///@description Load Game
///@param {real} file Which File To Read

function scr_LoadGame(argument0)
{
	ini_open(argument0);
	global.gameTimeSeconds = ini_read_real("stats","gameTimeSeconds",0);
	global.gameTimeMinutes = ini_read_real("stats","gameTimeMinutes",0);
	global.gameTimeHours = ini_read_real("stats","gameTimeHours",0);
	global.pointStars = ini_read_real("stats","pointStars",0);
	global.points = ini_read_real("stats","points",0);
	global.playerLives = ini_read_real("stats","lives",3);
	global.goldenTomatoAmountP1 = ini_read_real("stats","goldenTomatoAmountP1",0);
	global.goldenTomatoAmountP2 = ini_read_real("stats","goldenTomatoAmountP2",0);
	global.goldenTomatoAmountP3 = ini_read_real("stats","goldenTomatoAmountP3",0);
	global.goldenTomatoAmountP4 = ini_read_real("stats","goldenTomatoAmountP4",0);
	global.abilityP1 = ini_read_real("stats","abilityP1",playerAbilities.none);
	global.abilityP2 = ini_read_real("stats","abilityP2",playerAbilities.none);
	global.abilityP3 = ini_read_real("stats","abilityP3",playerAbilities.none);
	global.abilityP4 = ini_read_real("stats","abilityP4",playerAbilities.none);
	
	global.cutterAbilityObtained = ini_read_real("stats","cutterAbilityObtained",false);
	global.beamAbilityObtained = ini_read_real("stats","beamAbilityObtained",false);
	global.mysticBeamAbilityObtained = ini_read_real("stats","mysticBeamAbilityObtained",false);
	global.stoneAbilityObtained = ini_read_real("stats","stoneAbilityObtained",false);
	global.ufoAbilityObtained = ini_read_real("stats","ufoAbilityObtained",false);
	global.mirrorAbilityObtained = ini_read_real("stats","mirrorAbilityObtained",false);
	global.ninjaAbilityObtained = ini_read_real("stats","ninjaAbilityObtained",false);
	global.bombAbilityObtained = ini_read_real("stats","bombAbilityObtained",false);
	global.fireAbilityObtained = ini_read_real("stats","fireAbilityObtained",false);
	global.mysticFireAbilityObtained = ini_read_real("stats","mysticFireAbilityObtained",false);
	global.iceAbilityObtained = ini_read_real("stats","iceAbilityObtained",false);
	global.sparkAbilityObtained = ini_read_real("stats","sparkAbilityObtained",false);
	global.yoyoAbilityObtained = ini_read_real("stats","yoyoAbilityObtained",false);
	global.wheelAbilityObtained = ini_read_real("stats","wheelAbilityObtained",false);
	global.artistAbilityObtained = ini_read_real("stats","artistAbilityObtained",false);
	global.fighterAbilityObtained = ini_read_real("stats","fighterAbilityObtained",false);
	global.suplexAbilityObtained = ini_read_real("stats","suplexAbilityObtained",false);
	global.wingAbilityObtained = ini_read_real("stats","wingAbilityObtained",false);
	global.jetAbilityObtained = ini_read_real("stats","jetAbilityObtained",false);
	global.swordAbilityObtained = ini_read_real("stats","swordAbilityObtained",false);
	global.parasolAbilityObtained = ini_read_real("stats","parasolAbilityObtained",false);
	global.hammerAbilityObtained = ini_read_real("stats","hammerAbilityObtained",false);
	global.bellAbilityObtained = ini_read_real("stats","bellAbilityObtained",false);
	global.waterAbilityObtained = ini_read_real("stats","waterAbilityObtained",false);
	global.hiJumpAbilityObtained = ini_read_real("stats","hiJumpAbilityObtained",false);
	global.gearAbilityObtained = ini_read_real("stats","gearAbilityObtained",false);
	global.sleepAbilityObtained = ini_read_real("stats","sleepAbilityObtained",false);
	global.scanAbilityObtained = ini_read_real("stats","scanAbilityObtained",false);
	global.crashAbilityObtained = ini_read_real("stats","crashAbilityObtained",false);
	global.micAbilityObtained = ini_read_real("stats","micAbilityObtained",false);
	global.chefAbilityObtained = ini_read_real("stats","chefAbilityObtained",false);
	global.ultraSwordAbilityObtained = ini_read_real("stats","ultraSwordAbilityObtained",false);
	global.cosmicBladeAbilityObtained = ini_read_real("stats","cosmicBladeAbilityObtained",false);
	
	global.cutterAbilityKills = ini_read_real("stats","cutterAbilityKills",0);
	global.beamAbilityKills = ini_read_real("stats","beamAbilityKills",0);
	global.mysticBeamAbilityKills = ini_read_real("stats","mysticBeamAbilityKills",0);
	global.stoneAbilityKills = ini_read_real("stats","stoneAbilityKills",0);
	global.ufoAbilityKills = ini_read_real("stats","ufoAbilityKills",0);
	global.mirrorAbilityKills = ini_read_real("stats","mirrorAbilityKills",0);
	global.ninjaAbilityKills = ini_read_real("stats","ninjaAbilityKills",0);
	global.bombAbilityKills = ini_read_real("stats","bombAbilityKills",0);
	global.fireAbilityKills = ini_read_real("stats","fireAbilityKills",0);
	global.mysticFireAbilityKills = ini_read_real("stats","mysticFireAbilityKills",0);
	global.iceAbilityKills = ini_read_real("stats","iceAbilityKills",0);
	global.sparkAbilityKills = ini_read_real("stats","sparkAbilityKills",0);
	global.yoyoAbilityKills = ini_read_real("stats","yoyoAbilityKills",0);
	global.wheelAbilityKills = ini_read_real("stats","wheelAbilityKills",0);
	global.artistAbilityKills = ini_read_real("stats","artistAbilityKills",0);
	global.fighterAbilityKills = ini_read_real("stats","fighterAbilityKills",0);
	global.suplexAbilityKills = ini_read_real("stats","suplexAbilityKills",0);
	global.wingAbilityKills = ini_read_real("stats","wingAbilityKills",0);
	global.jetAbilityKills = ini_read_real("stats","jetAbilityKills",0);
	global.swordAbilityKills = ini_read_real("stats","swordAbilityKills",0);
	global.parasolAbilityKills = ini_read_real("stats","parasolAbilityKills",0);
	global.hammerAbilityKills = ini_read_real("stats","hammerAbilityKills",0);
	global.bellAbilityKills = ini_read_real("stats","bellAbilityKills",0);
	global.waterAbilityKills = ini_read_real("stats","waterAbilityKills",0);
	global.hiJumpAbilityKills = ini_read_real("stats","hiJumpAbilityKills",0);
	global.gearAbilityKills = ini_read_real("stats","gearAbilityKills",0);
	global.sleepAbilityKills = ini_read_real("stats","sleepAbilityKills",0);
	global.scanAbilityKills = ini_read_real("stats","scanAbilityKills",0);
	global.crashAbilityKills = ini_read_real("stats","crashAbilityKills",0);
	global.micAbilityKills = ini_read_real("stats","micAbilityKills",0);
	global.chefAbilityKills = ini_read_real("stats","chefAbilityKills",0);
	global.ultraSwordAbilityKills = ini_read_real("stats","ultraSwordAbilityKills",0);
	global.cosmicBladeAbilityKills = ini_read_real("stats","cosmicBladeAbilityKills",0);
	
	global.progression = ini_read_real("progression","progression",progression.greenGreens);
	
	global.beatGreenGreens = ini_read_real("progression","beatGreenGreens",false);
	global.beatBattleshipHalberd = ini_read_real("progression","beatBattleshipHalberd",false);
	global.beatAsteroidFields = ini_read_real("progression","beatAsteroidFields",false);
	global.beatYolkYard = ini_read_real("progression","beatYolkYard",false);
	global.beatGrandTempleAvgo = ini_read_real("progression","beatGrandTempleAvgo",false);
	global.beatFloralYolkCaves = ini_read_real("progression","beatFloralYolkCaves",false);
	global.beatStormTheFortress = ini_read_real("progression","beatStormTheFortress",false);
	global.beatCentralLab = ini_read_real("progression","beatCentralLab",false);
	global.beatPathToTheNastyMachine = ini_read_real("progression","beatPathToTheNastyMachine",false);
	global.beatSandshellBeach = ini_read_real("progression","beatSandshellBeach",false);
	global.beatUpTheStraw = ini_read_real("progression","beatUpTheStraw",false);
	global.beatSacredAquatia = ini_read_real("progression","beatSacredAquatia",false);
	global.beatCosmicPalace = ini_read_real("progression","beatCosmicPalace",false);
	global.beatPopstarMoon = ini_read_real("progression","beatPopstarMoon",false);
	global.beatChapter1 = ini_read_real("progression","beatChapter1",false);
	
	global.customizeMenuFirstTime = ini_read_real("progression","customizeMenuFirstTime",false);
	global.bestiaryMenuFirstTime = ini_read_real("progression","bestiaryMenuFirstTime",false);
	global.upgradesMenuFirstTime = ini_read_real("progression","upgradesMenuFirstTime",false);
	global.cheatsMenuFirstTime = ini_read_real("progression","cheatsMenuFirstTime",false);
	global.trophiesMenuFirstTime = ini_read_real("progression","trophiesMenuFirstTime",false);
	global.stagesMenuFirstTime = ini_read_real("progression","stagesMenuFirstTime",false);
	global.soundTestMenuFirstTime = ini_read_real("progression","soundTestMenuFirstTime",false);
	global.galleryMenuFirstTime = ini_read_real("progression","galleryMenuFirstTime",false);
	
	global.shopGearCubeFirstTime = ini_read_real("progression","shopGearCubeFirstTime",true);
	global.shopGearCubeNewItem = ini_read_real("progression","shopGearCubeNewItem",false);
	
	#region Stage Missions
	#region Control
	#endregion
	
	#region Green Greens
	global.stageComplete_GreenGreens = ini_read_real("progression","stageComplete_GreenGreens",false);
	
	global.stageMission_GreenGreens[0] = ini_read_real("progression","stageMission_GreenGreens_0",false);
	global.stageMission_GreenGreens[1] = ini_read_real("progression","stageMission_GreenGreens_1",false);
	global.stageMission_GreenGreens[2] = ini_read_real("progression","stageMission_GreenGreens_2",false);
	global.stageMission_GreenGreens[3] = ini_read_real("progression","stageMission_GreenGreens_3",false);
	
	global.stageCollectible_GreenGreens[0] = ini_read_real("progression","stageCollectible_GreenGreens_0",false);
	global.stageCollectible_GreenGreens[1] = ini_read_real("progression","stageCollectible_GreenGreens_1",false);
	global.stageCollectible_GreenGreens[2] = ini_read_real("progression","stageCollectible_GreenGreens_2",false);
	global.stageCollectible_GreenGreens[3] = ini_read_real("progression","stageCollectible_GreenGreens_3",false);
	#endregion
	
	#region Battleship Halberd
	global.stageComplete_BattleshipHalberd = ini_read_real("progression","stageComplete_BattleshipHalberd",false);
	
	global.stageMission_BattleshipHalberd[0] = ini_read_real("progression","stageMission_BattleshipHalberd_0",false);
	global.stageMission_BattleshipHalberd[1] = ini_read_real("progression","stageMission_BattleshipHalberd_1",false);
	global.stageMission_BattleshipHalberd[2] = ini_read_real("progression","stageMission_BattleshipHalberd_2",false);
	global.stageMission_BattleshipHalberd[3] = ini_read_real("progression","stageMission_BattleshipHalberd_3",false);
	
	global.stageCollectible_BattleshipHalberd[0] = ini_read_real("progression","stageCollectible_BattleshipHalberd_0",false);
	global.stageCollectible_BattleshipHalberd[1] = ini_read_real("progression","stageCollectible_BattleshipHalberd_1",false);
	global.stageCollectible_BattleshipHalberd[2] = ini_read_real("progression","stageCollectible_BattleshipHalberd_2",false);
	global.stageCollectible_BattleshipHalberd[3] = ini_read_real("progression","stageCollectible_BattleshipHalberd_3",false);
	#endregion
	
	#region Asteroid Fields
	global.stageComplete_AsteroidFields = ini_read_real("progression","stageComplete_AsteroidFields",false);
	
	global.stageMission_AsteroidFields[0] = ini_read_real("progression","stageMission_AsteroidFields_0",false);
	global.stageMission_AsteroidFields[1] = ini_read_real("progression","stageMission_AsteroidFields_1",false);
	global.stageMission_AsteroidFields[2] = ini_read_real("progression","stageMission_AsteroidFields_2",false);
	global.stageMission_AsteroidFields[3] = ini_read_real("progression","stageMission_AsteroidFields_3",false);
	
	global.stageCollectible_AsteroidFields[0] = ini_read_real("progression","stageCollectible_AsteroidFields_0",false);
	global.stageCollectible_AsteroidFields[1] = ini_read_real("progression","stageCollectible_AsteroidFields_1",false);
	global.stageCollectible_AsteroidFields[2] = ini_read_real("progression","stageCollectible_AsteroidFields_2",false);
	global.stageCollectible_AsteroidFields[3] = ini_read_real("progression","stageCollectible_AsteroidFields_3",false);
	#endregion
	
	#region Yolk Yard
	global.stageComplete_YolkYard = ini_read_real("progression","stageComplete_YolkYard",false);
	
	global.stageMission_YolkYard[0] = ini_read_real("progression","stageMission_YolkYard_0",false);
	global.stageMission_YolkYard[1] = ini_read_real("progression","stageMission_YolkYard_1",false);
	global.stageMission_YolkYard[2] = ini_read_real("progression","stageMission_YolkYard_2",false);
	global.stageMission_YolkYard[3] = ini_read_real("progression","stageMission_YolkYard_3",false);
	
	global.stageCollectible_YolkYard[0] = ini_read_real("progression","stageCollectible_YolkYard_0",false);
	global.stageCollectible_YolkYard[1] = ini_read_real("progression","stageCollectible_YolkYard_1",false);
	global.stageCollectible_YolkYard[2] = ini_read_real("progression","stageCollectible_YolkYard_2",false);
	global.stageCollectible_YolkYard[3] = ini_read_real("progression","stageCollectible_YolkYard_3",false);
	#endregion
	
	#region Grand Temple Avgo
	global.stageComplete_GrandTempleAvgo = ini_read_real("progression","stageComplete_GrandTempleAvgo",false);
	
	global.stageMission_GrandTempleAvgo[0] = ini_read_real("progression","stageMission_GrandTempleAvgo_0",false);
	global.stageMission_GrandTempleAvgo[1] = ini_read_real("progression","stageMission_GrandTempleAvgo_1",false);
	global.stageMission_GrandTempleAvgo[2] = ini_read_real("progression","stageMission_GrandTempleAvgo_2",false);
	global.stageMission_GrandTempleAvgo[3] = ini_read_real("progression","stageMission_GrandTempleAvgo_3",false);
	
	global.stageCollectible_GrandTempleAvgo[0] = ini_read_real("progression","stageCollectible_GrandTempleAvgo_0",false);
	global.stageCollectible_GrandTempleAvgo[1] = ini_read_real("progression","stageCollectible_GrandTempleAvgo_1",false);
	global.stageCollectible_GrandTempleAvgo[2] = ini_read_real("progression","stageCollectible_GrandTempleAvgo_2",false);
	global.stageCollectible_GrandTempleAvgo[3] = ini_read_real("progression","stageCollectible_GrandTempleAvgo_3",false);
	#endregion
	
	#region Floral Yolk Caves
	global.stageComplete_FloralYolkCaves = ini_read_real("progression","stageComplete_FloralYolkCaves",false);
	
	global.stageMission_FloralYolkCaves[0] = ini_read_real("progression","stageMission_FloralYolkCaves_0",false);
	global.stageMission_FloralYolkCaves[1] = ini_read_real("progression","stageMission_FloralYolkCaves_1",false);
	global.stageMission_FloralYolkCaves[2] = ini_read_real("progression","stageMission_FloralYolkCaves_2",false);
	global.stageMission_FloralYolkCaves[3] = ini_read_real("progression","stageMission_FloralYolkCaves_3",false);
	
	global.stageCollectible_FloralYolkCaves[0] = ini_read_real("progression","stageCollectible_FloralYolkCaves_0",false);
	global.stageCollectible_FloralYolkCaves[1] = ini_read_real("progression","stageCollectible_FloralYolkCaves_1",false);
	global.stageCollectible_FloralYolkCaves[2] = ini_read_real("progression","stageCollectible_FloralYolkCaves_2",false);
	global.stageCollectible_FloralYolkCaves[3] = ini_read_real("progression","stageCollectible_FloralYolkCaves_3",false);
	#endregion
	
	#region Storm The Fortress
	global.stageComplete_StormTheFortress = ini_read_real("progression","stageComplete_StormTheFortress",false);
	
	global.stageMission_StormTheFortress[0] = ini_read_real("progression","stageMission_StormTheFortress_0",false);
	global.stageMission_StormTheFortress[1] = ini_read_real("progression","stageMission_StormTheFortress_1",false);
	global.stageMission_StormTheFortress[2] = ini_read_real("progression","stageMission_StormTheFortress_2",false);
	global.stageMission_StormTheFortress[3] = ini_read_real("progression","stageMission_StormTheFortress_3",false);
	
	global.stageCollectible_StormTheFortress[0] = ini_read_real("progression","stageCollectible_StormTheFortress_0",false);
	global.stageCollectible_StormTheFortress[1] = ini_read_real("progression","stageCollectible_StormTheFortress_1",false);
	global.stageCollectible_StormTheFortress[2] = ini_read_real("progression","stageCollectible_StormTheFortress_2",false);
	global.stageCollectible_StormTheFortress[3] = ini_read_real("progression","stageCollectible_StormTheFortress_3",false);
	#endregion
	
	#region Central Lab
	global.stageComplete_CentralLab = ini_read_real("progression","stageComplete_CentralLab",false);
	
	global.stageMission_CentralLab[0] = ini_read_real("progression","stageMission_CentralLab_0",false);
	global.stageMission_CentralLab[1] = ini_read_real("progression","stageMission_CentralLab_1",false);
	global.stageMission_CentralLab[2] = ini_read_real("progression","stageMission_CentralLab_2",false);
	global.stageMission_CentralLab[3] = ini_read_real("progression","stageMission_CentralLab_3",false);
	
	global.stageCollectible_CentralLab[0] = ini_read_real("progression","stageCollectible_CentralLab_0",false);
	global.stageCollectible_CentralLab[1] = ini_read_real("progression","stageCollectible_CentralLab_1",false);
	global.stageCollectible_CentralLab[2] = ini_read_real("progression","stageCollectible_CentralLab_2",false);
	global.stageCollectible_CentralLab[3] = ini_read_real("progression","stageCollectible_CentralLab_3",false);
	#endregion
	
	#region Path to the Nasty Machine
	global.stageComplete_PathToTheNastyMachine = ini_read_real("progression","stageComplete_PathToTheNastyMachine",false);
	
	global.stageMission_PathToTheNastyMachine[0] = ini_read_real("progression","stageMission_PathToTheNastyMachine_0",false);
	global.stageMission_PathToTheNastyMachine[1] = ini_read_real("progression","stageMission_PathToTheNastyMachine_1",false);
	global.stageMission_PathToTheNastyMachine[2] = ini_read_real("progression","stageMission_PathToTheNastyMachine_2",false);
	global.stageMission_PathToTheNastyMachine[3] = ini_read_real("progression","stageMission_PathToTheNastyMachine_3",false);
	
	global.stageCollectible_PathToTheNastyMachine[0] = ini_read_real("progression","stageCollectible_PathToTheNastyMachine_0",false);
	global.stageCollectible_PathToTheNastyMachine[1] = ini_read_real("progression","stageCollectible_PathToTheNastyMachine_1",false);
	global.stageCollectible_PathToTheNastyMachine[2] = ini_read_real("progression","stageCollectible_PathToTheNastyMachine_2",false);
	global.stageCollectible_PathToTheNastyMachine[3] = ini_read_real("progression","stageCollectible_PathToTheNastyMachine_3",false);
	#endregion
	
	#region Sandshell Beach
	global.stageComplete_SandshellBeach = ini_read_real("progression","stageComplete_SandshellBeach",false);
	
	global.stageMission_SandshellBeach[0] = ini_read_real("progression","stageMission_SandshellBeach_0",false);
	global.stageMission_SandshellBeach[1] = ini_read_real("progression","stageMission_SandshellBeach_1",false);
	global.stageMission_SandshellBeach[2] = ini_read_real("progression","stageMission_SandshellBeach_2",false);
	global.stageMission_SandshellBeach[3] = ini_read_real("progression","stageMission_SandshellBeach_3",false);
	
	global.stageCollectible_SandshellBeach[0] = ini_read_real("progression","stageCollectible_SandshellBeach_0",false);
	global.stageCollectible_SandshellBeach[1] = ini_read_real("progression","stageCollectible_SandshellBeach_1",false);
	global.stageCollectible_SandshellBeach[2] = ini_read_real("progression","stageCollectible_SandshellBeach_2",false);
	global.stageCollectible_SandshellBeach[3] = ini_read_real("progression","stageCollectible_SandshellBeach_3",false);
	#endregion
	
	#region Up The Straw
	global.stageComplete_UpTheStraw = ini_read_real("progression","stageComplete_UpTheStraw",false);
	
	global.stageMission_UpTheStraw[0] = ini_read_real("progression","stageMission_UpTheStraw_0",false);
	global.stageMission_UpTheStraw[1] = ini_read_real("progression","stageMission_UpTheStraw_1",false);
	global.stageMission_UpTheStraw[2] = ini_read_real("progression","stageMission_UpTheStraw_2",false);
	global.stageMission_UpTheStraw[3] = ini_read_real("progression","stageMission_UpTheStraw_3",false);
	
	global.stageCollectible_UpTheStraw[0] = ini_read_real("progression","stageCollectible_UpTheStraw_0",false);
	global.stageCollectible_UpTheStraw[1] = ini_read_real("progression","stageCollectible_UpTheStraw_1",false);
	global.stageCollectible_UpTheStraw[2] = ini_read_real("progression","stageCollectible_UpTheStraw_2",false);
	global.stageCollectible_UpTheStraw[3] = ini_read_real("progression","stageCollectible_UpTheStraw_3",false);
	#endregion
	
	#region Sacred Aquatia
	global.stageComplete_SacredAquatia = ini_read_real("progression","stageComplete_SacredAquatia",false);
	
	global.stageMission_SacredAquatia[0] = ini_read_real("progression","stageMission_SacredAquatia_0",false);
	global.stageMission_SacredAquatia[1] = ini_read_real("progression","stageMission_SacredAquatia_1",false);
	global.stageMission_SacredAquatia[2] = ini_read_real("progression","stageMission_SacredAquatia_2",false);
	global.stageMission_SacredAquatia[3] = ini_read_real("progression","stageMission_SacredAquatia_3",false);
	
	global.stageCollectible_SacredAquatia[0] = ini_read_real("progression","stageCollectible_SacredAquatia_0",false);
	global.stageCollectible_SacredAquatia[1] = ini_read_real("progression","stageCollectible_SacredAquatia_1",false);
	global.stageCollectible_SacredAquatia[2] = ini_read_real("progression","stageCollectible_SacredAquatia_2",false);
	global.stageCollectible_SacredAquatia[3] = ini_read_real("progression","stageCollectible_SacredAquatia_3",false);
	#endregion
	
	#region Cosmic Palace
	global.stageComplete_CosmicPalace = ini_read_real("progression","stageComplete_CosmicPalace",false);
	
	global.stageMission_CosmicPalace[0] = ini_read_real("progression","stageMission_CosmicPalace_0",false);
	global.stageMission_CosmicPalace[1] = ini_read_real("progression","stageMission_CosmicPalace_1",false);
	global.stageMission_CosmicPalace[2] = ini_read_real("progression","stageMission_CosmicPalace_2",false);
	global.stageMission_CosmicPalace[3] = ini_read_real("progression","stageMission_CosmicPalace_3",false);
	
	global.stageCollectible_CosmicPalace[0] = ini_read_real("progression","stageCollectible_CosmicPalace_0",false);
	global.stageCollectible_CosmicPalace[1] = ini_read_real("progression","stageCollectible_CosmicPalace_1",false);
	global.stageCollectible_CosmicPalace[2] = ini_read_real("progression","stageCollectible_CosmicPalace_2",false);
	global.stageCollectible_CosmicPalace[3] = ini_read_real("progression","stageCollectible_CosmicPalace_3",false);
	#endregion
	
	#region Popstar Moon
	global.stageComplete_PopstarMoon = ini_read_real("progression","stageComplete_PopstarMoon",false);
	
	global.stageMission_PopstarMoon[0] = ini_read_real("progression","stageMission_PopstarMoon_0",false);
	global.stageMission_PopstarMoon[1] = ini_read_real("progression","stageMission_PopstarMoon_1",false);
	global.stageMission_PopstarMoon[2] = ini_read_real("progression","stageMission_PopstarMoon_2",false);
	global.stageMission_PopstarMoon[3] = ini_read_real("progression","stageMission_PopstarMoon_3",false);
	
	global.stageCollectible_PopstarMoon[0] = ini_read_real("progression","stageCollectible_PopstarMoon_0",false);
	global.stageCollectible_PopstarMoon[1] = ini_read_real("progression","stageCollectible_PopstarMoon_1",false);
	global.stageCollectible_PopstarMoon[2] = ini_read_real("progression","stageCollectible_PopstarMoon_2",false);
	global.stageCollectible_PopstarMoon[3] = ini_read_real("progression","stageCollectible_PopstarMoon_3",false);
	#endregion
	#endregion
	
	global.collectionMenuUnlocked = ini_read_real("unlocks","collectionMenuUnlocked",false);
	global.collectionMenuUnlockedFirstTime = ini_read_real("unlocks","collectionMenuUnlockedFirstTime",false);
	global.extraModeUnlocked = ini_read_real("unlocks","extraModeUnlocked",false);
	global.extraModeUnlockedFirstTime = ini_read_real("unlocks","extraModeUnlockedFirstTime",false);
	global.maykrUnlocked = ini_read_real("unlocks","maykrUnlocked",false);
	global.maykrUnlockedFirstTime = ini_read_real("unlocks","maykrUnlockedFirstTime",false);
	global.skylandsUnlocked = ini_read_real("unlocks","skylandsUnlocked",false);
	global.skylandsUnlockedFirstTime = ini_read_real("unlocks","skylandsUnlockedFirstTime",false);
	global.gamblionUnlocked = ini_read_real("unlocks","gamblionUnlocked",false);
	global.gamblionUnlockedFirstTime = ini_read_real("unlocks","gamblionUnlockedFirstTime",false);
	global.strimpsMatrixUnlocked = ini_read_real("unlocks","strimpsMatrixUnlocked",false);
	global.strimpsMatrixUnlockedFirstTime = ini_read_real("unlocks","strimpsMatrixUnlockedFirstTime",false);
	global.bitcrushedUnlocked = ini_read_real("unlocks","bitcrushedUnlocked",false);
	global.bitcrushedUnlockedFirstTime = ini_read_real("unlocks","bitcrushedUnlockedFirstTime",false);
	global.samuraiKirbyUnlocked = ini_read_real("unlocks","samuraiKirbyUnlocked",false);
	global.samuraiKirbyUnlockedFirstTime = ini_read_real("unlocks","samuraiKirbyUnlockedFirstTime",false);
	
	global.kirbyUnlocked = ini_read_real("unlocks","kirbyUnlocked",true);
	global.gambleUnlocked = ini_read_real("unlocks","gambleUnlocked",false);
	global.metaKnightUnlocked = ini_read_real("unlocks","metaKnightUnlocked",false);
	global.keebyUnlocked = ini_read_real("unlocks","keebyUnlocked",false);
	global.helperUnlocked = ini_read_real("unlocks","helperUnlocked",false);
	global.gooeyUnlocked = ini_read_real("unlocks","gooeyUnlocked",false);
	global.magolorUnlocked = ini_read_real("unlocks","magolorUnlocked",false);
	global.princeFluffUnlocked = ini_read_real("unlocks","princeFluffUnlocked",false);
	
	global.friendlyPinkSprayPaintUnlocked = ini_read_real("unlocks","friendlyPinkSprayPaintUnlocked",true);
	global.yellowSprayPaintUnlocked = ini_read_real("unlocks","yellowSprayPaintUnlocked",true);
	global.redSprayPaintUnlocked = ini_read_real("unlocks","redSprayPaintUnlocked",true);
	global.greenSprayPaintUnlocked = ini_read_real("unlocks","greenSprayPaintUnlocked",true);
	global.dreamyBlueberrySprayPaintUnlocked = ini_read_real("unlocks","dreamyBlueberrySprayPaintUnlocked",false);
	global.carbonSprayPaintUnlocked = ini_read_real("unlocks","carbonSprayPaintUnlocked",false);
	global.cherrySprayPaintUnlocked = ini_read_real("unlocks","cherrySprayPaintUnlocked",false);
	global.deepFriedKirbSprayPaintUnlocked = ini_read_real("unlocks","deepFriedKirbSprayPaintUnlocked",false);
	global.emeraldSprayPaintUnlocked = ini_read_real("unlocks","emeraldSprayPaintUnlocked",false);
	global.gameKirbSprayPaintUnlocked = ini_read_real("unlocks","gameKirbSprayPaintUnlocked",false);
	global.hauntingPurpleSprayPaintUnlocked = ini_read_real("unlocks","hauntingPurpleSprayPaintUnlocked",false);
	global.invisSprinkleSprayPaintUnlocked = ini_read_real("unlocks","invisSprinkleSprayPaintUnlocked",false);
	global.monochromeKirbSprayPaintUnlocked = ini_read_real("unlocks","monochromeKirbSprayPaintUnlocked",false);
	global.yolkTempleSprayPaintUnlocked = ini_read_real("unlocks","yolkTempleSprayPaintUnlocked",false);
	global.plumpTomatoSprayPaintUnlocked = ini_read_real("unlocks","plumpTomatoSprayPaintUnlocked",false);
	global.waddleWaddleSprayPaintUnlocked = ini_read_real("unlocks","waddleWaddleSprayPaintUnlocked",false);
	global.mysticSprayPaintUnlocked = ini_read_real("unlocks","mysticSprayPaintUnlocked",false);
	global.shadowOfTheMirrorSprayPaintUnlocked = ini_read_real("unlocks","shadowOfTheMirrorSprayPaintUnlocked",false);
	global.deliriousSprayPaintUnlocked = ini_read_real("unlocks","deliriousSprayPaintUnlocked",false);
	global.greenjoltSprayPaintUnlocked = ini_read_real("unlocks","greenjoltSprayPaintUnlocked",false);
	global.butterKnifeSprayPaintUnlocked = ini_read_real("unlocks","butterKnifeSprayPaintUnlocked",false);
	global.blurpleSprayPaintUnlocked = ini_read_real("unlocks","blurpleSprayPaintUnlocked",false);
	global.beamSprayPaintUnlocked = ini_read_real("unlocks","beamSprayPaintUnlocked",false);
	global.stoneSprayPaintUnlocked = ini_read_real("unlocks","stoneSprayPaintUnlocked",false);
	global.mirrorSprayPaintUnlocked = ini_read_real("unlocks","mirrorSprayPaintUnlocked",false);
	global.ninjaSprayPaintUnlocked = ini_read_real("unlocks","ninjaSprayPaintUnlocked",false);
	global.fireSprayPaintUnlocked = ini_read_real("unlocks","fireSprayPaintUnlocked",false);
	global.iceSprayPaintUnlocked = ini_read_real("unlocks","iceSprayPaintUnlocked",false);
	global.plasmaSprayPaintUnlocked = ini_read_real("unlocks","plasmaSprayPaintUnlocked",false);
	global.unearthlyHandSprayPaintUnlocked = ini_read_real("unlocks","unearthlyHandSprayPaintUnlocked",false);
	global.soMetaSprayPaintUnlocked = ini_read_real("unlocks","soMetaSprayPaintUnlocked",false);
	global.gooeyBlueSprayPaintUnlocked = ini_read_real("unlocks","gooeyBlueSprayPaintUnlocked",false);
	global.eggBrownSprayPaintUnlocked = ini_read_real("unlocks","eggBrownSprayPaintUnlocked",false);
	global.telltaleKeebySprayPaintUnlocked = ini_read_real("unlocks","telltaleKeebySprayPaintUnlocked",false);
	global.royalYarnSprayPaintUnlocked = ini_read_real("unlocks","royalYarnSprayPaintUnlocked",false);
	global.smileyWhiteSprayPaintUnlocked = ini_read_real("unlocks","smileyWhiteSprayPaintUnlocked",false);
	global.eddSprayPaintUnlocked = ini_read_real("unlocks","eddSprayPaintUnlocked",false);
	global.musiciansLightSprayPaintUnlocked = ini_read_real("unlocks","musiciansLightSprayPaintUnlocked",false);
	
	#region Ability Hat Skins & Paints
	#region Cutter
	#region KSSU
	global.hatPaletteCutterKSSUBloodBladeUnlocked = ini_read_real("unlocks","hatPaletteCutterKSSUBloodBladeUnlocked",false);
	global.hatPaletteCutterKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteCutterKSSUBitcrushedUnlocked",false);
	global.hatPaletteCutterKSSUMallardGreenUnlocked = ini_read_real("unlocks","hatPaletteCutterKSSUMallardGreenUnlocked",false);
	global.hatPaletteCutterKSSUBlackSwedishUnlocked = ini_read_real("unlocks","hatPaletteCutterKSSUBlackSwedishUnlocked",false);
	global.hatPaletteCutterKSSUFluxNostalgiaUnlocked = ini_read_real("unlocks","hatPaletteCutterKSSUFluxNostalgiaUnlocked",false);
	global.hatPaletteCutterKSSUSliverAndGoldUnlocked = ini_read_real("unlocks","hatPaletteCutterKSSUSliverAndGoldUnlocked",false);
	#endregion
	#endregion
	
	#region Beam
	#region KSSU
	global.hatPaletteBeamKSSUFluxNostalgiaUnlocked = ini_read_real("unlocks","hatPaletteBeamKSSUFluxNostalgiaUnlocked",false);
	global.hatPaletteBeamKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteBeamKSSUBitcrushedUnlocked",false);
	global.hatPaletteBeamKSSUChessmasterUnlocked = ini_read_real("unlocks","hatPaletteBeamKSSUChessmasterUnlocked",false);
	global.hatPaletteBeamKSSUCottonCandyUnlocked = ini_read_real("unlocks","hatPaletteBeamKSSUCottonCandyUnlocked",false);
	global.hatPaletteBeamKSSUFrostyMageUnlocked = ini_read_real("unlocks","hatPaletteBeamKSSUFrostyMageUnlocked",false);
	global.hatPaletteBeamKSSULemonLimeUnlocked = ini_read_real("unlocks","hatPaletteBeamKSSULemonLimeUnlocked",false);
	global.hatPaletteBeamKSSUMixingPaintsUnlocked = ini_read_real("unlocks","hatPaletteBeamKSSUMixingPaintsUnlocked",false);
	global.hatPaletteBeamKSSUWhosIdeaWasThisUnlocked = ini_read_real("unlocks","hatPaletteBeamKSSUWhosIdeaWasThisUnlocked",false);
	#endregion
	
	#region Marx Soul
	global.hatTypeBeamMarxSoulUnlocked = ini_read_real("unlocks","hatTypeBeamMarxSoulUnlocked",false);
	
	global.hatPaletteBeamMarxSoulSummerFruitsUnlocked = ini_read_real("unlocks","hatPaletteBeamMarxSoulSummerFruitsUnlocked",false);
	global.hatPaletteBeamMarxSoulBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteBeamMarxSoulBitcrushedUnlocked",false);
	#endregion
	#endregion
	
	#region Mystic Beam
	#region GGS
	global.hatPaletteMysticBeamGGSMageRoseUnlocked = ini_read_real("unlocks","hatPaletteMysticBeamGGSMageRoseUnlocked",false);
	global.hatPaletteMysticBeamGGSBlueberryUnlocked = ini_read_real("unlocks","hatPaletteMysticBeamGGSBlueberryUnlocked",false);
	global.hatPaletteMysticBeamGGSSourlimeUnlocked = ini_read_real("unlocks","hatPaletteMysticBeamGGSSourlimeUnlocked",false);
	global.hatPaletteMysticBeamGGSMonoUnlocked = ini_read_real("unlocks","hatPaletteMysticBeamGGSMonoUnlocked",false);
	global.hatPaletteMysticBeamGGSBubblegumUnlocked = ini_read_real("unlocks","hatPaletteMysticBeamGGSBubblegumUnlocked",false);
	#endregion
	#endregion
	
	#region Stone
	global.hatTypeStoneModernUnlocked = ini_read_real("unlocks","hatTypeStoneModernUnlocked",false);
	
	#region KSSU
	global.hatPaletteStoneKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteStoneKSSUBitcrushedUnlocked",false);
	#endregion
	
	#region Modern
	global.hatPaletteStoneModernMoltenRockUnlocked = ini_read_real("unlocks","hatPaletteStoneModernMoltenRockUnlocked",false);
	global.hatPaletteStoneModernBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteStoneModernBitcrushedUnlocked",false);
	global.hatPaletteStoneModernCryingCobblestoneUnlocked = ini_read_real("unlocks","hatPaletteStoneModernCryingCobblestoneUnlocked",false);
	global.hatPaletteStoneModernTheBronzeJadeUnlocked = ini_read_real("unlocks","hatPaletteStoneModernTheBronzeJadeUnlocked",false);
	#endregion
	#endregion
	
	#region Mirror
	global.hatTypeMirrorModernUnlocked = ini_read_real("unlocks","hatTypeMirrorModernUnlocked",false);
	
	#region KSSU
	global.hatPaletteMirrorKSSUBetaBlockUnlocked = ini_read_real("unlocks","hatPaletteMirrorKSSUBetaBlockUnlocked",false);
	global.hatPaletteMirrorKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteMirrorKSSUBitcrushedUnlocked",false);
	#endregion
	
	#region Modern
	global.hatPaletteMirrorModernBetaBlockUnlocked = ini_read_real("unlocks","hatPaletteMirrorModernBetaBlockUnlocked",false);
	global.hatPaletteMirrorModernBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteMirrorModernBitcrushedUnlocked",false);
	#endregion
	#endregion
	
	#region Ninja
	global.hatTypeNinjaModernUnlocked = ini_read_real("unlocks","hatTypeNinjaModernUnlocked",false);
	global.hatTypeNinjaSamuraiUnlocked = ini_read_real("unlocks","hatTypeNinjaSamuraiUnlocked",false);
	
	#region KSSU
	global.hatPaletteNinjaKSSUSilverLinedWarriorUnlocked = ini_read_real("unlocks","hatPaletteNinjaKSSUSilverLinedWarriorUnlocked",false);
	global.hatPaletteNinjaKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteNinjaKSSUBitcrushedUnlocked",false);
	#endregion
	
	#region Modern
	global.hatPaletteNinjaModernBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteNinjaModernBitcrushedUnlocked",false);
	global.hatPaletteNinjaModernViridianAmbushUnlocked = ini_read_real("unlocks","hatPaletteNinjaModernViridianAmbushUnlocked",false);
	#endregion
	
	#region Samurai
	#endregion
	global.hatPaletteNinjaSamuraiClassicRedUnlocked = ini_read_real("unlocks","hatPaletteNinjaSamuraiClassicRedUnlocked",false);
	global.hatPaletteNinjaSamuraiDarkBrownUnlocked = ini_read_real("unlocks","hatPaletteNinjaSamuraiDarkBrownUnlocked",false);
	global.hatPaletteNinjaSamuraiRipperBlondUnlocked = ini_read_real("unlocks","hatPaletteNinjaSamuraiRipperBlondUnlocked",false);
	#endregion
	
	#region Bomb
	global.hatTypeBombModernUnlocked = ini_read_real("unlocks","hatTypeBombModernUnlocked",false);
	
	#region KSSU
	global.hatPaletteBombKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteBombKSSUBitcrushedUnlocked",false);
	global.hatPaletteBombKSSUBloomingPoppyUnlocked = ini_read_real("unlocks","hatPaletteBombKSSUBloomingPoppyUnlocked",false);
	#endregion
	
	#region Modern
	global.hatPaletteBombModernBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteBombModernBitcrushedUnlocked",false);
	global.hatPaletteBombModernOutburstingConspiracyUnlocked = ini_read_real("unlocks","hatPaletteBombModernOutburstingConspiracyUnlocked",false);
	global.hatPaletteBombModernDragonsCastleUnlocked = ini_read_real("unlocks","hatPaletteBombModernDragonsCastleUnlocked",false);
	#endregion
	#endregion
	
	#region Fire
	#region KSSU
	global.hatPaletteFireKSSUBlazingBlueUnlocked = ini_read_real("unlocks","hatPaletteFireKSSUBlazingBlueUnlocked",false);
	global.hatPaletteFireKSSUFluxNostalgiaUnlocked = ini_read_real("unlocks","hatPaletteFireKSSUFluxNostalgiaUnlocked",false);
	global.hatPaletteFireKSSUScarletRoseUnlocked = ini_read_real("unlocks","hatPaletteFireKSSUScarletRoseUnlocked",false);
	global.hatPaletteFireKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteFireKSSUBitcrushedUnlocked",false);
	global.hatPaletteFireKSSUNuclearMeltdownUnlocked = ini_read_real("unlocks","hatPaletteFireKSSUNuclearMeltdownUnlocked",false);
	global.hatPaletteFireKSSUMidnightInfernoUnlocked = ini_read_real("unlocks","hatPaletteFireKSSUMidnightInfernoUnlocked",false);
	global.hatPaletteFireKSSUHotPinkUnlocked = ini_read_real("unlocks","hatPaletteFireKSSUHotPinkUnlocked",false);
	#endregion
	#endregion
	
	#region Ice
	global.hatTypeBombSnowmanUnlocked = ini_read_real("unlocks","hatTypeBombSnowmanUnlocked",false);
	
	#region KSSU
	global.hatPaletteIceKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteIceKSSUBitcrushedUnlocked",false);
	global.hatPaletteIceKSSUFrostyObsidianUnlocked = ini_read_real("unlocks","hatPaletteIceKSSUFrostyObsidianUnlocked",false);
	global.hatPaletteIceKSSUFluxNostalgiaUnlocked = ini_read_real("unlocks","hatPaletteIceKSSUFluxNostalgiaUnlocked",false);
	#endregion
	
	#region Snowman
	global.hatPaletteIceSnowmanBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteIceSnowmanBitcrushedUnlocked",false);
	global.hatPaletteIceSnowmanChocolateMousseUnlocked = ini_read_real("unlocks","hatPaletteIceSnowmanChocolateMousseUnlocked",false);
	global.hatPaletteIceSnowmanStrawberryCreamUnlocked = ini_read_real("unlocks","hatPaletteIceSnowmanStrawberryCreamUnlocked",false);
	#endregion
	#endregion
	
	#region Spark
	#region KSSU
	global.hatPaletteSparkKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteSparkKSSUBitcrushedUnlocked",false);
	#endregion
	#endregion
	
	#region Yoyo
	#region KSSU
	global.hatPaletteYoyoKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteYoyoKSSUBitcrushedUnlocked",false);
	#endregion
	#endregion
	
	#region Wheel
	#region KSSU
	global.hatPaletteWheelKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteWheelKSSUBitcrushedUnlocked",false);
	global.hatPaletteWheelKSSUMufflerBlueUnlocked = ini_read_real("unlocks","hatPaletteWheelKSSUMufflerBlueUnlocked",false);
	global.hatPaletteWheelKSSUFluxNostalgiaUnlocked = ini_read_real("unlocks","hatPaletteWheelKSSUFluxNostalgiaUnlocked",false);
	#endregion
	#endregion
	
	#region Artist
	#region KSSU
	global.hatPaletteArtistKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteArtistKSSUBitcrushedUnlocked",false);
	#endregion
	#endregion
	
	#region Fighter
	#region KSSU
	global.hatPaletteFighterKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteFighterKSSUBitcrushedUnlocked",false);
	#endregion
	#endregion
	
	#region Suplex
	global.hatTypeSuplexBuggzyUnlocked = ini_read_real("unlocks","hatTypeSuplexBuggzyUnlocked",false);
	
	#region KSSU
	global.hatPaletteSuplexKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteSuplexKSSUBitcrushedUnlocked",false);
	#endregion
	
	#region KSSU
	global.hatPaletteSuplexBuggzyBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteSuplexBuggzyBitcrushedUnlocked",false);
	#endregion
	#endregion
	
	#region Wing
	#region KSSU
	global.hatPaletteWingKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteWingKSSUBitcrushedUnlocked",false);
	global.hatPaletteWingKSSUPekinBreezeUnlocked = ini_read_real("unlocks","hatPaletteWingKSSUPekinBreezeUnlocked",false);
	global.hatPaletteWingKSSUDynaBladeUnlocked = ini_read_real("unlocks","hatPaletteWingKSSUDynaBladeUnlocked",false);
	global.hatPaletteWingKSSUNocturneFriendUnlocked = ini_read_real("unlocks","hatPaletteWingKSSUNocturneFriendUnlocked",false);
	#endregion
	#endregion
	
	#region Jet
	#region KSSU
	global.hatPaletteJetKSSUSpeedyScarletUnlocked = ini_read_real("unlocks","hatPaletteJetKSSUSpeedyScarletUnlocked",false);
	global.hatPaletteJetKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteJetKSSUBitcrushedUnlocked",false);
	global.hatPaletteJetKSSULavender01Unlocked = ini_read_real("unlocks","hatPaletteJetKSSULavender01Unlocked",false);
	global.hatPaletteJetKSSUFluxNostalgiaUnlocked = ini_read_real("unlocks","hatPaletteJetKSSUFluxNostalgiaUnlocked",false);
	#endregion
	#endregion
	
	#region Sword
	#region KSSU
	global.hatPaletteSwordKSSUThunderingCloudUnlocked = ini_read_real("unlocks","hatPaletteSwordKSSUThunderingCloudUnlocked",false);
	global.hatPaletteSwordKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteSwordKSSUBitcrushedUnlocked",false);
	global.hatPaletteSwordKSSUFluxNostalgiaUnlocked = ini_read_real("unlocks","hatPaletteSwordKSSUFluxNostalgiaUnlocked",false);
	#endregion
	#endregion
	
	#region Parasol
	#region KSSU
	global.hatPaletteParasolKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteParasolKSSUBitcrushedUnlocked",false);
	global.hatPaletteParasolKSSUWagasaDeeUnlocked = ini_read_real("unlocks","hatPaletteParasolKSSUWagasaDeeUnlocked",false);
	global.hatPaletteParasolKSSUAzureBandannaUnlocked = ini_read_real("unlocks","hatPaletteParasolKSSUAzureBandannaUnlocked",false);
	#endregion
	#endregion
	
	#region Hammer
	#region KSSU
	global.hatPaletteHammerKSSUConstructionWorkUnlocked = ini_read_real("unlocks","hatPaletteHammerKSSUConstructionWorkUnlocked",false);
	global.hatPaletteHammerKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteHammerKSSUBitcrushedUnlocked",false);
	global.hatPaletteHammerKSSUFluxNostalgiaUnlocked = ini_read_real("unlocks","hatPaletteHammerKSSUFluxNostalgiaUnlocked",false);
	#endregion
	#endregion
	
	#region Bell
	#region Modern
	global.hatPaletteBellModernPrestoPurpleUnlocked = ini_read_real("unlocks","hatPaletteBellModernPrestoPurpleUnlocked",false);
	global.hatPaletteBellModernTempoTealUnlocked = ini_read_real("unlocks","hatPaletteBellModernTempoTealUnlocked",false);
	global.hatPaletteBellModernRingingRoseUnlocked = ini_read_real("unlocks","hatPaletteBellModernRingingRoseUnlocked",false);
	global.hatPaletteBellModernCandescentCopperUnlocked = ini_read_real("unlocks","hatPaletteBellModernCandescentCopperUnlocked",false);
	global.hatPaletteBellModernShiningSilverUnlocked = ini_read_real("unlocks","hatPaletteBellModernShiningSilverUnlocked",false);
	global.hatPaletteBellModernPolishedPlantUnlocked = ini_read_real("unlocks","hatPaletteBellModernPolishedPlantUnlocked",false);
	global.hatPaletteBellModernIlluminatedIvoryUnlocked = ini_read_real("unlocks","hatPaletteBellModernIlluminatedIvoryUnlocked",false);
	global.hatPaletteBellModernBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteBellModernBitcrushedUnlocked",false);
	#endregion
	#endregion
	
	#region Sleep
	#region KSSU
	global.hatPaletteSleepKSSUNoddyPeachUnlocked = ini_read_real("unlocks","hatPaletteSleepKSSUNoddyPeachUnlocked",false);
	global.hatPaletteSleepKSSURoyalPurpleUnlocked = ini_read_real("unlocks","hatPaletteSleepKSSURoyalPurpleUnlocked",false);
	global.hatPaletteSleepKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteSleepKSSUBitcrushedUnlocked",false);
	#endregion
	#endregion
	
	#region Scan
	#region KSSU
	global.hatPaletteScanKSSUBitcrushedUnlocked = ini_read_real("unlocks","hatPaletteScanKSSUBitcrushedUnlocked",false);
	global.hatPaletteScanKSSUMilitaryGreenUnlocked = ini_read_real("unlocks","hatPaletteScanKSSUMilitaryGreenUnlocked",false);
	#endregion
	#endregion
	#endregion
	
	global.gambleFamiliarUnlocked = ini_read_real("unlocks","gambleFamiliarUnlocked",false);
	global.gambleFamiliarLevel = ini_read_real("unlocks","gambleFamiliarLevel",1);
	global.gambleFamiliarExp = ini_read_real("unlocks","gambleFamiliarExp",0);
	global.happyPeaFamiliarUnlocked = ini_read_real("unlocks","happyPeaFamiliarUnlocked",false);
	global.happyPeaFamiliarLevel = ini_read_real("unlocks","happyPeaFamiliarLevel",1);
	global.happyPeaFamiliarExp = ini_read_real("unlocks","happyPeaFamiliarExp",0);
	global.epicJarFamiliarUnlocked = ini_read_real("unlocks","epicJarFamiliarUnlocked",false);
	global.epicJarFamiliarLevel = ini_read_real("unlocks","epicJarFamiliarLevel",1);
	global.epicJarFamiliarExp = ini_read_real("unlocks","epicJarFamiliarExp",0);
	global.krackleFamiliarUnlocked = ini_read_real("unlocks","krackleFamiliarUnlocked",false);
	global.krackleFamiliarLevel = ini_read_real("unlocks","krackleFamiliarLevel",1);
	global.krackleFamiliarExp = ini_read_real("unlocks","krackleFamiliarExp",0);
	global.omegaMatterFamiliarUnlocked = ini_read_real("unlocks","omegaMatterFamiliarUnlocked",false);
	global.omegaMatterFamiliarLevel = ini_read_real("unlocks","omegaMatterFamiliarLevel",1);
	global.omegaMatterFamiliarExp = ini_read_real("unlocks","omegaMatterFamiliarExp",0);
	
	global.cutterMotorCutterUpgradeUnlocked = ini_read_real("unlocks","cutterMotorCutterUpgradeUnlocked",false);
	global.cutterPropellerWingUpgradeUnlocked = ini_read_real("unlocks","cutterPropellerWingUpgradeUnlocked",false);
	global.cutterSpectralCutterUpgradeUnlocked = ini_read_real("unlocks","cutterSpectralCutterUpgradeUnlocked",false);
	global.beamGoldenFlareUpgradeUnlocked = ini_read_real("unlocks","beamGoldenFlareUpgradeUnlocked",false);
	global.mysticBeamVortexInAJarUpgradeUnlocked = ini_read_real("unlocks","mysticBeamVortexInAJarUpgradeUnlocked",false);
	global.stoneRockCandyUpgradeUnlocked = ini_read_real("unlocks","stoneRockCandyUpgradeUnlocked",false);
	global.stoneComboCobaltUpgradeUnlocked = ini_read_real("unlocks","stoneComboCobaltUpgradeUnlocked",false);
	global.stonePsychicPebbleUpgradeUnlocked = ini_read_real("unlocks","stonePsychicPebbleUpgradeUnlocked",false);
	global.ufoCowDollUpgradeUnlocked = ini_read_real("unlocks","ufoCowDollUpgradeUnlocked",false);
	global.bombLightShellsUpgradeUnlocked = ini_read_real("unlocks","bombLightShellsUpgradeUnlocked",false);
	global.bombEyeBombUpgradeUnlocked = ini_read_real("unlocks","bombEyeBombUpgradeUnlocked",false);
	global.bombStickyBombUpgradeUnlocked = ini_read_real("unlocks","bombStickyBombUpgradeUnlocked",false);
	global.bombMagmaBombUpgradeUnlocked = ini_read_real("unlocks","bombMagmaBombUpgradeUnlocked",false);
	global.bombIceBombUpgradeUnlocked = ini_read_real("unlocks","bombIceBombUpgradeUnlocked",false);
	global.bombExplosivePowderUpgradeUnlocked = ini_read_real("unlocks","bombExplosivePowderUpgradeUnlocked",false);
	global.fireMagicCharcoalUpgradeUnlocked = ini_read_real("unlocks","fireMagicCharcoalUpgradeUnlocked",false);
	global.iceEmptyConeUpgradeUnlocked = ini_read_real("unlocks","iceEmptyConeUpgradeUnlocked",false);
	global.sparkBrightPluggUpgradeUnlocked = ini_read_real("unlocks","sparkBrightPluggUpgradeUnlocked",false);
	global.parasolWaddleBrellaUpgradeUnlocked = ini_read_real("unlocks","parasolWaddleBrellaUpgradeUnlocked",false);
	global.waterEggSoilUpgradeUnlocked = ini_read_real("unlocks","waterEggSoilUpgradeUnlocked",false);
	
	global.cheatLifelessUnlocked = ini_read_real("cheats","cheatLifelessUnlocked",false);
	global.cheatStarstormUnlocked = ini_read_real("cheats","cheatStarstormUnlocked",false);
	global.cheatFlipsideUnlocked = ini_read_real("cheats","cheatFlipsideUnlocked",false);
	global.cheatGamerBoyUnlocked = ini_read_real("cheats","cheatGamerBoyUnlocked",false);
	global.cheatEyeBleachUnlocked = ini_read_real("cheats","cheatEyeBleachUnlocked",false);
	global.cheatAwaitingForTheNewMoonUnlocked = ini_read_real("cheats","cheatAwaitingForTheNewMoonUnlocked",false);
	global.cheatGatherBattleUnlocked = ini_read_real("cheats","cheatGatherBattleUnlocked",false);
	global.cheatFashionableUnlocked = ini_read_real("cheats","cheatFashionableUnlocked",false);
	global.cheatStrimpsDinerUnlocked = ini_read_real("cheats","cheatStrimpsDinerUnlocked",false);
	
	global.bestiaryEnemiesWaddleDeeUnlocked = ini_read_real("unlocks","bestiaryEnemiesWaddleDeeUnlocked",false);
	global.bestiaryEnemiesWaddleDooUnlocked = ini_read_real("unlocks","bestiaryEnemiesWaddleDooUnlocked",false);
	global.bestiaryEnemiesBrontoBurtUnlocked = ini_read_real("unlocks","bestiaryEnemiesBrontoBurtUnlocked",false);
	global.bestiaryEnemiesTwizzyUnlocked = ini_read_real("unlocks","bestiaryEnemiesTwizzyUnlocked",false);
	global.bestiaryEnemiesTookeyUnlocked = ini_read_real("unlocks","bestiaryEnemiesTookeyUnlocked",false);
	global.bestiaryEnemiesSirKibbleUnlocked = ini_read_real("unlocks","bestiaryEnemiesSirKibbleUnlocked",false);
	global.bestiaryEnemiesGordoUnlocked = ini_read_real("unlocks","bestiaryEnemiesGordoUnlocked",false);
	global.bestiaryEnemiesBloodGordoUnlocked = ini_read_real("unlocks","bestiaryEnemiesBloodGordoUnlocked",false);
	global.bestiaryEnemiesGhostGordoUnlocked = ini_read_real("unlocks","bestiaryEnemiesGhostGordoUnlocked",false);
	global.bestiaryEnemiesShotzoUnlocked = ini_read_real("unlocks","bestiaryEnemiesShotzoUnlocked",false);
	global.bestiaryEnemiesMysticDooUnlocked = ini_read_real("unlocks","bestiaryEnemiesMysticDooUnlocked",false);
	global.bestiaryEnemiesBouncyUnlocked = ini_read_real("unlocks","bestiaryEnemiesBouncyUnlocked",false);
	global.bestiaryEnemiesMrBoogieUnlocked = ini_read_real("unlocks","bestiaryEnemiesMrBoogieUnlocked",false);
	global.bestiaryEnemiesSearchesUnlocked = ini_read_real("unlocks","bestiaryEnemiesSearchesUnlocked",false);
	global.bestiaryEnemiesHiveDroneUnlocked = ini_read_real("unlocks","bestiaryEnemiesHiveDroneUnlocked",false);
	global.bestiaryEnemiesWapodUnlocked = ini_read_real("unlocks","bestiaryEnemiesWapodUnlocked",false);
	global.bestiaryEnemiesFlamebelchUnlocked = ini_read_real("unlocks","bestiaryEnemiesFlamebelchUnlocked",false);
	global.bestiaryEnemiesCappyUnlocked = ini_read_real("unlocks","bestiaryEnemiesCappyUnlocked",false);
	global.bestiaryEnemiesBroomHatterUnlocked = ini_read_real("unlocks","bestiaryEnemiesBroomHatterUnlocked",false);
	global.bestiaryEnemiesCoconutUnlocked = ini_read_real("unlocks","bestiaryEnemiesCoconutUnlocked",false);
	global.bestiaryEnemiesNoddyUnlocked = ini_read_real("unlocks","bestiaryEnemiesNoddyUnlocked",false);
	global.bestiaryEnemiesBladoUnlocked = ini_read_real("unlocks","bestiaryEnemiesBladoUnlocked",false);
	global.bestiaryEnemiesScarfyUnlocked = ini_read_real("unlocks","bestiaryEnemiesScarfyUnlocked",false);
	global.bestiaryEnemiesRockyUnlocked = ini_read_real("unlocks","bestiaryEnemiesRockyUnlocked",false);
	global.bestiaryEnemiesGrizzoUnlocked = ini_read_real("unlocks","bestiaryEnemiesGrizzoUnlocked",false);
	global.bestiaryEnemiesJungleBombUnlocked = ini_read_real("unlocks","bestiaryEnemiesJungleBombUnlocked",false);
	global.bestiaryEnemiesGlunkUnlocked = ini_read_real("unlocks","bestiaryEnemiesGlunkUnlocked",false);
	global.bestiaryEnemiesKabuUnlocked = ini_read_real("unlocks","bestiaryEnemiesKabuUnlocked",false);
	global.bestiaryEnemiesBurningLeoUnlocked = ini_read_real("unlocks","bestiaryEnemiesBurningLeoUnlocked",false);
	global.bestiaryEnemiesTomatooUnlocked = ini_read_real("unlocks","bestiaryEnemiesTomatooUnlocked",false);
	global.bestiaryEnemiesOnionUnlocked = ini_read_real("unlocks","bestiaryEnemiesOnionUnlocked",false);
	global.bestiaryEnemiesAnemoneeUnlocked = ini_read_real("unlocks","bestiaryEnemiesAnemoneeUnlocked",false);
	global.bestiaryEnemiesGimUnlocked = ini_read_real("unlocks","bestiaryEnemiesGimUnlocked",false);
	global.bestiaryEnemiesPoppyBrosJrUnlocked = ini_read_real("unlocks","bestiaryEnemiesPoppyBrosJrUnlocked",false);
	global.bestiaryEnemiesBoboUnlocked = ini_read_real("unlocks","bestiaryEnemiesBoboUnlocked",false);
	global.bestiaryEnemiesFoleyUnlocked = ini_read_real("unlocks","bestiaryEnemiesFoleyUnlocked",false);
	global.bestiaryEnemiesNidooUnlocked = ini_read_real("unlocks","bestiaryEnemiesNidooUnlocked",false);
	global.bestiaryEnemiesComoUnlocked = ini_read_real("unlocks","bestiaryEnemiesComoUnlocked",false);
	global.bestiaryEnemiesCairnUnlocked = ini_read_real("unlocks","bestiaryEnemiesCairnUnlocked",false);
	global.bestiaryEnemiesBomberUnlocked = ini_read_real("unlocks","bestiaryEnemiesBomberUnlocked",false);
	global.bestiaryEnemiesSimirrorUnlocked = ini_read_real("unlocks","bestiaryEnemiesSimirrorUnlocked",false);
	global.bestiaryEnemiesGimUnlocked = ini_read_real("unlocks","bestiaryEnemiesGimUnlocked",false);
	global.bestiaryEnemiesHotheadUnlocked = ini_read_real("unlocks","bestiaryEnemiesHotheadUnlocked",false);
	global.bestiaryEnemiesSparkyUnlocked = ini_read_real("unlocks","bestiaryEnemiesSparkyUnlocked",false);
	global.bestiaryEnemiesYolkyUnlocked = ini_read_real("unlocks","bestiaryEnemiesYolkyUnlocked",false);
	global.bestiaryEnemiesWheelieUnlocked = ini_read_real("unlocks","bestiaryEnemiesWheelieUnlocked",false);
	global.bestiaryEnemiesPacloudUnlocked = ini_read_real("unlocks","bestiaryEnemiesPacloudUnlocked",false);
	global.bestiaryEnemiesLaserBallUnlocked = ini_read_real("unlocks","bestiaryEnemiesLaserBallUnlocked",false);
	global.bestiaryEnemiesJackleUnlocked = ini_read_real("unlocks","bestiaryEnemiesJackleUnlocked",false);
	global.bestiaryEnemiesKooklerUnlocked = ini_read_real("unlocks","bestiaryEnemiesKooklerUnlocked",false);
	global.bestiaryEnemiesUfoUnlocked = ini_read_real("unlocks","bestiaryEnemiesUfoUnlocked",false);
	global.bestiaryEnemiesBouncySisUnlocked = ini_read_real("unlocks","bestiaryEnemiesBouncySisUnlocked",false);
	global.bestiaryEnemiesFlamerUnlocked = ini_read_real("unlocks","bestiaryEnemiesFlamerUnlocked",false);
	global.bestiaryEnemiesChuckieUnlocked = ini_read_real("unlocks","bestiaryEnemiesChuckieUnlocked",false);
	global.bestiaryEnemiesWalkyUnlocked = ini_read_real("unlocks","bestiaryEnemiesWalkyUnlocked",false);
	global.bestiaryEnemiesMysticBlockUnlocked = ini_read_real("unlocks","bestiaryEnemiesMysticBlockUnlocked",false);
	global.bestiaryEnemiesLovelyUnlocked = ini_read_real("unlocks","bestiaryEnemiesLovelyUnlocked",false);
	global.bestiaryEnemiesPlasmaWispUnlocked = ini_read_real("unlocks","bestiaryEnemiesPlasmaWispUnlocked",false);
	global.bestiaryEnemiesCapsuleJ2Unlocked = ini_read_real("unlocks","bestiaryEnemiesCapsuleJ2Unlocked",false);
	global.bestiaryEnemiesCeruleanUnlocked = ini_read_real("unlocks","bestiaryEnemiesCeruleanUnlocked",false);
	global.bestiaryEnemiesWizzerUnlocked = ini_read_real("unlocks","bestiaryEnemiesWizzerUnlocked",false);
	global.bestiaryEnemiesMopooUnlocked = ini_read_real("unlocks","bestiaryEnemiesMopooUnlocked",false);
	global.bestiaryEnemiesGolemUnlocked = ini_read_real("unlocks","bestiaryEnemiesGolemUnlocked",false);
	
	global.skinKirbyP1 = ini_read_string("playerCustomization","skinKirbyP1","normal");
	global.skinGambleP1 = ini_read_string("playerCustomization","skinGambleP1","normal");
	global.skinGooeyP1 = ini_read_string("playerCustomization","skinGooeyP1","normal");
	global.skinMetaKnightP1 = ini_read_string("playerCustomization","skinMetaKnightP1","normal");
	global.skinMagolorP1 = ini_read_string("playerCustomization","skinMagolorP1","normal");
	
	global.skinKirbyP2 = ini_read_string("playerCustomization","skinKirbyP2","normal");
	global.skinGambleP2 = ini_read_string("playerCustomization","skinGambleP2","normal");
	global.skinGooeyP2 = ini_read_string("playerCustomization","skinGooeyP2","normal");
	global.skinMetaKnightP2 = ini_read_string("playerCustomization","skinMetaKnightP2","normal");
	global.skinMagolorP2 = ini_read_string("playerCustomization","skinMagolorP2","normal");
	
	global.skinKirbyP3 = ini_read_string("playerCustomization","skinKirbyP3","normal");
	global.skinGambleP3 = ini_read_string("playerCustomization","skinGambleP3","normal");
	global.skinGooeyP3 = ini_read_string("playerCustomization","skinGooeyP3","normal");
	global.skinMetaKnightP3 = ini_read_string("playerCustomization","skinMetaKnightP3","normal");
	global.skinMagolorP3 = ini_read_string("playerCustomization","skinMagolorP3","normal");
	
	global.skinKirbyP4 = ini_read_string("playerCustomization","skinKirbyP4","normal");
	global.skinGambleP4 = ini_read_string("playerCustomization","skinGambleP4","normal");
	global.skinGooeyP4 = ini_read_string("playerCustomization","skinGooeyP4","normal");
	global.skinMetaKnightP4 = ini_read_string("playerCustomization","skinMetaKnightP4","normal");
	global.skinMagolorP4 = ini_read_string("playerCustomization","skinMagolorP4","normal");
	
	global.sprayPaintKirbyP1 = ini_read_real("playerCustomization","sprayPaintKirbyP1",playerSprayPaints.friendlyPink);
	global.sprayPaintGambleP1 = ini_read_real("playerCustomization","sprayPaintGambleP1",playerSprayPaints.unearthlyHand);
	global.sprayPaintGooeyP1 = ini_read_real("playerCustomization","sprayPaintGooeyP1",playerSprayPaints.gooeyBlue);
	global.sprayPaintMetaKnightP1 = ini_read_real("playerCustomization","sprayPaintMetaKnightP1",playerSprayPaints.soMeta);
	global.sprayPaintMagolorP1 = ini_read_real("playerCustomization","sprayPaintMagolorP1",playerSprayPaints.eggBrown);
	
	global.sprayPaintKirbyP2 = ini_read_real("playerCustomization","sprayPaintKirbyP2",playerSprayPaints.yellow);
	global.sprayPaintGambleP2 = ini_read_real("playerCustomization","sprayPaintGambleP2",playerSprayPaints.yellow);
	global.sprayPaintGooeyP2 = ini_read_real("playerCustomization","sprayPaintGooeyP2",playerSprayPaints.yellow);
	global.sprayPaintMetaKnightP2 = ini_read_real("playerCustomization","sprayPaintMetaKnightP2",playerSprayPaints.yellow);
	global.sprayPaintMagolorP2 = ini_read_real("playerCustomization","sprayPaintMagolorP2",playerSprayPaints.yellow);
	
	global.sprayPaintKirbyP3 = ini_read_real("playerCustomization","sprayPaintKirbyP3",playerSprayPaints.red);
	global.sprayPaintGambleP3 = ini_read_real("playerCustomization","sprayPaintGambleP3",playerSprayPaints.red);
	global.sprayPaintGooeyP3 = ini_read_real("playerCustomization","sprayPaintGooeyP3",playerSprayPaints.red);
	global.sprayPaintMetaKnightP3 = ini_read_real("playerCustomization","sprayPaintMetaKnightP3",playerSprayPaints.red);
	global.sprayPaintMagolorP3 = ini_read_real("playerCustomization","sprayPaintMagolorP3",playerSprayPaints.red);
	
	global.sprayPaintKirbyP4 = ini_read_real("playerCustomization","sprayPaintKirbyP4",playerSprayPaints.green);
	global.sprayPaintGambleP4 = ini_read_real("playerCustomization","sprayPaintGambleP4",playerSprayPaints.green);
	global.sprayPaintGooeyP4 = ini_read_real("playerCustomization","sprayPaintGooeyP4",playerSprayPaints.green);
	global.sprayPaintMetaKnightP4 = ini_read_real("playerCustomization","sprayPaintMetaKnightP4",playerSprayPaints.green);
	global.sprayPaintMagolorP4 = ini_read_real("playerCustomization","sprayPaintMagolorP4",playerSprayPaints.green);
	
	global.characterP1 = ini_read_real("playerCustomization","characterP1",playerCharacters.kirby);
	global.isHelperP1 = ini_read_real("playerCustomization","isHelperP1",false);
	global.familiarP1 = ini_read_real("playerCustomization","familiarP1",familiars.none);
	
	global.characterP2 = ini_read_real("playerCustomization","characterP2",playerCharacters.kirby);
	global.isHelperP2 = ini_read_real("playerCustomization","isHelperP2",false);
	global.familiarP2 = ini_read_real("playerCustomization","familiarP2",familiars.none);
	
	global.characterP3 = ini_read_real("playerCustomization","characterP3",playerCharacters.kirby);
	global.isHelperP3 = ini_read_real("playerCustomization","isHelperP3",false);
	global.familiarP3 = ini_read_real("playerCustomization","familiarP3",familiars.none);
	
	global.characterP4 = ini_read_real("playerCustomization","characterP4",playerCharacters.kirby);
	global.isHelperP4 = ini_read_real("playerCustomization","isHelperP4",false);
	global.familiarP4 = ini_read_real("playerCustomization","familiarP4",familiars.none);
	
	global.hatTypeCutterP1 = ini_read_real("playerCustomization","hatTypeCutterP1",abilityHatSkins.cutter_kssu);
	global.hatTypeBeamP1 = ini_read_real("playerCustomization","hatTypeBeamP1",abilityHatSkins.beam_kssu);
	global.hatTypeMysticBeamP1 = ini_read_real("playerCustomization","hatTypeMysticBeamP1",abilityHatSkins.mysticBeam_ggs);
	global.hatTypeStoneP1 = ini_read_real("playerCustomization","hatTypeStoneP1",abilityHatSkins.stone_kssu);
	global.hatTypeUfoP1 = ini_read_real("playerCustomization","hatTypeUfoP1",abilityHatSkins.ufo_modern);
	global.hatTypeMirrorP1 = ini_read_real("playerCustomization","hatTypeMirrorP1",abilityHatSkins.mirror_kssu);
	global.hatTypeNinjaP1 = ini_read_real("playerCustomization","hatTypeNinjaP1",abilityHatSkins.ninja_kssu);
	global.hatTypeBombP1 = ini_read_real("playerCustomization","hatTypeBombP1",abilityHatSkins.bomb_kssu);
	global.hatTypeFireP1 = ini_read_real("playerCustomization","hatTypeFireP1",abilityHatSkins.fire_kssu);
	global.hatTypeIceP1 = ini_read_real("playerCustomization","hatTypeIceP1",abilityHatSkins.ice_kssu);
	global.hatTypeSparkP1 = ini_read_real("playerCustomization","hatTypeSparkP1",abilityHatSkins.spark_kssu);
	global.hatTypeYoyoP1 = ini_read_real("playerCustomization","hatTypeYoyoP1",abilityHatSkins.yoyo_kssu);
	global.hatTypeWheelP1 = ini_read_real("playerCustomization","hatTypeWheelP1",abilityHatSkins.wheel_kssu);
	global.hatTypeArtistP1 = ini_read_real("playerCustomization","hatTypeArtistP1",abilityHatSkins.artist_kssu);
	global.hatTypeFighterP1 = ini_read_real("playerCustomization","hatTypeFighterP1",abilityHatSkins.fighter_kssu);
	global.hatTypeSuplexP1 = ini_read_real("playerCustomization","hatTypeSuplexP1",abilityHatSkins.suplex_kssu);
	global.hatTypeWingP1 = ini_read_real("playerCustomization","hatTypeWingP1",abilityHatSkins.wing_kssu);
	global.hatTypeJetP1 = ini_read_real("playerCustomization","hatTypeJetP1",abilityHatSkins.jet_kssu);
	global.hatTypeSwordP1 = ini_read_real("playerCustomization","hatTypeSwordP1",abilityHatSkins.sword_kssu);
	global.hatTypeParasolP1 = ini_read_real("playerCustomization","hatTypeParasolP1",abilityHatSkins.parasol_kssu);
	global.hatTypeHammerP1 = ini_read_real("playerCustomization","hatTypeHammerP1",abilityHatSkins.hammer_kssu);
	global.hatTypeBellP1 = ini_read_real("playerCustomization","hatTypeBellP1",abilityHatSkins.bell_modern);
	global.hatTypeWaterP1 = ini_read_real("playerCustomization","hatTypeWaterP1",abilityHatSkins.water_modern);
	global.hatTypeSleepP1 = ini_read_real("playerCustomization","hatTypeSleepP1",abilityHatSkins.sleep_kssu);
	global.hatTypeScanP1 = ini_read_real("playerCustomization","hatTypeScanP1",abilityHatSkins.scan_kssu);
	global.hatTypeCrashP1 = ini_read_real("playerCustomization","hatTypeCrashP1",abilityHatSkins.crash_kssu);
	global.hatTypeMicP1 = ini_read_real("playerCustomization","hatTypeMicP1",abilityHatSkins.mic_kssu);
	global.hatTypeSuplexP1 = abilityHatSkins.suplex_buggzy;
	
	global.hatTypeCutterP2 = ini_read_real("playerCustomization","hatTypeCutterP2",abilityHatSkins.cutter_kssu);
	global.hatTypeBeamP2 = ini_read_real("playerCustomization","hatTypeBeamP2",abilityHatSkins.beam_kssu);
	global.hatTypeMysticBeamP2 = ini_read_real("playerCustomization","hatTypeMysticBeamP2",abilityHatSkins.mysticBeam_ggs);
	global.hatTypeStoneP2 = ini_read_real("playerCustomization","hatTypeStoneP2",abilityHatSkins.stone_kssu);
	global.hatTypeUfoP2 = ini_read_real("playerCustomization","hatTypeUfoP2",abilityHatSkins.ufo_modern);
	global.hatTypeMirrorP2 = ini_read_real("playerCustomization","hatTypeMirrorP2",abilityHatSkins.mirror_kssu);
	global.hatTypeNinjaP2 = ini_read_real("playerCustomization","hatTypeNinjaP2",abilityHatSkins.ninja_kssu);
	global.hatTypeBombP2 = ini_read_real("playerCustomization","hatTypeBombP2",abilityHatSkins.bomb_kssu);
	global.hatTypeFireP2 = ini_read_real("playerCustomization","hatTypeFireP2",abilityHatSkins.fire_kssu);
	global.hatTypeIceP2 = ini_read_real("playerCustomization","hatTypeIceP2",abilityHatSkins.ice_kssu);
	global.hatTypeSparkP2 = ini_read_real("playerCustomization","hatTypeSparkP2",abilityHatSkins.spark_kssu);
	global.hatTypeYoyoP2 = ini_read_real("playerCustomization","hatTypeYoyoP2",abilityHatSkins.yoyo_kssu);
	global.hatTypeWheelP2 = ini_read_real("playerCustomization","hatTypeWheelP2",abilityHatSkins.wheel_kssu);
	global.hatTypeArtistP2 = ini_read_real("playerCustomization","hatTypeArtistP2",abilityHatSkins.artist_kssu);
	global.hatTypeFighterP2 = ini_read_real("playerCustomization","hatTypeFighterP2",abilityHatSkins.fighter_kssu);
	global.hatTypeSuplexP2 = ini_read_real("playerCustomization","hatTypeSuplexP2",abilityHatSkins.suplex_kssu);
	global.hatTypeWingP2 = ini_read_real("playerCustomization","hatTypeWingP2",abilityHatSkins.wing_kssu);
	global.hatTypeJetP2 = ini_read_real("playerCustomization","hatTypeJetP2",abilityHatSkins.jet_kssu);
	global.hatTypeSwordP2 = ini_read_real("playerCustomization","hatTypeSwordP2",abilityHatSkins.sword_kssu);
	global.hatTypeParasolP2 = ini_read_real("playerCustomization","hatTypeParasolP2",abilityHatSkins.parasol_kssu);
	global.hatTypeHammerP2 = ini_read_real("playerCustomization","hatTypeHammerP2",abilityHatSkins.hammer_kssu);
	global.hatTypeBellP2 = ini_read_real("playerCustomization","hatTypeBellP2",abilityHatSkins.bell_modern);
	global.hatTypeWaterP2 = ini_read_real("playerCustomization","hatTypeWaterP2",abilityHatSkins.water_modern);
	global.hatTypeSleepP2 = ini_read_real("playerCustomization","hatTypeSleepP2",abilityHatSkins.sleep_kssu);
	global.hatTypeScanP2 = ini_read_real("playerCustomization","hatTypeScanP2",abilityHatSkins.scan_kssu);
	global.hatTypeCrashP2 = ini_read_real("playerCustomization","hatTypeCrashP2",abilityHatSkins.crash_kssu);
	global.hatTypeMicP2 = ini_read_real("playerCustomization","hatTypeMicP2",abilityHatSkins.mic_kssu);
	
	global.hatTypeCutterP3 = ini_read_real("playerCustomization","hatTypeCutterP3",abilityHatSkins.cutter_kssu);
	global.hatTypeBeamP3 = ini_read_real("playerCustomization","hatTypeBeamP3",abilityHatSkins.beam_kssu);
	global.hatTypeMysticBeamP3 = ini_read_real("playerCustomization","hatTypeMysticBeamP3",abilityHatSkins.mysticBeam_ggs);
	global.hatTypeStoneP3 = ini_read_real("playerCustomization","hatTypeStoneP3",abilityHatSkins.stone_kssu);
	global.hatTypeUfoP3 = ini_read_real("playerCustomization","hatTypeUfoP3",abilityHatSkins.ufo_modern);
	global.hatTypeMirrorP3 = ini_read_real("playerCustomization","hatTypeMirrorP3",abilityHatSkins.mirror_kssu);
	global.hatTypeNinjaP3 = ini_read_real("playerCustomization","hatTypeNinjaP3",abilityHatSkins.ninja_kssu);
	global.hatTypeBombP3 = ini_read_real("playerCustomization","hatTypeBombP3",abilityHatSkins.bomb_kssu);
	global.hatTypeFireP3 = ini_read_real("playerCustomization","hatTypeFireP3",abilityHatSkins.fire_kssu);
	global.hatTypeIceP3 = ini_read_real("playerCustomization","hatTypeIceP3",abilityHatSkins.ice_kssu);
	global.hatTypeSparkP3 = ini_read_real("playerCustomization","hatTypeSparkP3",abilityHatSkins.spark_kssu);
	global.hatTypeYoyoP3 = ini_read_real("playerCustomization","hatTypeYoyoP3",abilityHatSkins.yoyo_kssu);
	global.hatTypeWheelP3 = ini_read_real("playerCustomization","hatTypeWheelP3",abilityHatSkins.wheel_kssu);
	global.hatTypeArtistP3 = ini_read_real("playerCustomization","hatTypeArtistP3",abilityHatSkins.artist_kssu);
	global.hatTypeFighterP3 = ini_read_real("playerCustomization","hatTypeFighterP3",abilityHatSkins.fighter_kssu);
	global.hatTypeSuplexP3 = ini_read_real("playerCustomization","hatTypeSuplexP3",abilityHatSkins.suplex_kssu);
	global.hatTypeWingP3 = ini_read_real("playerCustomization","hatTypeWingP3",abilityHatSkins.wing_kssu);
	global.hatTypeJetP3 = ini_read_real("playerCustomization","hatTypeJetP3",abilityHatSkins.jet_kssu);
	global.hatTypeSwordP3 = ini_read_real("playerCustomization","hatTypeSwordP3",abilityHatSkins.sword_kssu);
	global.hatTypeParasolP3 = ini_read_real("playerCustomization","hatTypeParasolP3",abilityHatSkins.parasol_kssu);
	global.hatTypeHammerP3 = ini_read_real("playerCustomization","hatTypeHammerP3",abilityHatSkins.hammer_kssu);
	global.hatTypeBellP3 = ini_read_real("playerCustomization","hatTypeBellP3",abilityHatSkins.bell_modern);
	global.hatTypeWaterP3 = ini_read_real("playerCustomization","hatTypeWaterP3",abilityHatSkins.water_modern);
	global.hatTypeSleepP3 = ini_read_real("playerCustomization","hatTypeSleepP3",abilityHatSkins.sleep_kssu);
	global.hatTypeScanP3 = ini_read_real("playerCustomization","hatTypeScanP3",abilityHatSkins.scan_kssu);
	global.hatTypeCrashP3 = ini_read_real("playerCustomization","hatTypeCrashP3",abilityHatSkins.crash_kssu);
	global.hatTypeMicP3 = ini_read_real("playerCustomization","hatTypeMicP3",abilityHatSkins.mic_kssu);
	
	global.hatTypeCutterP4 = ini_read_real("playerCustomization","hatTypeCutterP4",abilityHatSkins.cutter_kssu);
	global.hatTypeBeamP4 = ini_read_real("playerCustomization","hatTypeBeamP4",abilityHatSkins.beam_kssu);
	global.hatTypeMysticBeamP4 = ini_read_real("playerCustomization","hatTypeMysticBeamP4",abilityHatSkins.mysticBeam_ggs);
	global.hatTypeStoneP4 = ini_read_real("playerCustomization","hatTypeStoneP4",abilityHatSkins.stone_kssu);
	global.hatTypeUfoP4 = ini_read_real("playerCustomization","hatTypeUfoP4",abilityHatSkins.ufo_modern);
	global.hatTypeMirrorP4 = ini_read_real("playerCustomization","hatTypeMirrorP4",abilityHatSkins.mirror_kssu);
	global.hatTypeNinjaP4 = ini_read_real("playerCustomization","hatTypeNinjaP4",abilityHatSkins.ninja_kssu);
	global.hatTypeBombP4 = ini_read_real("playerCustomization","hatTypeBombP4",abilityHatSkins.bomb_kssu);
	global.hatTypeFireP4 = ini_read_real("playerCustomization","hatTypeFireP4",abilityHatSkins.fire_kssu);
	global.hatTypeIceP4 = ini_read_real("playerCustomization","hatTypeIceP4",abilityHatSkins.ice_kssu);
	global.hatTypeSparkP4 = ini_read_real("playerCustomization","hatTypeSparkP4",abilityHatSkins.spark_kssu);
	global.hatTypeYoyoP4 = ini_read_real("playerCustomization","hatTypeYoyoP4",abilityHatSkins.yoyo_kssu);
	global.hatTypeWheelP4 = ini_read_real("playerCustomization","hatTypeWheelP4",abilityHatSkins.wheel_kssu);
	global.hatTypeArtistP4 = ini_read_real("playerCustomization","hatTypeArtistP4",abilityHatSkins.artist_kssu);
	global.hatTypeFighterP4 = ini_read_real("playerCustomization","hatTypeFighterP4",abilityHatSkins.fighter_kssu);
	global.hatTypeSuplexP4 = ini_read_real("playerCustomization","hatTypeSuplexP4",abilityHatSkins.suplex_kssu);
	global.hatTypeWingP4 = ini_read_real("playerCustomization","hatTypeWingP4",abilityHatSkins.wing_kssu);
	global.hatTypeJetP4 = ini_read_real("playerCustomization","hatTypeJetP4",abilityHatSkins.jet_kssu);
	global.hatTypeSwordP4 = ini_read_real("playerCustomization","hatTypeSwordP4",abilityHatSkins.sword_kssu);
	global.hatTypeParasolP4 = ini_read_real("playerCustomization","hatTypeParasolP4",abilityHatSkins.parasol_kssu);
	global.hatTypeHammerP4 = ini_read_real("playerCustomization","hatTypeHammerP4",abilityHatSkins.hammer_kssu);
	global.hatTypeBellP4 = ini_read_real("playerCustomization","hatTypeBellP4",abilityHatSkins.bell_modern);
	global.hatTypeWaterP4 = ini_read_real("playerCustomization","hatTypeWaterP4",abilityHatSkins.water_modern);
	global.hatTypeSleepP4 = ini_read_real("playerCustomization","hatTypeSleepP4",abilityHatSkins.sleep_kssu);
	global.hatTypeScanP4 = ini_read_real("playerCustomization","hatTypeScanP4",abilityHatSkins.scan_kssu);
	global.hatTypeCrashP4 = ini_read_real("playerCustomization","hatTypeCrashP4",abilityHatSkins.crash_kssu);
	global.hatTypeMicP4 = ini_read_real("playerCustomization","hatTypeMicP4",abilityHatSkins.mic_kssu);
	
	global.hatPaletteCutterKSSUP1 = ini_read_real("playerCustomization","hatPaletteCutterKSSUP1",abilityHatPaints.cutter_kssu_slicingGold);
	global.hatPaletteBeamKSSUP1 = ini_read_real("playerCustomization","hatPaletteBeamKSSUP1",abilityHatPaints.beam_kssu_sparklingBeam);
	global.hatPaletteBeamMarxSoulP1 = ini_read_real("playerCustomization","hatPaletteBeamMarxSoulP1",abilityHatPaints.beam_marxSoul_jesterSpirit);
	global.hatPaletteMysticBeamGGSP1 = ini_read_real("playerCustomization","hatPaletteMysticBeamGGSP1",abilityHatPaints.mysticBeam_ggs_nastyFlux);
	global.hatPaletteStoneKSSUP1 = ini_read_real("playerCustomization","hatPaletteStoneKSSUP1",abilityHatPaints.stone_kssu_rockyRoad);
	global.hatPaletteStoneModernP1 = ini_read_real("playerCustomization","hatPaletteStoneModernP1",abilityHatPaints.stone_modern_rockyRoad);
	global.hatPaletteUfoKSSUP1 = ini_read_real("playerCustomization","hatPaletteUfoKSSUP1",0);
	global.hatPaletteMirrorKSSUP1 = ini_read_real("playerCustomization","hatPaletteMirrorKSSUP1",abilityHatPaints.mirror_kssu_jesterReflection);
	global.hatPaletteMirrorModernP1 = ini_read_real("playerCustomization","hatPaletteMirrorModernP1",abilityHatPaints.mirror_modern_jesterReflection);
	global.hatPaletteNinjaKSSUP1 = ini_read_real("playerCustomization","hatPaletteNinjaKSSUP1",abilityHatPaints.ninja_kssu_stealthyMaroon);
	global.hatPaletteNinjaModernP1 = ini_read_real("playerCustomization","hatPaletteNinjaModernP1",abilityHatPaints.ninja_modern_stealthyMaroon);
	global.hatPaletteNinjaSamuraiP1 = ini_read_real("playerCustomization","hatPaletteNinjaSamuraiP1",abilityHatPaints.ninja_samurai_menacingBlack);
	global.hatPaletteBombKSSUP1 = ini_read_real("playerCustomization","hatPaletteBombKSSUP1",abilityHatPaints.bomb_kssu_explosiveB);
	global.hatPaletteBombModernP1 = ini_read_real("playerCustomization","hatPaletteBombModernP1",abilityHatPaints.bomb_modern_explosiveB);
	global.hatPaletteFireKSSUP1 = ini_read_real("playerCustomization","hatPaletteFireKSSUP1",abilityHatPaints.fire_kssu_scorchingScarlet);
	global.hatPaletteIceKSSUP1 = ini_read_real("playerCustomization","hatPaletteIceKSSUP1",abilityHatPaints.ice_kssu_frostedShard);
	global.hatPaletteIceSnowmanP1 = ini_read_real("playerCustomization","hatPaletteIceSnowmanP1",abilityHatPaints.ice_snowman_chilly);
	global.hatPaletteSparkKSSUP1 = ini_read_real("playerCustomization","hatPaletteSparkKSSUP1",abilityHatPaints.spark_kssu_electroMarine);
	global.hatPaletteYoyoKSSUP1 = ini_read_real("playerCustomization","hatPaletteYoyoKSSUP1",abilityHatPaints.yoyo_kssu_spinningViolet);
	global.hatPaletteWheelKSSUP1 = ini_read_real("playerCustomization","hatPaletteWheelKSSUP1",abilityHatPaints.wheel_kssu_rushingRed);
	global.hatPaletteArtistKSSUP1 = ini_read_real("playerCustomization","hatPaletteArtistKSSUP1",abilityHatPaints.artist_kssu_dapperPainter);
	global.hatPaletteArtistModernP1 = ini_read_real("playerCustomization","hatPaletteArtistModernP1",0);
	global.hatPaletteFighterKSSUP1 = ini_read_real("playerCustomization","hatPaletteFighterKSSUP1",abilityHatPaints.fighter_kssu_crimsonChampion);
	global.hatPaletteSuplexKSSUP1 = ini_read_real("playerCustomization","hatPaletteSuplexKSSUP1",abilityHatPaints.suplex_kssu_blueBanner);
	global.hatPaletteSuplexBuggzyP1 = ini_read_real("playerCustomization","hatPaletteSuplexBuggzyP1",abilityHatPaints.suplex_buggzy_beetleViolet);
	global.hatPaletteWingKSSUP1 = ini_read_real("playerCustomization","hatPaletteWingKSSUP1",abilityHatPaints.wing_kssu_rainbowFlight);
	global.hatPaletteJetKSSUP1 = ini_read_real("playerCustomization","hatPaletteJetKSSUP1",abilityHatPaints.jet_kssu_speedMachine);
	global.hatPaletteSwordKSSUP1 = ini_read_real("playerCustomization","hatPaletteSwordKSSUP1",abilityHatPaints.sword_kssu_slicingGreen);
	global.hatPaletteParasolKSSUP1 = ini_read_real("playerCustomization","hatPaletteParasolKSSUP1",abilityHatPaints.parasol_kssu_lazyRed);
	global.hatPaletteHammerKSSUP1 = ini_read_real("playerCustomization","hatPaletteHammerKSSUP1",abilityHatPaints.hammer_kssu_crushingBrown);
	global.hatPaletteBellModernP1 = ini_read_real("playerCustomization","hatPaletteBellModernP1",abilityHatPaints.bell_modern_dazzlingDefault);
	global.hatPaletteSleepKSSUP1 = ini_read_real("playerCustomization","hatPaletteSleepKSSUP1",abilityHatPaints.sleep_kssu_bubblyGreen);
	global.hatPaletteScanKSSUP1 = ini_read_real("playerCustomization","hatPaletteScanKSSUP1",abilityHatPaints.scan_kssu_metallicRed);
	global.hatPaletteCrashKSSUP1 = ini_read_real("playerCustomization","hatPaletteCrashKSSUP1",abilityHatPaints.crash_kssu_none);
	global.hatPaletteMicKSSUP1 = ini_read_real("playerCustomization","hatPaletteMicKSSUP1",abilityHatPaints.mic_kssu_loudMike);
	
	global.hatPaletteCutterKSSUP2 = ini_read_real("playerCustomization","hatPaletteCutterKSSUP2",abilityHatPaints.cutter_kssu_slicingGold);
	global.hatPaletteBeamKSSUP2 = ini_read_real("playerCustomization","hatPaletteBeamKSSUP2",abilityHatPaints.beam_kssu_sparklingBeam);
	global.hatPaletteBeamMarxSoulP2 = ini_read_real("playerCustomization","hatPaletteBeamMarxSoulP2",abilityHatPaints.beam_marxSoul_jesterSpirit);
	global.hatPaletteMysticBeamGGSP2 = ini_read_real("playerCustomization","hatPaletteMysticBeamGGSP2",abilityHatPaints.mysticBeam_ggs_nastyFlux);
	global.hatPaletteStoneKSSUP2 = ini_read_real("playerCustomization","hatPaletteStoneKSSUP2",abilityHatPaints.stone_kssu_rockyRoad);
	global.hatPaletteStoneModernP2 = ini_read_real("playerCustomization","hatPaletteStoneModernP2",abilityHatPaints.stone_modern_rockyRoad);
	global.hatPaletteUfoKSSUP2 = ini_read_real("playerCustomization","hatPaletteUfoKSSUP2",0);
	global.hatPaletteMirrorKSSUP2 = ini_read_real("playerCustomization","hatPaletteMirrorKSSUP2",abilityHatPaints.mirror_kssu_jesterReflection);
	global.hatPaletteMirrorModernP2 = ini_read_real("playerCustomization","hatPaletteMirrorModernP2",abilityHatPaints.mirror_modern_jesterReflection);
	global.hatPaletteNinjaKSSUP2 = ini_read_real("playerCustomization","hatPaletteNinjaKSSUP2",abilityHatPaints.ninja_kssu_stealthyMaroon);
	global.hatPaletteNinjaModernP2 = ini_read_real("playerCustomization","hatPaletteNinjaModernP2",abilityHatPaints.ninja_modern_stealthyMaroon);
	global.hatPaletteNinjaSamuraiP2 = ini_read_real("playerCustomization","hatPaletteNinjaSamuraiP2",abilityHatPaints.ninja_samurai_menacingBlack);
	global.hatPaletteBombKSSUP2 = ini_read_real("playerCustomization","hatPaletteBombKSSUP2",abilityHatPaints.bomb_kssu_explosiveB);
	global.hatPaletteBombModernP2 = ini_read_real("playerCustomization","hatPaletteBombModernP2",abilityHatPaints.bomb_modern_explosiveB);
	global.hatPaletteFireKSSUP2 = ini_read_real("playerCustomization","hatPaletteFireKSSUP2",abilityHatPaints.fire_kssu_scorchingScarlet);
	global.hatPaletteIceKSSUP2 = ini_read_real("playerCustomization","hatPaletteIceKSSUP2",abilityHatPaints.ice_kssu_frostedShard);
	global.hatPaletteIceSnowmanP2 = ini_read_real("playerCustomization","hatPaletteIceSnowmanP2",abilityHatPaints.ice_snowman_chilly);
	global.hatPaletteSparkKSSUP2 = ini_read_real("playerCustomization","hatPaletteSparkKSSUP2",abilityHatPaints.spark_kssu_electroMarine);
	global.hatPaletteYoyoKSSUP2 = ini_read_real("playerCustomization","hatPaletteYoyoKSSUP2",abilityHatPaints.yoyo_kssu_spinningViolet);
	global.hatPaletteWheelKSSUP2 = ini_read_real("playerCustomization","hatPaletteWheelKSSUP2",abilityHatPaints.wheel_kssu_rushingRed);
	global.hatPaletteArtistKSSUP2 = ini_read_real("playerCustomization","hatPaletteArtistKSSUP2",abilityHatPaints.artist_kssu_dapperPainter);
	global.hatPaletteArtistModernP2 = ini_read_real("playerCustomization","hatPaletteArtistModernP2",0);
	global.hatPaletteFighterKSSUP2 = ini_read_real("playerCustomization","hatPaletteFighterKSSUP2",abilityHatPaints.fighter_kssu_crimsonChampion);
	global.hatPaletteSuplexKSSUP2 = ini_read_real("playerCustomization","hatPaletteSuplexKSSUP2",abilityHatPaints.suplex_kssu_blueBanner);
	global.hatPaletteSuplexBuggzyP2 = ini_read_real("playerCustomization","hatPaletteSuplexBuggzyP2",abilityHatPaints.suplex_buggzy_beetleViolet);
	global.hatPaletteWingKSSUP2 = ini_read_real("playerCustomization","hatPaletteWingKSSUP2",abilityHatPaints.wing_kssu_rainbowFlight);
	global.hatPaletteJetKSSUP2 = ini_read_real("playerCustomization","hatPaletteJetKSSUP2",abilityHatPaints.jet_kssu_speedMachine);
	global.hatPaletteSwordKSSUP2 = ini_read_real("playerCustomization","hatPaletteSwordKSSUP2",abilityHatPaints.sword_kssu_slicingGreen);
	global.hatPaletteParasolKSSUP2 = ini_read_real("playerCustomization","hatPaletteParasolKSSUP2",abilityHatPaints.parasol_kssu_lazyRed);
	global.hatPaletteHammerKSSUP2 = ini_read_real("playerCustomization","hatPaletteHammerKSSUP2",abilityHatPaints.hammer_kssu_crushingBrown);
	global.hatPaletteBellModernP2 = ini_read_real("playerCustomization","hatPaletteBellModernP2",abilityHatPaints.bell_modern_dazzlingDefault);
	global.hatPaletteSleepKSSUP2 = ini_read_real("playerCustomization","hatPaletteSleepKSSUP2",abilityHatPaints.sleep_kssu_bubblyGreen);
	global.hatPaletteScanKSSUP2 = ini_read_real("playerCustomization","hatPaletteScanKSSUP2",abilityHatPaints.scan_kssu_metallicRed);
	global.hatPaletteCrashKSSUP2 = ini_read_real("playerCustomization","hatPaletteCrashKSSUP2",abilityHatPaints.crash_kssu_none);
	global.hatPaletteMicKSSUP2 = ini_read_real("playerCustomization","hatPaletteMicKSSUP2",abilityHatPaints.mic_kssu_loudMike);
	
	global.hatPaletteCutterKSSUP3 = ini_read_real("playerCustomization","hatPaletteCutterKSSUP3",abilityHatPaints.cutter_kssu_slicingGold);
	global.hatPaletteBeamKSSUP3 = ini_read_real("playerCustomization","hatPaletteBeamKSSUP3",abilityHatPaints.beam_kssu_sparklingBeam);
	global.hatPaletteBeamMarxSoulP3 = ini_read_real("playerCustomization","hatPaletteBeamMarxSoulP3",abilityHatPaints.beam_marxSoul_jesterSpirit);
	global.hatPaletteMysticBeamGGSP3 = ini_read_real("playerCustomization","hatPaletteMysticBeamGGSP3",abilityHatPaints.mysticBeam_ggs_nastyFlux);
	global.hatPaletteStoneKSSUP3 = ini_read_real("playerCustomization","hatPaletteStoneKSSUP3",abilityHatPaints.stone_kssu_rockyRoad);
	global.hatPaletteStoneModernP3 = ini_read_real("playerCustomization","hatPaletteStoneModernP3",abilityHatPaints.stone_modern_rockyRoad);
	global.hatPaletteUfoKSSUP3 = ini_read_real("playerCustomization","hatPaletteUfoKSSUP3",0);
	global.hatPaletteMirrorKSSUP3 = ini_read_real("playerCustomization","hatPaletteMirrorKSSUP3",abilityHatPaints.mirror_kssu_jesterReflection);
	global.hatPaletteMirrorModernP3 = ini_read_real("playerCustomization","hatPaletteMirrorModernP3",abilityHatPaints.mirror_modern_jesterReflection);
	global.hatPaletteNinjaKSSUP3 = ini_read_real("playerCustomization","hatPaletteNinjaKSSUP3",abilityHatPaints.ninja_kssu_stealthyMaroon);
	global.hatPaletteNinjaModernP3 = ini_read_real("playerCustomization","hatPaletteNinjaModernP3",abilityHatPaints.ninja_modern_stealthyMaroon);
	global.hatPaletteNinjaSamuraiP3 = ini_read_real("playerCustomization","hatPaletteNinjaSamuraiP3",abilityHatPaints.ninja_samurai_menacingBlack);
	global.hatPaletteBombKSSUP3 = ini_read_real("playerCustomization","hatPaletteBombKSSUP3",abilityHatPaints.bomb_kssu_explosiveB);
	global.hatPaletteBombModernP3 = ini_read_real("playerCustomization","hatPaletteBombModernP3",abilityHatPaints.bomb_modern_explosiveB);
	global.hatPaletteFireKSSUP3 = ini_read_real("playerCustomization","hatPaletteFireKSSUP3",abilityHatPaints.fire_kssu_scorchingScarlet);
	global.hatPaletteIceKSSUP3 = ini_read_real("playerCustomization","hatPaletteIceKSSUP3",abilityHatPaints.ice_kssu_frostedShard);
	global.hatPaletteIceSnowmanP3 = ini_read_real("playerCustomization","hatPaletteIceSnowmanP3",abilityHatPaints.ice_snowman_chilly);
	global.hatPaletteSparkKSSUP3 = ini_read_real("playerCustomization","hatPaletteSparkKSSUP3",abilityHatPaints.spark_kssu_electroMarine);
	global.hatPaletteYoyoKSSUP3 = ini_read_real("playerCustomization","hatPaletteYoyoKSSUP3",abilityHatPaints.yoyo_kssu_spinningViolet);
	global.hatPaletteWheelKSSUP3 = ini_read_real("playerCustomization","hatPaletteWheelKSSUP3",abilityHatPaints.wheel_kssu_rushingRed);
	global.hatPaletteArtistKSSUP3 = ini_read_real("playerCustomization","hatPaletteArtistKSSUP3",abilityHatPaints.artist_kssu_dapperPainter);
	global.hatPaletteArtistModernP3 = ini_read_real("playerCustomization","hatPaletteArtistModernP3",0);
	global.hatPaletteFighterKSSUP3 = ini_read_real("playerCustomization","hatPaletteFighterKSSUP3",abilityHatPaints.fighter_kssu_crimsonChampion);
	global.hatPaletteSuplexKSSUP3 = ini_read_real("playerCustomization","hatPaletteSuplexKSSUP3",abilityHatPaints.suplex_kssu_blueBanner);
	global.hatPaletteSuplexBuggzyP3 = ini_read_real("playerCustomization","hatPaletteSuplexBuggzyP3",abilityHatPaints.suplex_buggzy_beetleViolet);
	global.hatPaletteWingKSSUP3 = ini_read_real("playerCustomization","hatPaletteWingKSSUP3",abilityHatPaints.wing_kssu_rainbowFlight);
	global.hatPaletteJetKSSUP3 = ini_read_real("playerCustomization","hatPaletteJetKSSUP3",abilityHatPaints.jet_kssu_speedMachine);
	global.hatPaletteSwordKSSUP3 = ini_read_real("playerCustomization","hatPaletteSwordKSSUP3",abilityHatPaints.sword_kssu_slicingGreen);
	global.hatPaletteParasolKSSUP3 = ini_read_real("playerCustomization","hatPaletteParasolKSSUP3",abilityHatPaints.parasol_kssu_lazyRed);
	global.hatPaletteHammerKSSUP3 = ini_read_real("playerCustomization","hatPaletteHammerKSSUP3",abilityHatPaints.hammer_kssu_crushingBrown);
	global.hatPaletteBellModernP3 = ini_read_real("playerCustomization","hatPaletteBellModernP3",abilityHatPaints.bell_modern_dazzlingDefault);
	global.hatPaletteSleepKSSUP3 = ini_read_real("playerCustomization","hatPaletteSleepKSSUP3",abilityHatPaints.sleep_kssu_bubblyGreen);
	global.hatPaletteScanKSSUP3 = ini_read_real("playerCustomization","hatPaletteScanKSSUP3",abilityHatPaints.scan_kssu_metallicRed);
	global.hatPaletteCrashKSSUP3 = ini_read_real("playerCustomization","hatPaletteCrashKSSUP3",abilityHatPaints.crash_kssu_none);
	global.hatPaletteMicKSSUP3 = ini_read_real("playerCustomization","hatPaletteMicKSSUP3",abilityHatPaints.mic_kssu_loudMike);
	
	global.hatPaletteCutterKSSUP4 = ini_read_real("playerCustomization","hatPaletteCutterKSSUP4",abilityHatPaints.cutter_kssu_slicingGold);
	global.hatPaletteBeamKSSUP4 = ini_read_real("playerCustomization","hatPaletteBeamKSSUP4",abilityHatPaints.beam_kssu_sparklingBeam);
	global.hatPaletteBeamMarxSoulP4 = ini_read_real("playerCustomization","hatPaletteBeamMarxSoulP4",abilityHatPaints.beam_marxSoul_jesterSpirit);
	global.hatPaletteMysticBeamGGSP4 = ini_read_real("playerCustomization","hatPaletteMysticBeamGGSP4",abilityHatPaints.mysticBeam_ggs_nastyFlux);
	global.hatPaletteStoneKSSUP4 = ini_read_real("playerCustomization","hatPaletteStoneKSSUP4",abilityHatPaints.stone_kssu_rockyRoad);
	global.hatPaletteStoneModernP4 = ini_read_real("playerCustomization","hatPaletteStoneModernP4",abilityHatPaints.stone_modern_rockyRoad);
	global.hatPaletteUfoKSSUP4 = ini_read_real("playerCustomization","hatPaletteUfoKSSUP4",0);
	global.hatPaletteMirrorKSSUP4 = ini_read_real("playerCustomization","hatPaletteMirrorKSSUP4",abilityHatPaints.mirror_kssu_jesterReflection);
	global.hatPaletteMirrorModernP4 = ini_read_real("playerCustomization","hatPaletteMirrorModernP4",abilityHatPaints.mirror_modern_jesterReflection);
	global.hatPaletteNinjaKSSUP4 = ini_read_real("playerCustomization","hatPaletteNinjaKSSUP4",abilityHatPaints.ninja_kssu_stealthyMaroon);
	global.hatPaletteNinjaModernP4 = ini_read_real("playerCustomization","hatPaletteNinjaModernP4",abilityHatPaints.ninja_modern_stealthyMaroon);
	global.hatPaletteNinjaSamuraiP4 = ini_read_real("playerCustomization","hatPaletteNinjaSamuraiP4",abilityHatPaints.ninja_samurai_menacingBlack);
	global.hatPaletteBombKSSUP4 = ini_read_real("playerCustomization","hatPaletteBombKSSUP4",abilityHatPaints.bomb_kssu_explosiveB);
	global.hatPaletteBombModernP4 = ini_read_real("playerCustomization","hatPaletteBombModernP4",abilityHatPaints.bomb_modern_explosiveB);
	global.hatPaletteFireKSSUP4 = ini_read_real("playerCustomization","hatPaletteFireKSSUP4",abilityHatPaints.fire_kssu_scorchingScarlet);
	global.hatPaletteIceKSSUP4 = ini_read_real("playerCustomization","hatPaletteIceKSSUP4",abilityHatPaints.ice_kssu_frostedShard);
	global.hatPaletteIceSnowmanP4 = ini_read_real("playerCustomization","hatPaletteIceSnowmanP4",abilityHatPaints.ice_snowman_chilly);
	global.hatPaletteSparkKSSUP4 = ini_read_real("playerCustomization","hatPaletteSparkKSSUP4",abilityHatPaints.spark_kssu_electroMarine);
	global.hatPaletteYoyoKSSUP4 = ini_read_real("playerCustomization","hatPaletteYoyoKSSUP4",abilityHatPaints.yoyo_kssu_spinningViolet);
	global.hatPaletteWheelKSSUP4 = ini_read_real("playerCustomization","hatPaletteWheelKSSUP4",abilityHatPaints.wheel_kssu_rushingRed);
	global.hatPaletteArtistKSSUP4 = ini_read_real("playerCustomization","hatPaletteArtistKSSUP4",abilityHatPaints.artist_kssu_dapperPainter);
	global.hatPaletteArtistModernP4 = ini_read_real("playerCustomization","hatPaletteArtistModernP4",0);
	global.hatPaletteFighterKSSUP4 = ini_read_real("playerCustomization","hatPaletteFighterKSSUP4",abilityHatPaints.fighter_kssu_crimsonChampion);
	global.hatPaletteSuplexKSSUP4 = ini_read_real("playerCustomization","hatPaletteSuplexKSSUP4",abilityHatPaints.suplex_kssu_blueBanner);
	global.hatPaletteSuplexBuggzyP4 = ini_read_real("playerCustomization","hatPaletteSuplexBuggzyP4",abilityHatPaints.suplex_buggzy_beetleViolet);
	global.hatPaletteWingKSSUP4 = ini_read_real("playerCustomization","hatPaletteWingKSSUP4",abilityHatPaints.wing_kssu_rainbowFlight);
	global.hatPaletteJetKSSUP4 = ini_read_real("playerCustomization","hatPaletteJetKSSUP4",abilityHatPaints.jet_kssu_speedMachine);
	global.hatPaletteSwordKSSUP4 = ini_read_real("playerCustomization","hatPaletteSwordKSSUP4",abilityHatPaints.sword_kssu_slicingGreen);
	global.hatPaletteParasolKSSUP4 = ini_read_real("playerCustomization","hatPaletteParasolKSSUP4",abilityHatPaints.parasol_kssu_lazyRed);
	global.hatPaletteHammerKSSUP4 = ini_read_real("playerCustomization","hatPaletteHammerKSSUP4",abilityHatPaints.hammer_kssu_crushingBrown);
	global.hatPaletteBellModernP4 = ini_read_real("playerCustomization","hatPaletteBellModernP4",abilityHatPaints.bell_modern_dazzlingDefault);
	global.hatPaletteSleepKSSUP4 = ini_read_real("playerCustomization","hatPaletteSleepKSSUP4",abilityHatPaints.sleep_kssu_bubblyGreen);
	global.hatPaletteScanKSSUP4 = ini_read_real("playerCustomization","hatPaletteScanKSSUP4",abilityHatPaints.scan_kssu_metallicRed);
	global.hatPaletteCrashKSSUP4 = ini_read_real("playerCustomization","hatPaletteCrashKSSUP4",abilityHatPaints.crash_kssu_none);
	global.hatPaletteMicKSSUP4 = ini_read_real("playerCustomization","hatPaletteMicKSSUP4",abilityHatPaints.mic_kssu_loudMike);
	
	global.cutterPropellerWingUpgradeEquipped = ini_read_real("playerCustomization","cutterPropellerWingUpgradeEquipped",false);
	global.cutterMotorCutterUpgradeEquipped = ini_read_real("playerCustomization","cutterMotorCutterUpgradeEquipped",false);
	global.cutterSpectralCutterUpgradeEquipped = ini_read_real("playerCustomization","cutterSpectralCutterUpgradeEquipped",false);
	global.beamGoldenFlareUpgradeEquipped = ini_read_real("playerCustomization","beamGoldenFlareUpgradeEquipped",false);
	global.mysticBeamVortexInAJarUpgradeEquipped = ini_read_real("playerCustomization","mysticBeamVortexInAJarUpgradeEquipped",false);
	global.stoneRockCandyUpgradeEquipped = ini_read_real("playerCustomization","stoneRockCandyUpgradeEquipped",false);
	global.stoneComboCobaltUpgradeEquipped = ini_read_real("playerCustomization","stoneComboCobaltUpgradeEquipped",false);
	global.stonePsychicPebbleUpgradeEquipped = ini_read_real("playerCustomization","stonePsychicPebbleUpgradeEquipped",false);
	global.ufoCowDollUpgradeEquipped = ini_read_real("playerCustomization","ufoCowDollUpgradeEquipped",false);
	global.bombLightShellsUpgradeEquipped = ini_read_real("playerCustomization","bombLightShellsUpgradeEquipped",false);
	global.bombEyeBombUpgradeEquipped = ini_read_real("playerCustomization","bombEyeBombUpgradeEquipped",false);
	global.bombStickyBombUpgradeEquipped = ini_read_real("playerCustomization","bombStickyBombUpgradeEquipped",false);
	global.bombMagmaBombUpgradeEquipped = ini_read_real("playerCustomization","bombMagmaBombUpgradeEquipped",false);
	global.bombIceBombUpgradeEquipped = ini_read_real("playerCustomization","bombIceBombUpgradeEquipped",false);
	global.bombExplosivePowderUpgradeEquipped = ini_read_real("playerCustomization","bombExplosivePowderUpgradeEquipped",false);
	global.fireMagicCharcoalUpgradeEquipped = ini_read_real("playerCustomization","fireMagicCharcoalUpgradeEquipped",false);
	global.iceEmptyConeUpgradeEquipped = ini_read_real("playerCustomization","iceEmptyConeUpgradeEquipped",false);
	global.sparkBrightPluggUpgradeEquipped = ini_read_real("playerCustomization","sparkBrightPluggUpgradeEquipped",false);
	global.parasolWaddleBrellaUpgradeEquipped = ini_read_real("playerCustomization","parasolWaddleBrellaUpgradeEquipped",false);
	global.waterEggSoilUpgradeEquipped = ini_read_real("playerCustomization","waterEggSoilUpgradeEquipped",false);
	
	global.cheatLifelessEquipped = ini_read_real("cheats","cheatLifelessEquipped",false);
	global.cheatStarstormEquipped = ini_read_real("cheats","cheatStarstormEquipped",false);
	global.cheatFlipsideEquipped = ini_read_real("cheats","cheatFlipsideEquipped",false);
	global.cheatGamerBoyEquipped = ini_read_real("cheats","cheatGamerBoyEquipped",false);
	global.cheatEyeBleachEquipped = ini_read_real("cheats","cheatEyeBleachEquipped",false);
	global.cheatAwaitingForTheNewMoonEquipped = ini_read_real("cheats","cheatAwaitingForTheNewMoonEquipped",false);
	global.cheatGatherBattleEquipped = ini_read_real("cheats","cheatGatherBattleEquipped",false);
	global.cheatFashionableEquipped = ini_read_real("cheats","cheatFashionableEquipped",false);
	global.cheatStrimpsDinerEquipped = ini_read_real("cheats","cheatStrimpsDinerEquipped",false);
	global.cheatColoredAbilitiesEquipped = ini_read_real("cheats","cheatColoredAbilitiesEquipped",false);
	
	global.exTut_Treasure = ini_read_real("extraTutorials","exTut_Treasure",false);
	global.exTut_AntiFloat = ini_read_real("extraTutorials","exTut_AntiFloat",false);
	
	//Keycard Content
	
	global.kirbyBattleBlitzCrossoverKeycard = ini_read_real("doNotEdit","KBB0",false);
	global.kirbysDreamLandPlusCrossoverKeycard = ini_read_real("doNotEdit","KDLP0",false);
	global.dreamCrafterCrossoverKeycard = ini_read_real("doNotEdit","DC0",false);
	global.eternalParadiseCrossoverKeycard = ini_read_real("doNotEdit","EP0",false);
	global.bollCrossoverKeycard = ini_read_real("doNotEdit","B0",false);
	
	global.abilitySpraysKeycard = ini_read_real("doNotEdit","AS0",false);
	
	ini_close();
	
	global.saveLoaded = true;
}