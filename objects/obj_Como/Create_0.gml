///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .1;
movespeed = 1;
jumpspeed = .5;
gravNormal = .05;
gravLimitNormal = 1.25;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_Como_Normal_Idle;
sprFall = spr_Como_Normal_Fall;
sprHurt = spr_Como_Normal_Hurt;

//Other Variables

paletteIndex = spr_Como_Normal_Palette_SpiderGold;
hp = 8;
dmg = 1;
points = 300;
hasGravity = false;
attack = false;
hasString = true;

//Timers

attackTimer = -1;
attackTimerMax = 5;