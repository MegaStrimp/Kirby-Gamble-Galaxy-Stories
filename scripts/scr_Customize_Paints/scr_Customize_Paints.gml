///@description Customize - Paints

function scr_Customize_Paints()
{
	var i = 0;
	
	#region Friendly Pink
	sprayPaintTitle[i] = str("Spray Paints.Friendly Pink.Title");
	sprayPaintDescription[i] = str("Spray Paints.Friendly Pink.Description");
	sprayPaintUnlocked[i] = global.friendlyPinkSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Default");
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
	sprayPaintTitle[i] = str("Spray Paints.Yellow.Title");
	sprayPaintDescription[i] = str("Spray Paints.Yellow.Description");
	sprayPaintUnlocked[i] = global.yellowSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Default");
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
	sprayPaintTitle[i] = str("Spray Paints.Red.Title");
	sprayPaintDescription[i] = str("Spray Paints.Red.Description");
	sprayPaintUnlocked[i] = global.redSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Default");
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
	sprayPaintTitle[i] = str("Spray Paints.Green.Title");
	sprayPaintDescription[i] = str("Spray Paints.Green.Description");
	sprayPaintUnlocked[i] = global.greenSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Default");
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
	sprayPaintTitle[i] = str("Spray Paints.Dreamy Blueberry.Title");
	sprayPaintDescription[i] = str("Spray Paints.Dreamy Blueberry.Description");
	sprayPaintUnlocked[i] = global.dreamyBlueberrySprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Beat Stage Missions");
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
	sprayPaintTitle[i] = str("Spray Paints.Carbon.Title");
	sprayPaintDescription[i] = str("Spray Paints.Carbon.Description");
	sprayPaintUnlocked[i] = global.carbonSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Beat Stage Missions");
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
	sprayPaintTitle[i] = str("Spray Paints.Cherry.Title");
	sprayPaintDescription[i] = str("Spray Paints.Cherry.Description");
	sprayPaintUnlocked[i] = global.cherrySprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Beat Stage Missions");
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
	sprayPaintTitle[i] = str("Spray Paints.Deep Fried Kirb.Title");
	sprayPaintDescription[i] = str("Spray Paints.Deep Fried Kirb.Description");
	sprayPaintUnlocked[i] = global.deepFriedKirbSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Beat Stage Missions");
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
	sprayPaintTitle[i] = str("Spray Paints.Emerald.Title");
	sprayPaintDescription[i] = str("Spray Paints.Emerald.Description");
	sprayPaintUnlocked[i] = global.emeraldSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Beat Stage Missions");
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
	sprayPaintTitle[i] = str("Spray Paints.GameKirb.Title");
	sprayPaintDescription[i] = str("Spray Paints.GameKirb.Description");
	sprayPaintUnlocked[i] = global.gameKirbSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Beat Stage Missions");
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
	sprayPaintTitle[i] = str("Spray Paints.Haunting Purple.Title");
	sprayPaintDescription[i] = str("Spray Paints.Haunting Purple.Description");
	sprayPaintUnlocked[i] = global.hauntingPurpleSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Beat Stage Missions");
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
	sprayPaintTitle[i] = str("Spray Paints.Invis Sprinkle.Title");
	sprayPaintDescription[i] = str("Spray Paints.Invis Sprinkle.Description");
	sprayPaintUnlocked[i] = global.invisSprinkleSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Beat Stage Missions");
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
	sprayPaintTitle[i] = str("Spray Paints.Monochrome Kirb.Title");
	sprayPaintDescription[i] = str("Spray Paints.Monochrome Kirb.Description");
	sprayPaintUnlocked[i] = global.monochromeKirbSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Beat Stage Missions");
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
	sprayPaintTitle[i] = str("Spray Paints.Yolk Temple.Title");
	sprayPaintDescription[i] = str("Spray Paints.Yolk Temple.Description");
	sprayPaintUnlocked[i] = global.yolkTempleSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Beat Stage Missions");
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
	sprayPaintTitle[i] = str("Spray Paints.Plump Tomato.Title");
	sprayPaintDescription[i] = str("Spray Paints.Plump Tomato.Description");
	sprayPaintUnlocked[i] = global.plumpTomatoSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Tomatoo Catch 3 Stars");
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
	sprayPaintTitle[i] = str("Spray Paints.Waddle Waddle.Title");
	sprayPaintDescription[i] = str("Spray Paints.Waddle Waddle.Description");
	sprayPaintUnlocked[i] = global.waddleWaddleSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Fill 10 Bestiary");
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
	sprayPaintTitle[i] = str("Spray Paints.Mystic.Title");
	sprayPaintDescription[i] = str("Spray Paints.Mystic.Description");
	sprayPaintUnlocked[i] = global.mysticSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Fill 20 Bestiary");
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
	sprayPaintTitle[i] = str("Spray Paints.Shadow of the Mirror.Title");
	sprayPaintDescription[i] = str("Spray Paints.Shadow of the Mirror.Description");
	sprayPaintUnlocked[i] = global.shadowOfTheMirrorSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Fill 50 Bestiary");
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
	sprayPaintTitle[i] = str("Spray Paints.Delirious.Title");
	sprayPaintDescription[i] = str("Spray Paints.Delirious.Description");
	sprayPaintUnlocked[i] = global.deliriousSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Unlock 5 Familiars");
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
	sprayPaintTitle[i] = str("Spray Paints.Greenjolt.Title");
	sprayPaintDescription[i] = str("Spray Paints.Greenjolt.Description");
	sprayPaintUnlocked[i] = global.greenjoltSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Log Into Gamejolt");
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
	sprayPaintTitle[i] = str("Spray Paints.Butter Knife.Title");
	sprayPaintDescription[i] = str("Spray Paints.Butter Knife.Description");
	sprayPaintUnlocked[i] = global.butterKnifeSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Log Into Gamejolt");
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
	sprayPaintTitle[i] = str("Spray Paints.Blurple.Title");
	sprayPaintDescription[i] = str("Spray Paints.Blurple.Description");
	sprayPaintUnlocked[i] = global.blurpleSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Log Into Discord");
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
	sprayPaintTitle[i] = str("Spray Paints.Beam.Title");
	sprayPaintDescription[i] = str("Spray Paints.Beam.Description");
	sprayPaintUnlocked[i] = global.beamSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Beam Gold Medal");
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
	sprayPaintTitle[i] = str("Spray Paints.Stone.Title");
	sprayPaintDescription[i] = str("Spray Paints.Stone.Description");
	sprayPaintUnlocked[i] = global.stoneSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Stone Gold Medal");
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
	sprayPaintTitle[i] = str("Spray Paints.Mirror.Title");
	sprayPaintDescription[i] = str("Spray Paints.Mirror.Description");
	sprayPaintUnlocked[i] = global.mirrorSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Mirror Gold Medal");
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
	sprayPaintTitle[i] = str("Spray Paints.Ninja.Title");
	sprayPaintDescription[i] = str("Spray Paints.Ninja.Description");
	sprayPaintUnlocked[i] = global.ninjaSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Ninja Gold Medal");
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
	sprayPaintTitle[i] = str("Spray Paints.Fire.Title");
	sprayPaintDescription[i] = str("Spray Paints.Fire.Description");
	sprayPaintUnlocked[i] = global.fireSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Fire Gold Medal");
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
	sprayPaintTitle[i] = str("Spray Paints.Ice.Title");
	sprayPaintDescription[i] = str("Spray Paints.Ice.Description");
	sprayPaintUnlocked[i] = global.iceSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Ice Gold Medal");
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
	sprayPaintTitle[i] = str("Spray Paints.Plasma.Title");
	sprayPaintDescription[i] = str("Spray Paints.Plasma.Description");
	sprayPaintUnlocked[i] = global.plasmaSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Spark Gold Medal");
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
	sprayPaintTitle[i] = str("Spray Paints.Unearthly Hand.Title");
	sprayPaintDescription[i] = str("Spray Paints.Unearthly Hand.Description");
	sprayPaintUnlocked[i] = global.unearthlyHandSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Unlock Gamble");
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
	sprayPaintTitle[i] = str("Spray Paints.So Meta.Title");
	sprayPaintDescription[i] = str("Spray Paints.So Meta.Description");
	sprayPaintUnlocked[i] = global.soMetaSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Unlock Meta Knight");
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
	sprayPaintTitle[i] = str("Spray Paints.Gooey Blue.Title");
	sprayPaintDescription[i] = str("Spray Paints.Gooey Blue.Description");
	sprayPaintUnlocked[i] = global.gooeyBlueSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Unlock Gooey");
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
	sprayPaintTitle[i] = str("Spray Paints.Egg Brown.Title");
	sprayPaintDescription[i] = str("Spray Paints.Egg Brown.Description");
	sprayPaintUnlocked[i] = global.eggBrownSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] =str("Unlock Methods.Unlock Magolor");
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
	sprayPaintTitle[i] = str("Spray Paints.Telltale Keeby.Title");
	sprayPaintDescription[i] = str("Spray Paints.Telltale Keeby.Description");
	sprayPaintUnlocked[i] = global.telltaleKeebySprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Unlock Keeby");
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
	sprayPaintTitle[i] = str("Spray Paints.Royal Yarn.Title");
	sprayPaintDescription[i] = str("Spray Paints.Royal Yarn.Description");
	sprayPaintUnlocked[i] = global.royalYarnSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = str("Unlock Methods.Unlock Prince Fluff");
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
	sprayPaintTitle[i] = str("Spray Paints.Smiley White.Title");
	sprayPaintDescription[i] = str("Spray Paints.Smiley White.Description");
	sprayPaintUnlocked[i] = global.smileyWhiteSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "???";
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
	sprayPaintTitle[i] = str("Spray Paints.Edd.Title");
	sprayPaintDescription[i] = str("Spray Paints.Edd.Description");
	sprayPaintUnlocked[i] = global.eddSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "???";
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
	sprayPaintTitle[i] = str("Spray Paints.Musician's Light.Title");
	sprayPaintDescription[i] = str("Spray Paints.Musician's Light.Description");
	sprayPaintUnlocked[i] = global.musiciansLightSprayPaintUnlocked;
	sprayPaintUnlockMethod[i] = "???";
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
		sprayPaintTitle[i] = str("Spray Paints.Aege.Title");
		sprayPaintDescription[i] = str("Spray Paints.Aege.Description");
		sprayPaintUnlocked[i] = true;
		sprayPaintUnlockMethod[i] = "???";
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
		sprayPaintTitle[i] = str("Spray Paints.Stray.Title");
		sprayPaintDescription[i] = str("Spray Paints.Stray.Description");
		sprayPaintUnlocked[i] = true;
		sprayPaintUnlockMethod[i] = "???";
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
		sprayPaintTitle[i] = str("Spray Paints.Glitch.Title");
		sprayPaintDescription[i] = str("Spray Paints.Glitch.Description");
		sprayPaintUnlocked[i] = true;
		sprayPaintUnlockMethod[i] = "???";
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