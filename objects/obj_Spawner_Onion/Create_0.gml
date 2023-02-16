///@description Initialize Variables

//Physics

spd = 1;
groundSpd = 0;
groundSpdMax = 1.5;

//Other Variables

spawn = false;
spawnerRange = 24;
character = 0;
paletteIndex = choose(spr_Onion_Normal_Palette_OrangeCarrot,spr_Onion_Normal_Palette_BrightOrange,spr_Onion_Normal_Palette_DarkOrange,spr_Onion_Normal_Palette_LightOrange,spr_Onion_Normal_Palette_PaleOrange,spr_Onion_Normal_Palette_SaturatedOrange);
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
collisionX = obj_ParentWall;
collisionY = obj_ParentWall;
hasXKnockback = true;
hasYKnockback = true;
hasDeathKnockback = true;
deathOnBottom = true;
objectOnDeath = false;
objectOnDeathObj = obj_Projectile_ExplosionMask;
groundFailsafe = true;
hasDeathParticles = true;
jumpCountMax = 7;
playerOffset = 48;

//Timers

spawnTimer = 0;