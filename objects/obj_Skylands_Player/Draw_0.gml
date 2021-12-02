///@description Draw

//Draw Self

var paletteFlash = 1;
/*if (invincibleFlash)
{
	if (hurt)
	{
		paletteFlash = 3;
	}
	else
	{
		paletteFlash = 2;
	}
}*/

if (global.shaders) pal_swap_set(paletteIndex,paletteFlash,false);
draw_sprite_ext(sprite_index,image_index,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
if (global.shaders) pal_swap_reset();