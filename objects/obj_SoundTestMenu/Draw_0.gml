///@description Draw

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_SoundTest,0,0 + hudOffset,0);
draw_sprite(spr_Menu_Saves_Medals_Empty,0,4 + hudOffset,5);

//Draw Pages

draw_set_color(c_white);
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

switch (page)
{
	case "categorySelect":
	menuOffsetLerp = lerp(menuOffsetLerp,menuOffset * 8,.25);
	stageOffsetLerp = lerp(stageOffsetLerp,stageOffset * 8,.25);
	battleOffsetLerp = lerp(battleOffsetLerp,battleOffset * 8,.25);
	cutsceneOffsetLerp = lerp(cutsceneOffsetLerp,cutsceneOffset * 8,.25);
	subgameOffsetLerp = lerp(subgameOffsetLerp,subgameOffset * 8,.25);
	miscOffsetLerp = lerp(miscOffsetLerp,miscOffset * 8,.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(10,45,160,265,false);
	draw_set_alpha(1);
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,8,47 + (selection * 36));
	
	scr_Draw_Text_Color_Outline(26 + menuOffsetLerp,75 - 22,"Menu Themes",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + stageOffsetLerp,111 - 22,"Stage Themes",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + battleOffsetLerp,147 - 22,"Battle Themes",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + cutsceneOffsetLerp,183 - 22,"Cutscene Themes",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + subgameOffsetLerp,219 - 22,"Subgame Themes",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + miscOffsetLerp,255 - 22,"Misc Themes",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	break;
	
	case "music":
	for (var i = 0; i < array_length(soundTitle); i++)
	{
		for (var h = 0; h < array_length(soundTitle[i]); h++) soundOffset[i][h] = 0;
	}
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(2,37,122,268,false);
	draw_roundrect(126,188,476,268,false);
	draw_set_alpha(1);
	
	draw_set_halign(fa_center);
	var col1 = c_dkgray;
	var col2 = c_dkgray;
	var title = "???";
	var text = soundUnlockMethod[soundCategory][selection];
	if (soundUnlocked[soundCategory][selection])
	{
		col1 = soundColor[soundCategory][selection];
		col2 = c_white;
		title = soundTitle[soundCategory][selection];
		text = soundDescription[soundCategory][selection];
	}
	scr_Draw_Text_Color_Outline(301,192,title,-1,-1,col1,col2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(301,222,text,-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,0,141);
	
	for (var i = 0; i < array_length(soundTitle[soundCategory]); i++)
	{
	    if (i == selection) textAlpha = 1;
	    if ((i == selection - 1) or (i == selection + 1)) textAlpha = .66;
	    if ((i == selection - 2) or (i == selection + 2)) textAlpha = .33;
	    if ((i < selection - 2) or (i > selection + 2)) textAlpha = 0;
		var col1 = c_dkgray;
		var col2 = c_dkgray;
		var title = "???";
		var selectedOffset = 0;
		if (soundUnlocked[soundCategory][i])
		{
			col1 = soundColor[soundCategory][i];
			col2 = c_white;
			title = soundTitle[soundCategory][i];
		}
		if ((audio_is_playing(soundIndex[soundCategory][i])) and (!audio_is_paused(soundIndex[soundCategory][i])))
		{
			col1 = c_yellow;
			col2 = c_yellow;
			selectedOffset = 36;
		}
		if (selectedOffset != 0) draw_sprite_ext(spr_AbilityDropStar_Normal,starIndex,28 + soundOffsetLerp[soundCategory][i],textY + 7 + (36 * i),1,1,image_angle,image_blend,textAlpha);
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(14 + selectedOffset + soundOffsetLerp[soundCategory][i],textY + (36 * i),title,-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
	}
	break;
}