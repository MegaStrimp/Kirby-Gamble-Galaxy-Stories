///@description Initialize Variables

//Physics

accel = .015;
movespeed = .5;
jumpspeed = 3;
gravNormal = .2;
gravLimitNormal = 5;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = spr_Sparky_Normal_Palette_LightningLime;
state = 0;
hp = 16;
dmg = 1;
ability = playerAbilities.spark;
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
attackTimerMax = 300;
attackTimerMin = 120;
attackTimer = attackTimerMax;
jumpTimer = -1;
jumpTimerMax = 30;