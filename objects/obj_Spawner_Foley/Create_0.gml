///@description Initialize Variables

//Physics

accel = .1;
movespeed = 1;
jumpspeed = .5;
gravNormal = .05;
gravLimitNormal = 1.25;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = spr_Foley_Normal_Palette_ExplosiveCream;
state = 0;
hp = 8;
dmg = 1;
ability = playerAbilities.bomb;
points = 300;
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

//Timers

spawnTimer = 0;
attackTimer = -1;
attackTimerMax = 5;
