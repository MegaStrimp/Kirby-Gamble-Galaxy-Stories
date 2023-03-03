///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Destroy
	
	if (instance_exists(owner))
	{
		if ((owner.hurt) or ((!enemy) and (owner.attackNumber != playerAttacks.ninjaDash)))
		{
			instance_destroy();
		}
	}
	else
	{
		instance_destroy();
	}
	
	//Position
	
	xx += hsp;
	yy += vsp;
	
	if (yy >= 12)
	{
		xx = 0;
		yy = 0;
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}