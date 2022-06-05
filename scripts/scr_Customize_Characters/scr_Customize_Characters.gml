///@description Customize - Characters

function scr_Customize_Characters()
{
	var i = 0;
	characterTitle[i] = scr_Localization(stringAttributes.playerCharacters_kirby,stringAttributes.title,0,global.language);
	characterSecretTitle[i] = scr_Localization(stringAttributes.playerCharacters_kirby,stringAttributes.secretTitle,0,global.language);
	characterValue[i] = playerCharacters.kirby;
	characterIcon[i] = spr_Hud_Icon_Kirby;
	characterUnlocked[i] = global.kirbyUnlocked;
	characterUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_Default,stringAttributes.description,0,global.language);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Kirby_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	i += 1;
	characterTitle[i] = scr_Localization(stringAttributes.playerCharacters_gamble,stringAttributes.title,0,global.language);
	characterSecretTitle[i] = scr_Localization(stringAttributes.playerCharacters_gamble,stringAttributes.secretTitle,0,global.language);
	characterValue[i] = playerCharacters.gamble;
	characterIcon[i] = spr_Hud_Icon_Gamble;
	characterUnlocked[i] = global.gambleUnlocked;
	characterUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_Default,stringAttributes.description,0,global.language);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Gamble_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	i += 1;
	characterTitle[i] = scr_Localization(stringAttributes.playerCharacters_metaKnight,stringAttributes.title,0,global.language);
	characterSecretTitle[i] = scr_Localization(stringAttributes.playerCharacters_metaKnight,stringAttributes.secretTitle,0,global.language);
	characterValue[i] = playerCharacters.metaKnight;
	characterIcon[i] = spr_Hud_Icon_MetaKnight;
	characterUnlocked[i] = global.metaKnightUnlocked;
	characterUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_Default,stringAttributes.description,0,global.language);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Kirby_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	i += 1;
	characterTitle[i] = scr_Localization(stringAttributes.playerCharacters_gooey,stringAttributes.title,0,global.language);
	characterSecretTitle[i] = scr_Localization(stringAttributes.playerCharacters_gooey,stringAttributes.secretTitle,0,global.language);
	characterValue[i] = playerCharacters.gooey;
	characterIcon[i] = spr_Hud_Icon_Gooey;
	characterUnlocked[i] = global.gooeyUnlocked;
	characterUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_Default,stringAttributes.description,0,global.language);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Gooey_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	k += 1;
	characterSkinTitle[i][k] = "Pipis";
	characterSkinTitleDraw[i][k] = "pipis ^";
	characterSkinValue[i][k] = "pipis";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Gooey_Pipis;
	characterSkinUnlocked[i][k] = true;
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	i += 1;
	characterTitle[i] = scr_Localization(stringAttributes.playerCharacters_magolor,stringAttributes.title,0,global.language);
	characterSecretTitle[i] = scr_Localization(stringAttributes.playerCharacters_magolor,stringAttributes.secretTitle,0,global.language);
	characterValue[i] = playerCharacters.magolor;
	characterIcon[i] = spr_Hud_Icon_Magolor;
	characterUnlocked[i] = global.magolorUnlocked;
	characterUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_Default,stringAttributes.description,0,global.language);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Kirby_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	/*i += 1;
	characterTitle[i] = scr_Localization(stringAttributes.playerCharacters_keeby,stringAttributes.title,0,global.language);
	characterSecretTitle[i] = scr_Localization(stringAttributes.playerCharacters_keeby,stringAttributes.secretTitle,0,global.language);
	characterValue[i] = playerCharacters.keeby;
	characterIcon[i] = spr_Hud_Icon_Keeby;
	characterUnlocked[i] = global.keebyUnlocked;
	characterUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_Default,stringAttributes.description,0,global.language);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Kirby_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;
	
	i += 1;
	characterTitle[i] = scr_Localization(stringAttributes.playerCharacters_princeFluff,stringAttributes.title,0,global.language);
	characterSecretTitle[i] = scr_Localization(stringAttributes.playerCharacters_princeFluff,stringAttributes.secretTitle,0,global.language);
	characterValue[i] = playerCharacters.princeFluff;
	characterIcon[i] = spr_Hud_Icon_PrinceFluff;
	characterUnlocked[i] = global.princeFluffUnlocked;
	characterUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_Default,stringAttributes.description,0,global.language);
	characterOffset[i] = 0;
	characterOffsetLerp[i] = 0;
	
	var k = 0;
	characterSkinTitle[i][k] = "Normal";
	characterSkinTitleDraw[i][k] = "Normal";
	characterSkinValue[i][k] = "normal";
	characterSkinSprite[i][k] = spr_Menu_Collection_Customize_Kirby_Normal;
	characterSkinUnlocked[i][k] = true;
	characterSkinOffset[i][k] = 0;
	characterSkinOffsetLerp[i][k] = 0;*/
}