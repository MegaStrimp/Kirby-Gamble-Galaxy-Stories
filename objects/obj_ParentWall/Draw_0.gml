///@description Draw

//Variables

drawShakeX = irandom_range(-shakeX,shakeX);
drawShakeY = irandom_range(-shakeY,shakeY);

//Draw Self

if ((global.shaders) and (paletteIndex != -1)) pal_swap_set(paletteIndex,1,false);
draw_sprite_ext(sprite_index,image_index,x + drawShakeX,y + (slope * 4) + drawShakeY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
if ((global.shaders) and (paletteIndex != -1)) pal_swap_reset();

//Shake

if (shakeX > 0)
{
	shakeX -= (sign(shakeX)) / 10;
}
else
{
	shakeX = 0;
}

if (shakeY > 0)
{
	shakeY -= (sign(shakeY)) / 10;
}
else
{
	shakeY = 0;
}