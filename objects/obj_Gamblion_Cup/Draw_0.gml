///@description Draw

var yy = y;
yy = sine_wave(global.currentTimePausable / 1000,1,4, y);
draw_sprite(sprite_index,image_index,x,yy);