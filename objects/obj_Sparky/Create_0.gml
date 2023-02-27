///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

accel = .015;
movespeed = .5;
jumpspeed = 3;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_24SquareOriginless_Mask;

sprIdle = spr_Sparky_Normal_Idle;
sprWalk = spr_Sparky_Normal_Walk;
sprJump = spr_Sparky_Normal_Jump;
sprCharge = spr_Sparky_Normal_Charge;
sprAttack = spr_Sparky_Normal_Attack;
sprHurt = spr_Sparky_Normal_Hurt;

//Other Variables

paletteIndex = spr_Sparky_Normal_Palette_LightningLime;
hp = sparky_Hp;
dmg = baseEnemyContactDamage;
ability = playerAbilities.spark;
points = sparky_Points;
attack = false;
attackState = 0;
attackProj = -1;

//Timers

attackTimerMax = 300;
attackTimerMin = 120;
attackTimer = attackTimerMax;
jumpTimer = -1;
jumpTimerMax = 30;