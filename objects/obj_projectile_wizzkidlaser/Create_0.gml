///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Sprites

sprStart = spr_Wizzkid_Normal_LaserProjStart;
sprLoop = spr_Wizzkid_Normal_LaserProjLoop;
sprParticle = spr_Wizzkid_Normal_LaserProjParticle;

//Other Variables

damageType = damageTypes.mysticBeam;
setScale = false;
character = 0;
destroyableByWall = false;
destroyableByPlayer = false;
destroyableByEnemy = false;
destroyableByObject = false;
destroyableByProjectile = false;
destroyOutsideView = false;
destroyOutsideRoom = false;
imageIndex = 0;
laserWidth = 750;
vertical = false;
hasRecoilStar = true;

//Timers

particleTimerMax = 5;
particleTimer = particleTimerMax;