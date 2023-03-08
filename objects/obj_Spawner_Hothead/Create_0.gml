///@description Initialize Variables

//Physics

accel = .015;
movespeed = .75;
jumpspeed = 4;
gravNormal = .2;
gravLimitNormal = 5;

//Other Variables

spawn = false;
spawnerRange = 72;
character = 0;
paletteIndex = spr_Hothead_Normal_Palette_DefaultFlames;
state = 0;
hp = hothead_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.fire;
points = hothead_Points;
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
walkDuckTimer = -1;
walkDuckTimerMax = 7;
jumpableTimer = -1;
jumpableTimerMax = 180;
jumpTimer = -1;
jumpTimerMax = -1;
attackTimerMax = 180;
attackTimer = attackTimerMax;
fireTimer = -1;
fireTimerMax = 5;