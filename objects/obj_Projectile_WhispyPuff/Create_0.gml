///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

spd = 4;
dirSpd = .02;

//Other Variables

ability = playerAbilities.none;
points = 10;
heavy = true;
inhaleXOffset = 0;
inhaleYOffset = 0;
sprHurt = "self";
hasSpawner = false;
destroyOutsideView = true;
mask_index = -1;
rotate = false;

active = false;
owner = -1;

//Timers

activeTimerMax = 60;
activeTimer = activeTimerMax;
flashTimerMax = 5;
flashTimer = flashTimerMax;