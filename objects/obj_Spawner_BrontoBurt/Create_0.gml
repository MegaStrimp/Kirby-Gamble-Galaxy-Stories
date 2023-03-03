///@description Initialize Variables

//Physics

accel = .05;
decel = .05;
movespeed = .75;
jumpspeed = 1.5;
grav = 0;
gravNormal = .05;
gravParasol = .1;
gravLimit = 0;
gravLimitNormal = 1.25;
gravLimitParasol = .5;

//Other Variables

spawn = false;
spawnerRange = 24;
horLoop = 1;
verLoop = 1;
horOffset = 0;
verOffset = 0;
character = 0;
paletteIndex = spr_BrontoBurt_Normal_Palette_ClassicalFlight;
state = 0;
hp = brontoBurt_Hp;
dmg = baseEnemyContactDamage;
ability = playerAbilities.none;
points = brontoBurt_Points;
hurtable = true;
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
hasXCollision = false;
hasYCollision = false;
clampPositionX = false;
clampPositionY = false;
offScreenTurning = false;
collisionX = obj_ParentWall;
collisionY = obj_ParentWall;
hasXKnockback = true;
hasYKnockback = true;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;
groundFailsafe = true;
joy = choose(false,true);

//Timers

spawnTimer = 0;
jumpTimerMax = 60;
jumpTimer = jumpTimerMax;