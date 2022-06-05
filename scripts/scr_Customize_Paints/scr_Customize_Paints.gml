///@description Customize - Paints

function scr_Customize_Paints()
{
	var i = 0;
	
	#region Friendly Pink
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_friendlyPink,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_friendlyPink,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.friendlyPinkSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_Default,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.friendlyPink;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_FriendlyPink;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_FriendlyPink;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_FriendlyPink;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_FriendlyPink;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_FriendlyPink;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_FriendlyPink;
	sprayPaintColor[i] = make_color_rgb(248,160,216);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Yellow
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_yellow,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_yellow,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.yellowSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_Default,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.yellow;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Yellow;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Yellow;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Yellow;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Yellow;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Yellow;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Yellow;
	sprayPaintColor[i] = make_color_rgb(248,208,0);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Red
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_red,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_red,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.redSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_Default,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.red;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Red;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Red;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Red;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Red;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Red;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Red;
	sprayPaintColor[i] = make_color_rgb(248,0,56);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Green
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_green,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_green,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.greenSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_Default,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.green;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Green;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Green;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Green;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Green;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Green;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Green;
	sprayPaintColor[i] = make_color_rgb(120,248,40);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Dreamy Blueberry
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_dreamyBlueberry,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_dreamyBlueberry,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.dreamyBlueberrySprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_beatStageMissions,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.dreamyBlueberry;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_DreamyBlueberry;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_DreamyBlueberry;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_DreamyBlueberry;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_DreamyBlueberry;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_DreamyBlueberry;
	sprayPaintColor[i] = make_color_rgb(160,229,248);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Carbon
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_carbon,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_carbon,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.carbonSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_beatStageMissions,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.carbon;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Carbon;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Carbon;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Carbon;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Carbon;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Carbon;
	sprayPaintColor[i] = make_color_rgb(248,152,8);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Cherry
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_cherry,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_cherry,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.cherrySprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_beatStageMissions,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.cherry;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Cherry;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Cherry;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Cherry;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Cherry;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Cherry;
	sprayPaintColor[i] = make_color_rgb(24,160,88);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Deep Fried Kirb
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_deepFriedKirb,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_deepFriedKirb,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.deepFriedKirbSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_beatStageMissions,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.deepFriedKirb;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_DeepFriedKirb;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_DeepFriedKirb;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_DeepFriedKirb;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_DeepFriedKirb;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_DeepFriedKirb;
	sprayPaintColor[i] = make_color_rgb(249,89,207);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Emerald
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_emerald,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_emerald,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.emeraldSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_beatStageMissions,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.emerald;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Emerald;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Emerald;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Emerald;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Emerald;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Emerald;
	sprayPaintColor[i] = make_color_rgb(136,248,160);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region GameKirb
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_gameKirb,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_gameKirb,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.gameKirbSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_beatStageMissions,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.gameKirb;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_GameKirb;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_GameKirb;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_GameKirb;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_GameKirb;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_GameKirb;
	sprayPaintColor[i] = make_color_rgb(108,166,108);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Haunting Purple
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_hauntingPurple,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_hauntingPurple,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.hauntingPurpleSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_beatStageMissions,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.hauntingPurple;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_HauntingPurple;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_HauntingPurple;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_HauntingPurple;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_HauntingPurple;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_HauntingPurple;
	sprayPaintColor[i] = make_color_rgb(216,112,232);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Invis Sprinkle
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_invisSprinkle,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_invisSprinkle,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.invisSprinkleSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_beatStageMissions,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.invisSprinkle;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_InvisSprinkle;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_InvisSprinkle;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_InvisSprinkle;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_InvisSprinkle;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_InvisSprinkle;
	sprayPaintColor[i] = make_color_rgb(255,255,255);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Monochrome Kirb
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_monochromeKirb,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_monochromeKirb,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.monochromeKirbSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_beatStageMissions,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.monochromeKirb;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_MonochromeKirb;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_MonochromeKirb;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_MonochromeKirb;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_MonochromeKirb;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_MonochromeKirb;
	sprayPaintColor[i] = make_color_rgb(166,166,166);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Yolk Temple
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_yolkTemple,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_yolkTemple,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.yolkTempleSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_beatStageMissions,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.yolkTemple;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_YolkTemple;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_YolkTemple;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_YolkTemple;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_YolkTemple;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_YolkTemple;
	sprayPaintColor[i] = make_color_rgb(119,239,183);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Plump Tomato
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_plumpTomato,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_plumpTomato,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.plumpTomatoSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_tomatooCatch3Stars,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.plumpTomato;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_PlumpTomato;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_PlumpTomato;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_PlumpTomato;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_PlumpTomato;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_PlumpTomato;
	sprayPaintColor[i] = make_color_rgb(249,94,94);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Waddle Waddle
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_waddleWaddle,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_waddleWaddle,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.waddleWaddleSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_fill10Bestiary,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.waddleWaddle;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_WaddleWaddle;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_WaddleWaddle;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_WaddleWaddle;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_WaddleWaddle;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_WaddleWaddle;
	sprayPaintColor[i] = make_color_rgb(248,120,0);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Mystic
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_mystic,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_mystic,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.mysticSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_fill25Bestiary,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.mystic;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Mystic;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Mystic;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Mystic;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Mystic;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Mystic;
	sprayPaintColor[i] = make_color_rgb(144,92,196);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Shadow of the Mirror
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_shadowOfTheMirror,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_shadowOfTheMirror,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.shadowOfTheMirrorSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_fill50Bestiary,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.shadowOfTheMirror;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_ShadowOfTheMirror;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_ShadowOfTheMirror;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_ShadowOfTheMirror;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_ShadowOfTheMirror;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_ShadowOfTheMirror;
	sprayPaintColor[i] = make_color_rgb(39,10,47);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Delirious
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_delirious,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_delirious,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.deliriousSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_unlock5Familiars,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.delirious;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Delirious;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Delirious;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Delirious;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Delirious;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Delirious;
	sprayPaintColor[i] = make_color_rgb(255,242,102);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Greenjolt
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_greenjolt,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_greenjolt,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.greenjoltSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_logIntoGamejolt,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.greenjolt;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_GreenJolt;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_GreenJolt;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_GreenJolt;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_GreenJolt;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_GreenJolt;
	sprayPaintColor[i] = make_color_rgb(176,255,81);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Butter Knife
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_butterKnife,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_butterKnife,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.butterKnifeSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_logIntoGamejolt,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.butterKnife;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_ButterKnife;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_ButterKnife;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_ButterKnife;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_ButterKnife;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_ButterKnife;
	sprayPaintColor[i] = make_color_rgb(239,237,122);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Blurple
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_blurple,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_blurple,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.blurpleSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_logIntoDiscord,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.blurple;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Blurple;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Blurple;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Blurple;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Blurple;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Blurple;
	sprayPaintColor[i] = make_color_rgb(182,153,239);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Beam
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_beam,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_beam,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.beamSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_beamGoldMedal,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.beam;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Beam;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Beam;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Beam;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Beam;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Beam;
	sprayPaintColor[i] = make_color_rgb(248,216,96);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Stone
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_stone,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_stone,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.stoneSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_stoneGoldMedal,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.stone;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Stone;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Stone;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Stone;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Stone;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Stone;
	sprayPaintColor[i] = make_color_rgb(216,136,104);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Mirror
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_mirror,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_mirror,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.mirrorSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_mirrorGoldMedal,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.mirror;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Mirror;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Mirror;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Mirror;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Mirror;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Mirror;
	sprayPaintColor[i] = make_color_rgb(248,224,248);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Ninja
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_ninja,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_ninja,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.ninjaSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_ninjaGoldMedal,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.ninja;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Mirror;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Mirror;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Mirror;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Mirror;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Mirror;
	sprayPaintColor[i] = make_color_rgb(192,144,192);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Fire
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_fire,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_fire,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.fireSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_fireGoldMedal,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.fire;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Fire;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Fire;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Fire;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Fire;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Fire;
	sprayPaintColor[i] = make_color_rgb(248,104,120);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Ice
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_ice,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_ice,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.iceSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_iceGoldMedal,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.ice;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Ice;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Ice;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Ice;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Ice;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Ice;
	sprayPaintColor[i] = make_color_rgb(144,248,248);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Plasma
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_plasma,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_plasma,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.plasmaSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_sparkGoldMedal,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.plasma;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Plasma;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Plasma;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Plasma;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Plasma;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Plasma;
	sprayPaintColor[i] = make_color_rgb(176,248,104);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Unearthly Hand
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_unearthlyHand,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_unearthlyHand,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.unearthlyHandSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_unlockGamble,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.unearthlyHand;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_UnearthlyHand;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_UnearthlyHand;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_UnearthlyHand;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_UnearthlyHand;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_UnearthlyHand;
	sprayPaintColor[i] = make_color_rgb(255,217,0);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region So Meta
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_soMeta,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_soMeta,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.soMetaSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_unlockMetaKnight,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.soMeta;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_SoMeta;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_SoMeta;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_SoMeta;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_SoMeta;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_SoMeta;
	sprayPaintColor[i] = make_color_rgb(0,0,248);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Gooey Blue
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_gooeyBlue,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_gooeyBlue,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.gooeyBlueSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_unlockGooey,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.gooeyBlue;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_GooeyBlue;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_GooeyBlue;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_GooeyBlue;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_GooeyBlue;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_GooeyBlue;
	sprayPaintColor[i] = make_color_rgb(39,10,47);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Egg Brown
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_eggBrown,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_eggBrown,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.eggBrownSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_unlockMagolor,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.eggBrown;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_EggBrown;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_EggBrown;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_EggBrown;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_EggBrown;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_EggBrown;
	sprayPaintColor[i] = make_color_rgb(112,75,20);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	/*
	#region Telltale Keeby
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_telltaleKeeby,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_telltaleKeeby,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.telltaleKeebySprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_unlockKeeby,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.telltaleKeeby;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_TelltaleKeeby;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_TelltaleKeeby;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_TelltaleKeeby;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_TelltaleKeeby;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_TelltaleKeeby;
	sprayPaintColor[i] = make_color_rgb(255,246,122);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Royal Yarn
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_royalYarn,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_royalYarn,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.royalYarnSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_unlockPrinceFluff,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.royalYarn;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_RoyalYarn;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_RoyalYarn;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_RoyalYarn;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_RoyalYarn;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_RoyalYarn;
	sprayPaintColor[i] = make_color_rgb(96,212,255);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	*/
	
	#region Smiley White
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_smileyWhite,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_smileyWhite,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.smileyWhiteSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_secret,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.smileyWhite;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_SmileyWhite;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_SmileyWhite;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_SmileyWhite;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_SmileyWhite;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_SmileyWhite;
	sprayPaintColor[i] = make_color_rgb(30,30,30);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Edd
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_edd,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_edd,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.eddSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_secret,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.edd;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Edd;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Edd;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Edd;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Edd;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Edd;
	sprayPaintColor[i] = make_color_rgb(115,102,98);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Musician's Light
	sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_musiciansLight,stringAttributes.title,0,global.language);
	sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_musiciansLight,stringAttributes.description,0,global.language);
	sprayPaintUnlocked[i] = global.musiciansLightSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_secret,stringAttributes.description,0,global.language);
	sprayPaintValue[i] = playerSprayPaints.musiciansLight;
	sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_MusiciansLight;
	sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_MusiciansLight;
	sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_MusiciansLight;
	sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_MusiciansLight;
	sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_MusiciansLight;
	sprayPaintColor[i] = make_color_rgb(156,228,218);
	sprayPaintOffset[i] = 0;
	sprayPaintOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	if (global.kirbyBattleBlitzCrossoverKeycard)
	{
		#region Aege
		sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_aege,stringAttributes.title,0,global.language);
		sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_aege,stringAttributes.description,0,global.language);
		sprayPaintUnlocked[i] = true;
		sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_secret,stringAttributes.description,0,global.language);
		sprayPaintValue[i] = playerSprayPaints.aege;
		sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Aege;
		sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Aege;
		sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Aege;
		sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Aege;
		sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Aege;
		sprayPaintColor[i] = make_color_rgb(136,248,160);
		sprayPaintOffset[i] = 0;
		sprayPaintOffsetLerp[i] = 0;
		i += 1;
		#endregion
		
		#region Stray
		sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_stray,stringAttributes.title,0,global.language);
		sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_stray,stringAttributes.description,0,global.language);
		sprayPaintUnlocked[i] = true;
		sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_secret,stringAttributes.description,0,global.language);
		sprayPaintValue[i] = playerSprayPaints.stray;
		sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Stray;
		sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Stray;
		sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Stray;
		sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Stray;
		sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Stray;
		sprayPaintColor[i] = make_color_rgb(192,146,75);
		sprayPaintOffset[i] = 0;
		sprayPaintOffsetLerp[i] = 0;
		i += 1;
		#endregion
		
		#region Glitch
		sprayPaintTitle[i] = scr_Localization(stringAttributes.playerSprayPaints_glitch,stringAttributes.title,0,global.language);
		sprayPaintDescription[i] = scr_Localization(stringAttributes.playerSprayPaints_glitch,stringAttributes.description,0,global.language);
		sprayPaintUnlocked[i] = true;
		sprayPaintUnlockMethod[i] = scr_Localization(stringAttributes.unlockMethods_secret,stringAttributes.description,0,global.language);
		sprayPaintValue[i] = playerSprayPaints.glitch;
		sprayPaintKirbyNormal[i] = spr_Kirby_Normal_Palette_Glitch;
		sprayPaintGambleNormal[i] = spr_Kirby_Normal_Palette_Glitch;
		sprayPaintGooeyNormal[i] = spr_Gooey_Normal_Palette_Glitch;
		sprayPaintGooeyPipis[i] = spr_Gooey_Pipis_Palette_Glitch;
		sprayPaintMetaKnightNormal[i] = spr_Kirby_Normal_Palette_Glitch;
		sprayPaintColor[i] = make_color_rgb(160,171,248);
		sprayPaintOffset[i] = 0;
		sprayPaintOffsetLerp[i] = 0;
		i += 1;
		#endregion
	}
}