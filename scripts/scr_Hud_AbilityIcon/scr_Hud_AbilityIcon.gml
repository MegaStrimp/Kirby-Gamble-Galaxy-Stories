///@description Hud - Ability Icon
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Hud_AbilityIcon(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var iconIndex;
	
	switch (abilityToCheck)
	{
		case playerAbilities.none:
		switch (selectedCharacter)
		{
			case playerCharacters.kirby:
			iconIndex = spr_Hud_Icon_Kirby;
			break;
			
			case playerCharacters.gamble:
			iconIndex = spr_Hud_Icon_Gamble;
			break;
			
			case playerCharacters.metaKnight:
			iconIndex = spr_Hud_Icon_MetaKnight;
			break;
			
			case playerCharacters.keeby:
			iconIndex = spr_Hud_Icon_Keeby;
			break;
			
			case playerCharacters.gooey:
			iconIndex = spr_Hud_Icon_Gooey;
			break;
			
			case playerCharacters.magolor:
			iconIndex = spr_Hud_Icon_Magolor;
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
			iconIndex = spr_Hud_Icon_Helper;
			break;
			
			case playerCharacters.mysticDoo:
			iconIndex = spr_Hud_Icon_MysticHelper;
			break;
			
			default:
			iconIndex = spr_Hud_Icon_Kirby;
			break;
		}
		break;
		
		case playerAbilities.cutter:
		iconIndex = spr_Hud_Icon_Cutter;
		break;
		
		case playerAbilities.mysticCutter:
		iconIndex = spr_Hud_Icon_MysticCutter;
		break;
		
		case playerAbilities.beam:
		iconIndex = spr_Hud_Icon_Beam;
		break;
		
		case playerAbilities.mysticBeam:
		iconIndex = spr_Hud_Icon_MysticBeam;
		break;
		
		case playerAbilities.stone:
		iconIndex = spr_Hud_Icon_Stone;
		break;
		
		case playerAbilities.ufo:
		iconIndex = spr_Hud_Icon_Ufo;
		break;
		
		case playerAbilities.mirror:
		iconIndex = spr_Hud_Icon_Mirror;
		break;
		
		case playerAbilities.ninja:
		iconIndex = spr_Hud_Icon_Ninja;
		break;
		
		case playerAbilities.bomb:
		iconIndex = spr_Hud_Icon_Bomb;
		break;
		
		case playerAbilities.fire:
		iconIndex = spr_Hud_Icon_Fire;
		break;
		
		case playerAbilities.mysticFire:
		iconIndex = spr_Hud_Icon_MysticFire;
		break;
		
		case playerAbilities.ice:
		iconIndex = spr_Hud_Icon_Ice;
		break;
		
		case playerAbilities.mysticIce:
		iconIndex = spr_Hud_Icon_MysticIce;
		break;
		
		case playerAbilities.spark:
		iconIndex = spr_Hud_Icon_Spark;
		break;
		
		case playerAbilities.yoyo:
		iconIndex = spr_Hud_Icon_Yoyo;
		break;
		
		case playerAbilities.wheel:
		iconIndex = spr_Hud_Icon_Wheel;
		break;
		
		case playerAbilities.artist:
		iconIndex = spr_Hud_Icon_Artist;
		break;
		
		case playerAbilities.fighter:
		iconIndex = spr_Hud_Icon_Fighter;
		break;
		
		case playerAbilities.suplex:
		iconIndex = spr_Hud_Icon_Suplex;
		break;
		
		case playerAbilities.wing:
		iconIndex = spr_Hud_Icon_Wing;
		break;
		
		case playerAbilities.jet:
		iconIndex = spr_Hud_Icon_Jet;
		break;
		
		case playerAbilities.sword:
		iconIndex = spr_Hud_Icon_Sword;
		break;
		
		case playerAbilities.parasol:
		iconIndex = spr_Hud_Icon_Parasol;
		break;
		
		case playerAbilities.hammer:
		iconIndex = spr_Hud_Icon_Hammer;
		break;
		
		case playerAbilities.bell:
		iconIndex = spr_Hud_Icon_Bell;
		break;
		
		case playerAbilities.ultraSword:
		iconIndex = spr_Hud_Icon_UltraSword;
		break;
		
		case playerAbilities.water:
		iconIndex = spr_Hud_Icon_Water;
		break;
		
		case playerAbilities.sleep:
		iconIndex = spr_Hud_Icon_Sleep;
		break;
		
		case playerAbilities.scan:
		iconIndex = spr_Hud_Icon_Scan;
		break;
		
		case playerAbilities.crash:
		iconIndex = spr_Hud_Icon_Crash;
		break;
		
		case playerAbilities.mic:
		iconIndex = spr_Hud_Icon_Mic;
		break;
		
		case playerAbilities.chef:
		iconIndex = spr_Hud_Icon_Chef;
		break;
		
		default:
		iconIndex = spr_Hud_Icon_Water;
		break;
	}
	return iconIndex;
}