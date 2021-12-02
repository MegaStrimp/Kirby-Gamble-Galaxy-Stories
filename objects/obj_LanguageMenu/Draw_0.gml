///@description Draw

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_Language,0,0 + hudOffset,0);
draw_sprite(spr_Menu_Saves_Medals_Empty,0,4 + hudOffset,5);

//Draw Rectangle

draw_set_color(c_black);
draw_set_alpha(.75);
draw_roundrect((room_width / 2) - 72,36,(room_width / 2) + 72,36 + 9 + (array_length(languageIndex) * 18),false);
draw_set_alpha(1);

//Draw Text

draw_set_color(c_white);
draw_set_font(fnt_DialogueDefault);
draw_set_halign(fa_center);

for (var i = 0; i < array_length(languageIndex); i++)
{
	var col1 = c_white;
	var col2 = c_white;
	if (i == selection)
	{
		col1 = c_yellow;
		col2 = c_yellow;
	}
	scr_Draw_Text_Color_Outline(room_width / 2,42 + (i * 18),languageIndex[i],-1,-1,col1,col2,image_alpha,c_black,c_black,image_alpha,2,5,image_xscale,image_yscale,image_angle);
}
draw_set_halign(fa_left);