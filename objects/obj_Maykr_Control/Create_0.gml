///@description Initialize Variables

#region Mouse
mouseX = mouse_x;
mouseY = mouse_y;
mouseXGui = device_mouse_x_to_gui(0);
mouseYGui = device_mouse_y_to_gui(0);
#endregion

#region Spawn Values
spawnedLayer = "collision";
spawnedItemString = "debugWall";
spawnedItemIndex = obj_Wall;
spawnedSprite = spr_Maykr_Spawner_DebugWall;
spawnedPaletteIndex = -1;
spawnedSlopeType = 0;
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

#region Mouse On Top
mouseOnHud = false;
mouseOnTopSave = false;
mouseOnTopLoad = false;
mouseOnTopOptions = false;
mouseOnTopReset = false;
mouseOnTopLeave = false;
mouseOnTopPlay = false;
mouseOnTopBlocks = false;
mouseOnTopEnemies = false;
mouseOnTopItems = false;
mouseOnTopExpand = false;
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