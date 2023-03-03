///@description End Step

if (!isPaused)
{
	//Follow Owner
	
	if (instance_exists(owner))
	{
		x = owner.x;
		y = owner.y - 4 + (14 * dirY);
	}
}