///@description Initialize Variables

//Physics

hsp = 0;
vsp = 0;
grav = .2;
gravLimit = 5;
accel = .2;
spd = 0;
spdMax = 2;

//Sprites

mask_index = spr_AbilityTrophy_Mask;
sprIdle = spr_AbilityTrophy_Normal_Idle;
sprItem = spr_AbilityStar_Normal;

//Other Variables

ability = "none";
enemy = false;
heavy = false;
inhaleXOffset = 0;
inhaleYOffset = 0;
hasGravity = false;
hasXCollision = true;
hasYCollision = true;
collisionX = obj_Wall;
collisionY = obj_Wall;
hasAura = false;
itemAnim = 0;
itemAnimSpd = .2;
itemYOffset = 0;
itemYOffsetSpd = .075;
itemYOffsetMax = 2;
itemYOffsetDir = 1;
imageAlpha = 1;

//Timers

setupTimer = 0;
auraTimerMax = 2;
auraTimer = auraTimerMax;