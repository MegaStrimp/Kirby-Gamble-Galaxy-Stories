///@description Initialize Variables

#region Other Variables
xx = 0;

readyP1 = true;
readyP2 = true;
readyP3 = true;
readyP4 = true;

characterSelectionP1 = 0;
characterSelectionP2 = 0;
characterSelectionP3 = 0;
characterSelectionP4 = 0;

paletteSelectionP1 = 0;
paletteSelectionP2 = 0;
paletteSelectionP3 = 0;
paletteSelectionP4 = 0;

subSelectionP1 = 0;
subSelectionP2 = 0;
subSelectionP3 = 0;
subSelectionP4 = 0;

clockTicks = true;
#endregion

#region Arrays
stagesArray = -1;
scr_CharacterSelectMenu_Stages();

charactersArray = -1;
scr_CharacterSelectMenu_Characters();

spraysArray = -1;
scr_CharacterSelectMenu_Sprays();
#endregion

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

#region Timers
roomChangeTimerMax = 180;
roomChangeTimer = roomChangeTimerMax;
#endregion