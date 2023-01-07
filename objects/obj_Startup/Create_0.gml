///@description Initialize Variables

//Randomize

randomize();

//Other Variables

alpha = 0;
alphaTarget = 0;
state = 0;
strimpAnim = 0;
gambleVsp = 0;
gambleJumpspeed = .2;
gambleAccel = .01;
gambleWalkDirY = -1;
gambleY = 0;
subAlpha = .5;
subAlphaDir = 1;

var hasAntiPiracy = irandom_range(0,9999999);
if (hasAntiPiracy == 0) alarm[0] = 60;

//Timers

stateTimer = 20;
transitionTimerMax = -1;
transitionTimer = transitionTimerMax;