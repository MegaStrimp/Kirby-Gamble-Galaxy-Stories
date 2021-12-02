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
		if ((owner.attackNumber != "cutterAir") and (owner.attackNumber != "cutterDrop"))
		{
			instance_destroy();
		}
	}
	
	//Event Inherited
	
	event_inherited();
}