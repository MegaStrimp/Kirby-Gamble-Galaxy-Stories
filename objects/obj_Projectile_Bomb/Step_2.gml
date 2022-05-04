///@description End Step

if ((!active) and (((pausable) and (!global.pause)) or (!pausable)))
{
	//Follow Owner
	
	if (instance_exists(owner))
	{
		if (enemy)
		{
			switch (owner.object_index)
			{
				case obj_PoppyBrosJr:
				with (owner)
				{
					switch (floor(handPos))
					{
						case 0:
						handPosSpd = (1 / 8);
						handXOffset = 12 * dirX;
						handYOffset = 3;
						other.xOffset = 19 * dirX;
						other.yOffset = 6;
						break;
						
						case 1:
						handPosSpd = (1 / 6);
						handXOffset = 11 * dirX;
						handYOffset = -5;
						other.xOffset = 16 * dirX;
						other.yOffset = -8;
						break;
						
						case 2:
						handPosSpd = (1 / 4);
						handXOffset = 0;
						handYOffset = 0;
						other.xOffset = 4 * dirX;
						other.yOffset = -19;
						other.depth = depth - 1;
						break;
						
						case 3:
						handPosSpd = (1 / 4);
						image_index = 1;
						handXOffset = 0;
						handYOffset = 0;
						other.xOffset = -13 * dirX;
						other.yOffset = -20;
						break;
						
						case 4:
						handPosSpd = (1 / 4);
						image_index = 1;
						handXOffset = 0;
						handYOffset = 0;
						other.xOffset = -13 * dirX;
						other.yOffset = -11;
						break;
					}
				}
				break;
				
				case obj_PoppyBrosSr:
				xOffset = owner.handX;
				yOffset = owner.handY;
				break;
				
				default:
				image_xscale = owner.dirX;
				dirX = owner.dirX;
				break;
			}
		}
		else if (owner != id)
		{
			image_xscale = owner.dir;
			dirX = owner.dir;
		}
		
		scr_Player_ItemCarryOffset(owner.sprite_index,owner.image_index);
		
		x = owner.x + xOffset;
		y = owner.y + yOffset;
	}
}