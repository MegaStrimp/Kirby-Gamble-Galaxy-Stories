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
		case "none":
		switch (selectedCharacter)
		{
			case "kirby":
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
		
		case "cutter":
		paletteIndex = spr_Hud_Palette_Healthbar_Cutter;
		break;
		
		case "beam":
		paletteIndex = spr_Hud_Palette_Healthbar_Beam;
		break;
		
		case "mysticBeam":
		paletteIndex = spr_Hud_Palette_Healthbar_MysticBeam;
		break;
		
		case "stone":
		paletteIndex = spr_Hud_Palette_Healthbar_Stone;
		break;
		
		case "ufo":
		paletteIndex = spr_Hud_Palette_Healthbar_Ufo;
		break;
		
		case "mirror":
		paletteIndex = spr_Hud_Palette_Healthbar_Mirror;
		break;
		
		case "ninja":
		paletteIndex = spr_Hud_Palette_Healthbar_Ninja;
		break;
		
		case "bomb":
		paletteIndex = spr_Hud_Palette_Healthbar_Bomb;
		break;
		
		case "fire":
		paletteIndex = spr_Hud_Palette_Healthbar_Fire;
		break;
		
		case "mysticFire":
		paletteIndex = spr_Hud_Palette_Healthbar_MysticFire;
		break;
		
		case "ice":
		paletteIndex = spr_Hud_Palette_Healthbar_Ice;
		break;
		
		case "spark":
		paletteIndex = spr_Hud_Palette_Healthbar_Spark;
		break;
		
		case "yoyo":
		paletteIndex = spr_Hud_Palette_Healthbar_Yoyo;
		break;
		
		case "wheel":
		paletteIndex = spr_Hud_Palette_Healthbar_Wheel;
		break;
		
		case "artist":
		paletteIndex = spr_Hud_Palette_Healthbar_Artist;
		break;
		
		case "fighter":
		paletteIndex = spr_Hud_Palette_Healthbar_Fighter;
		break;
		
		case "suplex":
		paletteIndex = spr_Hud_Palette_Healthbar_Suplex;
		break;
		
		case "wing":
		paletteIndex = spr_Hud_Palette_Healthbar_Wing;
		break;
		
		case "jet":
		paletteIndex = spr_Hud_Palette_Healthbar_Jet;
		break;
		
		case "sword":
		paletteIndex = spr_Hud_Palette_Healthbar_Sword;
		break;
		
		case "parasol":
		paletteIndex = spr_Hud_Palette_Healthbar_Parasol;
		break;
		
		case "hammer":
		paletteIndex = spr_Hud_Palette_Healthbar_Hammer;
		break;
		
		case "bell":
		paletteIndex = spr_Hud_Palette_Healthbar_Bell;
		break;
		
		case "water":
		paletteIndex = spr_Hud_Palette_Healthbar_Water;
		break;
		
		case "sleep":
		paletteIndex = spr_Hud_Palette_Healthbar_Sleep;
		break;
		
		case "scan":
		paletteIndex = spr_Hud_Palette_Healthbar_Scan;
		break;
		
		case "crash":
		paletteIndex = spr_Hud_Palette_Healthbar_Crash;
		break;
		
		case "mic":
		paletteIndex = spr_Hud_Palette_Healthbar_Mic;
		break;
		
		case "chef":
		paletteIndex = spr_Hud_Palette_Healthbar_Chef;
		break;
		
		case "ultraSword":
		paletteIndex = spr_Hud_Palette_Healthbar_UltraSword;
		break;
	}
	return paletteIndex;
}