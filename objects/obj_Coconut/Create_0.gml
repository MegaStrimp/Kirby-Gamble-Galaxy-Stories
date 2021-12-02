///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

gravNormal = .2;
gravLimitNormal = 6;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_Coconut_Normal_Idle;
sprHurt = "self";

//Other Variables

paletteIndex = spr_Coconut_Normal_Palette_TropicalBrown;
hp = 1;
dmg = 1;
points = 0;
triggered = false;
hasGravity = false;