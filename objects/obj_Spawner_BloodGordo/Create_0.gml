///@description Initialize Variables

//Physics

spdMin = .02;
spdMax = .2;

//Other Variables

spawn = false;
spawnerRange = 72;
character = 0;
paletteIndex = spr_BloodGordo_Normal_Palette_BloodyThorns;
state = 0;
hp = bloodGordo_Hp;
dmg = bloodGordo_ContactDamage;
ability = playerAbilities.none;
points = bloodGordo_Points;
hurtable = false;
hasGravity = false;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
parasol = false;
parasolX = 0;
parasolY = 0;
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
triggerTresholdMax = 20;
radius = 62;

//Timers

spawnTimer = 0;