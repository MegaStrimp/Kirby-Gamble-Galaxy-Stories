///@description Draw

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_DeleteSave,0,0 + hudOffset,0);
draw_sprite(spr_Menu_Saves_Medals_Empty,0,4 + hudOffset,5);

//Draw Text

if (page != 3)
{
	draw_sprite_ext(spr_Menu_Box_Wide2,0,105,45,image_xscale,image_yscale,image_angle,image_blend,.75);
	
	draw_set_color(c_white);
	if (global.language == 0)
	{
		draw_set_font(fnt_DialogueDefault);
	}
	else if (global.language == 6)
	{
		draw_set_font(fnt_DialogueDefaultKanji);
	}
	else
	{
		draw_set_font(fnt_DialogueDefaultSpecial);
	}
	
	draw_set_halign(fa_center);
	switch (page)
	{
		case 0:
		var text = "Do you want to delete your save?";
		break;
		
		case 1:
		var text = @"All stats, bonuses, progress... poof! Gone.
Are you sure you want to delete all of that?";
		break;
		
		case 2:
		var text = @"Confirm one more time that you absolutely
want to delete your save.";
		break;
	}
	scr_Draw_Text_Color_Outline(room_width / 2,47,text,-1,-1,c_white,c_gray,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
}