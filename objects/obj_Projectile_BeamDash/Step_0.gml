///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Destroy
	
	if (instance_exists(owner))
	{
		if ((owner.hurt) or (owner.attackNumber != playerAttacks.beamDash))
		{
			instance_destroy();
		}
	}
	else
	{
		instance_destroy();
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}