///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

accel = .015;
movespeed = .5;
jumpspeed = 4;
gravNormal = .2;
gravLimitNormal = 5;

//Sprites

mask_index = spr_24SquareOriginless_Mask;

sprIdle = spr_Noddy_Normal_Idle;
sprWalk = spr_Noddy_Normal_Walk;
sprSleep = spr_Noddy_Normal_Sleep;
sprHurt = spr_Noddy_Normal_Hurt;

//Other Variables

paletteIndex = spr_Noddy_Normal_Palette_SleepyPink;
hp = noddy_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.sleep;
points = noddy_Points;
dirXDummy = 1;
sleep = false;
sleepReady = false;
sleepStop = false;
blinkCounter = 0;
blinkCounterMax = 1;
yawned = false;

//Timers

sleepTimer = -1;
sleepTimerMax = 90;
sleepReadyTimerMax = 300;
sleepReadyTimer = sleepReadyTimerMax;
sleepStopTimer = -1;
sleepStopTimerMax = 300;