///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Destroy
	
	if (instance_exists(owner))
	{
		if (owner.hurt)
		{
			instance_destroy();
		}
	}
	else
	{
		instance_destroy();
	}
}