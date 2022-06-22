///@description Initialize Variables

//Other Variables

gamePaused = false;
deactivated = false;
page = 0;
cursorSelection = 0;
cursorPos = 0;
cursorPosDir = 1;
cursorIndex = 0;
buttonIndex = 0;
textVisible = true;
textTimer = 0;
textTimerMax = 5;
indexTimer = 0;
indexTimerMax = 40;
imageIndex = 0;
abilityPage[0] = 0;
player = 0;
dialogueActive = false;
pauseDelay = 0;
cellphoneActive = false;
musicPaused = false;
transitionXOffset = -25;
transitionYOffset = 0;
cellphoneTitleActive = false;
cellphoneTitleOffset = - 250;
backgroundXOffset = 0;
backgroundYOffset = 0;

//Description Strings

descriptionStrKirby = scr_Localization_Main(stringAttributes.playerCharacters_kirby,stringAttributes.description,0,global.language);
descriptionStrGamble = scr_Localization_Main(stringAttributes.playerCharacters_gamble,stringAttributes.description,0,global.language);
descriptionStrMetaKnight = scr_Localization_Main(stringAttributes.playerCharacters_metaKnight,stringAttributes.description,0,global.language);
descriptionStrHelper = scr_Localization_Main(stringAttributes.playerCharacters_helper,stringAttributes.description,0,global.language);
descriptionStrGooey = scr_Localization_Main(stringAttributes.playerCharacters_gooey,stringAttributes.description,0,global.language);
descriptionStrMagolor = scr_Localization_Main(stringAttributes.playerCharacters_magolor,stringAttributes.description,0,global.language);
descriptionStrKeeby = scr_Localization_Main(stringAttributes.playerCharacters_keeby,stringAttributes.description,0,global.language);
descriptionStrCutter = scr_Localization_Main(stringAttributes.playerAbilities_cutter,stringAttributes.description,0,global.language);
descriptionStrBeam = scr_Localization_Main(stringAttributes.playerAbilities_beam,stringAttributes.description,0,global.language);
descriptionStrMysticBeam = scr_Localization_Main(stringAttributes.playerAbilities_mysticBeam,stringAttributes.description,0,global.language);
descriptionStrStone = scr_Localization_Main(stringAttributes.playerAbilities_stone,stringAttributes.description,0,global.language);
descriptionStrUfo = scr_Localization_Main(stringAttributes.playerAbilities_ufo,stringAttributes.description,0,global.language);
descriptionStrMirror = scr_Localization_Main(stringAttributes.playerAbilities_mirror,stringAttributes.description,0,global.language);
descriptionStrNinja = scr_Localization_Main(stringAttributes.playerAbilities_ninja,stringAttributes.description,0,global.language);
descriptionStrBomb = scr_Localization_Main(stringAttributes.playerAbilities_bomb,stringAttributes.description,0,global.language);
descriptionStrFire = scr_Localization_Main(stringAttributes.playerAbilities_fire,stringAttributes.description,0,global.language);
descriptionStrMysticFire = scr_Localization_Main(stringAttributes.playerAbilities_mysticFire,stringAttributes.description,0,global.language);
descriptionStrIce = scr_Localization_Main(stringAttributes.playerAbilities_ice,stringAttributes.description,0,global.language);
descriptionStrSpark = scr_Localization_Main(stringAttributes.playerAbilities_spark,stringAttributes.description,0,global.language);
descriptionStrYoyo = scr_Localization_Main(stringAttributes.playerAbilities_yoyo,stringAttributes.description,0,global.language);
descriptionStrWheel = scr_Localization_Main(stringAttributes.playerAbilities_wheel,stringAttributes.description,0,global.language);
descriptionStrArtist = scr_Localization_Main(stringAttributes.playerAbilities_artist,stringAttributes.description,0,global.language);
descriptionStrFighter = scr_Localization_Main(stringAttributes.playerAbilities_fighter,stringAttributes.description,0,global.language);
descriptionStrSuplex = scr_Localization_Main(stringAttributes.playerAbilities_suplex,stringAttributes.description,0,global.language);
descriptionStrWing = scr_Localization_Main(stringAttributes.playerAbilities_wing,stringAttributes.description,0,global.language);
descriptionStrJet = scr_Localization_Main(stringAttributes.playerAbilities_jet,stringAttributes.description,0,global.language);
descriptionStrSword = scr_Localization_Main(stringAttributes.playerAbilities_sword,stringAttributes.description,0,global.language);
descriptionStrParasol = scr_Localization_Main(stringAttributes.playerAbilities_parasol,stringAttributes.description,0,global.language);
descriptionStrHammer = scr_Localization_Main(stringAttributes.playerAbilities_hammer,stringAttributes.description,0,global.language);
descriptionStrBell = scr_Localization_Main(stringAttributes.playerAbilities_bell,stringAttributes.description,0,global.language);
descriptionStrWater = scr_Localization_Main(stringAttributes.playerAbilities_water,stringAttributes.description,0,global.language);
descriptionStrSleep = scr_Localization_Main(stringAttributes.playerAbilities_sleep,stringAttributes.description,0,global.language);
descriptionStrScan = scr_Localization_Main(stringAttributes.playerAbilities_scan,stringAttributes.description,0,global.language);
descriptionStrCrash = scr_Localization_Main(stringAttributes.playerAbilities_crash,stringAttributes.description,0,global.language);
descriptionStrMic = scr_Localization_Main(stringAttributes.playerAbilities_mic,stringAttributes.description,0,global.language);
descriptionStrUltraSword = scr_Localization_Main(stringAttributes.playerAbilities_ultraSword,stringAttributes.description,0,global.language);