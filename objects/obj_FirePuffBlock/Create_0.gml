///@description Initialize Variables

#region Event Inherited
event_inherited();
#endregion

#region Sprites
sprIdle = spr_FirePuffBlock_Normal_Idle;
topWallSprite = spr_FirePuffBlock_Normal_Top;
#endregion

#region Other Variables
fire = -1;
fireReadyTimerMax = 60;
#endregion

#region Timers
attackTimerMax = 270;
attackTimer = attackTimerMax;
#endregion