///@description Draw

//Draw Self

if ((global.shaders) and (paletteSpriteIndex != -1) and (paletteIndex != -1)) pal_swap_set(paletteSpriteIndex,paletteIndex,false);
draw_self();
if ((global.shaders) and (paletteSpriteIndex != -1) and (paletteIndex != -1)) pal_swap_reset();