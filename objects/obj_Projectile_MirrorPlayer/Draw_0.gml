///@description Draw

//Draw Self

if ((global.shaders) and (paletteIndex != -1)) pal_swap_set(paletteIndex,1,false);
if (spriteIndex != -1) draw_sprite_ext(spriteIndex,imageIndex,x,y,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
if (hatShadowIndex != -1) draw_sprite_ext(hatShadowIndex,imageIndex,x,y,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
if ((global.shaders) and (paletteIndex != -1)) pal_swap_reset();

if ((global.shaders) and (hatPaletteIndex != -1)) pal_swap_set(hatPaletteIndex,1,false);
if (hatIndex != -1) draw_sprite_ext(hatIndex,imageIndex,x,y,image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),image_angle,image_blend,image_alpha);
if ((global.shaders) and (hatPaletteIndex != -1)) pal_swap_reset();