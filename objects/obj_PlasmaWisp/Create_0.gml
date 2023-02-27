///@description Initialize Variables

//Event Inherited

event_inherited();

//Randomize

randomize();

//Physics

accel = .1;
movespeed = 1.5;
jumpspeed = 1.5;

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
hp = plasmaWisp_Hp;
dmg = baseEnemyContactDamage;
ability = playerAbilities.spark;
points = plasmaWisp_Points;
hasGravity = false;
hasXKnockback = false;
hasYKnockback = false;
hasXCollision = false;
hasYCollision = false;
canTurnX = true;
canTurnY = true;
attackState = 0;
loopCount = 3;
chargeX = x;
chargeY = y;

//Timers

attackTimer = 0;