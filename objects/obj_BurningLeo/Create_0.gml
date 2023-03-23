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

sprIdle = spr_BurningLeo_Normal_Idle;
sprWalk = spr_BurningLeo_Normal_Walk;
sprDuck = spr_BurningLeo_Normal_Duck;
sprJump = spr_BurningLeo_Normal_Jump;
sprFall = spr_BurningLeo_Normal_Fall;
sprCharge = spr_BurningLeo_Normal_Charge;
sprAttack = spr_BurningLeo_Normal_Attack;
sprHurt = spr_BurningLeo_Normal_Hurt;

//Other Variables

paletteIndex = spr_BurningLeo_Normal_Palette_FlamingRed;
hp = burningLeo_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.fire;
points = burningLeo_Points;
parasolX = 2;
parasolY = 3;
duck = false;
jumpable = true;
jump = false;
jumpState = 0;
walkDuck = false;
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