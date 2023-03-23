///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Destroy
	
	if (instance_exists(owner))
	{
		if ((owner.hurt) or ((!enemy) and (owner.attackNumber != playerAttacks.swordBarrage)))
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
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
		destroyTimer = -1;
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}