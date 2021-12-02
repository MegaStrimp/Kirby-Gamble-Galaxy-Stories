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
deathParticlesOnHit = false;
deathParticlesOnHitNumber = choose("roundabout","doubleCross","cross","doubleHex");
active = false;

//Timers

destroyTimer = -1;
particleTimer = -1;
particleTimerMax = 5;