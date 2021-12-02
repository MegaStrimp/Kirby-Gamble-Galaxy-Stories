///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

movespeed = 1;
jumpspeed = 2.5;
gravNormal = .2;
gravLimitNormal = 4;

//Other Variables

state = 0;
points = 10;
sprHurt = "self";
hasSpawner = false;
destroyOutsideView = true;
hasGravity = false;
hp = 1;
dmg = 1;
mask_index = -1;

active = false;
owner = -1;

//Timers

activeTimerMax = 60;
activeTimer = activeTimerMax;
flashTimerMax = 5;
flashTimer = flashTimerMax;