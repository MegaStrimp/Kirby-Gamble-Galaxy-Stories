///@description Initialize Variables

#region Event Inherited
event_inherited();
#endregion

#region Physics
#endregion

#region Sprites
sprBossIcon = spr_Healthbar_Boss_Icon_WhispyWoods;
sprBossText = spr_Healthbar_Boss_Text_WhispyWoods;
#endregion

#region Other Variables
hp = 1000;
dmg = 1;
points = 1000;
isBoss = true;
hbActive = false;
healthbarIndex = 3;
hbSetup = true;
hasXKnockback = false;
hasYKnockback = false;
hurtable = false;
phase = 0;
spawnHealthbar = true;
attackNumber = -1;
attackState = 0;
spawnState = 0;
#endregion

#region Timers
spawnStateTimer = -1;
phaseChangeTimer = -1;
attackChooseTimer = -1;
attackChooseTimerMax = 180;
#endregion