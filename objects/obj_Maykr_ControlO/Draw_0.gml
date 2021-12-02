///@description Draw

//Draw Sprite

var xOffset = x;
var yOffset = y;
var alpha = 1;

switch (spawnedItemIndex)
{
	case obj_Platform:
	yOffset = y + 4;
	break;
	
	case obj_BombSolidBlock_Invis:
	alpha = .5;
	break;
	
	case obj_Bumper:
	xOffset = x - 8;
	yOffset = y - 8;
	break;
	
	case obj_Spring:
	xOffset = x - 8;
	yOffset = y - 4;
	break;
	
	case obj_Trampoline:
	xOffset = x - 11;
	yOffset = y + 4;
	break;
	
	case obj_Spike:
	xOffset = x - 12;
	yOffset = y - 12;
	break;
	
	case obj_PopFlower:
	yOffset = y + 4;
	break;
	
	case obj_ItemChest:
	xOffset = x + 3;
	yOffset = y + 4;
	break;
	
	case obj_Button:
	xOffset = x + 1;
	yOffset = y + 12;
	break;
	
	case obj_Gate:
	yOffset = y - 12;
	break;
	
	case obj_AbilityTrophy:
	yOffset = y + 4;
	break;
	
	case obj_CuttableGrass:
	yOffset = y + 4;
	break;
	
	case obj_Player:
	yOffset = y + 4;
	break;
	
	case obj_WaddleDee:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_WaddleDoo:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_BrontoBurt:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_Twizzy:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_Tookey:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_SirKibble:
	xOffset = x + 3;
	yOffset = y + 4;
	break;
	
	case obj_Shotzo:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_MysticDoo:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_Bouncy:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_Wapod:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_Cappy:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_BroomHatter:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_Coconut:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_Noddy:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_Blado:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_Rocky:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_Grizzo:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_JungleBomb:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_Kabu:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
	
	case obj_BurningLeo:
	xOffset = x - 1;
	yOffset = y + 4;
	break;
}

//Draw Cursor

if ((!active) and (!optionsOpen))
{
	draw_sprite_ext(spawnedSprite,0,xOffset,yOffset,dirX,image_yscale,image_angle,image_blend,alpha);
	draw_set_alpha(errorAlpha);
	draw_set_font(fnt_Options);
	draw_text(x,y,errorMsg);
	draw_set_alpha(1);
}