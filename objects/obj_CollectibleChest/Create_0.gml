///@description Initialize Variables

#region Physics
vsp = 0;
jumpspeed = .2;
accel = .01;
#endregion

#region Sprites
sprIdle = spr_CollectibleChest_Normal_Idle;
sprShine = spr_CollectibleChest_Normal_Shine;
sprEffect = spr_CollectibleChest_Normal_Effect;
sprTextureMask = spr_CollectibleChest_Normal_TextureMask;
sprTexture = spr_CollectibleChest_Normal_Texture;
#endregion

#region Other Variables
character = 0;
subState = 0;
moveDir = 1;
yy = 0;
yyMax = 2;
shake = 0;
effectAngle = 0;
textureX = 0;
textureY = 0;
walkDirY = -1;
#endregion

#region Timers
setupTimer = 0;
moveTimerMax = 15;
moveTimer = -1;
shineTimerMax = 7;
shineTimer = shineTimerMax;
stateTimer = -1;
stateTimerMax = 210;
#endregion