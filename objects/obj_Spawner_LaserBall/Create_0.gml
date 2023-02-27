///@description Initialize Variables

//Physics

accel = .12;
movespeed = 1.6;
jumpspeed = 1.6;
gravNormal = 0;
gravLimitNormal = 0;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = spr_LaserBall_Normal_Palette_OrangeLaser;
state = 0;
hp = laserBall_Hp;
dmg = baseEnemyContactDamage;
ability = playerAbilities.beam;
points = laserBall_Points;
hurtable = true;
hasGravity = false;
heavy = false;
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
hasXCollision = false;
hasYCollision = false;
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
attackCountMax = 4;
activateRange = 72;
moveAngleLimitMax = 2;
attackDir = 0;

//Timers

spawnTimer = 0;
attackTimer = -1;
attackTimerMax = 300;
auraTimerMax = 45;
auraTimer = auraTimerMax;
canTurnXTimer = -1;
canTurnXTimerMax = 45;
canTurnYTimer = -1;
canTurnYTimerMax = 60;
