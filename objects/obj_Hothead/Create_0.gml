///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

accel = .015;
movespeed = .75;
jumpspeed = 4;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_Hothead_Normal_Idle;
sprWalk = spr_Hothead_Normal_Walk;
sprCharge = spr_Hothead_Normal_Charge;
sprAttack = spr_Hothead_Normal_Attack;
sprHurtGround = spr_Hothead_Normal_HurtGround;
sprHurtAir = spr_Hothead_Normal_HurtAir;
sprHurt = sprHurtGround;

//Other Variables

paletteIndex = spr_Hothead_Normal_Palette_DefaultFlames;
hp = 16;
dmg = 1;
ability = playerAbilities.fire;
points = 500;
parasolX = 2;
parasolY = 3;
duck = false;
attack = false;
attackState = 0;
charge = true;
firePos = 0;

//Timers

walkDuckTimer = -1;
walkDuckTimerMax = 7;
jumpableTimer = -1;
jumpableTimerMax = 180;
jumpTimer = -1;
jumpTimerMax = -1;
attackTimerMax = 180;
attackTimer = attackTimerMax;
fireTimer = -1;
fireTimerMax = 5;