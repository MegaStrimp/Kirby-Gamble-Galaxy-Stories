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
	#region Player Select
	case "playerSelect":
	player1OffsetLerp = lerp(player1OffsetLerp,player1Offset * 8,.25);
	player2OffsetLerp = lerp(player2OffsetLerp,player2Offset * 8,.25);
	
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
	}
	
	scr_Draw_Text_Color_Outline(26 + player1OffsetLerp,75,"Player 1",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + player2OffsetLerp,111,"Player 2",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	break;
	#endregion
	
	#region Main
	case "main":
	skinsOffsetLerp = lerp(skinsOffsetLerp,skinsOffset * 8,.25);
	sprayPaintsOffsetLerp = lerp(sprayPaintsOffsetLerp,sprayPaintsOffset * 8,.25);
	hatSkinsOffsetLerp = lerp(hatSkinsOffsetLerp,hatSkinsOffset * 8,.25);
	hatPaintsOffsetLerp = lerp(hatPaintsOffsetLerp,hatPaintsOffset * 8,.25);
	familiarsOffsetLerp = lerp(familiarsOffsetLerp,familiarsOffset * 8,.25);
	
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
		
		case 4:
		draw_sprite(spr_Menu_Options_CursorArrow,0,8,213);
		break;
	}
	
	scr_Draw_Text_Color_Outline(26 + skinsOffsetLerp,75,"Skins",-1,-1,c_dkgray,c_dkgray,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + sprayPaintsOffsetLerp,111,"Spray Paints",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + hatSkinsOffsetLerp,147,"Hat Skins",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + hatPaintsOffsetLerp,183,"Hat Paints",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + familiarsOffsetLerp,219,"Familiars",-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	break;
	#endregion
	
	#region Spray Paint Owner
	case "sprayPaintOwner":
	for (var i = 0; i < array_length(characterTitle); i++) characterOffsetLerp[i] = lerp(characterOffsetLerp[i],characterOffset[i] * 8,.25);
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(10,45,160,265,false);
	draw_set_alpha(1);
	
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
	#endregion
	
	#region Spray Paint
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
	scr_Draw_Text_Color_Outline(301,222,text,-1,350,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
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
		
		case "Gamble":
		playerPaint = global.sprayPaintGambleP1;
		if (selectedPlayer == 1) playerPaint = global.sprayPaintGambleP2;
		
		switch (sprayPaintTitle[selection])
		{
			default:
			characterSprite = spr_Menu_Collection_Customize_Gamble_Normal;
			characterPaint = sprayPaintGambleNormal[selection];
			break;e = spr_Menu_Collection_Customize_Kirby_SmileyWhite;
			break;
		}
		break;
		
		case "Gooey":
		playerPaint = global.sprayPaintGooeyP1;
		if (selectedPlayer == 1) playerPaint = global.sprayPaintGooeyP2;
		
		switch (sprayPaintTitle[selection])
		{
			default:
			characterSprite = spr_Menu_Collection_Customize_Gooey_Normal;
			characterPaint = sprayPaintGooeyNormal[selection];
			break;e = spr_Menu_Collection_Customize_Kirby_SmileyWhite;
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
	#endregion
	
	#region Ability Hat
	case "abilityHat":
	for (var i = 0; i < array_length(abilityHatTitle); i++) abilityHatOffsetLerp[i] = lerp(abilityHatOffsetLerp[i],abilityHatOffset[i] * 8,.25);
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(2,37,122,268,false);
	draw_roundrect(126,188,476,268,false);
	draw_set_alpha(1);
	
	draw_set_halign(fa_center);
	var col1 = c_dkgray;
	var col2 = c_dkgray
	/*var text = sprayPaintUnlockMethod[selection];
	if (sprayPaintUnlocked[selection])
	{
		col1 = sprayPaintColor[selection];
		col2 = c_white;
		text = sprayPaintDescription[selection];
	}*/
	scr_Draw_Text_Color_Outline(301,192,abilityHatTitle[selection],-1,-1,col1,col2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	//scr_Draw_Text_Color_Outline(301,222,text,-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
	
	var textColor = c_white;
	hatSprite = -1;
	switch (abilityHatTitle[selection])
	{
		case "Cutter":
		hatSprite = spr_AbilityStar_Cutter;
		break;
		
		case "Beam":
		hatSprite = spr_AbilityStar_Beam;
		break;
		
		case "Stone":
		hatSprite = spr_AbilityStar_Stone;
		break;
		
		case "Ufo":
		hatSprite = spr_AbilityStar_Ufo;
		break;
		
		case "Mirror":
		hatSprite = spr_AbilityStar_Mirror;
		break;
		
		case "Ninja":
		hatSprite = spr_AbilityStar_Ninja;
		break;
		
		case "Bomb":
		hatSprite = spr_AbilityStar_Bomb;
		break;
		
		case "Fire":
		hatSprite = spr_AbilityStar_Fire;
		break;
		
		case "Ice":
		hatSprite = spr_AbilityStar_Ice;
		break;
		
		case "Spark":
		hatSprite = spr_AbilityStar_Spark;
		break;
		
		case "Yoyo":
		hatSprite = spr_AbilityStar_Yoyo;
		break;
		
		case "Wheel":
		hatSprite = spr_AbilityStar_Wheel;
		break;
		
		case "Artist":
		hatSprite = spr_AbilityStar_Artist;
		break;
		
		case "Fighter":
		hatSprite = spr_AbilityStar_Fighter;
		break;
		
		case "Suplex":
		hatSprite = spr_AbilityStar_Suplex;
		break;
		
		case "Wing":
		hatSprite = spr_AbilityStar_Wing;
		break;
		
		case "Jet":
		hatSprite = spr_AbilityStar_Jet;
		break;
		
		case "Sword":
		hatSprite = spr_AbilityStar_Sword;
		break;
		
		case "Parasol":
		hatSprite = spr_AbilityStar_Parasol;
		break;
		
		case "Hammer":
		hatSprite = spr_AbilityStar_Hammer;
		break;
		
		case "Bell":
		hatSprite = spr_AbilityStar_Bell;
		break;
		
		case "Sleep":
		hatSprite = -1;
		break;
		
		case "Scan":
		hatSprite = -1;
		break;
	}
	
	if (hatSprite != -1) draw_sprite_ext(hatSprite,0,242,110,3,3,image_angle,image_blend,image_alpha);
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,0,141);
	
	for (var i = 0; i < array_length(abilityHatTitle); i++)
	{
	    if (i == selection) textAlpha = 1;
	    if ((i == selection - 1) or (i == selection + 1)) textAlpha = .66;
	    if ((i == selection - 2) or (i == selection + 2)) textAlpha = .33;
	    if ((i < selection - 2) or (i > selection + 2)) textAlpha = 0;
		var col1 = c_dkgray;
		var col2 = c_dkgray;
		if (abilityHatUnlocked[i])
		{
			col1 = textColor;
			col2 = c_white;
		}
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(14 + abilityHatOffsetLerp[i],textY + (36 * i),abilityHatTitle[i],-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
	}
	break;
	#endregion
	
	#region Hat Skin
	case "hatSkin":
	for (var i = 0; i < array_length(abilityHatSkinTitle[subSelection]); i++) abilityHatSkinOffsetLerp[subSelection][i] = lerp(abilityHatSkinOffsetLerp[subSelection][i],abilityHatSkinOffset[subSelection][i] * 8,.25);
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(2,37,122,268,false);
	draw_roundrect(126,188,476,268,false);
	draw_set_alpha(1);
	
	draw_set_halign(fa_center);
	var col1 = c_dkgray;
	var col2 = c_dkgray
	/*var text = sprayPaintUnlockMethod[selection];
	if (sprayPaintUnlocked[selection])
	{
		col1 = sprayPaintColor[selection];
		col2 = c_white;
		text = sprayPaintDescription[selection];
	}*/
	scr_Draw_Text_Color_Outline(301,192,abilityHatSkinTitle[subSelection][selection],-1,350,col1,col2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	//scr_Draw_Text_Color_Outline(301,222,text,-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
	
	var textColor = c_white;
	hatSprite = -1;
	switch (abilityHatTitle[subSelection])
	{
		case "Cutter":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
			break;
		}
		break;
		
		case "Beam":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
			break;
			
			case "Marx Soul":
			hatSprite = spr_Kirby_AbilityHat_Beam_MarxSoul_Idle;
			break;
		}
		break;
		
		case "Stone":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
			break;
			
			case "Modern":
			hatSprite = spr_Kirby_AbilityHat_Stone_Modern_Idle;
			break;
		}
		break;
		
		case "Mirror":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
			break;
			
			case "Modern":
			hatSprite = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
			break;
		}
		break;
		
		case "Ninja":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
			break;
			
			case "Modern":
			hatSprite = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
			break;
		}
		break;
		
		case "Bomb":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
			break;
			
			case "Modern":
			hatSprite = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
			break;
		}
		break;
		
		case "Fire":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
			break;
		}
		break;
		
		case "Ice":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
			break;
			
			case "Snowman":
			hatSprite = spr_Kirby_AbilityHat_Ice_Snowman_Idle;
			break;
		}
		break;
		
		case "Spark":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Spark_KSSU_Idle;
			break;
		}
		break;
		
		case "Yoyo":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
			break;
		}
		break;
		
		case "Wheel":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
			break;
		}
		break;
		
		case "Artist":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
			break;
		}
		break;
		
		case "Fighter":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
			break;
		}
		break;
		
		case "Suplex":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
			break;
		}
		break;
		
		case "Wing":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
			break;
		}
		break;
		
		case "Jet":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
			break;
		}
		break;
		
		case "Sword":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			//hatSprite = spr_Kirby_AbilityHat_Sword_KSSU_Idle;
			hatSprite = -1;
			break;
		}
		break;
		
		case "Parasol":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			//hatSprite = spr_Kirby_AbilityHat_Parasol_KSSU_Idle;
			hatSprite = -1;
			break;
		}
		break;
		
		case "Hammer":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			//hatSprite = spr_Kirby_AbilityHat_Hammer_KSSU_Idle;
			hatSprite = -1;
			break;
		}
		break;
		
		case "Bell":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "Modern":
			hatSprite = spr_Kirby_AbilityHat_Bell_Modern_Idle;
			break;
		}
		break;
		
		case "Sleep":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Sleep_KSSU_Sleep;
			break;
		}
		break;
		
		case "Scan":
		switch (abilityHatSkinTitle[subSelection][selection])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Scan_KSSU_Scan;
			break;
		}
		break;
	}
	
	if (hatSprite != -1) draw_sprite_ext(hatSprite,0,242,140,2,2,image_angle,image_blend,image_alpha);
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,0,141);
	
	for (var i = 0; i < array_length(abilityHatSkinTitle[subSelection]); i++)
	{
	    if (i == selection) textAlpha = 1;
	    if ((i == selection - 1) or (i == selection + 1)) textAlpha = .66;
	    if ((i == selection - 2) or (i == selection + 2)) textAlpha = .33;
	    if ((i < selection - 2) or (i > selection + 2)) textAlpha = 0;
		var col1 = c_dkgray;
		var col2 = c_dkgray;
		var selectedOffset = 0;
		if (abilityHatSkinUnlocked[subSelection][i])
		{
			col1 = textColor;
			col2 = c_white;
		}
		if (abilityHatSkinValue[subSelection][i] == playerHatSkin)
		{
			col1 = c_yellow;
			col2 = c_yellow;
			selectedOffset = 36;
		}
		if (selectedOffset != 0) draw_sprite_ext(spr_AbilityDropStar_Normal,starIndex,28 + abilityHatSkinOffsetLerp[subSelection][i],textY + 7 + (36 * i),1,1,image_angle,image_blend,textAlpha);
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(14 + selectedOffset + abilityHatSkinOffsetLerp[subSelection][i],textY + (36 * i),abilityHatSkinTitle[subSelection][i],-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
	}
	break;
	#endregion
	
	#region Hat Paint
	case "hatPaint":
	for (var i = 0; i < array_length(abilityHatPaintTitle[subSelection][selectedSkin]); i++) abilityHatPaintOffset[subSelection][selectedSkin][i] = lerp(abilityHatPaintOffsetLerp[subSelection][selectedSkin][i],abilityHatPaintOffset[subSelection][selectedSkin][i] * 8,.25);
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(2,37,122,268,false);
	draw_roundrect(126,188,476,268,false);
	draw_set_alpha(1);
	
	draw_set_halign(fa_center);
	var col1 = c_dkgray;
	var col2 = c_dkgray
	/*var text = sprayPaintUnlockMethod[selection];
	if (sprayPaintUnlocked[selection])
	{
		col1 = sprayPaintColor[selection];
		col2 = c_white;
		text = sprayPaintDescription[selection];
	}*/
	scr_Draw_Text_Color_Outline(301,192,abilityHatPaintTitle[subSelection][selectedSkin][selection],-1,350,col1,col2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	//scr_Draw_Text_Color_Outline(301,222,text,-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
	
	var textColor = c_white;
	hatSprite = -1;
	switch (abilityHatTitle[subSelection])
	{
		case "Cutter":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
			break;
		}
		break;
		
		case "Beam":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
			break;
			
			case "Marx Soul":
			hatSprite = spr_Kirby_AbilityHat_Beam_MarxSoul_Idle;
			break;
		}
		break;
		
		case "Stone":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
			break;
			
			case "Modern":
			hatSprite = spr_Kirby_AbilityHat_Stone_Modern_Idle;
			break;
		}
		break;
		
		case "Mirror":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
			break;
			
			case "Modern":
			hatSprite = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
			break;
		}
		break;
		
		case "Ninja":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
			break;
			
			case "Modern":
			hatSprite = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
			break;
		}
		break;
		
		case "Bomb":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
			break;
			
			case "Modern":
			hatSprite = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
			break;
		}
		break;
		
		case "Fire":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
			break;
		}
		break;
		
		case "Ice":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
			break;
			
			case "Snowman":
			hatSprite = spr_Kirby_AbilityHat_Ice_Snowman_Idle;
			break;
		}
		break;
		
		case "Spark":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Spark_KSSU_Idle;
			break;
		}
		break;
		
		case "Yoyo":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
			break;
		}
		break;
		
		case "Wheel":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
			break;
		}
		break;
		
		case "Artist":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
			break;
		}
		break;
		
		case "Fighter":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
			break;
		}
		break;
		
		case "Suplex":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
			break;
		}
		break;
		
		case "Wing":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
			break;
		}
		break;
		
		case "Jet":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
			break;
		}
		break;
		
		case "Sword":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			//hatSprite = spr_Kirby_AbilityHat_Sword_KSSU_Idle;
			hatSprite = -1;
			break;
		}
		break;
		
		case "Parasol":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			//hatSprite = spr_Kirby_AbilityHat_Parasol_KSSU_Idle;
			hatSprite = -1;
			break;
		}
		break;
		
		case "Hammer":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			//hatSprite = spr_Kirby_AbilityHat_Hammer_KSSU_Idle;
			hatSprite = -1;
			break;
		}
		break;
		
		case "Bell":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "Modern":
			hatSprite = spr_Kirby_AbilityHat_Bell_Modern_Idle;
			break;
		}
		break;
		
		case "Sleep":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Sleep_KSSU_Sleep;
			break;
		}
		break;
		
		case "Scan":
		switch (abilityHatSkinTitle[subSelection][selectedSkin])
		{
			case "KSSU":
			hatSprite = spr_Kirby_AbilityHat_Scan_KSSU_Scan;
			break;
		}
		break;
	}
	
	if ((global.shaders) and (abilityHatPaint[subSelection][selectedSkin][selection] != -1)) pal_swap_set(abilityHatPaint[subSelection][selectedSkin][selection],1,false);
	if (hatSprite != -1) draw_sprite_ext(hatSprite,0,242,140,2,2,image_angle,image_blend,image_alpha);
	if ((global.shaders) and (abilityHatPaint[subSelection][selectedSkin][selection] != -1)) pal_swap_reset();
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,0,141);
	
	for (var i = 0; i < array_length(abilityHatPaintTitle[subSelection][selectedSkin]); i++)
	{
	    if (i == selection) textAlpha = 1;
	    if ((i == selection - 1) or (i == selection + 1)) textAlpha = .66;
	    if ((i == selection - 2) or (i == selection + 2)) textAlpha = .33;
	    if ((i < selection - 2) or (i > selection + 2)) textAlpha = 0;
		var col1 = c_dkgray;
		var col2 = c_dkgray;
		var selectedOffset = 0;
		if (abilityHatPaintUnlocked[subSelection][selectedSkin][i])
		{
			col1 = textColor;
			col2 = c_white;
		}
		if (i == playerHatPaint)
		{
			col1 = c_yellow;
			col2 = c_yellow;
			selectedOffset = 36;
		}
		if (selectedOffset != 0) draw_sprite_ext(spr_AbilityDropStar_Normal,starIndex,28 + abilityHatPaintOffsetLerp[subSelection][selectedSkin][i],textY + 7 + (36 * i),1,1,image_angle,image_blend,textAlpha);
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(14 + selectedOffset + abilityHatPaintOffsetLerp[subSelection][selectedSkin][i],textY + (36 * i),abilityHatPaintTitle[subSelection][selectedSkin][i],-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
	}
	break;
	#endregion
	
	#region Familiars
	case "familiars":
	for (var i = 0; i < array_length(familiarTitle); i++) familiarOffsetLerp[i] = lerp(familiarOffsetLerp[i],familiarOffset[i] * 8,.25);
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(2,37,122,268,false);
	draw_roundrect(126,188,476,268,false);
	draw_roundrect(234,0,329,25,false);
	draw_roundrect(239,28,427,60,false);
	draw_roundrect(336,64,476,184,false);
	draw_set_alpha(1);
	
	draw_sprite(spr_Menu_Collection_Customize_Text_Lvl,0,239,4);
	scr_Draw_Text_Color_Outline(290,4,familiarLevel[selection],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	
	draw_sprite(spr_Menu_Collection_Customize_Text_Exp,0,285,45);
	scr_Draw_Text_Color_Outline(332,45,string(familiarExp[selection]) + " / " + string(familiarMaxExp[selection][familiarLevel[selection]]),-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	
	draw_sprite(spr_Menu_Collection_Customize_ExpBar_Border,0,297,32);
	draw_sprite_part(spr_Menu_Collection_Customize_ExpBar_Inner,0,0,0,sprite_get_width(spr_Menu_Collection_Customize_ExpBar_Inner) * (familiarExp[selection] / familiarMaxExp[selection][familiarLevel[selection]]),sprite_get_height(spr_Menu_Collection_Customize_ExpBar_Inner),298,33);
	
	draw_set_halign(fa_center);
	scr_Draw_Text_Color_Outline(406,66,familiarPaintTitle[selection][0],-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
	//ADD THE RING HERE
	draw_sprite(spr_Menu_Collection_Customize_FamiliarPalette_Border,0,340,86);
	for (var i = 0; i < 5; i++)
	{
		draw_sprite(spr_Menu_Collection_Customize_FamiliarPalette_Default,0,344 + (26 * i),91);
	}
	
	for (var i = 0; i < array_length(familiarStatTitle[selection]); i++)
	{
		scr_Draw_Text_Color_Outline(340,122 + (20 * i),string(familiarStatTitle[selection][i]) + " - " + string(familiarStat[selection][i][familiarLevel[selection]]),-1,350,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	}
	
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
	scr_Draw_Text_Color_Outline(301,192,familiarTitle[selection],-1,350,col1,col2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(301,222,text,-1,350,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
	
	var playerfamiliar = global.familiarP1;
	if (selectedPlayer == 1) playerfamiliar = global.familiarP2;
	
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
	#endregion
}