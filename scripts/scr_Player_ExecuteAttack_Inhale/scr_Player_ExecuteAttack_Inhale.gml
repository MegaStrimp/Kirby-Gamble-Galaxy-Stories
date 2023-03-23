///@description Execute Attack - Inhale

function scr_Player_ExecuteAttack_Inhale()
{
	#region Attack Attributes
	walkDuck = false;
	walkDuckTimer = -1;
	isRunning = false;
	inhaling = false;
	state = playerStates.inhale;
	#endregion
	
	#region Attack Sprite
	image_index = 0;
	#endregion
	
	#region Spawn Inhale Mask
	if (!hurt)
	{
		var inhaleMask = instance_create_depth(x - (5 * dir),y - 4,depth - 1,obj_InhaleMask);
		inhaleMask.image_xscale = image_xscale;
		inhaleMask.owner = id;
	}
	#endregion
}