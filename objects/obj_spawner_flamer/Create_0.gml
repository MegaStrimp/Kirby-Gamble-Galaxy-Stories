///@description Initialize Variables

//Physics

movespeed = 2;

//Other Variables

spawn = false;
spawnerRange = 72;
character = 0;
paletteIndex = spr_Flamer_Normal_Palette_FieryRed;
state = 0;
hp = flamer_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.fire;
points = flamer_Points;
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
attackTimerMax = 150;
attackTimer = attackTimerMax;
particleTimer = -1;
particleTimerMax = 10;