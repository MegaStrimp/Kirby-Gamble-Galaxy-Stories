///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

accel = .015;
movespeed = 2;
jumpspeed = 3;
gravNormal = .3;
gravLimitNormal = 6;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_JungleBomb_Normal_Idle;
sprWalk = spr_JungleBomb_Normal_Walk;
sprDuck = spr_JungleBomb_Normal_Duck;
sprJump = spr_JungleBomb_Normal_Jump;
sprFall = spr_JungleBomb_Normal_Fall;
sprAttack = spr_JungleBomb_Normal_Attack;
sprHurt = spr_JungleBomb_Normal_Hurt;

//Other Variables

paletteIndex = spr_JungleBomb_Normal_Palette_Pineapple;
hp = 16;
dmg = 1;
ability = playerAbilities.bomb;
points = 300;
parasolX = 2;
parasolY = 3;
offScreenTurning = false;
duck = false;
jump = false;
jumpCount = 0;
walkDuck = false;
attack = false;
jumpable = false;
running = false;

//Timers

walkDuckTimer = -1;
walkDuckTimerMax = 7;
jumpTimerMax = 180;
jumpTimer = jumpTimerMax;
attackStopTimer = -1;
attackStopTimerMax = 120;