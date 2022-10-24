///@description End Step

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Follow Owner
	
	if (instance_exists(owner))
	{
		x = owner.x + (14 * dirX) + xx;
		y = owner.y - 12 + yy;
		image_xscale = owner.image_xscale;
		image_yscale = owner.image_yscale;
	}
}