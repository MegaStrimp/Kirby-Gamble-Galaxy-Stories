///@description Initialize Variables

//Event Inherited

event_inherited();

//Physics

hsp = 0;
vsp = 0;

//Sprites

mask_index = spr_16Square_Mask;
sprForm1 = spr_Projectile_BeamCharge_Normal_Form1;
sprForm2 = spr_Projectile_BeamCharge_Normal_Form2;
sprForm3 = spr_Projectile_BeamCharge_Normal_Form3;
sprForm4 = spr_Projectile_BeamCharge_Normal_Form4;
sprIdle = sprForm1;

//Other Variables

character = 0;
destroyableByEnemy = false;
destroyableByObject = false;
damageType = damageTypes.beam;
enemy = false;
deathParticlesOnHit = true;
deathParticlesOnHitNumber = playerAttacks.beamCharge;
formIndex = 0;
scaleEx = 1;
destroy = false;
player = 0;
dmgTemp = 0;
starIndex = 0;
syncImageAngle = false;
supercharged = false;

//Timers

particleTimer = -1;
particleTimerMax = 12;
flareTimerMax = 4;
flareTimer = flareTimerMax + irandom_range(-2,1);
formChangeTimer = -1;
formChangeTimerMax = 4;
destroyTimerMax = 210;
destroyTimer = destroyTimerMax;