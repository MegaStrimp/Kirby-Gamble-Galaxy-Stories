///@description Initialize Variables

#region Event Inherited
event_inherited();
#endregion

#region Physics
#endregion

#region Sprites
sprBodyNormal = spr_Doomsday_Normal_Body_Normal;
sprAura = spr_Doomsday_Normal_Aura;
sprEye = spr_Doomsday_Normal_Eye;

sprBossIcon = -1;
sprBossText = spr_Healthbar_Boss_Text_Doomsday;
#endregion

#region Other Variables
hp = 1000;
dmg = 1;
points = 1000;
isBoss = true;
healthbarIndex = 4;
hasXKnockback = false;
hasYKnockback = false;
hurtable = false;
phase = 0;
spawnHealthbar = true;
attackNumber = -1;

auraIndex = 0;
#endregion

#region Timers
phaseChangeTimer = -1;
phaseChangeTimer = 0;
attackChooseTimer = -1;
attackChooseTimerMax = 180;
#endregion