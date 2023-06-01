///@description Initialize Variables

#region Randomize
randomize();
#endregion

#region Set Macros and Enums
#macro gameView view_camera[0]

enum buildTypes
{
	windows,
	android
}

enum gamemodes
{
	normal,
	
	tomatooCatch,
	
	skylands,
	maykr,
	samuraiKirby,
	gamblion
}

enum seasons
{
	none,
	halloween,
	christmas
}

enum languages
{
	english,
	turkish,
	german,
	italian,
	french,
	polish,
	chinese,
	spanish,
	japanese,
	portuguese,
	norwegian,
	arabic,
	length
}

enum playerStates
{
    normal,
    slide,
    float,
    climb,
    enter,
    inhale,
    carry,
	swallow,
	cutterDash,
	cutterDrop,
	finalCutter,
	beamGrab,
	mysticBeamGrab,
	mirrorDash,
	ninjaDash,
	ninjaDrop,
	fireDash,
	iceGrab,
	yoyoDash,
	wheelNormal,
	wingDash,
	jetDash,
	swordDash,
	parasolDash,
	jetHover,
	jetJump,
	jetCharge,
	warpStar,
	insideMech,
    death
}

enum playerCharacters
{
	kirby,
	gamble,
	metaKnight,
	helper,
	gooey,
	magolor,
	keeby,
	
	waddleDee,
	waddleDoo,
	brontoBurt,
	twizzy,
	tookey,
	sirKibble,
	bouncy,
	gordo,
	bloodGordo,
	mysticDoo
}

enum familiars
{
	none,
	gamble,
	happyPea,
	epicJar,
	krackle,
	omegaMatter
}

enum playerAbilities
{
    none,
    cutter,
	mysticCutter,
    beam,
	mysticBeam,
	mysticBeam2,
	stone,
	ufo,
	mirror,
	ninja,
	bomb,
	fire,
	mysticFire,
	ice,
	mysticIce,
	spark,
	yoyo,
	wheel,
	artist,
	fighter,
	suplex,
	wing,
	jet,
	sword,
	parasol,
	hammer,
	bell,
	water,
	hiJump,
	gear,
	sleep,
	scan,
	crash,
	mic,
	chef,
	ultraSword,
	cosmicBlade,
	mix
}

enum playerAttacks
{
	none,
	slideJump,
	inhale,
	
    keyNormal,
	
	cutterNormal,
	cutterCharge,
	cutterChargeAttack,
	cutterDash,
	cutterAir,
	cutterDrop,
	finalCutter,
	
	beamNormal,
	beamCharge,
	beamChargeAttack,
	beamDash,
	beamUp,
	beamAir,
	beamGrab,
	
	mysticBeamNormal,
	mysticBeamBarrierBreak,
	mysticBeamCharge,
	mysticBeamChargeAttack,
	mysticBeamDash,
	mysticBeamAir,
	mysticBeamDown,
	mysticBeamGrab,
	mysticBeamUp,
	
	stoneNormal,
	stoneUp,
	
	ufoCharge,
	ufoBeam,
	ufoLaser,
	
	mirrorSlash,
	mirrorNormal,
	mirrorDash,
	mirrorUp,
	mirrorDown,
	
	ninjaNormal,
	ninjaHoldCharge,
	ninjaSlash,
	ninjaDash,
	ninjaDrop,
	
	bombReady,
	bombNormal,
	bombDash,
	bombGrab,
	bombDown,
	
	fireNormal,
	fireDash,
	fireAerial,
	fireWheel,
	fireWheelClimb,
	fireBack,
	
	iceNormal,
	iceGrab,
	
	sparkHoldCharge,
	sparkNormal,
	sparkNone,
	sparkLow,
	sparkMid,
	sparkHigh,
	sparkMax,
	sparkUp,
	sparkDown,
	
	yoyoDash,
	
	wheelNormal,
	
	wingNormal,
	wingDash,
	
	swordNormal,
	swordDash,
	swordCombo,
	swordBarrage,
	swordAir,
	swordAirDash,
	swordCharge,
	swordSpin,
	swordRising,
	swordFalling,
	
	parasolDash,
	
	sleepNormal,
	
	scanNormal,
	
	micNormal,
	
	jetCharge,
	jetDash,
	jetJump,
	
	gooeyStoneNormal,
	gooeyFireDash
}

enum playerMechs
{
	none,
	heavyLobster,
	waterBowl
}

enum playerSprayPaints
{
	friendlyPink,
	yellow,
	red,
	green,
	dreamyBlueberry,
	carbon,
	cherry,
	deepFriedKirb,
	emerald,
	gameKirb,
	hauntingPurple,
	invisSprinkle,
	monochromeKirb,
	yolkTemple,
	plumpTomato,
	waddleWaddle,
	mystic,
	shadowOfTheMirror,
	delirious,
	greenjolt,
	butterKnife,
	blurple,
	beam,
	stone,
	mirror,
	ninja,
	fire,
	ice,
	plasma,
	unearthlyHand,
	soMeta,
	gooeyBlue,
	eggBrown,
	telltaleKeeby,
	royalYarn,
	smileyWhite,
	edd,
	musiciansLight,
	aege,
	stray,
	glitch
}

enum abilityHatSkins
{
	cutter_kssu,
	beam_kssu,
	beam_marxSoul,
	mysticBeam_ggs,
	stone_kssu,
	stone_modern,
	ufo_modern,
	mirror_kssu,
	mirror_modern,
	ninja_kssu,
	ninja_modern,
	bomb_kssu,
	bomb_modern,
	fire_kssu,
	mysticFire_ggs,
	ice_kssu,
	ice_snowman,
	spark_kssu,
	yoyo_kssu,
	wheel_kssu,
	artist_kssu,
	artist_modern,
	fighter_kssu,
	suplex_kssu,
	wing_kssu,
	jet_kssu,
	sword_kssu,
	parasol_kssu,
	hammer_kssu,
	bell_modern,
	water_modern,
	sleep_kssu,
	scan_kssu,
	crash_kssu,
	mic_kssu
}

enum abilityHatPaints
{
	cutter_kssu_slicingGold,
	cutter_kssu_bloodBlade,
	cutter_kssu_bitcrushed,
	cutter_kssu_mallardGreen,
	cutter_kssu_blackSwedish,
	cutter_kssu_fluxNostalgia,
	beam_kssu_sparklingBeam,
	beam_kssu_fluxNostalgia,
	beam_kssu_bitcrushed,
	beam_marxSoul_jesterSpirit,
	beam_marxSoul_summerFruits,
	beam_marxSoul_bitcrushed,
	mysticBeam_ggs_nastyFlux,
	mysticBeam_ggs_mageRose,
	stone_kssu_rockyRoad,
	stone_kssu_bitcrushed,
	stone_modern_rockyRoad,
	stone_modern_moltenRock,
	stone_modern_bitcrushed,
	stone_modern_cryingCobblestone,
	mirror_kssu_jesterReflection,
	mirror_kssu_betaBlock,
	mirror_kssu_bitcrushed,
	mirror_modern_jesterReflection,
	mirror_modern_betaBlock,
	mirror_modern_bitcrushed,
	ninja_kssu_stealthyMaroon,
	ninja_kssu_silverLinedWarrior,
	ninja_kssu_bitcrushed,
	ninja_modern_stealthyMaroon,
	ninja_modern_bitcrushed,
	ninja_modern_viridianAmbush,
	bomb_kssu_explosiveB,
	bomb_kssu_bitcrushed,
	bomb_kssu_bloomingPoppy,
	bomb_modern_explosiveB,
	bomb_modern_bitcrushed,
	bomb_modern_outburstingConspiracy,
	bomb_modern_dragonsCastle,
	fire_kssu_scorchingScarlet,
	fire_kssu_blazingBlue,
	fire_kssu_fluxNostalgia,
	fire_kssu_scarletRose,
	fire_kssu_bitcrushed,
	ice_kssu_frostedShard,
	ice_kssu_bitcrushed,
	ice_kssu_frostyObsidian,
	ice_kssu_fluxNostalgia,
	ice_snowman_chilly,
	ice_snowman_bitcrushed,
	ice_snowman_chocolateMousse,
	spark_kssu_electroMarine,
	spark_kssu_bitcrushed,
	yoyo_kssu_spinningViolet,
	yoyo_kssu_bitcrushed,
	wheel_kssu_rushingRed,
	wheel_kssu_bitcrushed,
	wheel_kssu_mufflerBlue,
	wheel_kssu_fluxNostalgia,
	artist_kssu_dapperPainter,
	artist_kssu_bitcrushed,
	fighter_kssu_crimsonChampion,
	fighter_kssu_bitcrushed,
	suplex_kssu_blueBanner,
	suplex_kssu_bitcrushed,
	wing_kssu_rainbowFlight,
	wing_kssu_bitcrushed,
	wing_kssu_pekinBreeze,
	jet_kssu_speedMachine,
	jet_kssu_speedyScarlet,
	jet_kssu_bitcrushed,
	jet_kssu_lavender01,
	jet_kssu_fluxNostalgia,
	sword_kssu_slicingGreen,
	sword_kssu_thunderingCloud,
	sword_kssu_bitcrushed,
	sword_kssu_fluxNostalgia,
	parasol_kssu_lazyRed,
	parasol_kssu_bitcrushed,
	parasol_kssu_wagasaDee,
	hammer_kssu_crushingBrown,
	hammer_kssu_constructionWork,	
	hammer_kssu_bitcrushed,
	hammer_kssu_fluxNostalgia,
	bell_modern_dazzlingDefault,
	bell_modern_prestoPurple,
	bell_modern_tempoTeal,
	bell_modern_ringingRose,
	bell_modern_candescentCopper,
	bell_modern_shiningSilver,
	bell_modern_polishedPlant,
	bell_modern_illuminatedIvory,
	bell_modern_bitcrushed,
	sleep_kssu_bubblyGreen,
	sleep_kssu_noddyPeach,
	sleep_kssu_royalPurple,
	sleep_kssu_bitcrushed,
	scan_kssu_metallicRed,
	scan_kssu_bitcrushed,
	scan_kssu_militaryGreen,
	crash_kssu_none,
	mic_kssu_loudMike,
	mysticBeam_ggs_blueberry,
	mysticBeam_ggs_sourlime,
	mysticBeam_ggs_mono,
	mysticBeam_ggs_bubblegum,
	parasol_kssu_azureBandanna,
	wing_kssu_dynaBlade,
	wing_kssu_nocturneFriend,
	ice_snowman_strawberryCream,
	fire_kssu_nuclearMeltdown,
	fire_kssu_midnightInferno,
	fire_kssu_hotPink
}

