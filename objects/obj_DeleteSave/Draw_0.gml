///@description Draw

//Draw Hud

draw_sprite(spr_Menu_MainMenu_Hud_DeleteSave,0,0 + hudOffset,0);

//Draw Text

if (page != 3)
{
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(105,45,375,245,false);
	draw_set_alpha(1);
	
	draw_set_color(c_white);
	if (global.language == languages.english)
	{
		draw_set_font(fnt_DialogueDefault);
	}
	else if ((global.language == languages.chinese) or (global.language == languages.japanese))
	{
		draw_set_font(global.fontDialogueDefaultKanji);
	}
	else
	{
		draw_set_font(fnt_DialogueDefaultSpecial);
	}
	
	draw_set_halign(fa_center);
	scr_Draw_Text_Color_Outline(room_width / 2,47,text[page],-1,260,c_white,c_gray,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
}