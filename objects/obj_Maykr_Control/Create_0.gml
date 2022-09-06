///@description Initialize Variables

#region Randomize
randomize();
#endregion

#region Mouse
mouseX = mouse_x;
mouseY = mouse_y;
mouseXPrev = mouseX;
mouseYPrev = mouseY;
mouseXGui = device_mouse_x_to_gui(0);
mouseYGui = device_mouse_y_to_gui(0);
#endregion

#region Spawn Values
spawnedLayer = "Collision";
spawnedItemString = maykrObjects.debugWall;
spawnedItemIndex = obj_ParentWall;
spawnedSprite = spr_Maykr_Spawner_DebugWall;
spawnedName = "Player";
spawnedPaletteIndex = -1;
spawnedSlopeType = 0;
spawnedXOffset = 0;
spawnedYOffset = 0;
dirX = 1;
snap = 24;
#endregion

#region Tiles
tileDebug = -1;
tileAsteroidFieldsFront = -1;
tileAsteroidFieldsFront3D1 = -1;
tileAsteroidFieldsFront3D2 = -1;
#endregion

#region Settings
hudVisible = true;
bottomHudVisible = true;
bottomHudOpen = false;
#endregion

#region Save Values
maykrFileVersion = "1.0.1";
maykrStartMsg = "This is Gamble Maykr's custom data file made by MegaStrimp for the fangame Kirby Gamble Galaxy Stories. Modifying this file may cause major issues.";
loadState = -1;
loadedFile = -1;
#endregion

#region Global Variables
global.abilityP1 = playerAbilities.none;
global.abilityP2 = playerAbilities.none;
#endregion

#region Enums
enum maykrObjects
{
	collisionTilesStart,
	debugWall,
	debugWall24x24SlopeLeft,
	debugWall24x24SlopeRight,
	//debugWall48x24Slope,
	//debugWall72x24Slope,
	asteroidFieldsFront,
	collisionTilesEnd,
	
	player,
	
	enemiesStart,
	waddleDee,
	waddleDoo,
	brontoBurt,
	twizzy,
	tookey,
	sirKibble,
	gordo,
	bloodGordo,
	shotzo,
	mysticDoo,
	bouncy,
	search,
	wapod,
	cappy,
	coconut,
	noddy,
	blado,
	scarfy,
	rocky,
	grizzo,
	jungleBomb,
	glunk,
	kabu,
	burningLeo,
	tomatoo,
	onion,
	anemonee,
	poppyBrosJr,
	bobo,
	foley,
	nidoo,
	cairn,
	bomber,
	simirror,
	hothead,
	sparky,
	yolky,
	wheelie,
	laserBall,
	juckle,
	kookler,
	ufo,
	bouncySis,
	flamer,
	chuckie,
	walky,
	enemiesEnd,
	
	como,
	
	itemsStart,
	pointStarYellow,
	pointStarGreen,
	pointStarRed,
	pointStarBlue,
	food,
	pepBrew,
	maximTomato,
	starBlock,
	bigStarBlock,
	crate,
	bombBlock,
	bombSolidBlock,
	breakingWall,
	cuttableGrass,
	durableBlock,
	eggPlant,
	itemChest,
	popFlower,
	itemsEnd
}

enum maykrWindows
{
	canvasSetup,
	levelSettings,
	clearCanvas,
	leaveCanvas
}
#endregion

#region Backgrounds
maykrBackgroundList = ds_list_create();
ds_list_add(maykrBackgroundList,bg_GreenGreens1);
ds_list_add(maykrBackgroundList,bg_GreenGreens2);
ds_list_add(maykrBackgroundList,bg_BattleshipHalberd_Sky);
ds_list_add(maykrBackgroundList,bg_AsteroidFields_Sky);
ds_list_add(maykrBackgroundList,bg_Aquatia_Harbor_Day);
ds_list_add(maykrBackgroundList,bg_EggGarden_Surface);
ds_list_add(maykrBackgroundList,bg_EggGarden_Clouds);
ds_list_add(maykrBackgroundList,bg_EggGarden_SurfaceSunset);
ds_list_add(maykrBackgroundList,bg_EggGarden_Temple);
ds_list_add(maykrBackgroundList,bg_EggGarden_Caves);
ds_list_add(maykrBackgroundList,bg_GearCube_Hangar);

