///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Variables
	
	if (!instance_exists(owner))
	{
		instance_destroy();
	}
	else
	{
		if (owner.attackNumber != playerAttacks.finalCutter || owner.vsp > 0 && !fallingSlash || owner.vsp <= 0 && fallingSlash)
		{
			instance_destroy();
		}
	}
	
	//Event Inherited
	
	event_inherited();
}