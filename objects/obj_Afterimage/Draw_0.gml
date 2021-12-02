///@description Draw

//Draw Self

if ((global.shaders) and (paletteIndex != -1)) pal_swap_set(paletteIndex,1,false);
if (sprite_index != -1) draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
if ((global.shaders) and (paletteIndex != -1)) pal_swap_reset();