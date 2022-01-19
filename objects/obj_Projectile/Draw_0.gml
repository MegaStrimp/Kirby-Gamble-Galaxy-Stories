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

if ((global.shaders) and (paletteIndex != -1)) pal_swap_set(paletteIndex,1,false);
draw_sprite_ext(sprite_index,image_index,x + irandom_range(-shakeX,shakeX),y + irandom_range(-shakeY,shakeY),image_xscale,image_yscale,imageAngle,image_blend,image_alpha);
if ((global.shaders) and (paletteIndex != -1)) pal_swap_reset();

//Debug
/*
draw_text(x,y,string(imageAngle));