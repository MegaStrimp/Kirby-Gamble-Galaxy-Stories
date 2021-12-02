///@description End Step

if (((pausable) and (!global.pause)) or (!pausable))
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