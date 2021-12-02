///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Sprites

sprIdle = spr_Projectile_Scan_Normal_Idle;

//Other Variables

character = 0;
damageType = "scan";
destroyableByWall = false;
destroyableByEnemy = false;
destroyableByObject = false;
destroyOutsideView = false;
owner = id;
enemy = false;
canScan = true;
image_alpha = .85;

//Timers

particleTimer = -1;
particleTimerMax = 12;