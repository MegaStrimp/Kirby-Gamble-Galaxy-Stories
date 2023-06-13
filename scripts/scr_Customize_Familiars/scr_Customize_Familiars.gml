///@description Customize - Familiars

function scr_Customize_Familiars()
{
	var i = 0;
	
	#region Gamble
	familiarTitle[i] = str("Player Characters.Gamble.Title");
	familiarValue[i] = familiars.gamble;
	familiarDescription[i] = str("Familiars.Gamble.Description");
	familiarUnlocked[i] = global.gambleFamiliarUnlocked;
	familiarUnlockMethod[i] = "TBD";
	familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_Gamble;
	
	familiarPaintTitle[i][0] = "Test Palette";
	familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
	
	familiarLevel[i] = global.gambleFamiliarLevel;
	familiarExp[i] = global.gambleFamiliarExp;
	familiarMaxExp[i][1] = 100;
	familiarMaxExp[i][2] = 100;
	familiarMaxExp[i][3] = 100;
	
	var h = 0;
	familiarStatTitle[i][h] = "ATK";
	familiarStat[i][h][0] = 0;
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	
	h += 1;
	familiarStatTitle[i][h] = "SPD";
	familiarStat[i][h][0] = 0;
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	
	familiarColor[i] = make_color_rgb(237,138,0);
	familiarOffset[i] = 0;
	familiarOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Happy Pea
	familiarTitle[i] = str("Familiars.Happy Pea.Title");
	familiarValue[i] = familiars.happyPea;
	familiarDescription[i] = str("Familiars.Happy Pea.Description");
	familiarUnlocked[i] = global.happyPeaFamiliarUnlocked;
	familiarUnlockMethod[i] = "TBD";
	familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_HappyPea;
	
	familiarPaintTitle[i][0] = "Test Palette";
	familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
	
	familiarLevel[i] = global.happyPeaFamiliarLevel;
	familiarExp[i] = global.happyPeaFamiliarExp;
	familiarMaxExp[i][1] = 100;
	familiarMaxExp[i][2] = 100;
	familiarMaxExp[i][3] = 100;
	
	var h = 0;
	familiarStatTitle[i][h] = "ATK";
	familiarStat[i][h][0] = 0;
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	
	familiarColor[i] = make_color_rgb(200,240,56);
	familiarOffset[i] = 0;
	familiarOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Epic Jar
	familiarTitle[i] = str("Familiars.Epic Jar.Title");
	familiarValue[i] = familiars.epicJar;
	familiarDescription[i] = str("Familiars.Epic Jar.Description");
	familiarUnlocked[i] = global.epicJarFamiliarUnlocked;
	familiarUnlockMethod[i] = "TBD";
	familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_EpicJar;
	
	familiarPaintTitle[i][0] = "Test Palette";
	familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
	
	familiarLevel[i] = global.epicJarFamiliarLevel;
	familiarExp[i] = global.epicJarFamiliarExp;
	familiarMaxExp[i][1] = 100;
	familiarMaxExp[i][2] = 100;
	familiarMaxExp[i][3] = 100;
	
	var h = 0;
	familiarStatTitle[i][h] = "ATK";
	familiarStat[i][h][0] = 0;
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	
	familiarColor[i] = make_color_rgb(239,183,172);
	familiarOffset[i] = 0;
	familiarOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Krackle
	familiarTitle[i] = str("Familiars.Krackle.Title");
	familiarValue[i] = familiars.krackle;
	familiarDescription[i] = str("Familiars.Krackle.Description");
	familiarUnlocked[i] = global.krackleFamiliarUnlocked;
	familiarUnlockMethod[i] = "TBD";
	familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_Krackle;
	
	familiarPaintTitle[i][0] = "Test Palette";
	familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
	
	familiarLevel[i] = global.krackleFamiliarLevel;
	familiarExp[i] = global.krackleFamiliarExp;
	familiarMaxExp[i][1] = 100;
	familiarMaxExp[i][2] = 100;
	familiarMaxExp[i][3] = 100;
	
	var h = 0;
	familiarStatTitle[i][h] = "ATK";
	familiarStat[i][h][0] = 0;
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	
	familiarColor[i] = make_color_rgb(179,227,249);
	familiarOffset[i] = 0;
	familiarOffsetLerp[i] = 0;
	i += 1;
	#endregion
	
	#region Omega Matter
	familiarTitle[i] = str("Familiars.Omega Matter.Title");
	familiarValue[i] = familiars.omegaMatter;
	familiarDescription[i] = str("Familiars.Omega Matter.Description");
	familiarUnlocked[i] = global.omegaMatterFamiliarUnlocked;
	familiarUnlockMethod[i] = "TBD";
	familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_OmegaMatter;
	
	familiarPaintTitle[i][0] = "Test Palette";
	familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
	
	familiarLevel[i] = global.omegaMatterFamiliarLevel;
	familiarExp[i] = global.omegaMatterFamiliarExp;
	familiarMaxExp[i][1] = 100;
	familiarMaxExp[i][2] = 100;
	familiarMaxExp[i][3] = 100;
	
	var h = 0;
	familiarStatTitle[i][h] = "ATK";
	familiarStat[i][h][0] = 0;
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	
	h += 1;
	familiarStatTitle[i][h] = "SPD";
	familiarStat[i][h][0] = 0;
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	
	familiarColor[i] = make_color_rgb(248,160,216);
	familiarOffset[i] = 0;
	familiarOffsetLerp[i] = 0;
	#endregion
}