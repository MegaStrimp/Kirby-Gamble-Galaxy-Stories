///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

spd = 0;

//Other Variables

destroyableByPlayer = false;
destroyableByEnemy = false;
destroyableByObject = false;
destroyableByProjectile = false;
destroyableByWall = false;
deathParticlesOnHit = false;
deathParticlesOnHitNumber = choose("roundabout","doubleCross","cross","doubleHex");
active = false;
hurtsObject = active;
hurtsEnemy = active;
hurtsBoss = active;
hurtsProjectile = active;
destroyableByWall = active;
followOwner = true;
followOffsetX = 0;
followOffsetY = 0;

//Timers

destroyTimer = -1;
particleTimer = -1;
particleTimerMax = 5;