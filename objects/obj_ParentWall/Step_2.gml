///@description End Step

if (!global.pause)
{
	//Follow Owner
	
	if (instance_exists(owner))
	{
		x = owner.x;
		y = owner.y;
		image_xscale = owner.image_xscale;
		image_yscale = owner.image_yscale;
	}
}