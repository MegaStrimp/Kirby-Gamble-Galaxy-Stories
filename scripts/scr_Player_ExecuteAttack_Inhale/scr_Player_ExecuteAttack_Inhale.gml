///@description Execute Attack - Inhale

function scr_Player_ExecuteAttack_Inhale()
{
	if (!hurt)
	{
		var inhaleMask = instance_create_depth(x + (3 * dir),y - 2,depth - 1,obj_InhaleMask);
		inhaleMask.image_xscale = image_xscale;
		inhaleMask.owner = id;
	}
	walkDuck = false;
	walkDuckTimer = -1;
	isRunning = false;
	image_index = 0;
	inhaling = false;
	state = playerStates.inhale;
}