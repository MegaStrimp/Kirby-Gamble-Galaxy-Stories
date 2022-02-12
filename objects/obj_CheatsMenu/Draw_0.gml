///@description Draw

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_Cheats,0,0 + hudOffset,0);
draw_sprite(spr_Menu_Saves_Medals_Empty,0,4 + hudOffset,5);

//Draw Text

draw_set_color(c_black);
draw_set_alpha(.75);
draw_roundrect(65,188,415,268,false);
draw_set_alpha(1);

if (global.language == 0)
{
	draw_set_font(fnt_DialogueDefault);
}
else if ((global.language == 6) or (global.language == 8))
{
	draw_set_font(global.fontDialogueDefaultKanji);
}
else
{
	draw_set_font(fnt_DialogueDefaultSpecial);
}
draw_set_halign(fa_center);
scr_Draw_Text_Color_Outline(room_width / 2,room_height - 75,discTitle[selection],-1,-1,discColor[selection],c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
scr_Draw_Text_Color_Outline(room_width / 2,room_height - 50,discDesc[selection],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_left);