selectedBackgroundSize = ds_list_size(maykrBackgroundList);
selectedBackground = irandom_range(0,selectedBackgroundSize - 1);
selectedBackgroundIndex = ds_list_find_value(maykrBackgroundList,selectedBackground);
layer_background_sprite(layer_background_get_id("Background_Parallax1"),selectedBackgroundIndex);
#endregion

#region Music
maykrMusicList = ds_list_create();
ds_list_add(maykrMusicList,mus_Maykr);
ds_list_add(maykrMusicList,mus_GreenGreens);
ds_list_add(maykrMusicList,mus_BattleshipHalberd);
ds_list_add(maykrMusicList,mus_HalberdEscape);
ds_list_add(maykrMusicList,mus_AsteroidFields);
ds_list_add(maykrMusicList,mus_EggGarden_Hub);
ds_list_add(maykrMusicList,mus_EggGarden_Surface);
ds_list_add(maykrMusicList,mus_EggGarden_Temple);
ds_list_add(maykrMusicList,mus_EggGarden_Caves);
ds_list_add(maykrMusicList,mus_GearCube_Hangar);
ds_list_add(maykrMusicList,mus_GearCube_Depths);
ds_list_add(maykrMusicList,mus_Aquatia_Harbor);
ds_list_add(maykrMusicList,mus_PopstarMoon);
ds_list_add(maykrMusicList,mus_AbilityChallenge);

selectedMusicSize = ds_list_size(maykrMusicList);
selectedMusic = irandom_range(0,selectedMusicSize - 1);
selectedMusicIndex = ds_list_find_value(maykrMusicList,selectedMusic);
if (audio_is_playing(global.musicPlaying)) audio_stop_sound(global.musicPlaying);
#endregion

#region Mouse On Top
mouseOnHud = false;
mouseOnTopMap = false;
mouseOnTopDelete = false;
mouseOnTopZoomIn = false;
mouseOnTopZoomOut = false;
mouseOnTopZoomReset = false;
mouseOnTopDrag = false;
mouseOnTopSave = false;
mouseOnTopLoad = false;
mouseOnTopOptions = false;
mouseOnTopReset = false;
mouseOnTopLeave = false;
mouseOnTopPlay = false;
mouseOnTopEdit = false;
mouseOnTopBlocks = false;
mouseOnTopEnemies = false;
mouseOnTopItems = false;
mouseOnTopExpand = false;
mouseOnTopNextInventory = false;
mouseOnTopPreviousInventory = false;
mouseOnTopHide = false;
mouseOnTopSelectedSpawnerOptions = false;
mouseOnTopSelectedSpawnerDirection = false;
#endregion

#region Offsets
topHudOffset = 0;
topHudSaveOffset = 0;
topHudLoadOffset = 0;
topHudOptionsOffset = 0;
topHudResetOffset = 0;
topHudLeaveOffset = 0;
topHudPlayOffset = 0;
topHudEditOffset = 0;
topHudBlocksOffset = 0;
topHudEnemiesOffset = 0;
topHudItemsOffset = 0;
bottomHudOffset = (50 * !bottomHudVisible) - (96 * bottomHudOpen);
#endregion

#region Window Variables
windowIndex = -1;
windowWidth = 10;
windowHeight = 10;
windowActive = false;
windowSelection = 0;
windowContentAlpha = 0;
#endregion

#region Other Variables
active = false;
canBeInteracted = true;
inventoryIndex = 0;
inventoryPage = 0;
scr_Maykr_Inventory(global.gambleMaykrMenu,inventoryPage);
yesBar = 0;
yesBarMax = 120;
textureX = 0;
textureY = 0;
spawnTimer = 0;
collidingSpawner = -1;
selectedSpawner = -1;
draggedSpawner = -1;
deleteMode = false;
dragMode = false;
selectedSpawnerOptionsExists = false;
selectedSpawnerOptionsX = -100;
selectedSpawnerOptionsY = -100;
selectedSpawnerDirectionExists = false;
selectedSpawnerDirection = 1;
selectedSpawnerDirectionX = -100;
selectedSpawnerDirectionY = -100;
#endregion

#region Spawn Kirby
var spawner = instance_create_layer(60,room_height - 91,"Player",obj_Maykr_Spawner);
spawner.spawnedItemString = maykrObjects.player;
spawner.spawnedItemIndex = obj_Player;
spawner.spawnedSprite = spr_Kirby_Normal_Idle;
spawner.spawnedPaletteIndex = scr_Player_SprayPaint(global.sprayPaintKirbyP1,playerCharacters.kirby,global.skinKirbyP1);
#endregion
