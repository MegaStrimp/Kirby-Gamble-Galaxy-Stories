///@description Initialize Variables

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
maykrFileVersion = "1.0.0";
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
	asteroidFieldsFront,
	collisionTilesEnd,
	
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
	como,
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
	
	itemsStart,
	pointStarYellow,
	pointStarGreen,
	pointStarRed,
	pointStarBlue,
	food,
	pepBrew,
	maximTomato,
	itemsEnd
}

enum maykrWindows
{
	canvasSetup
}
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
spawner.spawnedItemIndex = obj_Player;
spawner.spawnedSprite = spr_Kirby_Normal_Idle;
spawner.spawnedPaletteIndex = scr_Player_SprayPaint(global.sprayPaintKirbyP1,playerCharacters.kirby,global.skinKirbyP1);
#endregion
