///@description Initialize Variables

#region Physics
gravNormal = .23;
grav = gravNormal;
gravLimitNormal = 5;
gravLimit = gravLimitNormal;
hsp = 0;
hspCollision = 0;
hspFinal = 0;
vsp = 0;
vspCollision = 0;
vspFinal = 0;
movespeed = 1;
jumpspeed = 5;

movingFoot = 0; // Determines which foot is currently moving. Switches when a foot touches the ground. 0 is front foot, 1 is back foot.
footFrontHeight = 0;
footBackHeight = 0;
stepDir = -1; // -1 goes up, 1 goes down
stepSpeed = 0.25;
stepHeight = -9;
frontStepDist = 0;
backStepDist = 1;
#endregion

#region Sprites
sprBody = spr_HeavyLobster_Normal_Body;
sprHorns = spr_HeavyLobster_Normal_Horns;
sprKnee = spr_HeavyLobster_Normal_Knee;
sprFoot = spr_HeavyLobster_Normal_Foot;
sprFootAngled = spr_HeavyLobster_Normal_FootAngled;
sprClaw = spr_HeavyLobster_Normal_Claw;
sprClawAttack = spr_HeavyLobster_Normal_ClawAttack;
mask_index = spr_HeavyLobster_Normal_Mask;
#endregion

#region Other Variables
footTurn = 1;
footFrontIndex = sprFoot;
footBackIndex = sprFoot;

hornIndex = 0;

scale = 1;
dirX = 1;
walkDirX = 1;
player = 0;
attack = false;

bodyX = x;
bodyY = y;

footFrontYOffset = 28;
footFrontX = x + (-10 * dirX);
footFrontY = y + footFrontYOffset;

footBackYOffset = 22;
footBackX = x + (-8 * dirX);
footBackY = y + footBackYOffset;

clawFrontXOffset = 0;
clawFrontX = x + ((24 + clawFrontXOffset) * dirX);
clawFrontY = y + 19;

clawBackXOffset = 0;
clawBackX = x + ((24 + clawBackXOffset) * dirX);
clawBackY = y + 10;
#endregion