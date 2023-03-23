///@description Initialize Variables

#region Event Inherited
event_inherited();
#endregion

#region Physics
accel = .15;
movespeed = 2;
jumpspeed = 5;
gravNormal = .4;
gravLimitNormal = 5;
#endregion

#region Sprites
mask_index = spr_24SquareOriginless_Mask;

sprIdle = spr_Wheelie_Normal_Idle;
sprDecel1 = spr_Wheelie_Normal_Decel1;
sprDecel2 = spr_Wheelie_Normal_Decel2;
sprHurt = spr_Wheelie_Normal_Hurt;
#endregion

#region Other Variables
paletteIndex = spr_Wheelie_Normal_Palette_Turbo;
hp = wheelie_Hp;
dmg = baseEnemyContact_Damage;
ability = playerAbilities.wheel;
points = wheelie_Points;
attackNumber = 0;
attackState = 0;
canTurn = true;
jumpCount = 0;
dash = 0;
crashed = false;
#endregion

#region Timers
attackChooseTimer = 45;
attackChooseTimerMax = 90;
canTurnTimer = -1;
canTurnTimerMax = 45;
jumpTimer = -1;
jumpTimerMax = 0;
runParticleTimer = -1;
runParticleTimerMax = 60;
crashedTimer = -1;
crashedTimerMax = 90;
#endregion
