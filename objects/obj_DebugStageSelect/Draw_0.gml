///@description Draw

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_StageSelect_Hud_WorldSelect,0,0 + hudOffset,0);

//Draw Pages

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

switch (page)
{
	case "main":
	for (var i = 0; i < array_length(stageTitle); i++) stageOffsetLerp[i] = lerp(stageOffsetLerp[i],stageOffset[i] * 8,.25);
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(2,37,122,268,false);
	draw_set_alpha(1);
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,0,141);
	
	for (var i = 0; i < array_length(stageTitle); i++)
	{
	    if (i == selection) textAlpha = 1;
	    if ((i == selection - 1) or (i == selection + 1)) textAlpha = .66;
	    if ((i == selection - 2) or (i == selection + 2)) textAlpha = .33;
	    if ((i < selection - 2) or (i > selection + 2)) textAlpha = 0;
		var col1 = c_white;
		var col2 = c_white;
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(14 + stageOffsetLerp[i],textY + (36 * i),stageTitle[i],-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
	}
	break;
}