///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
strength = 3.5;
angle = 45;

//Enums

enum projectileHitEffects
{
	none,
	cutter,
	explosion1
}

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
objectOnHitDmg = -1;
destroyOutsideView = true;
destroyOutsideRoom = false;
setScale = true;
damageType = damageTypes.none;
abilityType = playerAbilities.none;
scale = 1;
dirX = 1;
dirY = 1;
enemy = false;
isBoss = false;
dmg = 1;
hurt = false;
invincible = false;
hurtable = false;
pausable = true;
shakeX = 0;
shakeY = 0;
drawShakeX = 0;
drawShakeY = 0;
hitInvincibilityMin = 10;
hitInvincibilityMax = 30;
hitInvincibility = hitInvincibilityMin;
imageAngle = image_angle;
syncImageAngle = true;
player = 0;
setupExplode = false;
isFamiliar = false;
trail = -1;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
sprHurt = -1;
points = 0;
ability = playerAbilities.none;
isDirectHit = false;
hitType = 0;
isStunned = false;
isPaused = false;
hitEffect = projectileHitEffects.none;
wallStrength = wallStrengths.none;

//Structs

hitStop = {
	affectSrc : false,
	affectMe  : false,
	affectTar : true,
	len : 7,	// this variable overrides the computation used by the strength var to decide
	shakeStr : 7	// also overrides shake computation
} //SIR YES SIR OORAH

//Other

enum hurt_type {
	HURT_AIR = 0,
	HURT_LAND,
	HURT_GROUNDED,
	HURT_GRAB,
	HURT_NOCOLL // used when enemy's getting knocked out amazing mirror style
};

//Timers

setupTimer = 0;
stunTimer = 0;