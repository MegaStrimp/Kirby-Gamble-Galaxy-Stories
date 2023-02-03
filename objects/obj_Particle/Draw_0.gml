///@description Draw

//Draw Self

if ((global.shaders) and (paletteSpriteIndex != -1) and (paletteIndex != -1)) pal_swap_set(paletteSpriteIndex,paletteIndex,false);
if (blendMode != bm_normal) gpu_set_blendmode(blendMode);
draw_self();
if (blendMode != bm_normal) gpu_set_blendmode(bm_normal);
if ((global.shaders) and (paletteSpriteIndex != -1) and (paletteIndex != -1)) pal_swap_reset();