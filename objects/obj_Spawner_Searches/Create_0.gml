///@description Initialize Variables

//Physics

accel = 0;
decel = .05;
movespeed = 0;
jumpspeed = 0;
grav = 0;
gravNormal = .15;
gravParasol = .1;
gravLimit = 0;
gravLimitNormal = 0;
gravLimitParasol = .5;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = spr_Searches_Normal_Palette_BombshellGray;
state = 0;
hp = searches_Hp;
dmg = baseEnemyContactDamage;
ability = playerAbilities.crash;
points = searches_Points;
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
explodeTimer = -1;
explodeTimerMax = 90;