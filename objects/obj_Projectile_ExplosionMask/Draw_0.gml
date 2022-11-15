///@description Draw

//Draw Radius

if (showHitbox)
{
	draw_set_alpha(.5);
	draw_set_color(c_white);
	draw_circle(x,y,24 * image_xscale,false);
	draw_set_alpha(1);
}