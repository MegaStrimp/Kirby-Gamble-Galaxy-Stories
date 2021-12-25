///@description Draw

var alpha = .5;
if (spawnedLayer == global.gambleMaykrMenu) alpha = 1;

if ((spawnedPaletteIndex != -1) and (global.shaders)) pal_swap_set(spawnedPaletteIndex,1,false);
draw_sprite_ext(spawnedSprite,0,xOffset,yOffset,spawnedDirX,image_yscale,image_angle,image_blend,alpha);
if ((spawnedPaletteIndex != -1) and (global.shaders)) pal_swap_reset();