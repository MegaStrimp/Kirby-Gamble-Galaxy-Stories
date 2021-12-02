///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .05;
movespeed = .75;
jumpspeed = 1.5;
gravNormal = .05;
gravLimitNormal = 1.25;

//Sprites

mask_index = spr_16Square_Mask;

sprCalmIdle = spr_Scarfy_Normal_CalmIdle;
sprCalmFly = spr_Scarfy_Normal_CalmFly;
sprCalmHurt = spr_Scarfy_Normal_CalmHurt;
sprMadFly = spr_Scarfy_Normal_MadFly;
sprMadHurt = spr_Scarfy_Normal_MadHurt;
sprHurt = sprCalmHurt;

//Other Variables

paletteIndex = spr_Scarfy_Normal_Palette_DeadlyOrange;
hp = 16;
dmg = 1;
ability = "crash";
points = 1000;
hasGravity = false;
hasXCollision = false;
hasYCollision = false;
clampPositionX = false;
clampPositionY = false;
attack = false;
attackState = 0;
imageSpeed = 1;
particleCount = 0;

//Timers

particleTimer = -1;
particleTimerMax = 4;
attackTimerMax = 300;
attackTimer = attackTimerMax;