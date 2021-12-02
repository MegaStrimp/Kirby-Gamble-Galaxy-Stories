///@description Draw

var x1 = x - 11;
var x2 = x + 11;
var y1 = y - 11;
var y2 = y + 11;
var alpha = .75;

switch (spawnedItemIndex)
{
	case obj_Wall:
	x1 = x;
	x2 = x + 23;
	y1 = y;
	y2 = y + 23;
	break;
	
	case obj_Ladder:
	x1 = x;
	x2 = x + 23;
	y1 = y;
	y2 = y + 23;
	break;
	
	case obj_Platform:
	x1 = x;
	x2 = x + 23;
	y1 = y;
	y2 = y + 23;
    yOffset = y - 4;
	break;
	
	case obj_StarBlock:
	x1 = x;
	x2 = x + 23;
	y1 = y;
	y2 = y + 23;
	break;
	
	case obj_BigStarBlock:
	x1 = x;
	x2 = x + 47;
	y1 = y;
	y2 = y + 47;
	break;
	
	case obj_BombBlock:
	x1 = x;
	x2 = x + 23;
	y1 = y;
	y2 = y + 23;
	break;
	
	case obj_BombSolidBlock:
	x1 = x;
	x2 = x + 23;
	y1 = y;
	y2 = y + 23;
	break;
	
	case obj_BombSolidBlock_Invis:
	x1 = x;
	x2 = x + 23;
	y1 = y;
	y2 = y + 23;
	alpha = .5;
	break;
	
	case obj_AbilityBlock:
	x1 = x;
	x2 = x + 23;
	y1 = y;
	y2 = y + 23;
	break;
	
	case obj_BreakingWall:
	x1 = x;
	x2 = x + 23;
	y1 = y;
	y2 = y + 23;
	break;
	
	case obj_Crate:
	x1 = x;
	x2 = x + 47;
	y1 = y;
	y2 = y + 47;
	break;
	
	case obj_DurableBlock:
	x1 = x;
	x2 = x + 47;
	y1 = y;
	y2 = y + 47;
	break;
	
	case obj_CuttableGrass:
	x1 = x;
	x2 = x + 35;
	y1 = y - 24;
	y2 = y + 35;
	break;
}

var a = 0;
if (spawnedLayer != global.gambleMaykrMenu) a = .5;

var b = true;
var a2 = false;
if (selected == 0)
{
	draw_set_color(c_white);
    b = true;
    a2 = false;
}
else
{
	draw_set_color(c_yellow);
    b = false;
    a2 = true;
}

draw_rectangle(x1,y1,x2,y2,b);
if ((spawnedPaletteIndex != -1) and (global.shaders)) pal_swap_set(spawnedPaletteIndex,1,false);
draw_sprite_ext(spawnedSprite,0,xOffset,yOffset,spawnedDirX,image_yscale,image_angle,image_blend,alpha - a + (a2 * .25));
if ((spawnedPaletteIndex != -1) and (global.shaders)) pal_swap_reset();