///@description Initialize Variables

#region Other Variables
alphaTarget = random_range(.1,.5);
image_alpha = 0;
speedMultFinal = global.globalSpeedMult;
angleSpd = random_range(.1,1.5);

var scale = random_range(.1,.3);
image_xscale = scale;
image_yscale = scale;
#endregion

#region Timers
alphaChangeTimer = irandom_range(180,300);
#endregion