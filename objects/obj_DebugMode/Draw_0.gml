///@description Draw

//Set Alpha

if (debugAlphaTimer > 0)
{
	debugAlphaTimer -= 1;
}
else if (debugAlphaTimer == 0)
{
	if (debugAlpha == .3)
	{
		debugAlpha = .5;
	}
	else
	{
		debugAlpha = .3;
	}
	debugAlphaTimer = debugAlphaTimerMax;
}

//Draw Debug Sprite

if (global.debug)
{
	if ((global.shaders) and (debugPaletteIndex != -1)) pal_swap_set(debugPaletteIndex,1,false);
	draw_sprite_ext(debugSprite,debugIndex,x,y,debugXScale,debugYScale,image_angle,image_blend,debugAlpha);
	if ((global.shaders) and (debugPaletteIndex != -1)) pal_swap_reset();
}

//Draw State Text

draw_set_color(make_color_rgb(168,168,168));

draw_text(x + 8,y,string(debugStateSelected));