///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Sprites

mask_index = spr_UltraXatch_Normal_Idle;

sprIdle = spr_UltraXatch_Normal_Idle;
sprCrown = spr_UltraXatch_Normal_Crown;
sprHurt = "none";

//Other Variables

paletteIndex = spr_Search_Normal_Palette_BombshellGray;
hp = 99999;
dmg = 1;
points = 500;
charge = false;
crownScale = 0;
crownScaleSpd = .005;
crownScaleSpdMax = .015;
crownScaleDir = 1;
crownScaleMax = .1;

//Timers

attackTimerMax = 90;
attackTimer = attackTimerMax;