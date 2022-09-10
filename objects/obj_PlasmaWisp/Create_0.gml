///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

accel = .1;
movespeed = 1.5;
jumpspeed = 1.5;
gravNormal = 0;
gravLimitNormal = 0;

//Sprites

mask_index = spr_24SquareOriginless_Mask;

sprIdle = spr_plasmaWisp_Normal_Idle;
sprCharge = spr_plasmaWisp_Normal_Charge;
sprAttack = spr_plasmaWisp_Normal_Shoot;
sprHurt = spr_plasmaWisp_normal_Hurt;
sprAttackBasic = spr_plasmaWisp_Normal_AttackBasic;
sprAttackRecharge =spr_plasmaWisp_Normal_Recharge;

sprCurrent = sprIdle

//Other Variables

paletteIndex = spr_LaserBall_Normal_Palette_OrangeLaser;
hp = 14;
dmg = 1;
ability = playerAbilities.spark;
points = 200;
hasGravity = false;
hasXCollision = false;
hasYCollision = false;
canTurnX = true;
canTurnY = true;

PWattackTimer=0
loopCount=3
chargeX=x
chargeY=y