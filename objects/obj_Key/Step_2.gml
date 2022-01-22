///@description End Step

if ((!active) and (!global.pause))
{
	//Follow Owner
	
	if (instance_exists(owner))
	{
		image_xscale = owner.dir;
		dirX = owner.dir;
		
		scr_Player_ItemCarryOffset(owner.sprite_index,owner.image_index);
		
		x = owner.x + xOffset + (3 * dirX);
		y = owner.y + yOffset - 2;
	}
}