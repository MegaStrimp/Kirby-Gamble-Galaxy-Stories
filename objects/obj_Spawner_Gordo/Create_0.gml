///@description Initialize Variables

//Physics

accel = .02;
decel = .05;
movespeed = 1;
jumpspeed = 4;
grav = 0;
gravNormal = .2;
gravParasol = .1;
gravLimit = 0;
gravLimitNormal = 5;
gravLimitParasol = .5;

//Other Variables

spawn = false;
spawnerRange = 72;
horLoop = 1;
verLoop = 1;
horOffset = 0;
verOffset = 0;
character = 0;
paletteIndex = spr_Gordo_Normal_Palette_ThornyBackside;
state = 0;
hp = gordo_Hp;
dmg = gordo_ContactDamage;
ability = playerAbilities.none;
points = gordo_Points;
hurtable = false;
hasGravity = false;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
parasol = false;
parasolX = 0;
parasolY = 0;
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