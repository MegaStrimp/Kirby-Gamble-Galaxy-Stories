///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

spd = 1;
groundSpd = 0;
groundSpdMax = 1.5;

//Sprites

mask_index = spr_Onion_Mask;

sprIdle = spr_Onion_Normal_Idle;
sprThrow = spr_Onion_Normal_Throw;
sprHurt = -1;

//Other Variables

paletteIndex = choose(spr_Onion_Normal_Palette_OrangeCarrot,spr_Onion_Normal_Palette_BrightOrange,spr_Onion_Normal_Palette_DarkOrange,spr_Onion_Normal_Palette_LightOrange,spr_Onion_Normal_Palette_PaleOrange,spr_Onion_Normal_Palette_SaturatedOrange);
hp = 1;
dmg = 1;
points = 200;
clampPositionX = false;
clampPositionY = false;
hasGravity = false;
hasXCollision = false;
hasYCollision = false;
explosionResistance = true;
instaDeath = false;
groundCooldown = 0;
