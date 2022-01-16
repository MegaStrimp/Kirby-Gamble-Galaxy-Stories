///@description Initialize Variables

//Physics

spd = 1;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = spr_Onion_Normal_Palette_OrangeCarrot;
state = 0;
hp = 1;
dmg = 1;
ability = playerAbilities.none;
points = 200;
hurtable = true;
hasGravity = false;
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
hasXCollision = false;
hasYCollision = false;
clampPositionX = false;
clampPositionY = false;
offScreenTurning = true;
collisionX = obj_Wall;
collisionY = obj_Wall;
hasXKnockback = true;
hasYKnockback = true;
hasDeathKnockback = false;
deathOnBottom = true;
objectOnDeath = true;
objectOnDeathObj = obj_Projectile_ExplosionMask;
groundFailsafe = true;
hasDeathParticles = false;
jumpCountMax = 7;
playerOffset = 48;

//Timers

spawnTimer = 0;