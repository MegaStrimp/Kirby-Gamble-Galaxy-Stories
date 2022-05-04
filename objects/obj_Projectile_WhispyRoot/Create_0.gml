///@description Initialize Variables

//Randomize

randomize();

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;

//Sprites

sprIdle = spr_WhispyWoods_Normal_RootAttack;
sprite_index = -1;

//Other Variables

canBeReflected = false;
character = 0;
rootIndex = 0;
recoilTimer = 10;

//Timers

readyTimerMax = 45;
readyTimer = readyTimerMax;
destroyTimerMax = 135;
destroyTimer = destroyTimerMax;
