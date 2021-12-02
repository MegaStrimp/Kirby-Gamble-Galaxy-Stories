///@description Initialize Variables

//Physics

accel = .02;
movespeed = 1;
jumpspeed = 4;
gravNormal = .2;
gravLimitNormal = 5;

//Other Variables

spawn = false;
spawnerRange = 48;
character = 0;
paletteIndex = spr_Blado_Normal_Palette_BrownBlades;
state = 0;
hp = 1;
dmg = 1;
ability = "none";
points = 100;
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
clampPositionX = false;
clampPositionY = false;
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
turnableXTimer = -1;
turnableXTimerMax = 4;
turnableYTimer = -1;
turnableYTimerMax = 4;