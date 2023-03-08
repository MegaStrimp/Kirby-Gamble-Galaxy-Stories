///@description Initialize Variables

//Other Variables

spawn = false;
spawnerRange = 72;
character = 0;
paletteIndex = spr_Nidoo_Normal_Palette_ShadowGate;
state = 0;
hp = nidoo_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.none;
points = nidoo_Points;
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
hasXKnockback = false;
hasYKnockback = false;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;
groundFailsafe = true;
shakeCountMax = 3;
drawText = "";
parIndexSpd = .25;

//Timers

spawnTimer = 0;
particleTimerMax = 15;
particleTimer = particleTimerMax;