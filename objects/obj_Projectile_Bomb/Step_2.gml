///@description End Step

if ((!active) and (((pausable) and (!global.pause)) or (!pausable)))
{
	//Follow Owner
	
	if (instance_exists(owner))
	{
		if (enemy)
		{
			if (owner.object_index == obj_PoppyBrosJr)
			{
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
			}
			else
			{
				image_xscale = owner.dirX;
				dirX = owner.dirX;
			}
		}
		else if (owner != id)
		{
			image_xscale = owner.dir;
			dirX = owner.dir;
		}
		
		switch (owner.sprite_index)
		{
			case spr_Kirby_Normal_ItemCarry_Heavy_Idle:
			xOffset = -4 * dirX;
			yOffset = -22;
			break;
			
			case spr_Kirby_Normal_ItemCarry_Heavy_Walk:
			xOffset = -4 * dirX;
			yOffset = -22;
			break;
			
			case spr_Kirby_Normal_ItemCarry_Heavy_Duck:
			xOffset = 1 * dirX;
			yOffset = -13;
			break;
			
			case spr_Kirby_Normal_Bomb_Ready:
			switch (floor(owner.image_index))
			{
				case 0:
				xOffset = 16 * dirX;
				yOffset = -4;
				break;
				
				case 1:
				xOffset = 10 * dirX;
				yOffset = -17;
				break;
				
				case 2:
				xOffset = 4 * dirX;
				yOffset = -20;
				break;
			}
			break;
			
			case spr_Kirby_Normal_Bomb_Attack1:
			xOffset = -4 * dirX;
			yOffset = -22;
			break;
		}
		x = owner.x + xOffset;
		y = owner.y + yOffset;
	}
}