///@description Initialize Variables

#region Physics
gravNormal = .3;
grav = gravNormal;
gravLimitNormal = 7;
gravLimit = gravLimitNormal;
gravFoot = .1;
gravLimitFoot = 2.5;
hsp = 0;
hspCollision = 0;
hspFinal = 0;
vsp = 0;
vspCollision = 0;
vspFinal = 0;
movespeed = 1;
jumpspeed = 9;
#endregion

#region Sprites
sprBody = spr_HeavyLobster_Normal_Body;
sprHorns = spr_HeavyLobster_Normal_Horns;
sprKnee = spr_HeavyLobster_Normal_Knee;
sprFoot = spr_HeavyLobster_Normal_Foot;
sprFootAngled = spr_HeavyLobster_Normal_FootAngled;
sprClaw = spr_HeavyLobster_Normal_Claw;
sprClawAttack = spr_HeavyLobster_Normal_ClawAttack;
sprEye = spr_HeavyLobster_Normal_Eye;

mask_index = spr_HeavyLobster_Normal_Mask;
#endregion

#region Enums
enum heavyLobsterStates
{
	normal,
	duck,
	dashAttack,
	fireAttack
}
#endregion

#region Other Variables
footTurn = 0;
footTurnRecoil = false;
footFrontIndex = sprFoot;
footBackIndex = sprFoot;

hornIndex = 3;

character = 0;
scale = 1;
dirX = 1;
walkDirX = 1;
owner = -1;
player = 0;
active = false;
activeLerp = 0;
attack = false;
state = heavyLobsterStates.normal;
eyeFlash = false;

bodyX = x;
bodyY = y;

footFrontXOffset = x + (-10 * dirX);
footFrontYOffset = 28;
footFrontX = x + (-10 * dirX);
footFrontY = y + footFrontYOffset;
footFrontGravFinal = 0;
footFrontVsp = 0;
footFrontWalking = false;

footBackXOffset = x + (-8 * dirX);
footBackYOffset = 22;
footBackX = x + (-8 * dirX);
footBackY = y + footBackYOffset;
footBackGravFinal = 0;
footBackVsp = 0;
footBackWalking = false;

clawFrontXOffset = 0;
clawFrontX = x + ((24 + clawFrontXOffset) * dirX);
clawFrontY = y + 19;

clawBackXOffset = 0;
clawBackX = x + ((24 + clawBackXOffset) * dirX);
clawBackY = y + 10;
#endregion

#region Timers
setupTimer = 0;
footBackJumpTimer = -1;
footBackJumpTimerMax = 3;
footTurnTimerMax = 20;
footTurnTimer = footTurnTimerMax;
#endregion