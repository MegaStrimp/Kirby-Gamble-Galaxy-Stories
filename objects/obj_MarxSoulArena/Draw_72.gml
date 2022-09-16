/// @description Insert description here
// You can write your code in this editor

//if(keyboard_check(ord("L"))){
palIndex += .1;
//}
if (palIndex >= sprite_get_width(sprBGPal)) palIndex -= sprite_get_width(sprBGPal);

if (global.shaders) pal_swap_set(sprBGPal,palIndex,false);

//draw sprite
draw_sprite_tiled_ext(sprBG,0,bgX,bgY,1,1,c_white,1);

if (global.shaders) pal_swap_reset();