enum damageTypes
{
	none,
	every,
    cutter,
	mysticCutter,
    beam,
	mysticBeam,
	stone,
	ufo,
	mirror,
	ninja,
	bomb,
	fire,
	mysticFire,
	ice,
	mysticIce,
	spark,
	yoyo,
	wheel,
	artist,
	fighter,
	suplex,
	wing,
	jet,
	sword,
	parasol,
	hammer,
	bell,
	water,
	sleep,
	scan,
	crash,
	mic,
	chef,
	ultraSword,
	cosmicBlade
}

enum enemyAttacks
{
	mysticBlock_firebar,
	mysticBlock_shield,
	
	capsuleJ2_walking,
	capsuleJ2_hovering,
	capsuleJ2_dashStart,
	capsuleJ2_jetDash,
	capsuleJ2_bounceBack,
	
	poppyBroSr_bombThrow,
	poppyBroSr_bombThrowTripleJump,
	poppyBroSr_dash,
	
	wizzkid_jump,
	wizzkid_laser,
	
	whispyWoods_airpuff,
	whispyWoods_spike,
	whispyWoods_throwObject,
	whispyWoods_bigAirpuff,
	whispyWoods_inhale,
	
	doomsday_teleport,
	doomsday_star,
	doomsday_circle,
	doomsday_bomb,
	doomsday_laser
}

enum carriedItems
{
	none,
	bomb,
	key,
	keyChestKey
}

enum carriedItemStates
{
	none,
	light,
	heavy
}

enum progression
{
	greenGreens,
	battleshipHalberd,
	asteroidFields,
	eggGardenSurface,
	eggGardenTemple,
	eggGardenCaves,
	gearCubeHangar,
	gearCubeLabs,
	gearCubeDepths,
	aquatiaHarbor,
	aquatiaUnderwater,
	aquatiaParadise,
	cosmicPalace,
	popstarMoon,
	chapter1End
}

enum talkingCharacter
{
	kirby,
	gamble,
	metaKnight,
	match
}

enum kirbyTitles
{
	dreamLand1,
	adventure,
	dreamCourse,
	dreamLand2,
	superStar,
	dreamLand3,
	crystalShards,
	nightmareInDreamLand,
	airRide,
	amazingMirror,
	canvasCurse,
	squeakSquad,
	superStarUltra,
	epicYarn,
	massAttack,
	returnToDreamLand,
	tripleDeluxe,
	rainbowCurse,
	planetRobobot,
	starAllies,
	forgottenLand,
	gambleGalaxyStories
}

#region Acts
enum acts
{
	C1A1,
	C1A2,
	C1A3,
	C1A4,
	C1A5
}
#endregion

#region Stages
enum stages
{
	greenGreens,
	battleshipHalberd,
	asteroidFields,
	yolkYard,
	grandTempleAvgo,
	floralYolkCaves,
	stormTheFortress,
	centralLab,
	pathToTheNastyMachine,
	sandshellBeach,
	upTheStraw,
	sacredAquatia,
	cosmicPalace,
	popstarMoon
}
#endregion
#endregion

#region Particles
global.particles = part_system_create();

#region Confetti
global.partTypeConfetti = part_type_create();
part_type_sprite(global.partTypeConfetti, spr_Confetti, false, false, true);
part_type_size(global.partTypeConfetti, 0.1, 0.2, 0, 0);
part_type_speed(global.partTypeConfetti, 5, 6, -0.3, 0);
part_type_direction(global.partTypeConfetti, 0, 360, 0, 30);
part_type_gravity(global.partTypeConfetti, 0.3, 270);
part_type_orientation(global.partTypeConfetti, 0, 360, 0, 30, 0);
part_type_life(global.partTypeConfetti, 20, 40);
#endregion

#region Colorful Stars
global.partTypeColorfulStars = part_type_create();
part_type_sprite(global.partTypeColorfulStars, spr_ColorfulStars1, false, false, true);
part_type_size(global.partTypeColorfulStars, 0.8, 1.2, 0, 0);
part_type_speed(global.partTypeColorfulStars, 6, 7, -0.2, 0);
part_type_direction(global.partTypeColorfulStars, 25, 155, 5, 0);
part_type_gravity(global.partTypeColorfulStars, 0.4, 270);
part_type_orientation(global.partTypeColorfulStars, 0, 360, 0, 30, 0);
part_type_life(global.partTypeColorfulStars, 30, 40);
#endregion
#endregion

#region Global Variables
#region Meta/Files
global.versionNumber = "0.7.6";
global.versionNumber = "BETA 04/17/23 - Public Randomness";
global.season = seasons.none;
global.selectedSave = "SaveSlot1.ini";
#endregion

#region Player
global.healthP1Max = 45;
global.healthP2Max = 45;
global.healthP3Max = 45;
global.healthP4Max = 45;

global.healthP1 = global.healthP1Max;
global.healthP2 = global.healthP2Max;
global.healthP3 = global.healthP3Max;
global.healthP4 = global.healthP4Max;

global.undershotValP1 = 5; // if the player's health is higher than this value when they take a hit and the attack is not marked as a "finishing blow", the player will survive with this much health.
global.undershotValP2 = 5;
global.undershotValP3 = 5;
global.undershotValP4 = 5;

global.healP1Mod = global.healthP1;
global.healP2Mod = global.healthP2;
global.healP3Mod = global.healthP3;
global.healP4Mod = global.healthP4;

global.sprayPaintP1 = spr_Kirby_Normal_Palette_FriendlyPink;
global.sprayPaintP2 = spr_Kirby_Normal_Palette_Yellow;
global.sprayPaintP3 = spr_Kirby_Normal_Palette_Red;
global.sprayPaintP4 = spr_Kirby_Normal_Palette_Green;

global.familiarP1 = familiars.gamble;
global.familiarP2 = familiars.gamble;
global.familiarP3 = familiars.gamble;
global.familiarP4 = familiars.gamble;

global.abilityP1 = playerAbilities.none;
global.abilityP2 = playerAbilities.none;
global.abilityP3 = playerAbilities.none;
global.abilityP4 = playerAbilities.none;

global.micCountP1 = 0;
global.micCountP2 = 0;
global.micCountP3 = 0;
global.micCountP4 = 0;
#endregion

#region Skylands
global.skylandsHpMax = 5;
global.skylandsHpP1 = global.skylandsHpMax;
global.skylandsHpP2 = global.skylandsHpMax;
global.skylandsLives = 2;
#endregion

global.currentStage = stages.greenGreens;
global.roomPrevious = rm_Setup;
global.roomNext = rm_Starcutter;
global.roomCheckpoint = rm_Setup;
global.pause = false;
global.pointStars = 0;
global.collectibleTracker = -1;

global.goldenTomatoAmountMax = 2;

global.adminAccess = false;
global.adminAccess = true;
global.debug = false;
global.debug = true;
global.debugOverlay = false;
global.pause = false;
global.cutscene = false;
global.tutorial = false;
global.currentNPC = -1;
global.dialogueFlowing = false;
global.shaders = (shader_is_compiled(shd_pal_swapper));

global.stageNumber = stages.greenGreens;
global.chapterIntro = acts.C1A1;

