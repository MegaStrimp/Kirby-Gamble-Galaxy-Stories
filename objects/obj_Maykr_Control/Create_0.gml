///@description Initialize Variables

//Mouse

mouseX = device_mouse_x_to_gui(0);
mouseY = device_mouse_y_to_gui(0);

active = false;
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