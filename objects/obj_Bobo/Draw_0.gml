///@description Draw

//Draw Flame

if (!hurt)
{
	if (global.shaders) pal_swap_set(paletteIndex,paletteFlash,false);
	draw_sprite_ext(sprFlame,flameIndex,x + drawShakeX,y + drawShakeY,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
	if (global.shaders) pal_swap_reset();
}

//Event Inherited

event_inherited();