///@description Initialize Variables

#region Mouse
mouseX = mouse_x;
mouseY = mouse_y;
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

#region Mouse On Top
mouseOnHud = false;
mouseOnTopMap = false;
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
mouseOnTopHide = false;
collidingSpawner = false;
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

#region Other Variables
active = false;
canBeInteracted = true;
windowIndex = -1;
inventoryPage = 0;
scr_Maykr_Inventory(global.gambleMaykrMenu,inventoryPage);
yesBar = 0;
yesBarMax = 120;
textureX = 0;
textureY = 0;
spawnTimer = 0;
#endregion

#region Spawn Kirby
var spawner = instance_create_layer(60,room_height - 91,"Player",obj_Maykr_Spawner);
spawner.spawnedItemIndex = obj_Player;
spawner.spawnedSprite = spr_Kirby_Normal_Idle;
spawner.spawnedPaletteIndex = scr_Player_SprayPaint(global.sprayPaintKirbyP1,playerCharacters.kirby,global.skinKirbyP1);
#endregion
