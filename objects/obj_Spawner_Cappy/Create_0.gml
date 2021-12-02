///@description Initialize Variables

//Physics

accel = .015;
decel = .05;
movespeed = .5;
jumpspeed = 2;
grav = 0;
gravNormal = .2;
gravParasol = .1;
gravLimit = 0;
gravLimitNormal = 5;
gravLimitParasol = .5;
shroomLaunchSpd = -6;

//Other Variables

spawn = false;
spawnerRange = 48;
character = 0;
paletteIndex = spr_Cappy_Normal_Palette_RedCap;
state = 0;
hp = 12;
dmg = 1;
ability = "none";
points = 500;
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
attackStopTimer = -1;
attackStopTimerMax = 300;
attackTimer = -1;
attackTimerMax = 90;