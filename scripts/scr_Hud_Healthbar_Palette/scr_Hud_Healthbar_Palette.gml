///@description Hud - Ability Text
///@param {real} spriteToReturn Which sprite to return.
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Hud_Healthbar_Palette(argument0,argument1,argument2)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var selectedPalette = argument2;
	var paletteIndex = spr_Hud_Palette_Healthbar_Kirby;
	
	switch (abilityToCheck)
	{
		case playerAbilities.none:
		switch (selectedCharacter)
		{
			case playerCharacters.kirby:
			if (selectedPalette == spr_Kirby_Normal_Palette_FriendlyPink)
			{
				paletteIndex = spr_Hud_Palette_Healthbar_Kirby;
			}
			else
			{
				paletteIndex = selectedPalette;
			}
			break;
		}
		break;
		
		case playerAbilities.cutter:
		paletteIndex = spr_Hud_Palette_Healthbar_Cutter;
		break;
		
		case playerAbilities.beam:
		paletteIndex = spr_Hud_Palette_Healthbar_Beam;
		break;
		
		case playerAbilities.mysticBeam:
		paletteIndex = spr_Hud_Palette_Healthbar_MysticBeam;
		break;
		
		case playerAbilities.stone:
		paletteIndex = spr_Hud_Palette_Healthbar_Stone;
		break;
		
		case playerAbilities.ufo:
		paletteIndex = spr_Hud_Palette_Healthbar_Ufo;
		break;
		
		case playerAbilities.mirror:
		paletteIndex = spr_Hud_Palette_Healthbar_Mirror;
		break;
		
		case playerAbilities.ninja:
		paletteIndex = spr_Hud_Palette_Healthbar_Ninja;
		break;
		
		case playerAbilities.bomb:
		paletteIndex = spr_Hud_Palette_Healthbar_Bomb;
		break;
		
		case playerAbilities.fire:
		paletteIndex = spr_Hud_Palette_Healthbar_Fire;
		break;
		
		case playerAbilities.mysticFire:
		paletteIndex = spr_Hud_Palette_Healthbar_MysticFire;
		break;
		
		case playerAbilities.ice:
		paletteIndex = spr_Hud_Palette_Healthbar_Ice;
		break;
		
		case playerAbilities.spark:
		paletteIndex = spr_Hud_Palette_Healthbar_Spark;
		break;
		
		case playerAbilities.yoyo:
		paletteIndex = spr_Hud_Palette_Healthbar_Yoyo;
		break;
		
		case playerAbilities.wheel:
		paletteIndex = spr_Hud_Palette_Healthbar_Wheel;
		break;
		
		case playerAbilities.artist:
		paletteIndex = spr_Hud_Palette_Healthbar_Artist;
		break;
		
		case playerAbilities.fighter:
		paletteIndex = spr_Hud_Palette_Healthbar_Fighter;
		break;
		
		case playerAbilities.suplex:
		paletteIndex = spr_Hud_Palette_Healthbar_Suplex;
		break;
		
		case playerAbilities.wing:
		paletteIndex = spr_Hud_Palette_Healthbar_Wing;
		break;
		
		case playerAbilities.jet:
		paletteIndex = spr_Hud_Palette_Healthbar_Jet;
		break;
		
		case playerAbilities.sword:
		paletteIndex = spr_Hud_Palette_Healthbar_Sword;
		break;
		
		case playerAbilities.parasol:
		paletteIndex = spr_Hud_Palette_Healthbar_Parasol;
		break;
		
		case playerAbilities.hammer:
		paletteIndex = spr_Hud_Palette_Healthbar_Hammer;
		break;
		
		case playerAbilities.bell:
		paletteIndex = spr_Hud_Palette_Healthbar_Bell;
		break;
		
		case playerAbilities.water:
		paletteIndex = spr_Hud_Palette_Healthbar_Water;
		break;
		
		case playerAbilities.sleep:
		paletteIndex = spr_Hud_Palette_Healthbar_Sleep;
		break;
		
		case playerAbilities.scan:
		paletteIndex = spr_Hud_Palette_Healthbar_Scan;
		break;
		
		case playerAbilities.crash:
		paletteIndex = spr_Hud_Palette_Healthbar_Crash;
		break;
		
		case playerAbilities.mic:
		paletteIndex = spr_Hud_Palette_Healthbar_Mic;
		break;
		
		case playerAbilities.chef:
		paletteIndex = spr_Hud_Palette_Healthbar_Chef;
		break;
		
		case playerAbilities.ultraSword:
		paletteIndex = spr_Hud_Palette_Healthbar_UltraSword;
		break;
	}
	return paletteIndex;
}