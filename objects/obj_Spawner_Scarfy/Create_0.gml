///@description Initialize Variables

//Physics

accel = .05;
movespeed = .75;
jumpspeed = 1.5;
gravNormal = .05;
gravLimitNormal = 1.25;

//Other Variables

spawn = false;
spawnerRange = 48;
horLoop = 1;
verLoop = 1;
horOffset = 0;
verOffset = 0;
character = 0;
paletteIndex = spr_Scarfy_Normal_Palette_DeadlyOrange;
state = 0;
hp = 16;
dmg = 1;
ability = "crash";
points = 1000;
hurtable = true;
hasGravity = true;
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
hasXCollision = true;
hasYCollision = true;
clampPositionX = true;
clampPositionY = true;
offScreenTurning = true;
collisionX = obj_Wall;
collisionY = obj_Wall;
hasXKnockback = true;
hasYKnockback = true;
deathOnBottom = true;
objectOnDeath = true;
objectOnDeathObj = obj_Projectile_ExplosionMask;
groundFailsafe = true;

//Timers

spawnTimer = 0;
particleTimer = -1;
particleTimerMax = 4;
attackTimerMax = 300;
attackTimer = attackTimerMax;