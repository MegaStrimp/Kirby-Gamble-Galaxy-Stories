/// @description Initialize Variables

//Event Inherited
event_inherited();

//Randomize

randomize();

//Physics

accel = .015;
movespeed = 1;
jumpspeed = 6;
gravNormal = .2;
gravLimitNormal = 5;

//Sprite
mask_index = spr_16Square_Mask;

sprIdle = spr_Cairn_Normal_Bottom;
sprHurt = spr_Cairn_Normal_Hurt;

//Other Variables

state = 0;
hp = 44;
dmg = 1;
ability = playerAbilities.stone;
points = 400;
attack = false;
jump = false;
jumpState = 0;
jumpCount = 0;
middleoffset = 8;
topoffset = 15;
sectionspd = 0;
hspDir = 1;

//Timers
attackTimer = 30;