///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

gravNormal = .2;
gravLimitNormal = 5;

//Other Variables

ownerIndex = -1;
hasDeathKnockback = false;
hasXKnockback = false;
hasYKnockback = false;
canGetHealthbar = false;
hp = 30;
hasGravity = true;
inhalePower = 0;
inhalePowerMax = 45;
invincible = true;

//Timers

invincibleTimer = 10;
destroyTimerMax = 420;
destroyTimer = destroyTimerMax;