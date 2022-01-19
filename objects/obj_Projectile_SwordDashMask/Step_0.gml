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
		if (image_index < 2)
		{
			dmg = dmgMax;
		}
		else
		{
			dmg = dmgMin;
		}
		
		if (owner.state != playerStates.swordDash)
		{
			instance_destroy();
		}
	}
	
	//Event Inherited
	
	event_inherited();
}