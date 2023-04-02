///@description Draw GUI

#region Fade Out
if ((fade == 1) and (alpha == 1))
{
	fade = -1;
}
#endregion

#region Destroy
if ((alpha == 0) and (fade == -1))
{
	instance_destroy();
}
#endregion

#region Draw Rectangle
if (((pausable) and (!global.pause)) or (!pausable)) alpha = clamp(alpha + (fade * alphaSpd),0,1);

draw_set_color(color);
draw_set_alpha(alpha);
draw_rectangle(0,0,480,270,0);
draw_set_alpha(1);
draw_set_color(c_white);
#endregion