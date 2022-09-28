///@description Main

//Event Inherited

event_inherited();

//Position

var _xpos = camera_get_view_x(gameView) / (parallaxXAmplifier - camera_get_view_width(gameView));
var _ypos = camera_get_view_y(gameView) / (parallaxYAmplifier - camera_get_view_height(gameView));

x = xstart - (_xpos * 300);
y = ystart + (lerp(0,parallaxYAmplifier - (sprite_get_height(sprite_index) * image_yscale),_ypos) / 20);