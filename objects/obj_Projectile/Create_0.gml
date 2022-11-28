///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
strength = 3.5;
angle = 45;

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
isStunned = false;
lock_x = 0;
lock_y = 0;
melee = false;
hurtFlags = hurt_type.HURT_GROUNDBOUNCE;

//Structs

hitStop = {
	affectSrc : false,
	affectMe  : false,
	affectTar : true,
	len : 8,	// this variable overrides the computation used by the strength var to decide
	shakeStr : 6	// also overrides shake computation
}

//Other

enum hurt_type {
	HURT_GRAB = 1, //THIS WILL ALWAYS TAKE PRECEDENCE OVER ALL OF THE OTHER FLAGS
	HURT_NOCOLL = 2, // used when enemy's getting knocked out amazing mirror style
	HURT_GROUNDBOUNCE = 4,
	HURT_WALLBOUNCE = 8, // wall and ceiling
	HURT_KILL = 16 // won't insta-kill if the enemy is alive
};
//Timers

setupTimer = 0;
stunTimer = 0;