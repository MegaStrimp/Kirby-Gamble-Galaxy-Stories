///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;

//Other Variables

owner = id;
paletteIndex = -1;
destroyableByWall = true;
destroyableByPlayer = false;
destroyableByEnemy = true;
destroyableByObject = true;
destroyableByProjectile = false;
hurtsObject = true;
hurtsEnemy = true;
hurtsBoss = true;
hurtsPlayer = false;
hurtsProjectile = true;
canReflect = false;
canBeReflected = true;
particleOnHit = false;
particleOnHitSpr = spr_Particle_Explosion1;
deathParticlesOnHit = false;
deathParticlesOnHitNumber = 0;
objectOnHit = false;
objectOnHitObj = obj_Projectile_ExplosionMask;
objectOnHitDmg = "none";
destroyOutsideView = true;
setScale = true;
damageType = damageTypes.none;
scale = 1;
dirX = 1;
dirY = 1;
enemy = false;
dmg = 1;
hurt = false;
invincible = false;
hurtable = false;
pausable = true;
shakeX = 0;
shakeY = 0;
hitInvincibilityMin = 10;
hitInvincibilityMax = 30;
hitInvincibility = hitInvincibilityMin;
imageAngle = image_angle;
syncImageAngle = true;
player = 0;
setupExplode = false;
isFamiliar = false;
trail = -1;

//Timers

setupTimer = 0;