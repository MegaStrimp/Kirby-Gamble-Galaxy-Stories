///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .05;
movespeed = .75;
jumpspeed = 1;
floatspeed = -4;
gravNormal = .1;
gravLimitNormal = .5;

//Sprites

sprIdle = spr_EnemyParasol_Normal_Idle;
sprFloatReady = spr_EnemyParasol_Normal_FloatReady;
sprFloat = spr_EnemyParasol_Normal_Idle;
sprHurt = -1;
mask_index = sprite_index;

//Other Variables

paletteIndex = spr_EnemyParasol_Normal_Palette_FloatyCanvas;
hp = enemyParasol_Hp;
dmg = baseEnemyContactDamage;
points = enemyParasol_Points;
ability = playerAbilities.parasol;
hasGravity = false;
clampPositionX = false;
clampPositionY = false;
hasXCollision = false;
hasYCollision = false;
offScreenTurning = false;
destroyOutsideView = false;
parasolOwner = id;
float = false;
floatSpriteSet = false;

//Timers

floatTimer = 240;