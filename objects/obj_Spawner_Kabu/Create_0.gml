///@description Initialize Variables

//Physics

accel = .03;
decel = .05;
movespeed = 1.5;
jumpspeed = 6;
grav = 0;
gravNormal = .2;
gravParasol = .1;
gravLimit = 0;
gravLimitNormal = 5;
gravLimitParasol = .5;

//Other Variables

spawn = false;
spawnerRange = 48;
character = 0;
paletteIndex = spr_Kabu_Normal_Palette_StoneYellow;
state = 0;
hp = 16;
dmg = 1;
ability = "none";
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
collisionX = obj_Wall;
collisionY = obj_Wall;
hasXKnockback = true;
hasYKnockback = true;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;
groundFailsafe = true;

//Timers

spawnTimer = 0;
walkDuckTimer = -1;
walkDuckTimerMax = 7;
jumpTimerMax = -1;
jumpTimer = jumpTimerMax;