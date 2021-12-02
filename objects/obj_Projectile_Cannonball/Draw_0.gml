///@description Draw

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

//Draw Self

draw_sprite_ext(sprite_index,image_index,x + spriteX + irandom_range(-shakeX,shakeX),y + spriteY + irandom_range(-shakeY,shakeY),image_xscale,image_yscale,image_angle,image_blend,image_alpha);