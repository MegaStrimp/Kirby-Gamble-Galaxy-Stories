///@description Draw

//Draw Self

if (global.shaders) pal_swap_set(spr_Butterfly_Palette,current_pal,false);
draw_self();
if (global.shaders) pal_swap_reset();