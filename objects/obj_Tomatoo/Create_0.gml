///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

movespeed = 1;
movespeedFin = 0;
jumpspeed = 6;
gravNormal = .25;
gravLimitNormal = 6;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_Tomatoo_Normal_Idle;
sprDuck = spr_Tomatoo_Normal_Duck;
sprJump = spr_Tomatoo_Normal_Jump;
sprFall = spr_Tomatoo_Normal_Fall;
sprHeavyDuck = spr_Tomatoo_Normal_HeavyDuck;
sprHurt = spr_Tomatoo_Normal_Hurt;

//Other Variables

paletteIndex = spr_Tomatoo_Normal_Palette_RedTomato;
hp = 1;
dmg = 1;
points = 200;
parasolX = 2;
parasolY = 3;
clampPositionX = true;
duck = false;
jump = false;
jumpState = 0;
jumpCount = 0;
jumpCountMax = 7;
walkDuck = false;
heavyDuck = false;
playerOffset = 48;

//Timers

walkDuckTimer = -1;
walkDuckTimerMax = 4;
jumpTimerMax = 60;
jumpTimer = jumpTimerMax;