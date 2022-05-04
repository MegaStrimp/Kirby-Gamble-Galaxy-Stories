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
		case playerAbilities.none:
		switch (selectedCharacter)
		{
			case playerCharacters.kirby:
			textIndex = spr_Hud_AbilityText_Kirby;
			break;
			
			case playerCharacters.gamble:
			textIndex = spr_Hud_AbilityText_Gamble;
			break;
			
			case playerCharacters.metaKnight:
			textIndex = spr_Hud_AbilityText_MetaKnight;
			break;
			
			case playerCharacters.keeby:
			textIndex = spr_Hud_AbilityText_Keeby;
			break;
			
			case playerCharacters.gooey:
			textIndex = spr_Hud_AbilityText_Gooey;
			break;
			
			case playerCharacters.magolor:
			textIndex = spr_Hud_AbilityText_Magolor;
			break;
			
			case playerCharacters.waddleDee:
			case playerCharacters.waddleDoo:
			case playerCharacters.brontoBurt:
			case playerCharacters.twizzy:
			case playerCharacters.tookey:
			case playerCharacters.sirKibble:
			case playerCharacters.bouncy:
			case playerCharacters.gordo:
			case playerCharacters.bloodGordo:
			case playerCharacters.mysticDoo:
			textIndex = spr_Hud_AbilityText_Helper;
			break;
			
			default:
			textIndex = spr_Hud_AbilityText_Kirby;
			break;
		}
		break;
		
		case playerAbilities.cutter:
		textIndex = spr_Hud_AbilityText_Cutter;
		break;
		
		case playerAbilities.beam:
		textIndex = spr_Hud_AbilityText_Beam;
		break;
		
		case playerAbilities.mysticBeam:
		textIndex = spr_Hud_AbilityText_MysticBeam;
		break;
		
		case playerAbilities.stone:
		textIndex = spr_Hud_AbilityText_Stone;
		break;
		
		case playerAbilities.ufo:
		textIndex = spr_Hud_AbilityText_Ufo;
		break;
		
		case playerAbilities.mirror:
		textIndex = spr_Hud_AbilityText_Mirror;
		break;
		
		case playerAbilities.ninja:
		textIndex = spr_Hud_AbilityText_Ninja;
		break;
		
		case playerAbilities.bomb:
		textIndex = spr_Hud_AbilityText_Bomb;
		break;
		
		case playerAbilities.fire:
		textIndex = spr_Hud_AbilityText_Fire;
		break;
		
		case playerAbilities.ice:
		textIndex = spr_Hud_AbilityText_Ice;
		break;
		
		case playerAbilities.spark:
		textIndex = spr_Hud_AbilityText_Spark;
		break;
		
		case playerAbilities.yoyo:
		textIndex = spr_Hud_AbilityText_Yoyo;
		break;
		
		case playerAbilities.wheel:
		textIndex = spr_Hud_AbilityText_Wheel;
		break;
		
		case playerAbilities.artist:
		textIndex = spr_Hud_AbilityText_Artist;
		break;
		
		case playerAbilities.fighter:
		textIndex = spr_Hud_AbilityText_Fighter;
		break;
		
		case playerAbilities.suplex:
		textIndex = spr_Hud_AbilityText_Suplex;
		break;
		
		case playerAbilities.wing:
		textIndex = spr_Hud_AbilityText_Wing;
		break;
		
		case playerAbilities.jet:
		textIndex = spr_Hud_AbilityText_Jet;
		break;
		
		case playerAbilities.sword:
		textIndex = spr_Hud_AbilityText_Sword;
		break;
		
		case playerAbilities.parasol:
		textIndex = spr_Hud_AbilityText_Parasol;
		break;
		
		case playerAbilities.hammer:
		textIndex = spr_Hud_AbilityText_Hammer;
		break;
		
		case playerAbilities.mysticFire:
		textIndex = spr_Hud_AbilityText_MysticFire;
		break;
		
		case playerAbilities.bell:
		textIndex = spr_Hud_AbilityText_Bell;
		break;
		
		case playerAbilities.ultraSword:
		textIndex = spr_Hud_AbilityText_UltraSword;
		break;
		
		case playerAbilities.water:
		textIndex = spr_Hud_AbilityText_Water;
		break;
		
		case playerAbilities.sleep:
		textIndex = spr_Hud_AbilityText_Sleep;
		break;
		
		case playerAbilities.scan:
		textIndex = spr_Hud_AbilityText_Scan;
		break;
		
		case playerAbilities.crash:
		textIndex = spr_Hud_AbilityText_Crash;
		break;
		
		case playerAbilities.mic:
		textIndex = spr_Hud_AbilityText_Mike;
		break;
		
		case playerAbilities.chef:
		textIndex = spr_Hud_AbilityText_Chef;
		break;
		
		default:
		textIndex = spr_Hud_AbilityText_Kirby;
		break;
	}
	return textIndex;
}