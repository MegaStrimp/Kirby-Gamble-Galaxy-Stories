///@description End Step

if (!isPaused)
{
	//Follow Owner
	
	if (instance_exists(owner))
	{
		x = owner.x;
		y = owner.y - 6;
		image_xscale = owner.image_xscale;
		image_yscale = owner.image_yscale;
	}
}