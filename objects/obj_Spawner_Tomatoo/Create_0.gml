///@description Initialize Variables

//Physics

movespeed = 1;
jumpspeed = 6;
gravNormal = .25;
gravLimitNormal = 6;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = spr_Tomatoo_Normal_Palette_RedTomato;
state = 0;
hp = 1;
dmg = 1;
ability = playerAbilities.none;
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
jumpCountMax = 7;
playerOffset = 48;

//Timers

spawnTimer = 0;
walkDuckTimer = -1;
walkDuckTimerMax = 4;
jumpTimerMax = 60;
jumpTimer = jumpTimerMax;