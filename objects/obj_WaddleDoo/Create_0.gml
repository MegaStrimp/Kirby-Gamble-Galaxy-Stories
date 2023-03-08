///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .015;
movespeed = .75;
jumpspeed = 4;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_16Square_Mask;

sprIdle = spr_WaddleDoo_Normal_Idle;
sprWalk = spr_WaddleDoo_Normal_Walk;
sprDuck = spr_WaddleDoo_Normal_Duck;
sprJump = spr_WaddleDoo_Normal_Jump;
sprFall = spr_WaddleDoo_Normal_Fall;
sprSwing = spr_WaddleDoo_Normal_Swing;
sprClimbUp = spr_WaddleDoo_Normal_ClimbUp;
sprClimbDown = spr_WaddleDoo_Normal_ClimbDown;
sprCharge = spr_WaddleDoo_Normal_Charge;
sprAttack = spr_WaddleDoo_Normal_Attack;
sprHurt = spr_WaddleDoo_Normal_Hurt;

//Other Variables

paletteIndex = spr_WaddleDoo_Normal_Palette_WaddleWaddle;
hp = waddleDoo_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.beam;
points = waddleDoo_Points;
parasolX = 5;
parasolY = 3;
duck = false;
jump = false;
jumpState = 0;
walkDuck = false;
attack = false;
attackState = 0;
climbDir = -1;

//Timers

eyeFlashTimer = -1;
eyeFlashTimerMax = 2;
walkDuckTimer = -1;
walkDuckTimerMax = 7;
jumpTimerMax = 180;
jumpTimer = jumpTimerMax;
climbTimer = -1;
climbTimerMax = 60;
attackTimerMax = 300;
attackTimer = attackTimerMax;