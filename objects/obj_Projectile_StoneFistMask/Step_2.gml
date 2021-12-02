///@description End Step

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Follow Owner
	
	if (instance_exists(owner))
	{
		x = owner.x + (xPos * dirX);
		y = owner.y + yPos;
		image_xscale = owner.image_xscale;
		image_yscale = owner.image_yscale;
	}
}