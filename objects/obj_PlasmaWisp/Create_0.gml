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

sprIdle = spr_PlasmaWisp_Normal_Idle;
sprCharge = spr_PlasmaWisp_Normal_Charge;
sprAttack = spr_PlasmaWisp_Normal_Shoot;
sprAttackBasic = spr_PlasmaWisp_Normal_AttackBasic;
sprAttackRecharge = spr_PlasmaWisp_Normal_AttackRecharge;
sprHurt = spr_PlasmaWisp_Normal_Hurt;

sprCurrent = sprIdle;

//Other Variables

paletteIndex = spr_PlasmaWisp_Normal_Palette_Plasma;
hp = 14;
dmg = 1;
ability = playerAbilities.spark;
points = 200;
hasGravity = false;
hasXKnockback = false;
hasYKnockback = false;
hasXCollision = false;
hasYCollision = false;
canTurnX = true;
canTurnY = true;

PWattackTimer=0
loopCount=3
chargeX=x
chargeY=y