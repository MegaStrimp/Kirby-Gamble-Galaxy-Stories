///@description End Step

if (!isPaused)
{
	//Follow Owner
	
	if (instance_exists(owner))
	{
		x = owner.x + (21 * owner.dir);
		y = owner.y - 7;
		image_xscale = owner.image_xscale;
		image_yscale = owner.image_yscale;
	}
}