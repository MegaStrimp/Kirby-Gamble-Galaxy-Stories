///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

accel = .015;
movespeed = .75;
jumpspeed = 3;
gravNormal = .2;
gravLimitNormal = 4;

//Sprites

sprIdle = spr_Bouncy_Normal_Idle;
sprHurt = "self";

//Other Variables

paletteIndex = spr_Nidoo_Normal_Palette_ShadowGate;
hp = 1;
dmg = 1;
points = 100;
attack = false;
attackNumber = -1;
isAttacking = false;
jumpCount = 0;
dashDir = 1;
walkDirX = -1;

//Timers

attackReadyTimer = -1;
attackStopTimer = -1;
dashStopTimer = -1;
dashStopTimerMax = 90;
bombThrowTimer = -1;
bombThrowTimerMax = 30;