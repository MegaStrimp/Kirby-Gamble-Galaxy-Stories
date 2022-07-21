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
		if (place_meeting(owner.x,owner.y + 1,obj_ParentWall))
		{
			dmg = dmgMin;
		}
		else
		{
			dmg = dmgMax;
		}
		
		if (owner.state != playerStates.parasolDash)
		{
			instance_destroy();
		}
	}
	
	//Event Inherited
	
	event_inherited();
}