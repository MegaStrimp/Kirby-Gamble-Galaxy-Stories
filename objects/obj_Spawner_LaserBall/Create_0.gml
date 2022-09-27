///@description Initialize Variables

//Physics

accel = .1;
movespeed = 1.5;
jumpspeed = 1.5;
gravNormal = 0;
gravLimitNormal = 0;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = spr_LaserBall_Normal_Palette_OrangeLaser;
state = 0;
hp = 14;
dmg = 1;
ability = playerAbilities.beam;
points = 200;
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
collisionX = obj_ParentWall;
collisionY = obj_ParentWall;
hasXKnockback = true;
hasYKnockback = true;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;
groundFailsafe = true;
attackCountMax = 4;
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
canTurnYTimerMax = 90;
