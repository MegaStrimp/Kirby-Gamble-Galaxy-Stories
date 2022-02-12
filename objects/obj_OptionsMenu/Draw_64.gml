///@description Draw GUI

//Pause

if (paused)
{
	draw_set_color(c_black);
	draw_set_alpha(.9);
	draw_rectangle(0,0,480,270,false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	scr_Draw_Text_Color_Outline(10,10,"Press Any Key",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
}