global.hasCoop = 0;
global.hasP1 = true;
global.hasP2 = false;
global.hasP3 = false;
global.hasP4 = false;

global.muted = false;
global.closingvol = 1;

global.healthbarMarkedEnemy = -1;
global.musicPlaying = -1;
global.gambleMaykrMenu = "Collision";
global.maykrCanvas = rm_Maykr;
global.loadedMaykrFile = -1;
global.helperHud = false;
global.isHub = false;
global.halberdEscape = false;
global.treasureGot = false;
global.buildType = buildTypes.windows;
//global.buildType = buildTypes.android;
global.stageMusicIsPlaying = true;
global.musicFade = 1;
global.musicIntroTitle = "";
global.musicIntroComposer = "";
global.musicIntroColorBg = make_color_rgb(35,35,35);
global.musicIntroColorLight = make_color_rgb(125,125,125);
global.musicIntroColorDark = make_color_rgb(65,65,65);
global.musicIntroColorComposer = make_color_rgb(255,255,255);
global.mixActive = -1;
global.canSave = true;
global.inStage = false;
for (var i = 0; i < 4; i++) global.stageCollectibleTreasures[i] = -1;
global.hasInvinCandy = false;
global.hasMintLeaf = false;
global.globalSpeedMult = 1;

#region Demo
global.demoBeatGreenGreens = false;
global.demoBeatBattleshipHalberd = false;
global.demoBeatAsteroidFields = false;
#endregion

#region Ability Kill Targets
global.cutterAbilityKillsTarget = 10;
global.beamAbilityKillsTarget = 10;
global.mysticBeamAbilityKillsTarget = 10;
global.stoneAbilityKillsTarget = 10;
global.ufoAbilityKillsTarget = 10;
global.mirrorAbilityKillsTarget = 10;
global.ninjaAbilityKillsTarget = 10;
global.bombAbilityKillsTarget = 10;
global.fireAbilityKillsTarget = 10;
global.mysticFireAbilityKillsTarget = 10;
global.iceAbilityKillsTarget = 10;
global.sparkAbilityKillsTarget = 10;
global.yoyoAbilityKillsTarget = 10;
global.wheelAbilityKillsTarget = 10;
global.artistAbilityKillsTarget = 10;
global.fighterAbilityKillsTarget = 10;
global.suplexAbilityKillsTarget = 10;
global.wingAbilityKillsTarget = 10;
global.jetAbilityKillsTarget = 10;
global.swordAbilityKillsTarget = 10;
global.parasolAbilityKillsTarget = 10;
global.hammerAbilityKillsTarget = 10;
global.bellAbilityKillsTarget = 10;
global.waterAbilityKillsTarget = 10;
global.hiJumpAbilityKillsTarget = 10;
global.gearAbilityKillsTarget = 10;
global.sleepAbilityKillsTarget = 10;
global.scanAbilityKillsTarget = 10;
global.crashAbilityKillsTarget = 10;
global.micAbilityKillsTarget = 10;
global.chefAbilityKillsTarget = 10;
global.ultraSwordAbilityKillsTarget = 10;
global.cosmicBladeAbilityKillsTarget = 10;
#endregion

#region Controller Setup
global.playerGamepad[0] = -1;
global.playerGamepadControlType[0] = 0;
global.playerGamepad[1] = -1;
global.playerGamepadControlType[1] = 0;
global.playerGamepad[2] = -1;
global.playerGamepadControlType[2] = 0;
global.playerGamepad[3] = -1;
global.playerGamepadControlType[3] = 0;

for (var i = 0; i < 4; i++)
{
    global.stickLeftPressed[i] = false;
    global.stickRightPressed[i] = false;
    global.stickUpPressed[i] = false;
    global.stickDownPressed[i] = false;
	
    global.stickLeftHeld[i] = false;
    global.stickRightHeld[i] = false;
    global.stickUpHeld[i] = false;
    global.stickDownHeld[i] = false;
	
    global.stickLeftReleased[i] = false;
    global.stickRightReleased[i] = false;
    global.stickUpReleased[i] = false;
    global.stickDownReleased[i] = false;
}
#endregion

global.saveLoaded = false;

global.discord = true;
global.discordDetailText = "Startup";
global.discordStateText = "";
global.discordLargeImage = "ggs_icon";
global.discordLargeImageText = "Kirby Gamble Galaxy Stories - " + global.versionNumber;
global.discordSmallImage = "teamgamble_icon";
global.discordSmallImageText = "Team Gamble";
#endregion

#region Seasons
#region Halloween
if ((current_month == 10) and ((current_day >= 25) and (current_day <= 31)))
{
	global.season = seasons.halloween;
}
#endregion
#endregion

#region Timers
global.invinCandyTimerP1 = -1;
global.invinCandyTimerP1Max = 1800;
global.invinCandyTimerP2 = -1;
global.invinCandyTimerP2Max = 1800;
global.invinCandyTimerP3 = -1;
global.invinCandyTimerP3Max = 1800;
global.invinCandyTimerP4 = -1;
global.invinCandyTimerP4Max = 1800;
global.mintLeafTimerP1 = -1;
global.mintLeafTimerP1Max = 900;
global.mintLeafTimerP2 = -1;
global.mintLeafTimerP2Max = 900;
global.mintLeafTimerP3 = -1;
global.mintLeafTimerP3Max = 900;
global.mintLeafTimerP4 = -1;
global.mintLeafTimerP4Max = 900;

controllerPressedResetTimer = -1;
#endregion

#region Language Array
global.languageArray =
[
	"English",
    "Turkish",
    "German",
    "Italian",
    "French",
    "Polish",
    "Chinese",
    "Spanish",
    "Japanese",
    "Portuguese",
    "Norwegian",
    "Arabic"
]
#endregion

#region Load Game
/*ini_open("Save1.ini");
var saveCheck = ini_read_real("playerCustomization","hatTypeBeamP1",abilityHatSkins.beam_kssu);
ini_close();

if (saveCheck == "kssu")
{
	if (file_exists("Save1.ini")) file_delete("Save1.ini");
	if (file_exists("Save2.ini")) file_delete("Save2.ini");
	if (file_exists("Save3.ini")) file_delete("Save2.ini");
}*/

file_delete("Save1.ini");
file_delete("Save2.ini");
file_delete("Save3.ini");

scr_LoadGame(global.selectedSave);

//if (global.canSave) scr_SaveGame(global.selectedSave);
//if (global.debug) scr_DebugSave();

scr_LoadConfig("config.ini");
window_set_fullscreen(global.fullscreen);

//global.extraModeUnlocked = true;
global.maykrUnlocked = true;
global.storyModeUnlocked = false;
//global.skylandsUnlocked = true;
//global.gamblionUnlocked = true;
//global.bitcrushedUnlocked = true;
//global.samuraiKirbyUnlocked = true;
#endregion

#region Fonts
global.bitmapKSSU = font_add_sprite_ext(spr_Hud_Dialogue_Font_Kssu,"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz .!",false,0);
global.fontMorse = font_add_sprite_ext(spr_Hud_Dialogue_Font_Morse,".-/",false,0);
global.fontNumbersGray = font_add_sprite_ext(spr_Hud_Numbers_Gray,"0123456789",false,0);
global.fontHitNumbers = font_add_sprite_ext(spr_Hud_HitNumbers,"0123456789",false,0);

global.fontDialogueDefaultKanji = font_add(working_directory + "ARIALUNI.TTF",12,false,false,32,127);
global.fontCharacterSelectLargeKanji = font_add(working_directory + "ARIALUNI.TTF",22,false,false,32,127);
global.fontCharacterSelectMediumKanji = font_add(working_directory + "ARIALUNI.TTF",14,false,false,32,127);
global.fontCharacterSelectSmallKanji = font_add(working_directory + "ARIALUNI.TTF",9,false,false,32,127);

global.fontMaykrBlue = font_add_sprite_ext(spr_Maykr_Font_Blue,"abcdefghijklmnopqrstuvwxyz0123456789.!?/()",false,0);
global.fontMaykrRed = font_add_sprite_ext(spr_Maykr_Font_Red,"abcdefghijklmnopqrstuvwxyz0123456789.!?/()",false,0);
global.fontMaykrWhite = font_add_sprite_ext(spr_Maykr_Font_White,"abcdefghijklmnopqrstuvwxyz0123456789.!?/()",false,0);

global.fontGalleryBig = font_add_sprite_ext(spr_Menu_Gallery_FontBig,"abcdefghijklmnopqrstuvwxyz-",true,1);
global.fontGallerySmall = font_add_sprite_ext(spr_Menu_Gallery_FontSmall,"abcdefghijklmnopqrstuvwxyz-",true,1);

global.fontBestiary = font_add_sprite_ext(spr_Menu_Collection_Bestiary_Font,"abcdefghijklmnopqrstuvwxyz.!?," + chr(34) + "'()/" + chr(92) + ":;#-0123456789",true,1);

