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
	samuraiKirby
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
	beamGrab,
	mysticBeamGrab,
	mirrorDash,
	fireDash,
	iceGrab,
	yoyoDash,
	wheelNormal,
	wingDash,
	swordDash,
	parasolDash,
	warpStar,
    death
}

enum playerCharacters
{
	kirby,
	gamble,
	metaKnight,
	keeby,
	helper,
	gooey,
	magolor,
	
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
	cosmicBlade,
	mix
}

enum playerAttacks
{
	none,
	
    keyNormal,
	
	cutterNormal,
	cutterCharge,
	cutterDash,
	cutterAir,
	cutterDrop,
	
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
	
	bombReady,
	bombNormal,
	bombDash,
	bombGrab,
	bombDown,
	
	fireNormal,
	fireDash,
	fireAerial,
	fireWheel,
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
	
	parasolDash,
	
	sleepNormal,
	
	scanNormal,
	
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
	scan_kssu
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
	scan_kssu_militaryGreen
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
	whispyWoods_inhale
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

enum stringAttributes
{
	title,
	secretTitle,
	description,
	
	language,
	
	playerCharactersStart,
	playerCharacters_kirby,
	playerCharacters_gamble,
	playerCharacters_metaKnight,
	playerCharacters_keeby,
	playerCharacters_helper,
	playerCharacters_gooey,
	playerCharacters_magolor,
	playerCharactersEnd,
	
	customizeSubMenusStart,
	customizeSubMenus_skins,
	customizeSubMenus_sprayPaints,
	customizeSubMenus_hatSkins,
	customizeSubMenus_hatPaints,
	customizeSubMenus_familiars,
	customizeSubMenusEnd,
	
	playerSprayPaintsStart,
	playerSprayPaints_friendlyPink,
	playerSprayPaints_yellow,
	playerSprayPaints_red,
	playerSprayPaints_green,
	playerSprayPaints_dreamyBlueberry,
	playerSprayPaints_carbon,
	playerSprayPaints_cherry,
	playerSprayPaints_deepFriedKirb,
	playerSprayPaints_emerald,
	playerSprayPaints_gameKirb,
	playerSprayPaints_hauntingPurple,
	playerSprayPaints_invisSprinkle,
	playerSprayPaints_monochromeKirb,
	playerSprayPaints_yolkTemple,
	playerSprayPaints_plumpTomato,
	playerSprayPaints_waddleWaddle,
	playerSprayPaints_mystic,
	playerSprayPaints_shadowOfTheMirror,
	playerSprayPaints_delirious,
	playerSprayPaints_greenjolt,
	playerSprayPaints_butterKnife,
	playerSprayPaints_blurple,
	playerSprayPaints_beam,
	playerSprayPaints_stone,
	playerSprayPaints_mirror,
	playerSprayPaints_ninja,
	playerSprayPaints_fire,
	playerSprayPaints_ice,
	playerSprayPaints_plasma,
	playerSprayPaints_unearthlyHand,
	playerSprayPaints_soMeta,
	playerSprayPaints_gooeyBlue,
	playerSprayPaints_eggBrown,
	playerSprayPaints_telltaleKeeby,
	playerSprayPaints_royalYarn,
	playerSprayPaints_smileyWhite,
	playerSprayPaints_edd,
	playerSprayPaints_musiciansLight,
	playerSprayPaints_aege,
	playerSprayPaints_stray,
	playerSprayPaints_glitch,
	playerSprayPaintsEnd,
	
	familiarsStart,
	familiars_gamble,
	familiars_happyPea,
	familiars_epicJar,
	familiars_krackle,
	familiars_omegaMatter,
	familiarsEnd,
	
