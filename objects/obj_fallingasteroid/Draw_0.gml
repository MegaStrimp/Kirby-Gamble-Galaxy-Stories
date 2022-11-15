///@description Draw

//Draw Fire

var fireAngle = scr_AngleSet(angle - 270);
draw_sprite_ext(sprFire,fireIndex,x,y,image_xscale,image_yscale,fireAngle,image_blend,image_alpha - 90);

//Draw Self

draw_self();