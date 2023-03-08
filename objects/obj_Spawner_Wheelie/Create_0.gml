///@description Initialize Variables

//Physics

accel = .15;
movespeed = 2;
jumpspeed = 5;
gravNormal = .4;
gravLimitNormal = 5;

//Other Variables

spawn = false;
spawnerRange = 72;
character = 0;
paletteIndex = spr_Wheelie_Normal_Palette_Turbo;
state = 0;
hp = wheelie_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.wheel;
points = wheelie_Points;
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
attackChooseTimer = 45;
attackChooseTimerMax = 90;
canTurnTimer = -1;
canTurnTimerMax = 45;
jumpTimer = -1;
jumpTimerMax = 0;
runParticleTimer = -1;
runParticleTimerMax = 60;
crashedTimer = -1;
crashedTimerMax = 90;