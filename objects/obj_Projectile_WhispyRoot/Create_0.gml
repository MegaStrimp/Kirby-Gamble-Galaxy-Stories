///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;

//Sprites

sprRootReady = spr_WhispyWoods_Normal_RootReady;
sprRoot1 = spr_WhispyWoods_Normal_Root1;
sprRoot2 = spr_WhispyWoods_Normal_Root2;
sprRoot3 = spr_WhispyWoods_Normal_Root3;
sprite_index = sprRootReady;

//Other Variables

canBeReflected = false;
character = 0;
rootIndex = 0;
recoilTimer = 10;
ready = false;

//Timers

readyTimerMax = 45;
readyTimer = readyTimerMax;
destroyTimerMax = 135;
destroyTimer = destroyTimerMax;
