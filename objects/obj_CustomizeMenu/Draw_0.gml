///@description Draw

//Draw Hud

draw_sprite(spr_Menu_MainMenu_Hud_Customize,0,0 + hudOffset,0);

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

switch (page)
{
	#region Player Select
	case "playerSelect":
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
	
	scr_Draw_Text_Color_Outline(26 + player1OffsetLerp,75,"P1",-1,-1,make_color_rgb(248,160,216),c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + player2OffsetLerp,111,"P2",-1,-1, make_color_rgb(248,208,0),c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + player3OffsetLerp,147,"P3",-1,-1,make_color_rgb(248,0,56),c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + player4OffsetLerp,183,"P4",-1,-1,make_color_rgb(120,248,40),c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
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
	
	var sprayPaintCol = c_white;
	var hatSkinCol = c_white;
	var hatPaintCol = c_white;
	if (!global.shaders) sprayPaintCol = c_dkgray;
	if (abilityCount == 0) hatSkinCol = c_dkgray;
	if ((!global.shaders) or (abilityCount == 0)) hatPaintCol = c_dkgray;
	scr_Draw_Text_Color_Outline(26 + skinsOffsetLerp,75,strSkins,-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + sprayPaintsOffsetLerp,111,strSprayPaints,-1,-1,sprayPaintCol,sprayPaintCol,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + hatSkinsOffsetLerp,147,strHatSkins,-1,-1,hatSkinCol,hatSkinCol,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + hatPaintsOffsetLerp,183,strHatPaints,-1,-1,hatPaintCol,hatPaintCol,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	scr_Draw_Text_Color_Outline(26 + familiarsOffsetLerp,219,strFamiliars,-1,-1,c_white,c_white,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	break;
	#endregion
	
	#region Skin Owner
	case "skinOwner":
	for (var i = 0; i < array_length(characterTitle); i++) characterOffsetLerp[i] = lerp(characterOffsetLerp[i],characterOffset[i] * 8,.25);
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(10,45,160,265,false);
	draw_set_alpha(1);
	
	if ((global.shaders) and (characterIcon[selection] == spr_Hud_Icon_Kirby)) pal_swap_set(spr_Hud_Palette_Healthbar_Kirby,1,false);
	if (characterIcon[selection] != -1) draw_sprite_ext(characterIcon[selection],0,242 - 24,110 - 24,2,2,image_angle,image_blend,image_alpha);
	if ((global.shaders) and (characterIcon[selection] == spr_Hud_Icon_Kirby)) pal_swap_reset();
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,8,141);
	
	for (var i = 0; i < array_length(characterTitle); i++)
	{
	    if (i == selection) textAlpha = 1;
	    if ((i == selection - 1) or (i == selection + 1)) textAlpha = .66;
	    if ((i == selection - 2) or (i == selection + 2)) textAlpha = .33;
	    if ((i < selection - 2) or (i > selection + 2)) textAlpha = 0;
		var col1 = c_dkgray;
		var col2 = c_dkgray;
		if (characterUnlocked[i])
		{
			col1 = characterColor[i];
			col2 = c_white;
		}
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(26 + characterOffsetLerp[i],textY + (36 * i),characterTitle[i],-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
	}
	break;
	#endregion
	
	#region Skins
	case "skins":
	for (var i = 0; i < array_length(characterSkinTitle[subSelection]); i++) characterSkinOffsetLerp[subSelection][i] = lerp(characterSkinOffsetLerp[subSelection][i],characterSkinOffset[subSelection][i] * 8,.25);
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(2,37,122,268,false);
	draw_roundrect(126,188,476,268,false);
	draw_set_alpha(1);
	
	var col1 = c_dkgray;
	var col2 = c_dkgray;
	if (characterSkinUnlocked[subSelection][selection])
	{
		col1 = characterSkinColor[subSelection][selection];
		col2 = c_white;
	}
	scr_Draw_Text_Color_Outline(301,192,characterSkinTitleDraw[subSelection][selection],-1,350,col1,col2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
	
	if (characterSkinSprite[subSelection][selection] != -1) draw_sprite_ext(characterSkinSprite[subSelection][selection],0,242,140,1,1,image_angle,image_blend,image_alpha);
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,0,141);
	
	for (var i = 0; i < array_length(characterSkinTitle[subSelection]); i++)
	{
	    if (i == selection) textAlpha = 1;
	    if ((i == selection - 1) or (i == selection + 1)) textAlpha = .66;
	    if ((i == selection - 2) or (i == selection + 2)) textAlpha = .33;
	    if ((i < selection - 2) or (i > selection + 2)) textAlpha = 0;
		var col1 = c_dkgray;
		var col2 = c_dkgray;
		var selectedOffset = 0;
		if (characterSkinUnlocked[subSelection][i])
		{
			col1 = characterSkinColor[subSelection][i];
			col2 = c_white;
		}
		if (characterSkinValue[subSelection][i] == playerSkin)
		{
			col1 = c_yellow;
			col2 = c_yellow;
			selectedOffset = 36;
		}
		if (selectedOffset != 0) draw_sprite_ext(spr_AbilityStar_Retro,starIndex,28 + characterSkinOffsetLerp[subSelection][i],textY + 7 + (36 * i),1,1,image_angle,image_blend,textAlpha);
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(14 + selectedOffset + characterSkinOffsetLerp[subSelection][i],textY + (36 * i),characterSkinTitle[subSelection][i],-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
	}
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
	
	if ((global.shaders) and (characterIcon[selection] == spr_Hud_Icon_Kirby)) pal_swap_set(spr_Hud_Palette_Healthbar_Kirby,1,false);
	if (characterIcon[selection] != -1) draw_sprite_ext(characterIcon[selection],0,242 - 24,110 - 24,2,2,image_angle,image_blend,image_alpha);
	if ((global.shaders) and (characterIcon[selection] == spr_Hud_Icon_Kirby)) pal_swap_reset();
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,8,141);
	
	for (var i = 0; i < array_length(characterTitle); i++)
	{
	    if (i == selection) textAlpha = 1;
	    if ((i == selection - 1) or (i == selection + 1)) textAlpha = .66;
	    if ((i == selection - 2) or (i == selection + 2)) textAlpha = .33;
	    if ((i < selection - 2) or (i > selection + 2)) textAlpha = 0;
		var col1 = c_dkgray;
		var col2 = c_dkgray;
		if (characterUnlocked[i])
		{
			col1 = characterColor[i];
			col2 = c_white;
		}
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(26 + characterOffsetLerp[i],textY + (36 * i),characterTitle[i],-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
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
	
	switch (selectedPlayer)
	{
		case 0:
		var playerPaint = global.sprayPaintKirbyP1;
		break;
		
		case 1:
		var playerPaint = global.sprayPaintKirbyP2;
		break;
		
		case 2:
		var playerPaint = global.sprayPaintKirbyP3;
		break;
		
		case 3:
		var playerPaint = global.sprayPaintKirbyP4;
		break;
	}
	var characterSprite = -1;
	var characterPaint = -1;
	
	switch (selectedOwner)
	{
		case playerCharacters.kirby:
		switch (selectedPlayer)
		{
			case 0:
			var playerPaint = global.sprayPaintKirbyP1;
			break;
			
			case 1:
			var playerPaint = global.sprayPaintKirbyP2;
			break;
			
			case 2:
			var playerPaint = global.sprayPaintKirbyP3;
			break;
			
			case 3:
			var playerPaint = global.sprayPaintKirbyP4;
			break;
		}
		
		switch (sprayPaintValue[selection])
		{
			default:
			characterSprite = spr_Menu_Collection_Customize_Kirby_Normal;
			characterPaint = sprayPaintKirbyNormal[selection];
			break;
			
			case playerSprayPaints.invisSprinkle:
			characterSprite = spr_Menu_Collection_Customize_Kirby_Normal_InvisSprinkle;
			break;
			
			case playerSprayPaints.shadowOfTheMirror:
			characterSprite = spr_Menu_Collection_Customize_Kirby_Normal_ShadowOfTheMirror;
			break;
			
			case playerSprayPaints.smileyWhite:
			characterSprite = spr_Menu_Collection_Customize_Kirby_Normal_SmileyWhite;
			break;
		}
		break;
		
		case playerCharacters.gamble:
		switch (selectedPlayer)
		{
			case 0:
			var playerPaint = global.sprayPaintGambleP1;
			break;
			
			case 1:
			var playerPaint = global.sprayPaintGambleP2;
			break;
			
			case 2:
			var playerPaint = global.sprayPaintGambleP3;
			break;
			
			case 3:
			var playerPaint = global.sprayPaintGambleP4;
			break;
		}
		
		switch (sprayPaintTitle[selection])
		{
			default:
			characterSprite = spr_Menu_Collection_Customize_Gamble_Normal;
			characterPaint = sprayPaintGambleNormal[selection];
			break;
		}
		break;
		
		case playerCharacters.metaKnight:
		switch (selectedPlayer)
		{
			case 0:
			var playerPaint = global.sprayPaintMetaKnightP1;
			break;
			
			case 1:
			var playerPaint = global.sprayPaintMetaKnightP2;
			break;
			
			case 2:
			var playerPaint = global.sprayPaintMetaKnightP3;
			break;
			
			case 3:
			var playerPaint = global.sprayPaintMetaKnightP4;
			break;
		}
		
		switch (sprayPaintTitle[selection])
		{
			default:
			characterSprite = spr_Menu_Collection_Customize_MetaKnight_Normal;
			characterPaint = sprayPaintMetaKnightNormal[selection];
			break;
		}
		break;
		
		case playerCharacters.gooey:
		switch (selectedPlayer)
		{
			case 0:
			playerPaint = global.sprayPaintGooeyP1;
			
			switch (global.skinGooeyP1)
			{
				default:
				switch (sprayPaintTitle[selection])
				{
					default:
					characterSprite = spr_Menu_Collection_Customize_Gooey_Normal;
					characterPaint = sprayPaintGooeyNormal[selection];
					break;
				}
				break;
				
				case "pipis":
				switch (sprayPaintTitle[selection])
				{
					default:
					characterSprite = spr_Menu_Collection_Customize_Gooey_Pipis;
					characterPaint = sprayPaintGooeyPipis[selection];
					break;
				}
				break;
			}
			break;
			
			case 1:
			playerPaint = global.sprayPaintGooeyP2;
			
			switch (global.skinGooeyP2)
			{
				default:
				switch (sprayPaintTitle[selection])
				{
					default:
					characterSprite = spr_Menu_Collection_Customize_Gooey_Normal;
					characterPaint = sprayPaintGooeyNormal[selection];
					break;
				}
				break;
				
				case "pipis":
				switch (sprayPaintTitle[selection])
				{
					default:
					characterSprite = spr_Menu_Collection_Customize_Gooey_Pipis;
					characterPaint = sprayPaintGooeyPipis[selection];
					break;
				}
				break;
			}
			break;
			
			case 2:
			playerPaint = global.sprayPaintGooeyP3;
			
			switch (global.skinGooeyP3)
			{
				default:
				switch (sprayPaintTitle[selection])
				{
					default:
					characterSprite = spr_Menu_Collection_Customize_Gooey_Normal;
					characterPaint = sprayPaintGooeyNormal[selection];
					break;
				}
				break;
				
				case "pipis":
				switch (sprayPaintTitle[selection])
				{
					default:
					characterSprite = spr_Menu_Collection_Customize_Gooey_Pipis;
					characterPaint = sprayPaintGooeyPipis[selection];
					break;
				}
				break;
			}
			break;
			
			case 3:
			playerPaint = global.sprayPaintGooeyP4;
			
			switch (global.skinGooeyP4)
			{
				default:
				switch (sprayPaintTitle[selection])
				{
					default:
					characterSprite = spr_Menu_Collection_Customize_Gooey_Normal;
					characterPaint = sprayPaintGooeyNormal[selection];
					break;
				}
				break;
				
				case "pipis":
				switch (sprayPaintTitle[selection])
				{
					default:
					characterSprite = spr_Menu_Collection_Customize_Gooey_Pipis;
					characterPaint = sprayPaintGooeyPipis[selection];
					break;
				}
				break;
			}
			break;
		}
		break;
		
		case playerCharacters.magolor:
		switch (selectedPlayer)
		{
			case 0:
			var playerPaint = global.sprayPaintMagolorP1;
			break;
			
			case 1:
			var playerPaint = global.sprayPaintMagolorP2;
			break;
			
			case 2:
			var playerPaint = global.sprayPaintMagolorP3;
			break;
			
			case 3:
			var playerPaint = global.sprayPaintMagolorP4;
			break;
		}
		
		switch (sprayPaintTitle[selection])
		{
			default:
			characterSprite = spr_Menu_Collection_Customize_Magolor_Normal;
			characterPaint = sprayPaintMagolorNormal[selection];
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
		if (sprayPaintValue[i] == playerPaint)
		{
			col1 = c_yellow;
			col2 = c_yellow;
			selectedOffset = 36;
		}
		if (selectedOffset != 0) draw_sprite_ext(spr_AbilityStar_Retro,starIndex,28 + sprayPaintOffsetLerp[i],textY + 7 + (36 * i),1,1,image_angle,image_blend,textAlpha);
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(14 + selectedOffset + sprayPaintOffsetLerp[i],textY + (36 * i),sprayPaintTitle[i],-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
	}
	break;
	#endregion
	
	#region Ability Hat
	case "abilityHat":
	for (var i = 0; i < array_length(abilityHatValue); i++) abilityHatOffsetLerp[i] = lerp(abilityHatOffsetLerp[i],abilityHatOffset[i] * 8,.25);
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(2,37,122,268,false);
	draw_roundrect(126,188,476,268,false);
	draw_set_alpha(1);
	
	draw_set_halign(fa_center);
	var col1 = c_dkgray;
	var col2 = c_dkgray;
	if (abilityHatUnlocked[selection])
	{
		col1 = abilityHatColor[selection];
		col2 = c_white;
	}
	scr_Draw_Text_Color_Outline(301,192,abilityHatTitle[selection],-1,-1,col1,col2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
	
	hatSprite = -1;
	switch (abilityHatValue[selection])
	{
		case playerAbilities.cutter:
		hatSprite = spr_AbilityStar_Cutter;
		break;
		
		case playerAbilities.beam:
		hatSprite = spr_AbilityStar_Beam;
		break;
		
		case playerAbilities.mysticBeam:
		hatSprite = spr_AbilityStar_MysticBeam;
		break;
		
		case playerAbilities.stone:
		hatSprite = spr_AbilityStar_Stone;
		break;
		
		case playerAbilities.ufo:
		hatSprite = spr_AbilityStar_Ufo;
		break;
		
		case playerAbilities.mirror:
		hatSprite = spr_AbilityStar_Mirror;
		break;
		
		case playerAbilities.ninja:
		hatSprite = spr_AbilityStar_Ninja;
		break;
		
		case playerAbilities.bomb:
		hatSprite = spr_AbilityStar_Bomb;
		break;
		
		case playerAbilities.fire:
		hatSprite = spr_AbilityStar_Fire;
		break;
		
		case playerAbilities.ice:
		hatSprite = spr_AbilityStar_Ice;
		break;
		
		case playerAbilities.spark:
		hatSprite = spr_AbilityStar_Spark;
		break;
		
		case playerAbilities.yoyo:
		hatSprite = spr_AbilityStar_Yoyo;
		break;
		
		case playerAbilities.wheel:
		hatSprite = spr_AbilityStar_Wheel;
		break;
		
		case playerAbilities.artist:
		hatSprite = spr_AbilityStar_Artist;
		break;
		
		case playerAbilities.fighter:
		hatSprite = spr_AbilityStar_Fighter;
		break;
		
		case playerAbilities.suplex:
		hatSprite = spr_AbilityStar_Suplex;
		break;
		
		case playerAbilities.wing:
		hatSprite = spr_AbilityStar_Wing;
		break;
		
		case playerAbilities.jet:
		hatSprite = spr_AbilityStar_Jet;
		break;
		
		case playerAbilities.sword:
		hatSprite = spr_AbilityStar_Sword;
		break;
		
		case playerAbilities.parasol:
		hatSprite = spr_AbilityStar_Parasol;
		break;
		
		case playerAbilities.hammer:
		hatSprite = spr_AbilityStar_Hammer;
		break;
		
		case playerAbilities.bell:
		hatSprite = spr_AbilityStar_Bell;
		break;
		
		case playerAbilities.water:
		hatSprite = spr_AbilityStar_Water;
		break;
		
		case playerAbilities.hiJump:
		hatSprite = spr_AbilityStar_HiJump;
		break;
		
		case playerAbilities.gear:
		hatSprite = spr_AbilityStar_Gear;
		break;
		
		case playerAbilities.sleep:
		hatSprite = spr_AbilityStar_Sleep;
		break;
		
		case playerAbilities.scan:
		hatSprite = spr_AbilityStar_Scan;
		break;
		
		case playerAbilities.crash:
		hatSprite = spr_AbilityStar_Crash;
		break;
		
		case playerAbilities.mic:
		hatSprite = spr_AbilityStar_Mic;
		break;
		
		case playerAbilities.chef:
		hatSprite = spr_AbilityStar_Chef;
		break;
	}
	
	if (hatSprite != -1) draw_sprite_ext(hatSprite,0,242,110,2,2,image_angle,image_blend,image_alpha);
	
	draw_sprite(spr_Menu_Options_CursorArrow,0,0,141);
	
	for (var i = 0; i < array_length(abilityHatValue); i++)
	{
	    if (i == selection) textAlpha = 1;
	    if ((i == selection - 1) or (i == selection + 1)) textAlpha = .66;
	    if ((i == selection - 2) or (i == selection + 2)) textAlpha = .33;
	    if ((i < selection - 2) or (i > selection + 2)) textAlpha = 0;
		var col1 = c_dkgray;
		var col2 = c_dkgray;
		if (abilityHatUnlocked[i])
		{
			col1 = abilityHatColor[i];
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
	var col2 = c_dkgray;
	if (abilityHatSkinUnlocked[subSelection][selection])
	{
		col1 = abilityHatSkinColor[subSelection][selection];
		col2 = c_white;
	}
	scr_Draw_Text_Color_Outline(301,192,abilityHatSkinTitle[subSelection][selection],-1,350,col1,col2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
	
	hatSprite = -1;
	hatFrontSprite = -1;
	hatBackgroundSprite = -1;
	equipmentSprite = -1;
	switch (abilityHatValue[subSelection])
	{
		case playerAbilities.cutter:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.cutter_kssu:
			hatSprite = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.beam:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.beam_kssu:
			hatSprite = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
			break;
			
			case abilityHatSkins.beam_marxSoul:
			hatSprite = spr_Kirby_AbilityHat_Beam_MarxSoul_Idle;
			break;
		}
		break;
		
		case playerAbilities.mysticBeam:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.mysticBeam_ggs:
			hatSprite = spr_Kirby_AbilityHat_MysticBeam_GGS_Idle;
			break;
		}
		break;
		
		case playerAbilities.stone:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.stone_kssu:
			hatSprite = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
			break;
			
			case abilityHatSkins.stone_modern:
			hatSprite = spr_Kirby_AbilityHat_Stone_Modern_Idle;
			break;
		}
		break;
		
		case playerAbilities.mirror:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.mirror_kssu:
			hatSprite = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
			break;
			
			case abilityHatSkins.mirror_modern:
			hatSprite = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
			break;
		}
		break;
		
		case playerAbilities.ninja:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.ninja_kssu:
			hatSprite = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
			break;
			
			case abilityHatSkins.ninja_modern:
			hatSprite = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
			break;
			
			case abilityHatSkins.ninja_samurai:
			hatSprite = spr_Kirby_AbilityHat_Ninja_Samurai_Idle;
			break;
		}
		break;
		
		case playerAbilities.bomb:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.bomb_kssu:
			hatSprite = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
			break;
			
			case abilityHatSkins.bomb_modern:
			hatSprite = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
			break;
		}
		break;
		
		case playerAbilities.fire:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.fire_kssu:
			hatSprite = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
			hatBackgroundSprite = spr_Kirby_HatBackground_Fire_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.ice:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.ice_kssu:
			hatSprite = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
			break;
			
			case abilityHatSkins.ice_snowman:
			hatSprite = spr_Kirby_AbilityHat_Ice_Snowman_Idle;
			break;
		}
		break;
		
		case playerAbilities.spark:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.spark_kssu:
			hatSprite = spr_Kirby_AbilityHat_Spark_KSSU_Idle;
			hatBackgroundSprite = spr_Kirby_HatBackground_Spark_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.yoyo:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.yoyo_kssu:
			hatSprite = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.wheel:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.wheel_kssu:
			hatSprite = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.artist:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.artist_kssu:
			hatSprite = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.fighter:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.fighter_kssu:
			hatSprite = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.suplex:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.suplex_kssu:
			hatSprite = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.wing:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.wing_kssu:
			hatSprite = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
			hatFrontSprite = spr_Kirby_HatFront_Wing_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.jet:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.jet_kssu:
			hatSprite = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.sword:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.sword_kssu:
			//hatSprite = spr_Kirby_AbilityHat_Sword_KSSU_Idle;
			hatSprite = -1;
			break;
		}
		break;
		
		case playerAbilities.parasol:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.parasol_kssu:
			//hatSprite = spr_Kirby_AbilityHat_Parasol_KSSU_Idle;
			hatSprite = -1;
			break;
		}
		break;
		
		case playerAbilities.hammer:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.hammer_kssu:
			//hatSprite = spr_Kirby_AbilityHat_Hammer_KSSU_Idle;
			hatSprite = -1;
			break;
		}
		break;
		
		case playerAbilities.bell:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.bell_modern:
			hatSprite = spr_Kirby_AbilityHat_Bell_Modern_Idle;
			break;
		}
		break;
		
		case playerAbilities.sleep:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.sleep_kssu:
			hatSprite = spr_Kirby_AbilityHat_Sleep_KSSU_SleepReady;
			break;
		}
		break;
		
		case playerAbilities.scan:
		switch (abilityHatSkinValue[subSelection][selection])
		{
			case abilityHatSkins.scan_kssu:
			hatSprite = spr_Kirby_AbilityHat_Scan_KSSU_Scan;
			break;
		}
		break;
	}
	
	var mannequinX = 242;
	var mannequinY = 127;
	
	if (hatBackgroundSprite != -1) draw_sprite_ext(hatBackgroundSprite,0,mannequinX,mannequinY,2,2,image_angle,image_blend,image_alpha);
	
	draw_sprite_ext(spr_Menu_Collection_Customize_MannequinKirby,0,mannequinX,mannequinY,2,2,image_angle,image_blend,image_alpha);
	
	if (hatSprite != -1) draw_sprite_ext(hatSprite,0,mannequinX,mannequinY,2,2,image_angle,image_blend,image_alpha);
	if (hatFrontSprite != -1) draw_sprite_ext(hatFrontSprite,0,mannequinX,mannequinY,2,2,image_angle,image_blend,image_alpha);
	if (equipmentSprite != -1) draw_sprite_ext(equipmentSprite,0,mannequinX,mannequinY,2,2,image_angle,image_blend,image_alpha);
	
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
			col1 = abilityHatSkinColor[subSelection][i];
			col2 = c_white;
		}
		if (abilityHatSkinValue[subSelection][i] == playerHatSkin)
		{
			col1 = c_yellow;
			col2 = c_yellow;
			selectedOffset = 36;
		}
		if (selectedOffset != 0) draw_sprite_ext(spr_AbilityStar_Retro,starIndex,28 + abilityHatSkinOffsetLerp[subSelection][i],textY + 7 + (36 * i),1,1,image_angle,image_blend,textAlpha);
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(14 + selectedOffset + abilityHatSkinOffsetLerp[subSelection][i],textY + (36 * i),abilityHatSkinTitle[subSelection][i],-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
	}
	break;
	#endregion
	
	#region Hat Paint
	case "hatPaint":
	for (var i = 0; i < array_length(abilityHatPaintTitle[subSelection][selectedSkin]); i++) abilityHatPaintOffsetLerp[subSelection][selectedSkin][i] = lerp(abilityHatPaintOffsetLerp[subSelection][selectedSkin][i],abilityHatPaintOffset[subSelection][selectedSkin][i] * 8,.25);
	
	textY = lerp(textY,147 - (selection * 36),.25);
	
	draw_set_color(c_black);
	draw_set_alpha(.75);
	draw_roundrect(2,37,122,268,false);
	draw_roundrect(126,188,476,268,false);
	draw_set_alpha(1);
	
	draw_set_halign(fa_center);
	var col1 = c_dkgray;
	var col2 = c_dkgray
	if (abilityHatPaintUnlocked[subSelection][selectedSkin][selection])
	{
		col1 = abilityHatPaintColor[subSelection][selectedSkin][selection];
		col2 = c_white;
	}
	scr_Draw_Text_Color_Outline(301,192,abilityHatPaintTitle[subSelection][selectedSkin][selection],-1,350,col1,col2,1,c_black,c_black,1,2,5,image_xscale,image_yscale,image_angle);
	draw_set_halign(fa_left);
	
	hatSprite = -1;
	hatFrontSprite = -1;
	hatBackgroundSprite = -1;
	equipmentSprite = -1;
	switch (abilityHatValue[subSelection])
	{
		case playerAbilities.cutter:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.cutter_kssu:
			hatSprite = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.beam:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.beam_kssu:
			hatSprite = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
			break;
			
			case abilityHatSkins.beam_marxSoul:
			hatSprite = spr_Kirby_AbilityHat_Beam_MarxSoul_Idle;
			break;
		}
		break;
		
		case playerAbilities.mysticBeam:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.mysticBeam_ggs:
			hatSprite = spr_Kirby_AbilityHat_MysticBeam_GGS_Idle;
			break;
		}
		break;
		
		case playerAbilities.stone:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.stone_kssu:
			hatSprite = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
			break;
			
			case abilityHatSkins.stone_modern:
			hatSprite = spr_Kirby_AbilityHat_Stone_Modern_Idle;
			break;
		}
		break;
		
		case playerAbilities.mirror:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.mirror_kssu:
			hatSprite = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
			break;
			
			case abilityHatSkins.mirror_modern:
			hatSprite = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
			break;
		}
		break;
		
		case playerAbilities.ninja:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.ninja_kssu:
			hatSprite = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
			break;
			
			case abilityHatSkins.ninja_modern:
			hatSprite = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
			break;
			
			case abilityHatSkins.ninja_samurai:
			hatSprite = spr_Kirby_AbilityHat_Ninja_Samurai_Idle;
			break;
		}
		break;
		
		case playerAbilities.bomb:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.bomb_kssu:
			hatSprite = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
			break;
			
			case abilityHatSkins.bomb_modern:
			hatSprite = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
			break;
		}
		break;
		
		case playerAbilities.fire:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.fire_kssu:
			hatSprite = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
			hatBackgroundSprite = spr_Kirby_HatBackground_Fire_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.ice:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.ice_kssu:
			hatSprite = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
			break;
			
			case abilityHatSkins.ice_snowman:
			hatSprite = spr_Kirby_AbilityHat_Ice_Snowman_Idle;
			break;
		}
		break;
		
		case playerAbilities.spark:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.spark_kssu:
			hatSprite = spr_Kirby_AbilityHat_Spark_KSSU_Idle;
			hatBackgroundSprite = spr_Kirby_HatBackground_Spark_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.yoyo:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.yoyo_kssu:
			hatSprite = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.wheel:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.wheel_kssu:
			hatSprite = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.artist:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.artist_kssu:
			hatSprite = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.fighter:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.fighter_kssu:
			hatSprite = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.suplex:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.suplex_kssu:
			hatSprite = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.wing:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.wing_kssu:
			hatSprite = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
			hatFrontSprite = spr_Kirby_HatFront_Wing_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.jet:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.jet_kssu:
			hatSprite = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
			break;
		}
		break;
		
		case playerAbilities.sword:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.sword_kssu:
			hatSprite = spr_Kirby_AbilityHat_Sword_KSSU_ItemCarry_Light_Idle;
			break;
		}
		break;
		
		case playerAbilities.parasol:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.parasol_kssu:
			equipmentSprite = spr_Kirby_Equipment_Parasol_KSSU_ItemCarry_Light_Idle;
			break;
		}
		break;
		
		case playerAbilities.hammer:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.hammer_kssu:
			hatSprite = spr_Kirby_AbilityHat_Hammer_KSSU_ItemCarry_Light_Idle;
			break;
		}
		break;
		
		case playerAbilities.bell:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.bell_modern:
			hatSprite = spr_Kirby_AbilityHat_Bell_Modern_Idle;
			break;
		}
		break;
		
		case playerAbilities.sleep:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.sleep_kssu:
			hatSprite = spr_Kirby_AbilityHat_Sleep_KSSU_SleepReady;
			break;
		}
		break;
		
		case playerAbilities.scan:
		switch (abilityHatSkinValue[subSelection][selectedSkin])
		{
			case abilityHatSkins.scan_kssu:
			hatSprite = spr_Kirby_AbilityHat_Scan_KSSU_Scan;
			break;
		}
		break;
	}
	
	var mannequinX = 242;
	var mannequinY = 127;
	
	if ((global.shaders) and (abilityHatPaint[subSelection][selectedSkin][selection] != -1)) pal_swap_set(abilityHatPaint[subSelection][selectedSkin][selection],1,false);
	if (hatBackgroundSprite != -1) draw_sprite_ext(hatBackgroundSprite,0,mannequinX,mannequinY,2,2,image_angle,image_blend,image_alpha);
	if ((global.shaders) and (abilityHatPaint[subSelection][selectedSkin][selection] != -1)) pal_swap_reset();
	
	draw_sprite_ext(spr_Menu_Collection_Customize_MannequinKirby,0,mannequinX,mannequinY,2,2,image_angle,image_blend,image_alpha);
	
	if ((global.shaders) and (abilityHatPaint[subSelection][selectedSkin][selection] != -1)) pal_swap_set(abilityHatPaint[subSelection][selectedSkin][selection],1,false);
	if (hatSprite != -1) draw_sprite_ext(hatSprite,0,mannequinX,mannequinY,2,2,image_angle,image_blend,image_alpha);
	if (hatFrontSprite != -1) draw_sprite_ext(hatFrontSprite,0,mannequinX,mannequinY,2,2,image_angle,image_blend,image_alpha);
	if (equipmentSprite != -1) draw_sprite_ext(equipmentSprite,0,mannequinX,mannequinY,2,2,image_angle,image_blend,image_alpha);
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
			col1 = abilityHatPaintColor[subSelection][selectedSkin][i];
			col2 = c_white;
		}
		if (abilityHatPaintValue[subSelection][selectedSkin][i] == playerHatPaint)
		{
			col1 = c_yellow;
			col2 = c_yellow;
			selectedOffset = 36;
		}
		if (selectedOffset != 0) draw_sprite_ext(spr_AbilityStar_Retro,starIndex,28 + abilityHatPaintOffsetLerp[subSelection][selectedSkin][i],textY + 7 + (36 * i),1,1,image_angle,image_blend,textAlpha);
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
	draw_roundrect(293,28,427,60,false);
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
	
	switch (selectedPlayer)
	{
		case 0:
		var playerfamiliar = global.familiarP1;
		break;
		
		case 1:
		var playerfamiliar = global.familiarP2;
		break;
		
		case 2:
		var playerfamiliar = global.familiarP3;
		break;
		
		case 3:
		var playerfamiliar = global.familiarP4;
		break;
	}
	
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
		if (familiarValue[i] == playerfamiliar)
		{
			col1 = c_yellow;
			col2 = c_yellow;
			selectedOffset = 36;
		}
		if (selectedOffset != 0) draw_sprite_ext(spr_AbilityStar_Retro,starIndex,28 + familiarOffsetLerp[i],textY + 7 + (36 * i),1,1,image_angle,image_blend,textAlpha);
		if (textAlpha != 0) scr_Draw_Text_Color_Outline(14 + selectedOffset + familiarOffsetLerp[i],textY + (36 * i),familiarTitle[i],-1,-1,col1,col2,textAlpha,c_black,c_black,textAlpha,2,5,image_xscale,image_yscale,image_angle);
	}
	break;
	#endregion
}