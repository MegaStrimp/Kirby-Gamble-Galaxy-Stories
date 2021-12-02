///@description Draw

//Draw Self

if (global.shaders) pal_swap_set(global.sprayPaintP1,1,false);
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
if (global.shaders) pal_swap_reset();

//Draw Text

draw_sprite_ext(spr_GameOver_Text,0,room_width / 2,25,.5,.5,image_angle,image_blend,image_alpha);