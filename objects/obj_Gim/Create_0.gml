///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .02;
movespeed = 1;
jumpspeed = 4;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_Gim_Normal_Idle;
sprHurt = "self";

//Other Variables

paletteIndex = spr_Gim_Normal_Palette_YoyoRobo;
hp = 1;
dmg = 1;
ability = "yoyo";
points = 100;
hurtable = false;
hasGravity = false;
offScreenTurning = true;
hasXKnockback = false;
hasYKnockback = false;
turnableX = true;
turnableY = true;

//Timers

turnableXTimer = -1;
turnableXTimerMax = 4;
turnableYTimer = -1;
turnableYTimerMax = 4;