///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .1;
movespeed = 1;
jumpspeed = .5;
gravNormal = .05;
gravLimitNormal = 1.25;

//Sprites

mask_index = spr_8Square_Mask;

sprIdleNormal = spr_Foley_Normal_Idle;
sprIdleExplodeReady = spr_Foley_Normal_Idle_ExplodeReady;
sprIdleExplode = spr_Foley_Normal_Idle_Explode;
sprWalkNormal = spr_Foley_Normal_Walk;
sprWalkExplodeReady = spr_Foley_Normal_Walk_ExplodeReady;
sprWalkExplode = spr_Foley_Normal_Walk_Explode;
sprHurtIdle = spr_Foley_Normal_Hurt_Idle;
sprHurtAttack = spr_Foley_Normal_Hurt_Attack;
sprHurt = sprHurtIdle;
sprLeaf = spr_Foley_Normal_Leaf;

//Other Variables

paletteIndex = spr_Foley_Normal_Palette_ExplosiveCream;
hp = foley_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.bomb;
points = foley_Points;
hasGravity = false;
attack = false;
attackState = 0;
scaleOffset = 0;
scaleDir = 1;
explosionResistance = true;
falling = false;

//Timers

attackTimer = -1;
attackTimerMax = 5;