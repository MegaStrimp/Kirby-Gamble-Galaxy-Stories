///@description Initialize Variables

#region Event Inherited
event_inherited();
#endregion

#region Sprites
sprIdle = spr_FirePuffBlock_Normal_Idle;
sprIdleReady = spr_FirePuffBlock_Normal_Idle_Ready;
sprIdleFire = spr_FirePuffBlock_Normal_Idle_Fire;
sprTop = spr_FirePuffBlock_Normal_Top;
sprTopReady = spr_FirePuffBlock_Normal_Top_Ready;
sprTopFire = spr_FirePuffBlock_Normal_Top_Fire;
topWallSprite = sprTop;
#endregion

#region Other Variables
fire = -1;
fireReadyTimerMax = 60;
#endregion

#region Timers
attackTimerMax = 270;
attackTimer = attackTimerMax;
#endregion