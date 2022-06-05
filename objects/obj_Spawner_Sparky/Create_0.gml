///@description Initialize Variables

//Physics

decel = .05;
movespeed = 1.5;
jumpspeed = 4;
gravNormal = .7;
gravLimitNormal = 7;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = AAAAAAAA;
state = 0;
hp = AAAAAAAA;
dmg = 1;
ability = playerAbilities.spark;
points = AAAAAAAA;
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
hasXKnockback = false;
hasYKnockback = false;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;
groundFailsafe = true;

//Timers

spawnTimer = 0;
