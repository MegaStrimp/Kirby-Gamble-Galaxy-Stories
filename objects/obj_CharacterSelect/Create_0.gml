///@description Initialize Variables

//Other Variables

characterP1 = playerCharacters.kirby;
characterP2 = playerCharacters.kirby;
for (var i = 0; i < 2; i++)
{
	var char = 0;
	var switchChar = global.characterP1;
	var helper = global.isHelperP1;
	if (i == 1)
	{
		switchChar = global.characterP2;
		helper = global.isHelperP2;
	}
	
	switch (switchChar)
	{
		default:
		char = 0;
		if (helper) char = 4;
		break;
		
		case playerCharacters.gamble:
		char = 1;
		break;
		
		case playerCharacters.metaKnight:
		char = 2;
		break;
		
		case playerCharacters.keeby:
		char = 3;
		break;
		
		case playerCharacters.magolor:
		char = 5;
		break;
		
		case playerCharacters.gooey:
		char = 6;
		break;
	}
	
	if (i == 0)
	{
		selectionP1 = char;
	}
	else
	{
		selectionP2 = char;
	}
}
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
characterIndex[i] = playerCharacters.gamble;
characterTitle[i] = "Gamble";
characterIcon[i] = spr_Hud_Icon_Gamble;
characterAvailable[i] = true;
i += 1;
characterIndex[i] = playerCharacters.metaKnight;
characterTitle[i] = "Meta Knight";
characterIcon[i] = spr_Hud_Icon_MetaKnight;
characterAvailable[i] = false;
i += 1;
characterIndex[i] = playerCharacters.keeby;
characterTitle[i] = "Keeby";
characterIcon[i] = spr_Hud_Icon_Keeby;
characterAvailable[i] = false;
i += 1;
characterIndex[i] = playerCharacters.waddleDee;
characterTitle[i] = "Helper";
characterIcon[i] = spr_Hud_Icon_Helper;
characterAvailable[i] = true;
i += 1;
characterIndex[i] = playerCharacters.magolor;
characterTitle[i] = "Magolor";
characterIcon[i] = spr_Hud_Icon_Magolor;
characterAvailable[i] = false;
i += 1;
characterIndex[i] = playerCharacters.gooey;
characterTitle[i] = "Gooey";
characterIcon[i] = spr_Hud_Icon_Gooey;
characterAvailable[i] = true;

arrayLength = array_length(characterIndex);

//Timers

roomChangeTimer = -1;
roomChangeTimerMax = 60;