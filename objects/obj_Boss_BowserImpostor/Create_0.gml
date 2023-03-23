///@description Initialize Variables

#region Event Inherited
event_inherited();
#endregion

#region Physics
movespeed = .75;
jumpspeed = 5;
gravNormal = .2;
gravLimitNormal = 5;
#endregion

#region Sprites
sprBossIcon = spr_Healthbar_Boss_Icon_SMB_BowserImpostor;
sprBossText = spr_Healthbar_Boss_Text_SMB_BowserImpostor;
hbPalette = spr_SMB_BowserImpostor_HBarPalette;

mask_index = spr_SMB_BowserImpostor_Mask;

sprIdle = spr_SMB_BowserImpostor_Idle;
sprFire = spr_SMB_BowserImpostor_Fire;
sprHammerL = spr_SMB_BowserImpostor_HammerL;
sprHammerR = spr_SMB_BowserImpostor_HammerR;
sprDeath = spr_SMB_BowserImpostor_Death;
#endregion

#region Other Variables
hp = 300;
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
hurtFunction = func_HurtBossDefault;
phase = 0;
spawnHealthbar = true;
attackState = 0;
spawnState = 0;

fireCount = 0;
fireCountMax = 0;

jumpCount = 0;
jumpCountMax = 0;
#endregion

#region Timers
spawnStateTimer = -1;
phaseChangeTimer = -1;

fireTimer = -1;
fireTimerMin = 50;
fireTimerMax = 210;

jumpTimer = -1;
jumpTimerMin = 90;
jumpTimerMax = 120;
#endregion