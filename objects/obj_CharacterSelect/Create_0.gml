///@description Initialize Variables

//Other Variables

characterP1 = playerCharacters.kirby;
characterP2 = playerCharacters.kirby;
selectionP1 = 0;
selectionP2 = 0;
/*for (var i = 0; i < 2; i++)
{
	var char = 0;
	var switchChar = global.characterP1;
	var helper = global.isHelperP1;
	if (i == 1)
	{
		switchChar = global.characterP2;
		helper = global.isHelperP2;
	}
	char = switchChar;
	if (helper) char = playerCharacters.waddleDee;
	
	if (i == 0)
	{
		selectionP1 = char;
	}
	else
	{
		selectionP2 = char;
	}
}*/
rotP1 = 0;
rotP2 = 0;
hudWidthMax = 108;
hudHeightMax = 45;
hudWidthP1 = hudWidthMax;
hudHeightP1 = hudHeightMax;
hudWidthP2 = hudWidthMax;
hudHeightP2 = hudHeightMax;
hudYOffsetP1 = 0;
hudYOffsetP2 = 0;
arrayLength = 0;
selectedP1 = false;
selectedP2 = false;

//Characters

var i = 0;
characterIndex[i] = playerCharacters.kirby;
characterTitle[i] = "Kirby";
characterIcon[i] = spr_Hud_Icon_Kirby;
characterAvailable[i] = true;
i += 1;

if (global.gambleUnlocked)
{
	characterIndex[i] = playerCharacters.gamble;
	characterTitle[i] = "Gamble";
	characterIcon[i] = spr_Hud_Icon_Gamble;
	characterAvailable[i] = true;
	i += 1;
}

if (global.metaKnightUnlocked)
{
	characterIndex[i] = playerCharacters.metaKnight;
	characterTitle[i] = "Meta Knight";
	characterIcon[i] = spr_Hud_Icon_MetaKnight;
	characterAvailable[i] = false;
	i += 1;
}

if (global.helperUnlocked)
{
	characterIndex[i] = playerCharacters.waddleDee;
	characterTitle[i] = "Helper";
	characterIcon[i] = spr_Hud_Icon_Helper;
	characterAvailable[i] = true;
	i += 1;
}

if (global.magolorUnlocked)
{
	characterIndex[i] = playerCharacters.magolor;
	characterTitle[i] = "Magolor";
	characterIcon[i] = spr_Hud_Icon_Magolor;
	characterAvailable[i] = false;
	i += 1;
}

if (global.gooeyUnlocked)
{
	characterIndex[i] = playerCharacters.gooey;
	characterTitle[i] = "Gooey";
	characterIcon[i] = spr_Hud_Icon_Gooey;
	characterAvailable[i] = true;
	i += 1;
}

if (global.keebyUnlocked)
{
	characterIndex[i] = playerCharacters.keeby;
	characterTitle[i] = "Keeby";
	characterIcon[i] = spr_Hud_Icon_Keeby;
	characterAvailable[i] = false;
	i += 1;
}

arrayLength = array_length(characterIndex);

//Timers

roomChangeTimer = -1;
roomChangeTimerMax = 60;