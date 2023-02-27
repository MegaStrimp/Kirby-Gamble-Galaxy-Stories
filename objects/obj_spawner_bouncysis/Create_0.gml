///@description Initialize Variables

//Physics

accel = .015;
decel = .05;
movespeed = 1;
jumpspeed = 7;
grav = 0;
gravNormal = .2;
gravParasol = .1;
gravLimit = 0;
gravLimitNormal = 5;
gravLimitParasol = .5;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = spr_BouncySis_Normal_Palette_GiganticPink;
state = 0;
hp = bouncySis_Hp;
dmg = baseEnemyContactDamage;
ability = playerAbilities.none;
points = bouncySis_Points;
hurtable = true;
hasGravity = true;
heavy = true;
inhaleXOffset = 0;
inhaleYOffset = 0;
parasol = false;
parasolX = 2;
parasolY = 3;
scale = 1;
dirX = 1;
dirY = 1;
walkDirX = 1;
walkDirY = 1;
imageAngle = 0;
hasXCollision = true;
hasYCollision = true;
clampPositionX = true;
clampPositionY = true;
offScreenTurning = true;
collisionX = obj_ParentWall;
collisionY = obj_ParentWall;
hasXKnockback = true;
hasYKnockback = true;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;
groundFailsafe = true;

//Timers

spawnTimer = 0;
jumpTimerMax = 30;
jumpTimer = jumpTimerMax;