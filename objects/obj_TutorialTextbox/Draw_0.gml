///@description Draw

//Black Alpha Box

draw_set_alpha(.5);
draw_set_color(c_black);
draw_rectangle(camera_get_view_x(gameView),camera_get_view_y(gameView),camera_get_view_x(gameView) + camera_get_view_width(gameView),camera_get_view_y(gameView) + camera_get_view_height(gameView),0);
draw_set_alpha(1);

//Draw Self

draw_self();