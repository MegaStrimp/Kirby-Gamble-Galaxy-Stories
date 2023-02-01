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
soundPlayed = false;
loaded = false;
#endregion

#region Arrays
stagesArray = -1;
scr_CharacterSelectMenu_Stages();

charactersArray = -1;
scr_CharacterSelectMenu_Characters();

spraysArray = -1;
scr_CharacterSelectMenu_Sprays();
#endregion

#region Set Variables For Players
for (var i = 0; i < charactersMax; i++)
{
	if (charactersArray[# i,0] == global.characterP1) characterSelectionP1 = i;
	if (charactersArray[# i,0] == global.characterP2) characterSelectionP2 = i;
	if (charactersArray[# i,0] == global.characterP3) characterSelectionP3 = i;
	if (charactersArray[# i,0] == global.characterP4) characterSelectionP4 = i;
}

var characterSprayPointerP1 = global.sprayPaintKirbyP1;
var characterSprayPointerP2 = global.sprayPaintKirbyP2;
var characterSprayPointerP3 = global.sprayPaintKirbyP3;
var characterSprayPointerP4 = global.sprayPaintKirbyP4;

switch (global.characterP1)
{
	case playerCharacters.kirby:
	characterSprayPointerP1 = global.sprayPaintKirbyP1;
	break;
	
	case playerCharacters.gamble:
	characterSprayPointerP1 = global.sprayPaintGambleP1;
	break;
	
	case playerCharacters.metaKnight:
	characterSprayPointerP1 = global.sprayPaintMetaKnightP1;
	break;
	
	case playerCharacters.gooey:
	characterSprayPointerP1 = global.sprayPaintGooeyP1;
	break;
	
	case playerCharacters.magolor:
	characterSprayPointerP1 = global.sprayPaintMagolorP1;
	break;
}

switch (global.characterP2)
{
	case playerCharacters.kirby:
	characterSprayPointerP2 = global.sprayPaintKirbyP2;
	break;
	
	case playerCharacters.gamble:
	characterSprayPointerP2 = global.sprayPaintGambleP2;
	break;
	
	case playerCharacters.metaKnight:
	characterSprayPointerP2 = global.sprayPaintMetaKnightP2;
	break;
	
	case playerCharacters.gooey:
	characterSprayPointerP2 = global.sprayPaintGooeyP2;
	break;
	
	case playerCharacters.magolor:
	characterSprayPointerP2 = global.sprayPaintMagolorP2;
	break;
}

switch (global.characterP3)
{
	case playerCharacters.kirby:
	characterSprayPointerP3 = global.sprayPaintKirbyP3;
	break;
	
	case playerCharacters.gamble:
	characterSprayPointerP3 = global.sprayPaintGambleP3;
	break;
	
	case playerCharacters.metaKnight:
	characterSprayPointerP3 = global.sprayPaintMetaKnightP3;
	break;
	
	case playerCharacters.gooey:
	characterSprayPointerP3 = global.sprayPaintGooeyP3;
	break;
	
	case playerCharacters.magolor:
	characterSprayPointerP3 = global.sprayPaintMagolorP3;
	break;
}

switch (global.characterP4)
{
	case playerCharacters.kirby:
	characterSprayPointerP4 = global.sprayPaintKirbyP4;
	break;
	
	case playerCharacters.gamble:
	characterSprayPointerP4 = global.sprayPaintGambleP4;
	break;
	
	case playerCharacters.metaKnight:
	characterSprayPointerP4 = global.sprayPaintMetaKnightP4;
	break;
	
	case playerCharacters.gooey:
	characterSprayPointerP4 = global.sprayPaintGooeyP4;
	break;
	
	case playerCharacters.magolor:
	characterSprayPointerP4 = global.sprayPaintMagolorP4;
	break;
}

for (var i = 0; i < spraysMax; i++)
{
	if (spraysArray[# i,0] == characterSprayPointerP1) paletteSelectionP1 = i;
	if (spraysArray[# i,0] == characterSprayPointerP2) paletteSelectionP2 = i;
	if (spraysArray[# i,0] == characterSprayPointerP3) paletteSelectionP3 = i;
	if (spraysArray[# i,0] == characterSprayPointerP4) paletteSelectionP4 = i;
}
#endregion

#region Timers
roomChangeTimerMax = 180;
roomChangeTimer = roomChangeTimerMax;
#endregion