///@description Begin Step

#region Variables
speedMultFinal = speedMultObject * global.globalSpeedMult;
#endregion

#region Destroy
if (!instance_exists(owner)) instance_destroy();
#endregion