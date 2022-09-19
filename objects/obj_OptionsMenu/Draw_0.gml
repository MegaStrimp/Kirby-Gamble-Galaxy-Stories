///@description Draw

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_Options,0,0 + hudOffset,0);
draw_sprite(spr_Menu_Saves_Medals_Empty,0,4 + hudOffset,5);

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

for (var i = 0; i < array_length(menuValue); i++) menuOffsetLerp[i] = lerp(menuOffsetLerp[i],menuOffset[i] * 8,.25);

textY = lerp(textY,147 - (selection * 36),.25);

draw_set_color(c_black);
draw_set_alpha(.75);
draw_roundrect(2,37,122,268,false);
draw_set_alpha(1);

if (page == "main") draw_sprite(spr_Menu_Options_CursorArrow,0,0,141);

for (var i = 0; i < array_length(menuValue); i++)
{
	if (i == selection) textAlpha = 1;
	if ((i == selection - 1) or (i == selection + 1)) textAlpha = .66;
	if ((i == selection - 2) or (i == selection + 2)) textAlpha = .33;
	if ((i < selection - 2) or (i > selection + 2)) textAlpha = 0;
	var col1 = c_white;
	var col2 = c_white;
	if ((menuValue[i] == "Controls") and (global.buildType == buildTypes.android))
	{
		col1 = c_dkgray;
		col2 = c_dkgray;
	}
	if (menuValue[i] == "Default")
	{
		col1 = c_red;
		col2 = c_red;
	}
	if (textAlpha != 0) scr_Draw_Text_Color_Outline(14 + menuOffsetLerp[i],textY + (36 * i),menuTitle[i],-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
}

switch (page)
{
	case "Display":
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(126,37,476,268,false);
	draw_set_alpha(1);
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,126,54 + (subSelection * 24));
	
	var i = 0;
	var col1 = c_white;
	var col2 = c_white;
	var alpha = .5;
	if (subSelection == i) alpha = 1;
	var isActive = strFalse;
	if (global.fullscreen) isActive = strTrue;
	scr_Draw_Text_Color_Outline(140,60 + (24 * i),strFullscreen + " - " + isActive,-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	if (global.fullscreen)
	{
		var col1 = c_dkgray;
		var col2 = c_dkgray;
	}
	var windowScale = 0;
	if (instance_exists(obj_Camera)) windowScale = global.windowSize;
	scr_Draw_Text_Color_Outline(140,60 + (24 * i),strWindowSize + " - " + string(windowScale) + "X",-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	break;
	
	case "Audio":
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(126,37,476,268,false);
	draw_set_alpha(1);
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,126,54 + (subSelection * 24));
	
	var i = 0;
	var col1 = c_white;
	var col2 = c_white;
	var alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(140,60 + (24 * i),strMusic + " - " + string(round(global.musicVolume * 100)) + "%",-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(140,60 + (24 * i),strSoundEffects + " - " + string(round(global.soundVolume * 100)) + "%",-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	break;
	
	case "Controls":
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(126,37,476,268,false);
	draw_set_alpha(1);
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,126 + (180 * ((subSelection - (subSelection % 8)) / 10)),54 + (24 * (subSelection % 8)));
	
	var i = 0;
	var col1 = c_white;
	var col2 = c_white;
	var alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(140,60 + (24 * (i % 8)),"P1 " + strLeft + " - " + string(scr_CharToString(global.finalKeyLeft[0])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(140,60 + (24 * (i % 8)),"P1 " + strRight + " - " + string(scr_CharToString(global.finalKeyRight[0])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(140,60 + (24 * (i % 8)),"P1 " + strUp + " - " + string(scr_CharToString(global.finalKeyUp[0])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(140,60 + (24 * (i % 8)),"P1 " + strDown + " - " + string(scr_CharToString(global.finalKeyDown[0])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(140,60 + (24 * (i % 8)),"P1 " + strJump + "/A - " + string(scr_CharToString(global.finalKeyJump[0])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(140,60 + (24 * (i % 8)),"P1 " + strAttack + "/B - " + string(scr_CharToString(global.finalKeyAttack[0])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(140,60 + (24 * (i % 8)),"P1 " + strStart + " - " + string(scr_CharToString(global.finalKeyStart[0])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(140,60 + (24 * (i % 8)),"P1 " + strSelect + " - " + string(scr_CharToString(global.finalKeySelect[0])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	var alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(320,60 + (24 * (i % 8)),"P2 " + strLeft + " - " + string(scr_CharToString(global.finalKeyLeft[1])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(320,60 + (24 * (i % 8)),"P2 " + strRight + " - " + string(scr_CharToString(global.finalKeyRight[1])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(320,60 + (24 * (i % 8)),"P2 " + strUp + " - " + string(scr_CharToString(global.finalKeyUp[1])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(320,60 + (24 * (i % 8)),"P2 " + strDown + " - " + string(scr_CharToString(global.finalKeyDown[1])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(320,60 + (24 * (i % 8)),"P2 " + strJump + "/A - " + string(scr_CharToString(global.finalKeyJump[1])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(320,60 + (24 * (i % 8)),"P2 " + strAttack + "/B - " + string(scr_CharToString(global.finalKeyAttack[1])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(320,60 + (24 * (i % 8)),"P2 " + strStart + " - " + string(scr_CharToString(global.finalKeyStart[1])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	alpha = .5;
	if (subSelection == i) alpha = 1;
	scr_Draw_Text_Color_Outline(320,60 + (24 * (i % 8)),"P2 " + strSelect + " - " + string(scr_CharToString(global.finalKeySelect[1])),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	break;
	
	case "Language":
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(126,37,476,268,false);
	draw_set_alpha(1);
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,126 + (120 * ((subSelection - (subSelection % 8)) / 10)),54 + (24 * (subSelection % 8)));
	
	for (var i = 0; i < languageArrayLength; i++)
	{
		if (i == 0)
		{
			draw_set_font(fnt_DialogueDefault);
		}
		else if ((i == 6) or (i == 8))
		{
			draw_set_font(global.fontDialogueDefaultKanji);
		}
		else
		{
			draw_set_font(fnt_DialogueDefaultSpecial);
		}
		var col1 = c_white;
		var col2 = c_white;
		var alpha = .5;
		if (i == global.language)
		{
			col1 = c_yellow;
			col2 = c_yellow;
		}
		if (subSelection == i) alpha = 1;
		scr_Draw_Text_Color_Outline(140 + (120 * ((i - (i % 8)) / 10)),60 + (24 * (i % 8)),str(languageIndex[i]),-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	}
	break;
	
	case "Other":
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(126,37,476,268,false);
	draw_set_alpha(1);
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,126,54 + (subSelection * 24));
	
	var i = 0;
	var col1 = c_white;
	var col2 = c_white;
	var alpha = .5;
	if (subSelection == i) alpha = 1;
	var isActive = strFalse;
	if (global.extraTutorials) isActive = strTrue;
	scr_Draw_Text_Color_Outline(140,60 + (24 * i),strExtraTutorials + " - " + isActive,-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	var alpha = .5;
	if (subSelection == i) alpha = 1;
	var isActive = strFalse;
	if (global.autoSwallow) isActive = strTrue;
	scr_Draw_Text_Color_Outline(140,60 + (24 * i),strAutoSwallow + " - " + isActive,-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	var alpha = .5;
	if (subSelection == i) alpha = 1;
	var isActive = strFalse;
	if (global.musicIntro) isActive = strTrue;
	scr_Draw_Text_Color_Outline(140,60 + (24 * i),strMusicIntro + " - " + isActive,-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	
	i += 1;
	var col1 = c_white;
	var col2 = c_white;
	var alpha = .5;
	if (subSelection == i) alpha = 1;
	var isActive = strFalse;
	if (global.hitNumbers) isActive = strTrue;
	scr_Draw_Text_Color_Outline(140,60 + (24 * i),strHitNumbers + " - " + isActive,-1,-1,col1,col2,alpha,c_black,c_black,alpha,2,5,image_xscale,image_yscale,image_angle);
	break;
}
draw_set_color(c_white);