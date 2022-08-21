///@description Draw

//Variables

var xx = room_width / 2;
var h = 0;
var textHeight = 24;

//Draw Credits

draw_set_halign(fa_center);

scr_Draw_Text_Color_Outline(xx,yy + (h * textHeight),"Team Gamble",-1,-1,c_aqua,c_aqua,1,c_black,c_black,1,2,5,1,1,image_angle);
h += 2;

for (var i = 0; i < array_length(credits[0]); i++)
{
	scr_Draw_Text_Color_Outline(xx,yy + (h * textHeight),credits[0][i],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,1,1,image_angle);
	h += 1;
}

h += 1;

scr_Draw_Text_Color_Outline(xx,yy + (h * textHeight),"Localization",-1,-1,c_aqua,c_aqua,1,c_black,c_black,1,2,5,1,1,image_angle);
h += 2;

for (var i = 0; i < array_length(credits[1]); i++)
{
	scr_Draw_Text_Color_Outline(xx,yy + (h * textHeight),credits[1][i],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,1,1,image_angle);
	h += 1;
}

h += 1;

scr_Draw_Text_Color_Outline(xx,yy + (h * textHeight),"Special Thanks & Extras",-1,-1,c_aqua,c_aqua,1,c_black,c_black,1,2,5,1,1,image_angle);
h += 2;

for (var i = 0; i < array_length(credits[2]); i++)
{
	scr_Draw_Text_Color_Outline(xx,yy + (h * textHeight),credits[2][i],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,1,1,image_angle);
	h += 1;
}

draw_set_halign(fa_left);