///@description Draw

//Event Inherited

event_inherited();

//Layers

starAngle = random_range(0,359);
if ((global.shaders) and (paletteIndex != -1)) pal_swap_set(paletteIndex,1,false);
draw_sprite_ext(sprStar,image_index,x + drawShakeX,y + drawShakeY,image_xscale,image_yscale,imageAngle + starAngle,image_blend,1);
draw_sprite_ext(sprRing,image_index,x + drawShakeX,y + drawShakeY,image_xscale,image_yscale,imageAngle,image_blend,1);
if ((global.shaders) and (paletteIndex != -1)) pal_swap_reset();