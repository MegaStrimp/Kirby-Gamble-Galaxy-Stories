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

var paletteFlash = 1;
if (invincibleFlash)
{
	if (hurt)
	{
		paletteFlash = 3;
	}
	else
	{
		paletteFlash = 2;
	}
}

//if (global.shaders) pal_swap_set(paletteIndex,paletteFlash,false);
draw_sprite_ext(sprite_index,image_index,x + irandom_range(-shakeX,shakeX),y + irandom_range(-shakeY,shakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
//if (global.shaders) pal_swap_reset();

//Debug
/*
draw_text(x,y - 8,sign(hasXKnockback));
draw_text(x,y - 16,sign(hasYKnockback));