scribble_font_bake_outline_8dir("fnt_DialogueDefault","fnt_DialogueDefault_Outlined",c_black,false);
scribble_font_bake_outline_8dir("fnt_DialogueDefaultSpecial","fnt_DialogueDefaultSpecial_Outlined",c_black,false);
#endregion

#region Subtitiles
var i = 0;

subtitles[i] = "Null!";
i += 1;
subtitles[i] = "Always thank the bus driver!";
i += 1;
subtitles[i] = "Arrgh I hate you gamble!";
i += 1;
subtitles[i] = "Hello World!";
i += 1;
subtitles[i] = "Now with 10% more kirby!";
i += 1;
subtitles[i] = "Kirby is pink!";
i += 1;
subtitles[i] = "Try Revenge of Dream Land!";
i += 1;
subtitles[i] = "Try Kirby's Dream Land Plus!";
i += 1;
subtitles[i] = "Try Kirby's Eternal Paradise!";
i += 1;
subtitles[i] = "Hehahohahe!";
i += 1;
subtitles[i] = "It's the name you should know!";
i += 1;
subtitles[i] = ">Creating a new timeline!";
i += 1;
subtitles[i] = "Meow!";
i += 1;
subtitles[i] = "Save Popstar!";
i += 1;
subtitles[i] = "Now with 50% more jelly!";
i += 1;
subtitles[i] = "Try Kirby's Dream Land Advance!";
i += 1;
subtitles[i] = "Special Thanks to Reserved!";
i += 1;
subtitles[i] = "Special Thanks to Galaxamy!";
i += 1;
subtitles[i] = "Special Thanks to Jake Mario!";
i += 1;
subtitles[i] = "Special Thanks to Alex Auger!";
i += 1;
subtitles[i] = "Ceci n'est pas une starting message!";
i += 1;
subtitles[i] = "It all makes sense now!";
i += 1;
subtitles[i] = "Noble Haltmann!";
i += 1;
subtitles[i] = "Star Allies is Strimp's favorite!";
i += 1;
subtitles[i] = "Buff Dedede!";
i += 1;
subtitles[i] = "Alesmansay!";
i += 1;
subtitles[i] = "Aurora Borealis?";
i += 1;
subtitles[i] = "Halberd!";
i += 1;
subtitles[i] = "Asteroid Fields!";
i += 1;
subtitles[i] = "Egg Garden!";
i += 1;
subtitles[i] = "Green Greens!";
i += 1;
subtitles[i] = "Odds are against us!";
i += 1;
subtitles[i] = "Kabula!";
i += 1;
subtitles[i] = "Corruption!";
i += 1;
subtitles[i] = "Nasty Flux!";
i += 1;
subtitles[i] = "Playing Cards!";
i += 1;
subtitles[i] = "Dapper!";
i += 1;
subtitles[i] = "Buckle Up!";
i += 1;
subtitles[i] = "Spray Paints!";
i += 1;
subtitles[i] = "Gooey!";
i += 1;
subtitles[i] = "Knight Night";
i += 1;
subtitles[i] = "Marble Temples!";
i += 1;
subtitles[i] = "Whispy Woods!";
i += 1;
subtitles[i] = "Pinky!";
i += 1;
subtitles[i] = "Mystic!";
i += 1;
subtitles[i] = "No Cost Too Great!";
i += 1;
subtitles[i] = "No Mind To Think!";
i += 1;
subtitles[i] = "Fly Me To The Moon!";
i += 1;
subtitles[i] = "I'm Mary Poppins Y'all!";
i += 1;
subtitles[i] = "Magolor!";
i += 1;
subtitles[i] = "Sub Games!";
i += 1;
subtitles[i] = "Original Soundtrack!";
i += 1;
subtitles[i] = "Kirb!";
i += 1;
subtitles[i] = "Borb!";
i += 1;
subtitles[i] = "Hello I Am Subsandwich!";
i += 1;
subtitles[i] = "Hail Hydra!";
i += 1;
subtitles[i] = "Bro Thinks He's Subsandwich!";
i += 1;
subtitles[i] = "Like Ok Jacob!";
i += 1;
subtitles[i] = "Malicious!";
i += 1;
subtitles[i] = "Ok AND!";
i += 1;
subtitles[i] = "No One Will Get It LOL!";
i += 1;
subtitles[i] = "NO ONE WILL!";
i += 1;
subtitles[i] = "The Travelling Vaudeville Villain!";
i += 1;
subtitles[i] = "YIPPEEEE!";
i += 1;
subtitles[i] = "Earthly Woods!";
i += 1;
subtitles[i] = "Right Foot Creep!";
i += 1;
subtitles[i] = "Cash Rules Everything Around Me!";
i += 1;
subtitles[i] = "And Here We Are!";
i += 1;
subtitles[i] = "Dollar Dollar Bill Y'all!";
i += 1;
subtitles[i] = "We Need Food!";
i += 1;
subtitles[i] = "Wen- what now?";
i += 1;
subtitles[i] = "MEGA STRIMP?!";
i += 1;
subtitles[i] = "Obscure Kirby!";
i += 1;
subtitles[i] = "HUH WHO SAID THAT!";
i += 1;
subtitles[i] = "Revenge of the Asteroid Fields!";
i += 1;
subtitles[i] = "Test!";
i += 1;
subtitles[i] = "Team Gamble!";
i += 1;
subtitles[i] = "Bonjam!";
i += 1;
subtitles[i] = "Maximum Pink!";
i += 1;
subtitles[i] = "This really was a Gamble Galaxy Story...";
i += 1;
subtitles[i] = "You’ll holler and hoot and give Gamble the boot!";
i += 1;
subtitles[i] = "Poyo!";
i += 1;
subtitles[i] = "©HaltmannWorks";
i += 1;
subtitles[i] = "©NightmareEnterprises";
i += 1;
subtitles[i] = "Is this game canon to Speedtoons?";
i += 1;
subtitles[i] = "walf https://kirby.fandom.com/wiki/Walf";
i += 1;
subtitles[i] = "WiKirby - It’s a wiki, about Kirby!";
i += 1;
subtitles[i] = "Grr I hate Kirby fans /j";
i += 1;
subtitles[i] = "Marx was here";
i += 1;
subtitles[i] = "What is Kirby Cannon?";
i += 1;
subtitles[i] = "Ermmmmm!";
i += 1;
subtitles[i] = "No gambling included!";
i += 1;
subtitles[i] = "It’s Kirby Time!";
i += 1;
subtitles[i] = "Don't read This!";
i += 1;
subtitles[i] = "https://knowyourmeme.com/memes/trollface";
i += 1;
subtitles[i] = "RedTHedge was here";
i += 1;
subtitles[i] = "Free Robux inside!";
i += 1;
subtitles[i] = "Duke of Dreamland!";
i += 1;
subtitles[i] = "I'm the king of the show!";
i += 1;
subtitles[i] = "Touch Grass!";
i += 1;
subtitles[i] = "THE GAMBLE GALAXY...IS REAL!";
i += 1;
subtitles[i] = "Can we get much higher?";
i += 1;
subtitles[i] = "Stompin Time!";
i += 1;
subtitles[i] = "This video is sponsored by KIRBY Guest Stars!";
i += 1;
subtitles[i] = "Groovy!";
i += 1;
subtitles[i] = "Electrifying Excellenceness!";
i += 1;
subtitles[i] = "I'm over here";
i += 1;
subtitles[i] = "On this planet, drinking my coffee!";
i += 1;
subtitles[i] = "I notice, I notice, different things that are alike!";
i += 1;
subtitles[i] = "Can you SMELLLLLL what the KIRB is COOKING?!";
i += 1;
subtitles[i] = "Mystic Beam Attack!";
i += 1;
subtitles[i] = "This text was written by ElecP101, thank you for reading!";
i += 1;
subtitles[i] = "Oh the misery, everybody wants to be my enemy!";
i += 1;
subtitles[i] = "It's about fun, It's about friendship. When I'm hungry, I devour!";
i += 1;
subtitles[i] = "BECAUSE WE’RE KIRBY STAR ALLIES!";
i += 1;
subtitles[i] = "PvZ is a good game!";
i += 1;
subtitles[i] = "Happy Birthday Kirby!";
i += 1;
subtitles[i] = "Your Puffiness went up by 100!";
i += 1;
subtitles[i] = "Text.";
i += 1;
subtitles[i] = "!seirotS yxalaG elbmaG ybriK";
i += 1;
subtitles[i] = "Script not found. Please reload the game!";
i += 1;
subtitles[i] = "With his mouth wide open, Kirby swallowed the clouds in one gulp.";
i += 1;
subtitles[i] = "Gamble Among Us!";
i += 1;
subtitles[i] = "I'm in your Walls!";
i += 1;
subtitles[i] = "'This grass feels funny,' Kirby thought. ‘It feels like... pants.’";
i += 1;
subtitles[i] = "Hoopty Shoopty Baba Loony!";
i += 1;
subtitles[i] = "Eating The Doritos Boopy Goony Guadalupe!";
i += 1;
subtitles[i] = "Found Myself Some Cheetos!";
i += 1;
subtitles[i] = "Thanks for playing! Now leave.";
i += 1;
subtitles[i] = "Thank you so much for playing Strimp's game!";
i += 1;
subtitles[i] = "It’s not about fruit!!";
i += 1;
subtitles[i] = "ඞ";
i += 1;
subtitles[i] = "Kirby Battle Royale never actually existed!";
i += 1;
subtitles[i] = "NANI?";
i += 1;
subtitles[i] = "Kirby. That’s it!";
i += 1;
subtitles[i] = "I am going to split up into three!";
i += 1;
subtitles[i] = "Juan is real!";
i += 1;
subtitles[i] = "ECLI-";
i += 1;
subtitles[i] = "cringe...";
i += 1;
subtitles[i] = "The W.";
i += 1;
subtitles[i] = "Kirby Fighters 2 is real. Now Sleep!";
i += 1;
subtitles[i] = "Oh, God. A Talking Card!";
i += 1;
subtitles[i] = "Mama mia!";
i += 1;
subtitles[i] = "Kirby's natural enemy is a tree.";
i += 1;
subtitles[i] = "Its Kirby, Kirby Kirby. Kirby the Exploreeer!";
i += 1;
subtitles[i] = "BUT WHO WAS PHONE!";
i += 1;
subtitles[i] = "SPLATATATATATATA SPLATOOOONNNN!";
i += 1;
subtitles[i] = "QOTD: What is life?";
i += 1;
subtitles[i] = "Never gonna give you up!";
i += 1;
subtitles[i] = "Dedede, he’s the king of the show -I doubt it.";
i += 1;
subtitles[i] = "Meta Knight. King of Borb!";
i += 1;
subtitles[i] = "Kirby lost all interest as soon as he realized it wasn’t related to food!";
i += 1;
subtitles[i] = "Never gonna let you down!";
i += 1;
subtitles[i] = "Know my power...";
i += 1;
subtitles[i] = "Everyone is Sus. Including You!";
i += 1;
subtitles[i] = "The sponsor of today's video is... ur mom!";
i += 1;
subtitles[i] = "Never gonna run around, and desert you!";
i += 1;
subtitles[i] = "I AM THE STORM THAT IS APPROACHING!";
i += 1;
subtitles[i] = "MEMES, KIRBY. THE DNA OF THE SOUL!";
i += 1;
subtitles[i] = "Nothing is Real!";
i += 1;
subtitles[i] = "Wait, is that...A Rocket Launcher?";
i += 1;
subtitles[i] = "Everyone, calm Down. It's just a Egg!";
i += 1;
subtitles[i] = "Spiders are gross.";
i += 1;
subtitles[i] = "Never gonna make you cry!";
i += 1;
subtitles[i] = "HE SUCC!";
i += 1;
subtitles[i] = "You have found the!";
i += 1;
subtitles[i] = "Kirby solo's Goku!";
i += 1;
subtitles[i] = "You’ve found the 3 hidden Dragoon pieces!";
i += 1;
subtitles[i] = "Never gonna say goodbye!";
i += 1;
subtitles[i] = "You know what? I'm In!";
i += 1;
subtitles[i] = "[Insert funny message here]";
i += 1;
subtitles[i] = "Hop onto the Dreamland Express!";
i += 1;
subtitles[i] = "Wow! That's a [BIG SHOT]!";
i += 1;
subtitles[i] = "Hope Meta Knight keeps it clean out there! I’m recording every word!";
i += 1;
subtitles[i] = "Come! Warp Star!";
i += 1;
subtitles[i] = "Never gonna tell a lie, and hurt you!";
i += 1;
subtitles[i] = "Kirby Dream Buffet it's Just Devianart!";
i += 1;
subtitles[i] = "Taranza deserves to be happy!";
i += 1;
subtitles[i] = "https://youtube.com/watch?v=dQw4w9WgXcQ";
i += 1;
subtitles[i] = "Red and Gold!";
i += 1;
subtitles[i] = "Black and Blue!";
i += 1;
subtitles[i] = "When is Gangnam Style gonna play?";
i += 1;
subtitles[i] = "PAIN!";
i += 1;
subtitles[i] = "Paint?";
i += 1;
subtitles[i] = "Kirby, Suck it up!";
i += 1;
subtitles[i] = "It's Down B Smash time!";
i += 1;
subtitles[i] = "Say my name...";
i += 1;
subtitles[i] = "YOOOOOO-";
i += 1;
subtitles[i] = "DORIYAH!";
i += 1;
subtitles[i] = "Bro who put ‘Never gonna give you up’ by Rick Astley in here?";
i += 1;
subtitles[i] = "Idk, everyone is Sus!";
i += 1;
subtitles[i] = "Say hello in Spanish!";
i += 1;
subtitles[i] = "Aeiou!";
i += 1;
subtitles[i] = "Spoiler: Gooey is Blue!";
i += 1;
subtitles[i] = "It’s now Kirby’s favorite time of day, Snack Time!";
i += 1;
subtitles[i] = "It's Morbing Time";
i += 1;
subtitles[i] = "Burger";
i += 1;
subtitles[i] = "Strange Horizon, Ready to go!";
i += 1;
subtitles[i] = "Go to your nearest shoe store and order a cheeseburger if this game offends you in any way";
i += 1;
subtitles[i] = "Play Crypt of the Necrodancer";
i += 1;
subtitles[i] = "Nananana. Meta Knight";
i += 1;
subtitles[i] = "Is it a bird? Is it a plane? No, it's KIRBY!";
i += 1;
subtitles[i] = "Is That... The Purple Guy?";
i += 1;
subtitles[i] = "Why the hate? Have a plate!";
i += 1;
subtitles[i] = "ALLRIGHT, ENEMIES, PREPARE FOR TOTAL ANNIHILATION!";
i += 1;
subtitles[i] = "My Favorite Drink is natural Water!";
i += 1;
subtitles[i] = "My Favorite Food is expired Rice!";
i += 1;
subtitles[i] = "KITCHEN GUN!";
i += 1;
subtitles[i] = "Mamaaaa...Uuuuuhuuu!";
i += 1;
subtitles[i] = "He is just a poor boy from a poor family!.";
i += 1;
subtitles[i] = "What do you mean I did badly on time?!";
i += 1;
subtitles[i] = "Kirby likes to move it, move it!";
i += 1;
subtitles[i] = "You are my cheeseburger...";
i += 1;
subtitles[i] = "You’re telling me a shrimp fried this rice?";
i += 1;
subtitles[i] = "Donut Gaming!";
i += 1;
subtitles[i] = "Haachama!";
i += 1;
subtitles[i] = "How long has this butter been left to sit?";
i += 1;
subtitles[i] = "The Kirb power is food!";
i += 1;
subtitles[i] = "This reminds me of a puzzle.";
i += 1;
subtitles[i] = "Generic Sans Undertale quote";
i += 1;
subtitles[i] = "MISSINGNO.";
i += 1;
subtitles[i] = "Metal is the best Kirby joke ability!";
i += 1;
subtitles[i] = "Is that a Wambu reference?";
i += 1;
subtitles[i] = "More Audacious March!";
i += 1;
subtitles[i] = "Look at these thoughts as limitless light.";
i += 1;
subtitles[i] = "You balance upon the cusp of destiny. All that matters... is this moment.";
i += 1;
subtitles[i] = "That's my fault, I was emptying the ocean.";
i += 1;
subtitles[i] = "At 0:00, the melody changes to 'Gadget Room' from Club Penguin: Elite Penguin Force.";
i += 1;
subtitles[i] = "Boys and girls of every age, wouldn’t you like to see something strange?";
i += 1;
subtitles[i] = "This was a triumph. I’m making a note here: HUGE SUCCESS!";
i += 1;
subtitles[i] = "And the sun in the sky, it’s hanging like High Noon!";
i += 1;
subtitles[i] = "He’s the old music maestro and he wrote some catchy tunes!";
i += 1;
subtitles[i] = "MY LEG!";
i += 1;
subtitles[i] = "Piracy is no Party!";
i += 1;
subtitles[i] = "GALILEO.galileo.GALILEO.galileo!";
i += 1;
subtitles[i] = "All Spongebob Squarepants background characters have names!";
i += 1;
subtitles[i] = "I'M A GOOFY GOOBER!";
i += 1;
subtitles[i] = "Luffy! It's good to see ya' buddy!" ;
i += 1;
subtitles[i] = "WE WILL ROCK YOU!";
i += 1;
subtitles[i] = "Speed of Kirb";
i += 1;
subtitles[i] = "Where is my Burger?!";
i += 1;
subtitles[i] = "Ugh, just like the hip game Friday Night Funkin!";
i += 1;
subtitles[i] = "The Strimp...Is Real!";
i += 1;
subtitles[i] = "Pencil Gaming!";
i += 1;
subtitles[i] = "Is this a Friday Night Funkin reference?";
i += 1;
subtitles[i] = "Dont pull the Nokia. That's cheating!";
i += 1;
subtitles[i] = "Killer fish.... Killer fish from San Diego!!";
i += 1;
subtitles[i] = "It Was me, Kirby!";
i += 1;
subtitles[i] = "Gotta go fast!";
i += 1;
subtitles[i] = "GAMBLERS... ASSEMBLE!";
i += 1;
subtitles[i] = "Alex the Lion. What are you doing in my car?!";
i += 1;
subtitles[i] = "EVERYTHING. SHALL BE. CONSUMED!";
i += 1;
subtitles[i] = "Sup guys, Ranger he-";
i += 1;
subtitles[i] = "The power of pink!";
i += 1;
subtitles[i] = "Dedede is a Penguin!";
i += 1;
subtitles[i] = "The Meta Knights are the Power rangers of dream land";
i += 1;
subtitles[i] = "I'm gonna swallow you, and then SPIT you out at other enemies!";
i += 1;
subtitles[i] = "Sir, I swear that's a drawing of a rocket!";
i += 1;
subtitles[i] = "What will happen if a vampire snowman bites you? A FROSTBITE!!";
i += 1;
subtitles[i] = "Dr Doom can Rap!";
i += 1;
subtitles[i] = "The Wheel ability, obviously, turns Kirby into a jet plane, where he uses his jet plane fists to punch his enemies to death.";
i += 1;
subtitles[i] = "Show them the power of the NEXO KNIGHTS!";
i += 1;
subtitles[i] = "Feliz Navidad! Prospero año y felicidad!";
i += 1;
subtitles[i] = "SPUDOW!";
i += 1;
subtitles[i] = "SPUDOOP!";
i += 1;
subtitles[i] = "CHA-BOOF!";
i += 1;
subtitles[i] = "DOOOM!!!";
i += 1;
subtitles[i] = "What’s the favorite instrument of a Skeleton? A tromBONE!";
i += 1;
subtitles[i] = "Does it look like I need your power?";
i += 1;
subtitles[i] = "You have not yet seen the wrath of the water!";
i += 1;
subtitles[i] = "Not everything need to be dark";
i += 1;
subtitles[i] = "Blood? What is that? Can we drink it?";
i += 1;
subtitles[i] = "The weak or strong, who got it goin' on. You're dead wrong!";
i += 1;
subtitles[i] = "L + Bozo + touch grass + get maidens";
i += 1;
subtitles[i] = "Bo’le o' wa'er!";
i += 1;
subtitles[i] = "First you draw a circle, then you dot the eyes, then a great big smile, and presto! It's Kirby! Or Meta Knight... or Galacta Knight, or...";
i += 1;
subtitles[i] = "I'd write more but I have a ton of work to do. A skeleTON!";
i += 1;
subtitles[i] = "I shall return to my natural habitat. Goodbye chat!";
i += 1;
subtitles[i] = "change da world. my final message. goodb ye.";
i += 1;
subtitles[i] = "Sprite Cranberry!";
i += 1;
subtitles[i] = "The final update!";
i += 1;
subtitles[i] = "No, that's wrong!";
i += 1;
subtitles[i] = "OBJECTION!";
i += 1;
subtitles[i] = "IT'S THE FINAL COUNTDOWN NE NE NE NEE NE NE NE NE NEEEEE!";
i += 1;
subtitles[i] = "Spoilers: this game includes Kirby!";
i += 1;
subtitles[i] = "OOH, WERE HALFWAY THERE! O-OH! SQUIDWARD ON A CHAAIR!";
i += 1;
subtitles[i] = "Marsz, marsz, Dąbrowski. Z ZIEMI WŁOSKIEJ DO POLSKI!";
i += 1;
subtitles[i] = "It is a good day to be NOT DEAD!";
i += 1;
subtitles[i] = "Kirby fans fear butterflies!";
i += 1;
subtitles[i] = "Maxim M-tomatoes Make Me Merry!";
i += 1;
subtitles[i] = "☟︎♏︎●︎●︎□︎📪︎ ♐︎♏︎●︎●︎□︎⬥︎ ⧫︎♏︎♏︎■︎♋︎♑︎♏︎❒︎⬧︎✏︎";
i += 1;
subtitles[i] = "Upgrades people, upgrades!";
i += 1;
subtitles[i] = "Road work ahead? Um... Yeah... I sure hope it does!";
i += 1;
subtitles[i] = "Consider this your good omen!";
i += 1;
subtitles[i] = "Wahoo!";
i += 1;
subtitles[i] = "Only a spoonful!";
i += 1;
subtitles[i] = "Sponsored by the Haltmann Works Co.";
i += 1;
subtitles[i] = "HAL MAKES KIRBY GAMES NOT NINTENDO AAAAAAAAAAA!";
i += 1;
subtitles[i] = "Kirby, What Happened to you? SQUID GAMES!";
i += 1;
subtitles[i] = "You misspelled Kirby!";
i += 1;
subtitles[i] = "Get real!";
i += 1;
subtitles[i] = "Get fake!";
i += 1;
subtitles[i] = "Padoru, PADORU!";
i += 1;
subtitles[i] = "Play Klonoa!";
i += 1;
subtitles[i] = "Its Pizza Time!";
i += 1;
subtitles[i] = "Don't Hug Me, I'm Scared, Kirby!";
i += 1;
subtitles[i] = "DINKLEBERG, ITS ALL YOUR FAULT!";
i += 1;
subtitles[i] = "Actually... Sonic 2006 is pretty good...";
i += 1;
subtitles[i] = "Knock, Knock. Who’s here? Taxes!";
i += 1;
subtitles[i] = "Scream in Wanyas!";
i += 1;
subtitles[i] = "Angry Wanya Noises!";
i += 1;
subtitles[i] = "Happy Wanya Noises!";
i += 1;
subtitles[i] = "Deluxe!";
i += 1;
subtitles[i] = "Play Super Mario 64 DS!";
i += 1;
subtitles[i] = "Splatoon is a Squid Game!";
i += 1;
subtitles[i] = "RAW, RAW. FIGHT THE POWER!";
i += 1;
subtitles[i] = "Hello again friend...I'm a Squeleton!";
i += 1;
subtitles[i] = "I can throw you a bone to Shoot a Bow!";
i += 1;
subtitles[i] = "AHAHA. I'M A SUPESTAH WARRIAR!";
i += 1;
subtitles[i] = "Its Morbin Time!";
i += 1;
subtitles[i] = "Tempus Fugit!";
i += 1;
subtitles[i] = "Actually...You are wrong!";
i += 1;
subtitles[i] = "Sandvich!";
i += 1;
subtitles[i] = "Korewa, Sumats!";
i += 1;
subtitles[i] = "Can we pretend that airplanes in the night sky are like shootin' stars!";
i += 1;
subtitles[i] = "COINS!";
i += 1;
subtitles[i] = "Who lives in a pineapple under the sea?!";
i += 1;
subtitles[i] = "Fire Emblem is a date game!";
i += 1;
subtitles[i] = "BEAM ATTACK!... Oh, I missed.";
i += 1;
subtitles[i] = "The trees will rise up against us soon... be ready!";
i += 1;
subtitles[i] = "The Teletubbies are just talking Among us with Heads!";
i += 1;
subtitles[i] = "Dolphins are the most terrifying beings in the sea!";
i += 1;
subtitles[i] = "Borb, Meta Borb, an Orange with bandana, a Penguin versus a talking Egg!";
i += 1;
subtitles[i] = "Ehehe. Everything is a Simulation!";
i += 1;
subtitles[i] = "Better Call Saul!";
i += 1;
subtitles[i] = "She Hulk is a Parody of Comic She Hulk!";
i += 1;
subtitles[i] = "What the hell is a Moon Knight";
i += 1;
subtitles[i] = "Kirby’s return to kirbyland with kirby and kirby!";
i += 1;
subtitles[i] = "-and this Spoon is For...";
i += 1;
subtitles[i] = "Just Run!";
i += 1;
subtitles[i] = "I smell Profit!";
i += 1;
subtitles[i] = "Execute Order 66!";
i += 1;
subtitles[i] = "Gooey, Im Your Father!";
i += 1;
subtitles[i] = "[Insert Laughs here]";
i += 1;
subtitles[i] = "Please, Don’t turn me into a marketable Plushie!";
i += 1;
subtitles[i] = "Who Kill The Heavy!";
i += 1;
subtitles[i] = "KIPLIIIING!!!";
i += 1;
subtitles[i] = "Oh. The game is over. Good. Fine...What now?";
i += 1;
subtitles[i] = "Auch! That Hurts!";
i += 1;
subtitles[i] = "Morgan Freeman is secretly God!";
i += 1;
subtitles[i] = "There’s something behind you...";
i += 1;
subtitles[i] = "Everything will be ok...";
i += 1;
subtitles[i] = "Break my fall!";
i += 1;
subtitles[i] = "Trans rights!";
i += 1;
subtitles[i] = "Kirby... Is That... A Gun?!";
i += 1;
subtitles[i] = "KIRBYMON, GO Catch Them All!";
i += 1;
subtitles[i] = "Remember to drink your apple juice!";
i += 1;
subtitles[i] = "The kirby in question:";
i += 1;
subtitles[i] = "How did you just do that!";
i += 1;
subtitles[i] = "Justice for all the downed waddle dees.";
i += 1;
subtitles[i] = "Waddle Doe!";
i += 1;
subtitles[i] = "We announced tainted coke drinks!";
i += 1;
subtitles[i] = "PEPSI MAN!";
i += 1;
subtitles[i] = "Try Kirby's Heroes Most Dark!";
i += 1;
subtitles[i] = "Welcome to the Madness!";
i += 1;
subtitles[i] = "It’s no use!";
i += 1;
subtitles[i] = "DAAM YOU ZIM!";
i += 1;
subtitles[i] = "Always thank your mailman!";
i += 1;
subtitles[i] = "Try Darius the Mailman!";
i += 1;
subtitles[i] = "Try Super Mario 127!";
i += 1;
subtitles[i] = "Also try Minecraft!";
i += 1;
subtitles[i] = "Also try Terraria!";
i += 1;
subtitles[i] = "I can, you can, we can do anything!";
i += 1;
subtitles[i] = "The best Galaxy game since Super Mario Galaxy 2!";
i += 1;
subtitles[i] = "Orange Ocean was always tastier than Oil Ocean!";
i += 1;
subtitles[i] = "Congratulations! You found a rare flavor text!";
i += 1;
subtitles[i] = "New Funky Mode!";
i += 1;
subtitles[i] = "The rare and threatening Double Dedede!";
i += 1;
subtitles[i] = "Endorsed by Tol!";
i += 1;
subtitles[i] = "◕‿↼";
i += 1;
subtitles[i] = "NOW’S YOUR CHANCE!";
i += 1;
subtitles[i] = "TO BE A [BIG SHOT]!";
i += 1;
subtitles[i] = "Looking like the battle pass!";
i += 1;
subtitles[i] = "Release the beast!";
i += 1;
subtitles[i] = "Release the bogus!";
i += 1;
subtitles[i] = "1, 2, Oatmeal!";
i += 1;
subtitles[i] = "Kirby is a pi-ink guy!";
i += 1;
subtitles[i] = "Brush your teeth! Oral health is important!";
i += 1;
subtitles[i] = "Look both ways before crossing the street!";
i += 1;
subtitles[i] = "Don’t forget your deodorant!";
i += 1;
subtitles[i] = "The best thing since sliced bread!";
i += 1;
subtitles[i] = "The best thing since the best thing since sliced bread!";
i += 1;
subtitles[i] = "This is truly the 'Kirby Gamble Galaxy Stories' of all Kirby Gamble Galaxy Stories!";
i += 1;
subtitles[i] = "Speedrun 'Flavor Text %', find every single flavor text up here in one sitting!";
i += 1;
subtitles[i] = "Do your best, do your best, do it every day!";
i += 1;
subtitles[i] = "Press Alt+f4 to unlock all levels!";
i += 1;
subtitles[i] = "Type CHEAT on the main menu to be able to toggle Shine Sprites from the pause menu (sadly Shine Sprites aren’t in this game)";
i += 1;
subtitles[i] = "In terms of pink puffballs, Kirby is the most cute <3";
i += 1;
subtitles[i] = "At times like this, kids like you should be playing Nintendo games.";
i += 1;
subtitles[i] = "The Kirby anime has the best voices.";
i += 1;
subtitles[i] = "Pray to Nova!";
i += 1;
subtitles[i] = "Join The Jamba Cult!";
i += 1;
subtitles[i] = "Rules of Nature!";
i += 1;
subtitles[i] = "Kirby Feet!";
i += 1;
subtitles[i] = "Do you Know What? Yes, me too!";
i += 1;
subtitles[i] = "To Unlock the Secret level. Press Three times AltF4!";
i += 1;
subtitles[i] = "Father Is Looking at You!";
i += 1;
subtitles[i] = "Red Butterflies...Happy Nightmares!";
i += 1;
subtitles[i] = "RA-RA-RASPUTIN...";
i += 1;
subtitles[i] = "Carl Wuz Here!";
i += 1;
subtitles[i] = "It’s 5:40 and muh kidz need me!";
i += 1;
subtitles[i] = "Megastrimp Gaming!";
i += 1;
subtitles[i] = "IT WAS HIS HAT, PHIL!  HE WAS NUMBER ONE!";
i += 1;
subtitles[i] = "Five of um!";
i += 1;
subtitles[i] = "HAL, hire this man!";
i += 1;
subtitles[i] = "Dragon Fire just ripped off Mystic Fire...";
i += 1;
subtitles[i] = "STANDING HEEEEEEEERE!";
i += 1;
subtitles[i] = "GENTLEMEN, BEHOLD!  KIRB!";
i += 1;
subtitles[i] = "AHAHAHAA. STRIMPHINNO SOCCER!";
i += 1;
subtitles[i] = "HEA-VY!  LOB-STER!  HEA-VY!  LOB-STER!";
i += 1;
subtitles[i] = "Suavemente.Besame!";
i += 1;
subtitles[i] = "Kirt Gabtre Gab uxy Strewis!";
i += 1;
subtitles[i] = "We promise this game won’t pointlessly rip off the Sans Undertale fight with a giant eyeball!";
i += 1;
subtitles[i] = "Perry the Platypus, What are you doing in my game?!";
i += 1;
subtitles[i] = "This is a True Gamble Galaxy Moment!";
i += 1;
subtitles[i] = "Amazing Mirror was good, fight me Strimp!";
i += 1;
subtitles[i] = "Star Allies Was Good! (Fight me)";
i += 1;
subtitles[i] = "Gamble Galaxy. It's Poker, BUT With Kirby!";
i += 1;
subtitles[i] = "I was here!";
i += 1;
subtitles[i] = "Gamble gambling all the galaxy!";
i += 1;
subtitles[i] = "Rise oh Dark Lord of despair!";
i += 1;
subtitles[i] = "I did smth for this game!!! Yippee!!!!!";
i += 1;
subtitles[i] = "TMF! (Too Much Flux)";
i += 1;
subtitles[i] = "Victor Von Gamble!";
i += 1;
subtitles[i] = "THE FLUX PIEEEEEEEECE!!!";
i += 1;
subtitles[i] = "Stop asking for ‘more abilities!’";
i += 1;
subtitles[i] = "In Loving Memory of Greg the Player...";
i += 1;
subtitles[i] = "Wait... What are you doing, wasting your time reading this?";
i += 1;
subtitles[i] = "Game Over, player. Now your soul is mine!";
i += 1;
subtitles[i] = "Boooooooooooooooooriiiing!";
i += 1;
subtitles[i] = "Hey, You. Do Something!";
i += 1;
subtitles[i] = "THE CAKE IS A LIE!!";
i += 1;
subtitles[i] = "Half Life 3 is the Fathers!";
i += 1;
subtitles[i] = "Meta Knight? Or More Like Meta Borb?";
i += 1;
subtitles[i] = "Jelly Marx is Our true god!";
i += 1;
subtitles[i] = "All hail Jelly Marx!";
i += 1;
subtitles[i] = "Robots. Robots Everywhere!";
i += 1;
subtitles[i] = "Hey, Look. An Egg cat!";
i += 1;
subtitles[i] = "Dogs can have eggs?";
i += 1;
subtitles[i] = "Nago is the best boi!";
i += 1;
subtitles[i] = "I don't Know Rick. Looks Fake!";
i += 1;
subtitles[i] = "JA, JA. Haha, you just got rickrolled!";
i += 1;
subtitles[i] = "El Barto!";
i += 1;
subtitles[i] = "Marx Waz Gere!";
i += 1;
subtitles[i] = "Who the hell is Grill?!";
i += 1;
subtitles[i] = "Captain Underpants is the Best";
i += 1;
subtitles[i] = "THE ULTRA SWORD IS REAL!";
i += 1;
subtitles[i] = "Bandana Dee > Capitan Toad!";
i += 1;
subtitles[i] = "Super star ultra > return to dreamland";
i += 1;
subtitles[i] = "Remakes are not the same as remasters!";
i += 1;
subtitles[i] = "You thought it was just a boss but no, IT WAS ME, ZERO!";
i += 1;
subtitles[i] = "Where is Revenge of Dream Land Deluxe!";
i += 1;
subtitles[i] = "Mass Attack is Creepy!";
i += 1;
subtitles[i] = "Susanna pantry-What?!";
i += 1;
subtitles[i] = "Siri and Alexa don't even want me as a friend!";
i += 1;
subtitles[i] = "Hasta Luego, baby!";
i += 1;
subtitles[i] = "Is mayonnaise an instrument?";
i += 1;
subtitles[i] = "Horseradish is not an instrument!";
i += 1;
subtitles[i] = "YOSHA!!! As the fusion of Kakarot and Vegeta, call me... Vegito. AND THIS... IS SUPER VEGITO!";
i += 1;
subtitles[i] = "And remember kids: you can't breathe through your mouth and nose at the same time!";
i += 1;
subtitles[i] = "Kirby lore is simple, it just needs 10 years to explain properly.";
i += 1;
subtitles[i] = "Is this the real life? Is this just fantasy? Caught in a landside!";
i += 1;
subtitles[i] = "Chocolate? CHOCOLATE? CHOCOLATEEEEE!!";
i += 1;
subtitles[i] = "Chocolate bear confirmed";
i += 1;
subtitles[i] = "Release Freddy, the animatronic Bear!";
i += 1;
subtitles[i] = "Who Knows?";
i += 1;
subtitles[i] = "Anybody got some Loopy Juice?";
i += 1;
subtitles[i] = "You might have invaded my mind and my body, but there’s one thing a Saiyan always keeps, HIS PRIDE!!";
i += 1;
subtitles[i] = "You might have taken my strawberries and my candies, but there’s one thing a star warrior always keeps: HIS APPLES!!!";
i += 1;
subtitles[i] = "Bandana Dee Needs more Love";
i += 1;
subtitles[i] = "Who the hell is Sakurai?!";
i += 1;
subtitles[i] = "Wait, why do I keep listening to the boss music?";
i += 1;
subtitles[i] = "Shinya Kumazaki is one of the best directors Kirby has ever had!";
i += 1;
subtitles[i] = "(Not Responding)";
i += 1;
subtitles[i] = "Made ya look!";
i += 1;
subtitles[i] = "Give me a cake or I'll put your head on a stake!";
i += 1;
subtitles[i] = "Kirby, the Idea vs Kirby, the Man";
i += 1;
subtitles[i] = "What’s Cookin’ in Gamble Kitchen? Cookin’s in Amazing Mirror, you dingus!";
i += 1;
subtitles[i] = "Press F1 for help!";
i += 1;
subtitles[i] = "Anger + Oxygen -> Carbon Dioxide + Water";
i += 1;
subtitles[i] = "Spite is the fuel for everything good in this world!";
i += 1;
subtitles[i] = "Yes, I beat Goku.";
i += 1;
subtitles[i] = "I AM YOUR GOD. Now give me a cookie!";
i += 1;
subtitles[i] = "You can’t just say ‘perchance’.";
i += 1;
subtitles[i] = "Dude, I’m a boy.";
i += 1;
subtitles[i] = "Like a soon to be broken man once said : you are either perfect... or you’re not me.";
i += 1;
subtitles[i] = "Team Galaxy, blasting off again!!";
i += 1;
subtitles[i] = "Is Kirby balling?!";
i += 1;
subtitles[i] = "A perfect Kirby fangame? Took em’ long enough.";
i += 1;
subtitles[i] = "I can see your search history. Go repent.";
i += 1;
subtitles[i] = "Can we... just get a new kirby air ride... please Nintendo.";
i += 1;
subtitles[i] = "Thank you, Galaxy Team!";
i += 1;
subtitles[i] = "7.5/10, too much water!";
i += 1;
subtitles[i] = "Only my weapon understands me -The Dude";
i += 1;
subtitles[i] = "Weeelcome to the Internet...";
i += 1;
subtitles[i] = "USODA!!";
i += 1;
subtitles[i] = "SASUUUKEEEE!!";
i += 1;
subtitles[i] = "NARUTOO!";
i += 1;
subtitles[i] = "Minor spelling mistake!";
i += 1;
subtitles[i] = "Ew, why are you reading me? Gross...";
i += 1;
subtitles[i] = "The Community™";
i += 1;
subtitles[i] = "Pyra and Mythra are actually pretty balanced.";
i += 1;
subtitles[i] = "Remember: Always save your progress!";
i += 1;
subtitles[i] = "Hello I am Splatoon 3!";
i += 1;
subtitles[i] = "Crash Bandicoot 4: It's about Time";
i += 1;
subtitles[i] = "You smell that? Yes, Me Too!";
i += 1;
subtitles[i] = "Spyro, Age of Dragon!";
i += 1;
subtitles[i] = "Conker’s Bad Fur Day!";
i += 1;
subtitles[i] = "Remember: You can’t ship a ship that’s already past its sailing!";
i += 1;
subtitles[i] = "Crash 4 JUMPSCARE!";
i += 1;
subtitles[i] = "Boo!";
i += 1;
subtitles[i] = "Los Pollos Hermanos, New Opening!";
i += 1;
subtitles[i] = "ACTUAL free for all";
i += 1;
subtitles[i] = "He can’t be Balling";
i += 1;
subtitles[i] = "The Internet is a Dangerous Place!";
i += 1;
subtitles[i] = "Achievements - 99% complete";
i += 1;
subtitles[i] = "Internet Savvy - Beat 5 stages in our defunct online mode!";
i += 1;
subtitles[i] = "Hey y’all, Scott here.";
i += 1;
subtitles[i] = "Oh come on!";
i += 1;
subtitles[i] = "Willhelm scream";
i += 1;
subtitles[i] = "Sonic fans when there is no momentum in bed!";
i += 1;
subtitles[i] = "Give us the cheat code Strimp, give it to us!";
i += 1;
subtitles[i] = "Rip & Tear until it is done!";
i += 1;
subtitles[i] = "You don’t!";
i += 1;
subtitles[i] = "Hey, Don't Touch That Mouse!";
i += 1;
subtitles[i] = "I’m Angry!";
i += 1;
subtitles[i] = "I’m Hungry!";
i += 1;
subtitles[i] = "I’m Batman!";
i += 1;
subtitles[i] = "WHAT WERE THEY THINKING?";
i += 1;
subtitles[i] = "What was he cooking?";
i += 1;
subtitles[i] = "True";
i += 1;
subtitles[i] = "Like a Subsandwich on a hand dish!";

