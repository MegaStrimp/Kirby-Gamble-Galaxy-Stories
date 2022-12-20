///@description Initialize Variables

#region Event Inherited
event_inherited();
#endregion

#region Randomize
randomize();
#endregion

#region Physics
decel = .05;
movespeed = 2;
jumpspeed = 4;
jumpspeedHighJump = 8;
gravNormal = .2;
gravLimitNormal = 5;
#endregion

#region Sprites
mask_index = spr_GrandWheelie_Normal_Idle;

sprIdle = spr_GrandWheelie_Normal_Idle;
sprWalk = spr_GrandWheelie_Normal_Idle;
sprHighJump = spr_GrandWheelie_Normal_Idle;
sprHighFall = spr_Wizzkid_Normal_HighFall;
sprLaserReady = spr_Wizzkid_Normal_LaserReady;
sprLaser = spr_Wizzkid_Normal_Laser;
sprLaserRelease = spr_Wizzkid_Normal_LaserRelease;
sprDeathAir = spr_Wizzkid_Normal_DeathAir;
sprDeathGround = spr_Wizzkid_Normal_DeathGround;

sprLaserProjStart = spr_Wizzkid_Normal_LaserProjStart;
sprLaserProjLoop = spr_Wizzkid_Normal_LaserProjLoop;
sprLaserProjParticle = spr_Wizzkid_Normal_LaserProjParticle;

sprBossIcon = spr_Healthbar_Boss_Icon_GrandWheelie;
sprBossText = spr_Healthbar_Boss_Text_GrandWheelie;
#endregion

#region Other Variables
paletteIndex = spr_PoppyBrosSr_Normal_Palette_BlueBomber;
hp = 153;
dmg = 1;
ability = playerAbilities.wheel;
points = 2000;
isMiniBoss = true;
hbSetup = true;
healthbarIndex = 2;
hasXKnockback = false;
hasYKnockback = false;
hasDeathKnockback = false;
starColors = [0,1,2,3,4,5,6,7];

slideTargetX = -1;
attack = false;
attackNumber = -1;
attackState = 0;
xLimit1 = x - 180;
xLimit2 = x + 180;
#endregion

#region Timers
slideTimer = -1;
slideTimerMax = 70;
attackReadyTimerMax = 240;
attackReadyTimer = attackReadyTimerMax;
jumpAttackTimer = -1;
laserAttackTimer = -1;
attackStopTimer = -1;
#endregion
