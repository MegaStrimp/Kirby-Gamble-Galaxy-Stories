///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Variables
	
	if (!instance_exists(owner))
	{
		//instance_destroy();
	}
	else
	{
		if ((owner.attackNumber != playerAttacks.cutterAir) and (owner.attackNumber != playerAttacks.cutterDrop))
		{
			//instance_destroy();
		}
	}
	
	//Event Inherited
	
	event_inherited();
}