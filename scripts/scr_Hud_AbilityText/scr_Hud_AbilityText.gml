///@description Hud - Ability Text
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Hud_AbilityText(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var textIndex;
	
	switch (abilityToCheck)
	{
		case "none":
		switch (selectedCharacter)
		{
			case "kirby":
			textIndex = spr_Hud_AbilityText_Kirby;
			break;
			
			case "gamble":
			textIndex = spr_Hud_AbilityText_Gamble;
			break;
			
			case "metaKnight":
			textIndex = spr_Hud_AbilityText_MetaKnight;
			break;
			
			case "keeby":
			textIndex = spr_Hud_AbilityText_Keeby;
			break;
			
			case "gooey":
			textIndex = spr_Hud_AbilityText_Gooey;
			break;
			
			case "magolor":
			textIndex = spr_Hud_AbilityText_Magolor;
			break;
			
			case "waddleDee":
			textIndex = spr_Hud_AbilityText_Helper;
			break;
			
			case "waddleDoo":
			textIndex = spr_Hud_AbilityText_Helper;
			break;
			
			case "brontoBurt":
			textIndex = spr_Hud_AbilityText_Helper;
			break;
			
			case "twizzy":
			textIndex = spr_Hud_AbilityText_Helper;
			break;
			
			case "tookey":
			textIndex = spr_Hud_AbilityText_Helper;
			break;
			
			case "sirKibble":
			textIndex = spr_Hud_AbilityText_Helper;
			break;
			
			case "bouncy":
			textIndex = spr_Hud_AbilityText_Helper;
			break;
			
			case "gordo":
			textIndex = spr_Hud_AbilityText_Helper;
			break;
			
			case "bloodGordo":
			textIndex = spr_Hud_AbilityText_Helper;
			break;
			
			default:
			textIndex = spr_Hud_AbilityText_Kirby;
			break;
		}
		break;
		
		case "cutter":
		textIndex = spr_Hud_AbilityText_Cutter;
		break;
		
		case "beam":
		textIndex = spr_Hud_AbilityText_Beam;
		break;
		
		case "mysticBeam":
		textIndex = spr_Hud_AbilityText_MysticBeam;
		break;
		
		case "stone":
		textIndex = spr_Hud_AbilityText_Stone;
		break;
		
		case "ufo":
		textIndex = spr_Hud_AbilityText_Ufo;
		break;
		
		case "mirror":
		textIndex = spr_Hud_AbilityText_Mirror;
		break;
		
		case "ninja":
		textIndex = spr_Hud_AbilityText_Ninja;
		break;
		
		case "bomb":
		textIndex = spr_Hud_AbilityText_Bomb;
		break;
		
		case "fire":
		textIndex = spr_Hud_AbilityText_Fire;
		break;
		
		case "ice":
		textIndex = spr_Hud_AbilityText_Ice;
		break;
		
		case "spark":
		textIndex = spr_Hud_AbilityText_Spark;
		break;
		
		case "yoyo":
		textIndex = spr_Hud_AbilityText_Yoyo;
		break;
		
		case "wheel":
		textIndex = spr_Hud_AbilityText_Wheel;
		break;
		
		case "artist":
		textIndex = spr_Hud_AbilityText_Artist;
		break;
		
		case "fighter":
		textIndex = spr_Hud_AbilityText_Fighter;
		break;
		
		case "suplex":
		textIndex = spr_Hud_AbilityText_Suplex;
		break;
		
		case "wing":
		textIndex = spr_Hud_AbilityText_Wing;
		break;
		
		case "jet":
		textIndex = spr_Hud_AbilityText_Jet;
		break;
		
		case "sword":
		textIndex = spr_Hud_AbilityText_Sword;
		break;
		
		case "parasol":
		textIndex = spr_Hud_AbilityText_Parasol;
		break;
		
		case "hammer":
		textIndex = spr_Hud_AbilityText_Hammer;
		break;
		
		case "mysticFire":
		textIndex = spr_Hud_AbilityText_MysticFire;
		break;
		
		case "bell":
		textIndex = spr_Hud_AbilityText_Bell;
		break;
		
		case "ultraSword":
		textIndex = spr_Hud_AbilityText_UltraSword;
		break;
		
		case "water":
		textIndex = spr_Hud_AbilityText_Water;
		break;
		
		case "sleep":
		textIndex = spr_Hud_AbilityText_Sleep;
		break;
		
		case "scan":
		textIndex = spr_Hud_AbilityText_Scan;
		break;
		
		case "crash":
		textIndex = spr_Hud_AbilityText_Crash;
		break;
		
		case "mike":
		textIndex = spr_Hud_AbilityText_Mike;
		break;
		
		case "chef":
		textIndex = spr_Hud_AbilityText_Chef;
		break;
		
		default:
		textIndex = spr_Hud_AbilityText_Kirby;
		break;
	}
	return textIndex;
}