	unlockMethodsStart,
	unlockMethods_Default,
	unlockMethods_beatStageMissions,
	unlockMethods_tomatooCatch3Stars,
	unlockMethods_fill10Bestiary,
	unlockMethods_fill25Bestiary,
	unlockMethods_fill50Bestiary,
	unlockMethods_unlock5Familiars,
	unlockMethods_logIntoGamejolt,
	unlockMethods_logIntoDiscord,
	unlockMethods_beamGoldMedal,
	unlockMethods_stoneGoldMedal,
	unlockMethods_mirrorGoldMedal,
	unlockMethods_ninjaGoldMedal,
	unlockMethods_fireGoldMedal,
	unlockMethods_iceGoldMedal,
	unlockMethods_sparkGoldMedal,
	unlockMethods_unlockGamble,
	unlockMethods_unlockMetaKnight,
	unlockMethods_unlockGooey,
	unlockMethods_unlockMagolor,
	unlockMethods_unlockKeeby,
	unlockMethods_unlockPrinceFluff,
	unlockMethods_secret,
	unlockMethodsEnd,
	
	playerAbilitiesStart,
    playerAbilities_cutter,
	playerAbilities_mysticCutter,
    playerAbilities_beam,
	playerAbilities_mysticBeam,
	playerAbilities_stone,
	playerAbilities_ufo,
	playerAbilities_mirror,
	playerAbilities_ninja,
	playerAbilities_bomb,
	playerAbilities_fire,
	playerAbilities_mysticFire,
	playerAbilities_ice,
	playerAbilities_mysticIce,
	playerAbilities_spark,
	playerAbilities_yoyo,
	playerAbilities_wheel,
	playerAbilities_artist,
	playerAbilities_fighter,
	playerAbilities_suplex,
	playerAbilities_wing,
	playerAbilities_jet,
	playerAbilities_sword,
	playerAbilities_parasol,
	playerAbilities_hammer,
	playerAbilities_bell,
	playerAbilities_water,
	playerAbilities_sleep,
	playerAbilities_scan,
	playerAbilities_crash,
	playerAbilities_mic,
	playerAbilities_chef,
	playerAbilities_ultraSword,
	playerAbilitiesEnd,
	
	enemyStart,
	enemy_waddleDee,
	enemy_waddleDoo,
	enemy_brontoBurt,
	enemy_twizzy,
	enemy_tookey,
	enemy_sirKibble,
	enemy_gordo,
	enemy_bloodGordo,
	enemy_shotzo,
	enemy_mysticDoo,
	enemy_bouncy,
	enemy_mrBoogie,
	enemy_search,
	enemy_hiveDrone,
	enemy_wapod,
	enemy_flamebelch,
	enemy_cappy,
	enemy_broomHatter,
	enemy_coconut,
	enemy_noddy,
	enemy_blado,
	enemy_scarfy,
	enemy_rocky,
	enemy_grizzo,
	enemy_jungleBomb,
	enemy_glunk,
	enemy_kabu,
	enemy_burningLeo,
	enemy_tomatoo,
	enemy_onion,
	enemy_anemonee,
	enemy_gim,
	enemy_poppyBrosJr,
	enemy_bobo,
	enemy_foley,
	enemy_nidoo,
	enemy_como,
	enemy_cairn,
	enemy_bomber,
	enemy_simirror,
	enemyEnd,
	
	shop_general,
	shop_starcutter,
	shop_gearCube,
	shop_aquatia,
	
	shopString_buy,
	shopString_talk,
	shopString_leave,
	shopString_next,
	shopString_back,
	shopString_question,
	
