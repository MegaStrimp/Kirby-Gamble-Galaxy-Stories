///@description Initialize Variables

//Other Variables

mask_index = spr_8Square_Mask;
active = false;
global.abilityP1 = "none";
global.abilityP2 = "none";
global.gambleMaykrMenu = "collision";
spawnedLayer = "collision";
spawnedItemIndex = obj_Wall;
spawnedSprite = spr_Maykr_Debug_Wall;
snap = 24;
draggedObject = false;
selectedObject = false;
spawnedSlopeType = 0;
dragX = 0;
dragY = 0;
errorAlpha = 0;
errorMsg = "";
optionsOpen = false;
optionIndex = -1;
setupOptions = false;
openMaykrMenu = false;
collidingSpawner = false;
width = 20;
height = 12;
dirX = 1;

//Timers

errorAlphaTimer = -1;
errorAlphaTimerMax = 60;