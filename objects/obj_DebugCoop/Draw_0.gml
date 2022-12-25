///@description Draw

//Draw Pages

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

player1OffsetLerp = lerp(player1OffsetLerp,player1Offset * 8,.25);
player2OffsetLerp = lerp(player2OffsetLerp,player2Offset * 8,.25);
player3OffsetLerp = lerp(player3OffsetLerp,player3Offset * 8,.25);
player4OffsetLerp = lerp(player4OffsetLerp,player4Offset * 8,.25);

draw_set_color(c_black);
draw_set_alpha(.75);
draw_roundrect(10,45,160,265,false);
draw_set_alpha(1);

switch (selection)
{
	case 0:
	draw_sprite(spr_Menu_Options_CursorArrow,0,8,69);
	break;
	
	case 1:
	draw_sprite(spr_Menu_Options_CursorArrow,0,8,103);
	break;
	
	case 2:
	draw_sprite(spr_Menu_Options_CursorArrow,0,8,141);
	break;
	
	case 3:
	draw_sprite(spr_Menu_Options_CursorArrow,0,8,177);
	break;
}

scr_Draw_Text_Color_Outline(26 + player1OffsetLerp,75,"P1",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
scr_Draw_Text_Color_Outline(26 + player2OffsetLerp,111,"P2",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
scr_Draw_Text_Color_Outline(26 + player3OffsetLerp,147,"P3",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
scr_Draw_Text_Color_Outline(26 + player4OffsetLerp,183,"P4",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);