	optionsStart,
	options_true,
	options_false,
	options_display,
	options_audio,
	options_controls,
	options_language,
	options_other,
	options_fullscreen,
	options_windowSize,
	options_music,
	options_soundEffects,
	options_left,
	options_right,
	options_up,
	options_down,
	options_jump,
	options_attack,
	options_start,
	options_select,
	options_pressAnyKey,
	options_extraTutorials,
	options_autoSwallow,
	options_musicIntro,
	options_default,
	optionsEnd
}

enum talkingCharacter
{
	kirby,
	gamble,
	metaKnight,
	match
}
#endregion

#region Global Variables
global.versionNumber = "0.5.4";

global.selectedSave = "Save1.ini";
global.hpMax = 5;
global.hpP1 = global.hpMax;
global.hpP2 = global.hpMax;
global.skylandsHpMax = 5;
global.skylandsHpP1 = global.skylandsHpMax;
global.skylandsHpP2 = global.skylandsHpMax;
global.skylandsLives = 2;
global.sprayPaintP1 = spr_Kirby_Normal_Palette_FriendlyPink;
global.sprayPaintP2 = spr_Kirby_Normal_Palette_Yellow;
global.abilityP1 = playerAbilities.none;
global.abilityP2 = playerAbilities.none;
global.familiarP1 = familiars.gamble;
global.familiarP2 = familiars.gamble;
global.roomPrevious = rm_Setup;
global.roomNext = rm_Starcutter;
global.roomCheckpoint = rm_Setup;
global.pause = false;
global.pointStars = 0;
global.goldenTomato = false;
global.stageNumber = 0;
global.debug = true;
//global.debug = false;
show_debug_overlay(global.debug);
global.pause = false;
global.cutscene = false;
global.tutorial = false;
global.shaders = false;
if (shader_is_compiled(shd_pal_swapper)) global.shaders = true;
global.chapterIntro = "1_1";
global.hasCoop = false;
global.muted = false;
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
global.canSave = false;
global.inStage = false;
for (var i = 0; i < 4; i++) global.stageCollectibleTreasures[i] = -1;

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
global.playerGamepad[1] = -1;

for (var i = 0; i < gamepad_get_device_count(); i++)
{
	if (global.playerGamepad[0] == -1)
	{
		if gamepad_is_connected(i)
	    {
	        global.playerGamepad[0] = i;
	    }
	}
	else if (global.playerGamepad[1] == -1)
	{
		if gamepad_is_connected(i)
	    {
	        global.playerGamepad[1] = i;
	    }
	}
}

for (var i = 0; i < 2; i++)
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

global.discordDetailText = "Startup";
global.discordStateText = "";
global.discordLargeImage = "ggs_icon";
global.discordLargeImageText = "Kirby Gamble Galaxy Stories - " + global.versionNumber;
global.discordSmallImage = "teamgamble_icon";
global.discordSmallImageText = "Team Gamble";
#endregion

#region Timers
controllerPressedResetTimer = -1;
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

scr_LoadGame(global.selectedSave);
//if ((!global.debug) and (global.canSave)) scr_SaveGame(global.selectedSave);
if (global.debug) scr_DebugSave();

scr_LoadConfig("config.ini");
window_set_fullscreen(global.fullscreen);

global.language = 0;
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
global.fontDialogueDefaultKanji = font_add(working_directory + "ARIALUNI.TTF",12,false,false,32,127);
global.fontMaykrBlue = font_add_sprite_ext(spr_Maykr_Font_Blue,"abcdefghijklmnopqrstuvwxyz0123456789.!?/()",false,0);
global.fontMaykrRed = font_add_sprite_ext(spr_Maykr_Font_Red,"abcdefghijklmnopqrstuvwxyz0123456789.!?/()",false,0);
global.fontMaykrWhite = font_add_sprite_ext(spr_Maykr_Font_White,"abcdefghijklmnopqrstuvwxyz0123456789.!?/()",false,0);
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

selectedSubtitle = irandom_range(0,array_length(subtitles) - 1);
#endregion

#region Window Caption
var windowCaption = -1;
windowCaption[0] = "Kirby";
windowCaption[1] = "Gamble";
windowCaption[2] = "Galaxy";
windowCaption[3] = "Stories";

var windowGen = -1;
windowGen[0] = irandom_range(0,149);
windowGen[1] = irandom_range(0,149);
windowGen[2] = irandom_range(0,149);
windowGen[3] = irandom_range(0,149);

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
window_set_caption(windowCaption[0] + " " + windowCaption[1] + " " + windowCaption[2] + " " + windowCaption[3] + " - " + global.versionNumber + " - " + subtitles[selectedSubtitle]);
#endregion

#region Discord Rich Presence Setup
var appId = "754628961522286702";

if (!rousr_dissonance_create(appId)) Error_msg = "Discord RPC unable to initialize";

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