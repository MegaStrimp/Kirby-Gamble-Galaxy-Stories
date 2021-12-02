///@description Draw

//Draw Hud

draw_sprite(spr_Menu_Collection_Bestiary_Hud_Portrait,0,144,26);
draw_sprite(spr_Menu_Collection_Bestiary_Hud_Description,0,144,158);
draw_sprite(spr_Menu_Collection_Bestiary_Hud_Attribute,0,334,44);
hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_Bestiary,0,0 + hudOffset,0);
draw_sprite(spr_Menu_Saves_Medals_Empty,0,4 + hudOffset,5);

//Draw Portrait

draw_sprite_ext(entries[enemySelection][3],0,240,100,entries[enemySelection][4],entries[enemySelection][4],image_angle,image_blend,image_alpha);

//Draw Text

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

draw_set_valign(fa_middle);
scr_Draw_Text_Color_Outline(343,63,entries[enemySelection][1],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_valign(fa_top);

draw_set_halign(fa_center);
scr_Draw_Text_Color_Outline(311,164,entries[enemySelection][2],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
draw_set_halign(fa_left);