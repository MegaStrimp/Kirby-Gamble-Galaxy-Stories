///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

spd = -1.5;

//Other Variables

hasTop = false;
dir = 1;
state = 0;
number = 0;
active = false;
stopped = false;
revert = false;
character = 0;

//Sprites

sprIdle = spr_Gate_Normal_Idle;

//Timers

setupTimer = 0;
stopTimer = -1;
stopTimerMax = 28;
revertTimer = -1;