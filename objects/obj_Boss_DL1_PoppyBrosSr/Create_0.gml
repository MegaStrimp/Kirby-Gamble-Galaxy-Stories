///@description Initialize Variables

#region Event Inherited
event_inherited();
#endregion

#region Physics
accel = .015;
movespeed = 1.5;
jumpspeed = 3;
gravNormal = .2;
gravLimitNormal = 4;
#endregion

#region Sprites
sprBossIcon = spr_Healthbar_Boss_Icon_DL1_PoppyBrosSr;
sprBossText = spr_Healthbar_Boss_Text_DL1_PoppyBrosSr;

mask_index = spr_DL1_PoppyBrosSr_Mask;

sprIdleL = spr_DL1_PoppyBrosSr_IdleL;
sprIdleR = spr_DL1_PoppyBrosSr_IdleR;
sprBombReady = spr_DL1_PoppyBrosSr_BombReady;
sprBombThrow1 = spr_DL1_PoppyBrosSr_BombThrow1;
sprBombThrow2 = spr_DL1_PoppyBrosSr_BombThrow2;
#endregion

#region Other Variables
hp = 150;
dmg = 1;
points = 1000;
scale = 2;
isBoss = true;
hbActive = false;
healthbarIndex = 5;
hbSetup = true;
hasXKnockback = false;
hasYKnockback = false;
hurtable = false;
phase = 0;
spawnHealthbar = true;
attackNumber = -1;
attackState = 0;
spawnState = 0;

jumpCount = 0;
jumpCountMax = 5;
#endregion

#region Timers
spawnStateTimer = -1;
phaseChangeTimer = -1;
attackChooseTimer = -1;
attackChooseTimerMax = 180;
attackTimer = -1;
bombTimer = -1;
#endregion