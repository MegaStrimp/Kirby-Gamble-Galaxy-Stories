///@description Initialize Variables

//Randomize

randomize();

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

//Window Caption

global.versionNumber = "Beta XIV";
global.versionNumber = "Gamble Maykr Beta III";

var windowCaption = -1;
windowCaption[0] = "Kirby";
windowCaption[1] = "Gamble";
windowCaption[2] = "Galaxy";
windowCaption[3] = "Stories";

var windowGen = -1;
windowGen[0] = irandom_range(0,99);
windowGen[1] = irandom_range(0,99);
windowGen[2] = irandom_range(0,99);
windowGen[3] = irandom_range(0,99);

switch (windowGen[0])
{
	default:
		
	break;
}
if (windowGen[2] == 0) windowCaption[2] = "Gamernt";
if (windowGen[2] == 0) windowCaption[2] = "Gamernt";
window_set_caption(windowCaption[0] + " " + windowCaption[1] + " " + windowCaption[2] + " " + windowCaption[3] + " - " + global.versionNumber + " - " + subtitles[selectedSubtitle]);

//Set Macros and Enums

#macro gameView view_camera[0]

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
	wingDash,
	swordDash,
    death
}

enum playerCharacters
{
	kirby,
	gamble,
	keeby,
	gooey,
	magolor,
	metaKnight
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
	ultraSword
}

enum playerAttacks
{
    normal,
    cutter,
    beam
}

enum damageTypes
{
	none,
	every,
	explosion,
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
	ultraSword
}

enum carriedItems
{
	none,
	bomb
}

enum carriedItemStates
{
	light,
	heavy
}

//Global Variables

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
global.familiarP1 = "Gamble";
global.familiarP2 = "Gamble";
global.roomPrevious = rm_Setup;
global.roomCheckpoint = rm_Setup;
global.pause = false;
global.pointStars = 0;
global.goldenTomato = false;
global.stageNumber = 0;
global.debug = true;
//global.debug = false;
//show_debug_overlay(global.debug);
global.pause = false;
global.cutscene = false;
global.tutorialNotif = false;
global.shaders = false;
if (shader_is_compiled(shd_pal_swapper)) global.shaders = true;
global.chapterIntro = "1_1";
global.hasCoop = false;
global.muted = false;
global.healthbarMarkedEnemy = -1;
global.musicPlaying = -1;
global.gambleMaykr = false;
global.gambleMaykrMenu = "collision";
global.helperHud = false;
global.isHub = false;
global.halberdEscape = false;
global.treasureGot = false;
global.isMobile = false;

global.discordDetailText = "Startup";
global.discordStateText = "";
global.discordLargeImage = "ggs_icon";
global.discordLargeImageText = "Kirby Gamble Galaxy Stories - " + global.versionNumber;
global.discordSmallImage = "teamgamble_icon";
global.discordSmallImageText = "Team Gamble";

//Load Game

scr_LoadGame(global.selectedSave);
scr_SaveGame(global.selectedSave);

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

//Fonts

mapStringKssu = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz .!";
global.bitmapKssu = font_add_sprite_ext(spr_Hud_Dialogue_Font_Kssu,mapStringKssu,false,0);

//Discord Rich Presence Setup

var appId = "754628961522286702";

if (!rousr_dissonance_create(appId)) Error_msg = "Discord RPC unable to initialize";

rousr_dissonance_handler_on_ready(example_on_ready, id);
rousr_dissonance_handler_on_disconnected(example_on_disconnected, id);
rousr_dissonance_handler_on_error(example_on_error, id);
rousr_dissonance_handler_on_join(example_on_join, id);
rousr_dissonance_handler_on_spectate(example_on_spectate, id);
rousr_dissonance_handler_on_join_request(example_on_join_request, id);

//Palette Swap Setup

if (global.shaders) pal_swap_init_system(shd_pal_swapper,shd_pal_html_sprite,shd_pal_html_surface);

global.gambleUnlocked = true;
global.gooeyUnlocked = true;