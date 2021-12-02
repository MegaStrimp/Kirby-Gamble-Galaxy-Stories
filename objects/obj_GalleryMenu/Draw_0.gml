///@description Draw

//Draw Hud

hudOffset = lerp(hudOffset,0,.1);
draw_sprite(spr_Menu_MainMenu_Hud_Customize,0,0 + hudOffset,0);
draw_sprite(spr_Menu_Saves_Medals_Empty,0,4 + hudOffset,5);

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
	case "playerSelect":
	player1OffsetLerp = lerp(player1OffsetLerp,player1Offset * 8,.25);
	player2OffsetLerp = lerp(player2OffsetLerp,player2Offset * 8,.25);
	
	draw_sprite_ext(spr_Menu_Box_Tall2,0,10,45,image_xscale,image_yscale,image_angle,image_blend,.75);
	
	switch (selection)
	{
		case 0:
		draw_sprite(spr_Menu_Options_CursorArrow,0,8,69);
		break;
		
		case 1:
		draw_sprite(spr_Menu_Options_CursorArrow,0,8,103);
		break;
	}
	
	scr_Draw_Text_Color_Outline(26 + player1OffsetLerp,75,"Player 1",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + player2OffsetLerp,111,"Player 2",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	break;
	
	case "main":
	skinsOffsetLerp = lerp(skinsOffsetLerp,skinsOffset * 8,.25);
	sprayPaintsOffsetLerp = lerp(sprayPaintsOffsetLerp,sprayPaintsOffset * 8,.25);
	hatSkinsOffsetLerp = lerp(hatSkinsOffsetLerp,hatSkinsOffset * 8,.25);
	hatPaintsOffsetLerp = lerp(hatPaintsOffsetLerp,hatPaintsOffset * 8,.25);
	familiarsOffsetLerp = lerp(familiarsOffsetLerp,familiarsOffset * 8,.25);
	
	draw_sprite_ext(spr_Menu_Box_Tall2,0,10,45,image_xscale,image_yscale,image_angle,image_blend,.75);
	
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
		
		case 4:
		draw_sprite(spr_Menu_Options_CursorArrow,0,8,213);
		break;
	}
	
	scr_Draw_Text_Color_Outline(26 + skinsOffsetLerp,75,"Skins",-1,-1,c_dkgray,c_dkgray,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + sprayPaintsOffsetLerp,111,"Spray Paints",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + hatSkinsOffsetLerp,147,"Hat Skins",-1,-1,c_dkgray,c_dkgray,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + hatPaintsOffsetLerp,183,"Hat Paints",-1,-1,c_dkgray,c_dkgray,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + familiarsOffsetLerp,219,"Familiars",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	break;
	
	case "sprayPaintOwner":
	for (var i = 0; i < array_length(characterTitle); i++) characterOffsetLerp[i] = lerp(characterOffsetLerp[i],characterOffset[i] * 8,.25);
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_sprite_ext(spr_Menu_Box_Tall2,0,10,45,image_xscale,image_yscale,image_angle,image_blend,.75);
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,8,141);
	
	for (var i = 0; i < array_length(characterTitle); i++)
	{
	    if (i == selection) textAlpha = 1;
	    if ((i == selection - 1) or (i == selection + 1)) textAlpha = .66;
	    if ((i == selection - 2) or (i == selection + 2)) textAlpha = .33;
	    if ((i < selection - 2) or (i > selection + 2)) textAlpha = 0;
		var col = c_dkgray;
		if (characterUnlocked[i]) col = c_white;
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(26 + characterOffsetLerp[i],textY + (36 * i),characterTitle[i],-1,-1,col,col,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
	}
	break;
	
	case "sprayPaint":
	for (var i = 0; i < array_length(sprayPaintTitle); i++) sprayPaintOffsetLerp[i] = lerp(sprayPaintOffsetLerp[i],sprayPaintOffset[i] * 8,.25);
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(2,37,122,268,false);
	draw_roundrect(126,188,476,268,false);
	draw_set_alpha(1);
	
	draw_set_halign(fa_center);
	var col1 = c_dkgray;
	var col2 = c_dkgray
	var text = sprayPaintUnlockMethod[selection];
	if (sprayPaintUnlocked[selection])
	{
		col1 = sprayPaintColor[selection];
		col2 = c_white;
		text = sprayPaintDescription[selection];
	}
	scr_Draw_Text_Color_Outline(301,192,sprayPaintTitle[selection],-1,-1,col1,col2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(301,222,text,-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
	
	var playerPaint = global.sprayPaintKirbyP1;
	if (selectedPlayer == 1) playerPaint = global.sprayPaintKirbyP2;
	var characterSprite = -1;
	var characterPaint = -1;
	
	switch (selectedOwner)
	{
		case "Kirby":
		playerPaint = global.sprayPaintKirbyP1;
		if (selectedPlayer == 1) playerPaint = global.sprayPaintKirbyP2;
		
		switch (sprayPaintTitle[selection])
		{
			default:
			characterSprite = spr_Menu_Collection_Customize_Kirby_Normal;
			characterPaint = sprayPaintKirbyNormal[selection];
			break;
			
			case "Shadow of the Mirror":
			characterSprite = spr_Menu_Collection_Customize_Kirby_ShadowOfTheMirror;
			break;
			
			case "Smiley White":
			characterSprite = spr_Menu_Collection_Customize_Kirby_SmileyWhite;
			break;
		}
		break;
	}
	
	if ((global.shaders) and (characterPaint != -1)) pal_swap_set(characterPaint,1,false);
	if (characterSprite != -1) draw_sprite(characterSprite,0,242,140);
	if ((global.shaders) and (characterPaint != -1)) pal_swap_reset();
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,0,141);
	
	for (var i = 0; i < array_length(sprayPaintTitle); i++)
	{
	    if (i == selection) textAlpha = 1;
	    if ((i == selection - 1) or (i == selection + 1)) textAlpha = .66;
	    if ((i == selection - 2) or (i == selection + 2)) textAlpha = .33;
	    if ((i < selection - 2) or (i > selection + 2)) textAlpha = 0;
		var col1 = c_dkgray;
		var col2 = c_dkgray;
		var selectedOffset = 0;
		if (sprayPaintUnlocked[i])
		{
			col1 = sprayPaintColor[i];
			col2 = c_white;
		}
		if (sprayPaintKirbyNormal[i] == playerPaint)
		{
			col1 = c_yellow;
			col2 = c_yellow;
			selectedOffset = 36;
		}
		if (selectedOffset != 0) draw_sprite_ext(spr_AbilityDropStar_Normal,starIndex,28 + sprayPaintOffsetLerp[i],textY + 7 + (36 * i),1,1,image_angle,image_blend,textAlpha);
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(14 + selectedOffset + sprayPaintOffsetLerp[i],textY + (36 * i),sprayPaintTitle[i],-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
	}
	break;
	
	case "familiars":
	for (var i = 0; i < array_length(familiarTitle); i++) familiarOffsetLerp[i] = lerp(familiarOffsetLerp[i],familiarOffset[i] * 8,.25);
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(2,37,122,268,false);
	draw_roundrect(126,188,476,268,false);
	draw_set_alpha(1);
	
	draw_set_halign(fa_center);
	var col1 = c_dkgray;
	var col2 = c_dkgray
	var text = familiarUnlockMethod[selection];
	if (familiarUnlocked[selection])
	{
		col1 = familiarColor[selection];
		col2 = c_white;
		text = familiarDescription[selection];
	}
	scr_Draw_Text_Color_Outline(301,192,familiarTitle[selection],-1,-1,col1,col2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(301,222,text,-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
	
	var playerfamiliar = global.familiarP1;
	if (selectedPlayer == 1) playerfamiliar = global.familiarKirbyP2;
	
	if ((global.shaders) and (familiarPaint[selection][selectedPaint] != -1)) pal_swap_set(familiarPaint[selection][selectedPaint],1,false);
	if (familiarSprite[selection] != -1) draw_sprite(familiarSprite[selection],0,242,140);
	if ((global.shaders) and (familiarPaint[selection][selectedPaint] != -1)) pal_swap_reset();
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,0,141);
	
	for (var i = 0; i < array_length(familiarTitle); i++)
	{
	    if (i == selection) textAlpha = 1;
	    if ((i == selection - 1) or (i == selection + 1)) textAlpha = .66;
	    if ((i == selection - 2) or (i == selection + 2)) textAlpha = .33;
	    if ((i < selection - 2) or (i > selection + 2)) textAlpha = 0;
		var col1 = c_dkgray;
		var col2 = c_dkgray;
		var selectedOffset = 0;
		if (familiarUnlocked[i])
		{
			col1 = familiarColor[i];
			col2 = c_white;
		}
		if (familiarTitle[i] == playerfamiliar)
		{
			col1 = c_yellow;
			col2 = c_yellow;
			selectedOffset = 36;
		}
		if (selectedOffset != 0) draw_sprite_ext(spr_AbilityDropStar_Normal,starIndex,28 + familiarOffsetLerp[i],textY + 7 + (36 * i),1,1,image_angle,image_blend,textAlpha);
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(14 + selectedOffset + familiarOffsetLerp[i],textY + (36 * i),familiarTitle[i],-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
	}
	break;
}