selectedSubtitle = irandom_range(0,array_length(subtitles) - 1);
selectedSubtitle = subtitles[selectedSubtitle];
#endregion

#region Window Caption
var windowCaption = -1;
windowCaption[0] = "Kirby";
windowCaption[1] = "Gamble";
windowCaption[2] = "Galaxy";
windowCaption[3] = "Stories";

var windowGen = -1;
windowGen[0] = irandom_range(0,14900);
windowGen[1] = irandom_range(0,14900);
windowGen[2] = irandom_range(0,14900);
windowGen[3] = irandom_range(0,14900);

switch (windowGen[0])
{
	case 0:
	windowCaption[0] = "Subsandwich";
	break;
	
	case 1:
	windowCaption[0] = "Strimp";
	break;
	
	case 2:
	if (global.gambleUnlocked) windowCaption[0] = "Gamble...";
	break;
	
	case 3:
	if (global.metaKnightUnlocked) windowCaption[0] = "Meta Knight";
	break;
	
	case 4:
	if (global.keebyUnlocked) windowCaption[0] = "Keeby";
	break;
	
	case 5:
	if (global.helperUnlocked) windowCaption[0] = "Everyone's";
	break;
	
	case 6:
	if (global.gooeyUnlocked) windowCaption[0] = "Gooey";
	break;
	
	case 7:
	if (global.magolorUnlocked) windowCaption[0] = "Magolor";
	break;
	
	case 8:
	if (global.princeFluffUnlocked) windowCaption[0] = "Fluff";
	break;
}
switch (windowGen[1])
{
	case 0:
	windowCaption[1] = "Subsandwich";
	break;
}
switch (windowGen[2])
{
	case 0:
	windowCaption[2] = "Subsandwich";
	break;
}
switch (windowGen[3])
{
	case 0:
	windowCaption[3] = "Subsandwich";
	break;
}
window_set_caption(windowCaption[0] + " " + windowCaption[1] + " " + windowCaption[2] + " " + windowCaption[3] + " - " + global.versionNumber + " - " + selectedSubtitle);
#endregion

#region Discord Rich Presence Setup
var appId = "754628961522286702";

if (!rousr_dissonance_create(appId))
{
	global.discord = false;
	Error_msg = "Discord RPC unable to initialize";
}

rousr_dissonance_handler_on_ready(example_on_ready, id);
rousr_dissonance_handler_on_disconnected(example_on_disconnected, id);
rousr_dissonance_handler_on_error(example_on_error, id);
rousr_dissonance_handler_on_join(example_on_join, id);
rousr_dissonance_handler_on_spectate(example_on_spectate, id);
rousr_dissonance_handler_on_join_request(example_on_join_request, id);
#endregion

#region Palette Swap Setup
if (global.shaders) pal_swap_init_system(shd_pal_swapper,shd_pal_html_sprite,shd_pal_html_surface);
#endregion