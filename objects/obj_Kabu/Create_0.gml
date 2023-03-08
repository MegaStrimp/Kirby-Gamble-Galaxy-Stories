///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .03;
movespeed = 1.5;
jumpspeed = 6;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_Kabu_Normal_Idle;
sprWalk = spr_Kabu_Normal_Walk;
sprRun = spr_Kabu_Normal_Run;
sprDuck = spr_Kabu_Normal_Duck;
sprHurt = -1;

//Other Variables

paletteIndex = spr_Kabu_Normal_Palette_StoneYellow;
hp = kabu_Hp;
dmg = baseEnemyContact_Damage;
points = kabu_Points;
parasolX = 2;
parasolY = 3;
duck = false;
jump = false;
jumpState = 0;
walkDuck = false;

//Timers

walkDuckTimer = -1;
walkDuckTimerMax = 7;
jumpTimerMax = -1;
jumpTimer = jumpTimerMax;