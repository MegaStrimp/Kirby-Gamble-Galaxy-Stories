///@description Initialize Variables

//Physics

accel = .015;
decel = .05;
movespeed = .75;
jumpspeed = .5;
grav = 0;
gravNormal = .2;
gravParasol = .1;
gravLimit = 0;
gravLimitNormal = 5;
gravLimitParasol = .5;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = spr_Shotzo_Normal_Palette_SteelArmada;
state = 0;
hp = 1;
dmg = 1;
ability = playerAbilities.none;
points = 100;
hurtable = false;
hasGravity = true;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
parasol = false;
parasolX = 0;
parasolY = -3;
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
collisionX = obj_ParentWall;
collisionY = obj_ParentWall;
hasXKnockback = false;
hasYKnockback = false;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;
groundFailsafe = true;
aim = 0;
dir = 0;
shootCountMax = 3;

//Timers

spawnTimer = 0;
aimTimerMax = 20;
aimTimer = aimTimerMax;
attackTimerMax = 180;
attackTimer = attackTimerMax;
attackTimerMin = 10;