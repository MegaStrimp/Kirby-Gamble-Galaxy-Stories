///@description Initialize Variables

#region Sprites
sprReady = spr_FirePuffBlock_Normal_FireReady;
sprIdle = spr_FirePuffBlock_Normal_Fire;
#endregion

#region Other Variables
owner = id;
dmg = 30;
hurt = false;
hurtable = false;
ready = true;
speedMultObject = 1;
#endregion

#region Timers
readyTimer = 60;
destroyTimer = -1;
destroyTimerMax = 90;
#endregion