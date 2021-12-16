///@description Draw

var alpha = .75;

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

if ((spawnedPaletteIndex != -1) and (global.shaders)) pal_swap_set(spawnedPaletteIndex,1,false);
draw_sprite_ext(spawnedSprite,0,xOffset,yOffset,spawnedDirX,image_yscale,image_angle,image_blend,alpha - a + (a2 * .25));
if ((spawnedPaletteIndex != -1) and (global.shaders)) pal_swap_reset();