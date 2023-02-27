///@description Initialize Variables
instance_destroy();
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

sprIdle = spr_WaddleDee_Normal_Idle;
sprWalk = spr_WaddleDee_Normal_Walk;
sprRun = spr_WaddleDee_Normal_Run;
sprDuck = spr_WaddleDee_Normal_Duck;
sprJump = spr_WaddleDee_Normal_Jump;
sprFall = spr_WaddleDee_Normal_Fall;
sprSwing = spr_WaddleDee_Normal_Swing;
sprParasol = spr_WaddleDee_Normal_Parasol;
sprClimbUp = spr_WaddleDee_Normal_ClimbUp;
sprClimbDown = spr_WaddleDee_Normal_ClimbDown;
sprHurt = spr_WaddleDee_Normal_Hurt;

//Other Variables

paletteIndex = spr_WaddleDee_Normal_Palette_WaddleWaddle;
hp = birdon_Hp;
dmg = baseEnemyContactDamage;
points = birdon_Points;
parasolX = 4;
parasolY = 3;
duck = false;
jump = false;
jumpState = 0;
walkDuck = false;
climbDir = -1;

//Timers

walkDuckTimer = -1;
walkDuckTimerMax = 7;
jumpTimerMax = 180;
jumpTimer = jumpTimerMax;
climbTimer = -1;
climbTimerMax = 60;