///@description Customize - Familiars

function scr_Customize_Familiars()
{
	var i = 0;
	
	familiarTitle[i] = "Gamble";
	familiarValue[i] = familiars.gamble;
	familiarDescription[i] = scr_Localization(5,5,0,global.language);
	familiarUnlocked[i] = true;
	familiarUnlockMethod[i] = "Default";
	familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_Gamble;
	
	familiarPaintTitle[i][0] = "Test Palette";
	familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][3] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][4] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][5] = spr_Kirby_Normal_Palette_FriendlyPink;
	
	familiarLevel[i] = global.gambleFamiliarLevel;
	familiarExp[i] = global.gambleFamiliarExp;
	familiarMaxExp[i][1] = 100;
	familiarMaxExp[i][2] = 100;
	familiarMaxExp[i][3] = 100;
	familiarMaxExp[i][4] = 100;
	familiarMaxExp[i][5] = 100;
	familiarMaxExp[i][6] = 100;
	familiarMaxExp[i][7] = 100;
	familiarMaxExp[i][8] = 100;
	familiarMaxExp[i][9] = 100;
	
	var h = 0;
	familiarStatTitle[i][h] = "ATK";
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	familiarStat[i][h][3] = 0;
	familiarStat[i][h][4] = 0;
	familiarStat[i][h][5] = 0;
	familiarStat[i][h][6] = 0;
	familiarStat[i][h][7] = 0;
	familiarStat[i][h][8] = 0;
	familiarStat[i][h][9] = 0;
	
	h += 1;
	familiarStatTitle[i][h] = "SPD";
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	familiarStat[i][h][3] = 0;
	familiarStat[i][h][4] = 0;
	familiarStat[i][h][5] = 0;
	familiarStat[i][h][6] = 0;
	familiarStat[i][h][7] = 0;
	familiarStat[i][h][8] = 0;
	familiarStat[i][h][9] = 0;
	
	familiarColor[i] = make_color_rgb(248,160,216);
	familiarOffset[i] = 0;
	familiarOffsetLerp[i] = 0;
	i += 1;

	familiarTitle[i] = "Happy Pea";
	familiarValue[i] = familiars.happyPea;
	familiarDescription[i] = "A plant has come to help?! He can keep foes away from Kirby!";
	familiarUnlocked[i] = true;
	familiarUnlockMethod[i] = "Default";
	familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_HappyPea;
	
	familiarPaintTitle[i][0] = "Test Palette";
	familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][3] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][4] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][5] = spr_Kirby_Normal_Palette_FriendlyPink;
	
	familiarLevel[i] = global.happyPeaFamiliarLevel;
	familiarExp[i] = global.happyPeaFamiliarExp;
	familiarMaxExp[i][1] = 100;
	familiarMaxExp[i][2] = 100;
	familiarMaxExp[i][3] = 100;
	familiarMaxExp[i][4] = 100;
	familiarMaxExp[i][5] = 100;
	familiarMaxExp[i][6] = 100;
	familiarMaxExp[i][7] = 100;
	familiarMaxExp[i][8] = 100;
	familiarMaxExp[i][9] = 100;
	
	var h = 0;
	familiarStatTitle[i][h] = "ATK";
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	familiarStat[i][h][3] = 0;
	familiarStat[i][h][4] = 0;
	familiarStat[i][h][5] = 0;
	familiarStat[i][h][6] = 0;
	familiarStat[i][h][7] = 0;
	familiarStat[i][h][8] = 0;
	familiarStat[i][h][9] = 0;
	
	familiarColor[i] = make_color_rgb(248,160,216);
	familiarOffset[i] = 0;
	familiarOffsetLerp[i] = 0;
	i += 1;

	familiarTitle[i] = "Epic Jar";
	familiarValue[i] = familiars.epicJar;
	familiarDescription[i] = "Explosive!";
	familiarUnlocked[i] = true;
	familiarUnlockMethod[i] = "Default";
	familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_EpicJar;
	
	familiarPaintTitle[i][0] = "Test Palette";
	familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][3] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][4] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][5] = spr_Kirby_Normal_Palette_FriendlyPink;
	
	familiarLevel[i] = global.epicJarFamiliarLevel;
	familiarExp[i] = global.epicJarFamiliarExp;
	familiarMaxExp[i][1] = 100;
	familiarMaxExp[i][2] = 100;
	familiarMaxExp[i][3] = 100;
	familiarMaxExp[i][4] = 100;
	familiarMaxExp[i][5] = 100;
	familiarMaxExp[i][6] = 100;
	familiarMaxExp[i][7] = 100;
	familiarMaxExp[i][8] = 100;
	familiarMaxExp[i][9] = 100;
	
	var h = 0;
	familiarStatTitle[i][h] = "ATK";
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	familiarStat[i][h][3] = 0;
	familiarStat[i][h][4] = 0;
	familiarStat[i][h][5] = 0;
	familiarStat[i][h][6] = 0;
	familiarStat[i][h][7] = 0;
	familiarStat[i][h][8] = 0;
	familiarStat[i][h][9] = 0;
	
	familiarColor[i] = make_color_rgb(248,160,216);
	familiarOffset[i] = 0;
	familiarOffsetLerp[i] = 0;
	i += 1;

	familiarTitle[i] = "Krackle";
	familiarValue[i] = familiars.krackle;
	familiarDescription[i] = "Puff!";
	familiarUnlocked[i] = true;
	familiarUnlockMethod[i] = "Default";
	familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_Krackle;
	
	familiarPaintTitle[i][0] = "Test Palette";
	familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][3] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][4] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][5] = spr_Kirby_Normal_Palette_FriendlyPink;
	
	familiarLevel[i] = global.krackleFamiliarLevel;
	familiarExp[i] = global.krackleFamiliarExp;
	familiarMaxExp[i][1] = 100;
	familiarMaxExp[i][2] = 100;
	familiarMaxExp[i][3] = 100;
	familiarMaxExp[i][4] = 100;
	familiarMaxExp[i][5] = 100;
	familiarMaxExp[i][6] = 100;
	familiarMaxExp[i][7] = 100;
	familiarMaxExp[i][8] = 100;
	familiarMaxExp[i][9] = 100;
	
	var h = 0;
	familiarStatTitle[i][h] = "ATK";
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	familiarStat[i][h][3] = 0;
	familiarStat[i][h][4] = 0;
	familiarStat[i][h][5] = 0;
	familiarStat[i][h][6] = 0;
	familiarStat[i][h][7] = 0;
	familiarStat[i][h][8] = 0;
	familiarStat[i][h][9] = 0;
	
	familiarColor[i] = make_color_rgb(248,160,216);
	familiarOffset[i] = 0;
	familiarOffsetLerp[i] = 0;
	i += 1;
	
	familiarTitle[i] = "Omega Matter";
	familiarValue[i] = familiars.omegaMatter;
	familiarDescription[i] = "Hello I am Subsandwich";
	familiarUnlocked[i] = true;
	familiarUnlockMethod[i] = "Default";
	familiarSprite[i] = spr_Menu_Collection_Customize_Familiar_Gamble;
	
	familiarPaintTitle[i][0] = "Test Palette";
	familiarPaint[i][0] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][1] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][2] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][3] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][4] = spr_Kirby_Normal_Palette_FriendlyPink;
	familiarPaint[i][5] = spr_Kirby_Normal_Palette_FriendlyPink;
	
	familiarLevel[i] = global.gambleFamiliarLevel;
	familiarExp[i] = global.gambleFamiliarExp;
	familiarMaxExp[i][1] = 100;
	familiarMaxExp[i][2] = 100;
	familiarMaxExp[i][3] = 100;
	familiarMaxExp[i][4] = 100;
	familiarMaxExp[i][5] = 100;
	familiarMaxExp[i][6] = 100;
	familiarMaxExp[i][7] = 100;
	familiarMaxExp[i][8] = 100;
	familiarMaxExp[i][9] = 100;
	
	var h = 0;
	familiarStatTitle[i][h] = "ATK";
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	familiarStat[i][h][3] = 0;
	familiarStat[i][h][4] = 0;
	familiarStat[i][h][5] = 0;
	familiarStat[i][h][6] = 0;
	familiarStat[i][h][7] = 0;
	familiarStat[i][h][8] = 0;
	familiarStat[i][h][9] = 0;
	
	h += 1;
	familiarStatTitle[i][h] = "SPD";
	familiarStat[i][h][1] = 0;
	familiarStat[i][h][2] = 0;
	familiarStat[i][h][3] = 0;
	familiarStat[i][h][4] = 0;
	familiarStat[i][h][5] = 0;
	familiarStat[i][h][6] = 0;
	familiarStat[i][h][7] = 0;
	familiarStat[i][h][8] = 0;
	familiarStat[i][h][9] = 0;
	
	familiarColor[i] = make_color_rgb(248,160,216);
	familiarOffset[i] = 0;
	familiarOffsetLerp[i] = 0;
}