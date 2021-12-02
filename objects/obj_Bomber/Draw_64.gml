///@description Draw GUI

//Explosion

if (explosion)
{
	if (circleTimer > 5)
	{
		draw_set_color(c_red);
		draw_set_alpha(0.4);
		if (!(circleTimer % 2)) draw_rectangle(0,0,camera_get_view_x(gameView) + camera_get_view_width(gameView),camera_get_view_y(gameView) + camera_get_view_height(gameView),0);
	}
}