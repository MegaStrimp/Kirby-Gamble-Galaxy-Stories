///@description Player - Item Carry Offset
///@param {real} spriteIndex Which sprite index to check.
///@param {real} imageIndex Which image index to check.

function scr_Player_ItemCarryOffset(argument0,argument1)
{
	var spriteIndex = argument0;
	var imageIndex = argument1;
	
	switch (spriteIndex)
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
		switch (floor(imageIndex))
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
}