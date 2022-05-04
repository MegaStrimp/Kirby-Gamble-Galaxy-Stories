///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .015;
movespeed = .75;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_16Square_Mask;
sprIdle = spr_Shotzo_Normal_Idle;
sprHurt = -1;

//Other Variables

paletteIndex = spr_Shotzo_Normal_Palette_SteelArmada;
hp = 1;
dmg = 1;
points = 100;
parasolY = -3;
hurtable = false;
clampPositionX = false;
clampPositionY = false;
offScreenTurning = false;
hasXKnockback = false;
hasYKnockback = false;
target = obj_Player;
inRange = true;
aim = 0;
dir = 0;
shootCount = 0;
shootCountMax = 3;
targetImageIndex = aim;
finalIndex = targetImageIndex;

//Timers

aimTimerMax = 20;
aimTimer = aimTimerMax;
attackTimerMax = 180;
attackTimer = attackTimerMax;
attackTimerMin = 10;