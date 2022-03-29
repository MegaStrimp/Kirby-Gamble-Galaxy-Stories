///@description Draw

//Draw Self

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

var drawShakeX = irandom_range(-shakeX,shakeX);
var drawShakeY = irandom_range(-shakeY,shakeY);
scaleExX = lerp(scaleExX,0,.1);
scaleExY = lerp(scaleExY,0,.1);
yDrawOffset = lerp(yDrawOffset,0,.05);

draw_sprite_ext(sprite_index,image_index,x + drawShakeX,y + drawShakeY + yDrawOffset,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);