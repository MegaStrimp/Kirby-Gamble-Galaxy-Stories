///@description Main

//Event Inherited

event_inherited();

//Position

var _xpos = camera_get_view_x(gameView) / (parallaxXAmplifier - camera_get_view_width(gameView));
var _ypos = camera_get_view_y(gameView) / (parallaxYAmplifier - camera_get_view_height(gameView));

x = xstart - (_xpos * 30) + lerp(0,parallaxXAmplifier - (sprite_get_width(bg_GreenGreens1_Layer1) * image_xscale),_xpos);
y = ystart + lerp(0,parallaxYAmplifier - (sprite_get_height(bg_GreenGreens1_Layer1) * image_yscale),_ypos);