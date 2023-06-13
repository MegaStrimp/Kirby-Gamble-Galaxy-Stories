///@description Customize - Characters

function scr_Customize_Characters()
{
	var i = 0;
	characterTitle[i] = str("Player Characters.Kirby.Title");
	
	var secretTitle = "";
	for (var stringWord = 0;stringWord <= string_length(characterTitle[i]);++stringWord)
	{
		if (string_char_at(characterTitle[i],stringWord) == " ")
		{
			secretTitle += " ";
		}
		else
		{
			secretTitle += "?";
		}
	}
	characterSecretTitle[i] = secretTitle;
	characterValue[i] = playerCharacters.kirby;
	characterIcon[i] = spr_Hud_Icon_Kirby;
	characterUnlocked[i] = global.kirbyUnlocked;
	characterUnlockMethod[i] = str("Unlock Methods.Default");
	characterColor[i] = make_color_rgb(240,35,132);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Kirby_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinColor[i][k] = make_color_rgb(240,35,132);
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	i += 1;
	characterTitle[i] = str("Player Characters.Gamble.Title");
	
	var secretTitle = "";
	for (var stringWord = 0;stringWord <= string_length(characterTitle[i]);++stringWord)
	{
		if (string_char_at(characterTitle[i],stringWord) == " ")
		{
			secretTitle += " ";
		}
		else
		{
			secretTitle += "?";
		}
	}
	characterSecretTitle[i] = secretTitle;
	characterValue[i] = playerCharacters.gamble;
	characterIcon[i] = spr_Hud_Icon_Gamble;
	characterUnlocked[i] = global.gambleUnlocked;
	characterUnlockMethod[i] = str("Unlock Methods.Default");
	characterColor[i] = make_color_rgb(237,138,0);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Gamble_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinColor[i][k] = make_color_rgb(237,138,0);
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	i += 1;
	characterTitle[i] = str("Player Characters.Meta Knight.Title");
	
	var secretTitle = "";
	for (var stringWord = 0;stringWord <= string_length(characterTitle[i]);++stringWord)
	{
		if (string_char_at(characterTitle[i],stringWord) == " ")
		{
			secretTitle += " ";
		}
		else
		{
			secretTitle += "?";
		}
	}
	characterSecretTitle[i] = secretTitle;
	characterValue[i] = playerCharacters.metaKnight;
	characterIcon[i] = spr_Hud_Icon_MetaKnight;
	characterUnlocked[i] = global.metaKnightUnlocked;
	characterUnlockMethod[i] = str("Unlock Methods.Default");
	characterColor[i] = make_color_rgb(75,25,183);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_MetaKnight_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinColor[i][k] = make_color_rgb(75,25,183);
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	i += 1;
	characterTitle[i] = str("Player Characters.Gooey.Title");
	
	var secretTitle = "";
	for (var stringWord = 0;stringWord <= string_length(characterTitle[i]);++stringWord)
	{
		if (string_char_at(characterTitle[i],stringWord) == " ")
		{
			secretTitle += " ";
		}
		else
		{
			secretTitle += "?";
		}
	}
	characterSecretTitle[i] = secretTitle;
	characterValue[i] = playerCharacters.gooey;
	characterIcon[i] = spr_Hud_Icon_Gooey;
	characterUnlocked[i] = global.gooeyUnlocked;
	characterUnlockMethod[i] = str("Unlock Methods.Default");
	characterColor[i] = make_color_rgb(31,30,201);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Gooey_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinColor[i][k] = make_color_rgb(31,30,201);
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	k += 1;
	characterSkinTitle[i][k] = "Pipis";
	characterSkinTitleDraw[i][k] = "pipis ^";
	characterSkinValue[i][k] = "pipis";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Gooey_Pipis;
	characterSkinUnlocked[i][k] = true;
	characterSkinColor[i][k] = make_color_rgb(0,191,255);
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	i += 1;
	characterTitle[i] = str("Player Characters.Magolor.Title");
	
	var secretTitle = "";
	for (var stringWord = 0;stringWord <= string_length(characterTitle[i]);++stringWord)
	{
		if (string_char_at(characterTitle[i],stringWord) == " ")
		{
			secretTitle += " ";
		}
		else
		{
			secretTitle += "?";
		}
	}
	characterSecretTitle[i] = secretTitle;
	characterValue[i] = playerCharacters.magolor;
	characterIcon[i] = spr_Hud_Icon_Magolor;
	characterUnlocked[i] = global.magolorUnlocked;
	characterUnlockMethod[i] = str("Unlock Methods.Default");
	characterColor[i] = make_color_rgb(0,63,238);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Magolor_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinColor[i][k] = make_color_rgb(0,63,238);
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	/*i += 1;
	characterTitle[i] = str("Player Characters.Keeby.Title");
	
	var secretTitle = "";
	for (var stringWord = 0;stringWord <= string_length(characterTitle[i]);++stringWord)
	{
		if (string_char_at(characterTitle[i],stringWord) == " ")
		{
			secretTitle += " ";
		}
		else
		{
			secretTitle += "?";
		}
	}
	characterSecretTitle[i] = secretTitle;
	characterValue[i] = playerCharacters.keeby;
	characterIcon[i] = spr_Hud_Icon_Keeby;
	characterUnlocked[i] = global.keebyUnlocked;
	characterUnlockMethod[i] = str("Unlock Methods.Default");
	characterColor[i] = make_color_rgb(255,227,150);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Keeby_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinColor[i][k] = make_color_rgb(255,227,150);
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	i += 1;
	characterTitle[i] = str("Player Characters.Prince Fluff.Title");
	
	var secretTitle = "";
	for (var stringWord = 0;stringWord <= string_length(characterTitle[i]);++stringWord)
	{
		if (string_char_at(characterTitle[i],stringWord) == " ")
		{
			secretTitle += " ";
		}
		else
		{
			secretTitle += "?";
		}
	}
	characterSecretTitle[i] = secretTitle;
	characterValue[i] = playerCharacters.princeFluff;
	characterIcon[i] = spr_Hud_Icon_PrinceFluff;
	characterUnlocked[i] = global.princeFluffUnlocked;
	characterUnlockMethod[i] = str("Unlock Methods.Default");
	characterColor[i] = make_color_rgb(94,212,255);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_PrinceFluff_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinColor[i][k] = make_color_rgb(94,212,255);
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;*/
}