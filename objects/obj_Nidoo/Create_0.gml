///@description Initialize Variables

//Event Inherited

event_inherited();

//Sprites

sprDoor = spr_Door_Normal;
sprReady = spr_Nidoo_Normal_Ready;
sprShake = spr_Nidoo_Normal_Shake;
sprRelease = spr_Nidoo_Normal_Release;
sprHurt = "self";
sprStar = spr_Particle_BigStar_Yellow;

//Other Variables

paletteIndex = spr_Nidoo_Normal_Palette_ShadowGate;
hp = 1;
dmg = 1;
points = 100;
hurtable = false;
active = false;
shakeCount = 0;
shakeCountMax = 3;
drawText = "";
particleDir = 1;
parIndex = 0;
parIndexSpd = .25;

//Timers

particleTimerMax = 15;
particleTimer = particleTimerMax;