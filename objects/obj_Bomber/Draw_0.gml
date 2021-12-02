///@description Draw

//Event Inherited

event_inherited();

if (explosion)
{	
	draw_set_color(c_white);
	if (circleTimer < 6) draw_circle(x, y, 28 * power(1.1, 5 - circleTimer), false);
}

if(global.pause)
{
	image_speed = 0;
}
else
{
	image_speed = 1;
}