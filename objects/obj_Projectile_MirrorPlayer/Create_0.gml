///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;
spd = 6;
decel = .3;
spdBuiltIn = 0;
fric = 0;
fricSpd = 0;

//Other Variables

destroyOutsideView = false;
canBeReflected = false;
state = 0;
owner = id;
damageType = damageTypes.mirror;
enemy = false;
character = 0;
setScale = false;
reversed = false;
angle = 0;
angleSpd = 0;
jumpAngle = 0;
orbitMax = 60;
orbit = 0;
lastReflection = false;
spriteIndex = -1;
paletteIndex = -1;
hatIndex = -1;
hatShadowIndex = -1;
hatPaletteIndex = -1;
imageIndex = 0;
scaleExX = 0;
scaleExY = 0;
scaleExSpd = .1;

//Sprites

sprIdle = spr_Kirby_Normal_Mirror_Attack3;

//Timers

reverseTimer = -1;
restoreTimer = -1;