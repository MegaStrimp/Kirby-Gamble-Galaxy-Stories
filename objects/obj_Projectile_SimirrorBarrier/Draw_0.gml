/// @description Insert description here
// You can write your code in this editor

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

//Draw Self

if (timer < 6)
{
	if ((global.shaders) and (paletteIndex != -1)) pal_swap_set(paletteIndex,paletteFlash,false);
	draw_sprite_ext(sprite_index,image_index,x + irandom_range(-shakeX,shakeX),y + irandom_range(-shakeY,shakeY),image_xscale,image_yscale,imageAngle,image_blend,image_alpha);
	if ((global.shaders) and (paletteIndex != -1)) pal_swap_reset();
}

if (timer < 6 and timer > 3)
{
	draw_sprite(spr_Particle_SimirrorShine, 0, x, y - 5);
}