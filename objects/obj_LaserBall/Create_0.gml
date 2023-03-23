///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .12;
movespeed = 1.6;
jumpspeed = 1.6;
gravNormal = 0;
gravLimitNormal = 0;

//Sprites

mask_index = spr_24SquareOriginless_Mask;

sprIdle = spr_LaserBall_Normal_Idle;
sprFace = spr_LaserBall_Normal_Face;
sprAttack = spr_LaserBall_Normal_Attack;
sprHurt = spr_LaserBall_Normal_Hurt;

sprAura1Idle = spr_LaserBall_Normal_Aura1_Idle;
sprAura1Attack = spr_LaserBall_Normal_Aura1_Attack;
sprAura1Hurt = spr_LaserBall_Normal_Aura1_Hurt;
sprAura2Idle = spr_LaserBall_Normal_Aura2_Idle;
sprAura2Attack = spr_LaserBall_Normal_Aura2_Attack;
sprAura2Hurt = spr_LaserBall_Normal_Aura2_Hurt;
sprAura3Idle = spr_LaserBall_Normal_Aura3_Idle;
sprAura3Attack = spr_LaserBall_Normal_Aura3_Attack;
sprAura3Hurt = spr_LaserBall_Normal_Aura3_Hurt;
sprAura4Idle = spr_LaserBall_Normal_Aura4_Idle;
sprAura4Attack = spr_LaserBall_Normal_Aura4_Attack;
sprAura4Hurt = spr_LaserBall_Normal_Aura4_Hurt;
sprAura = sprAura1Idle;

//Other Variables

paletteIndex = spr_LaserBall_Normal_Palette_OrangeLaser;
hp = laserBall_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.beam;
points = laserBall_Points;
hasGravity = false;
hasXCollision = false;
hasYCollision = false;
auraState = 0;
faceX = 0;
canTurnX = true;
canTurnY = true;
attack = false;
attackState = 0;
attackCount = 0;
attackCountMax = 4;
activateRange = 72;
moveAngleLimitMax = 2;
active = false;
attackDir = 0;

//Timers

attackTimer = -1;
attackTimerMax = 300;
auraTimerMax = 45;
auraTimer = auraTimerMax;
canTurnXTimer = -1;
canTurnXTimerMax = 45;
canTurnYTimer = -1;
canTurnYTimerMax = 60;