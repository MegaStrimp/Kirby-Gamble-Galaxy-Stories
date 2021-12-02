///@description Player - Ability Equipment
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Player_Equipment(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var equipmentIndex;
	
	switch (selectedCharacter)
	{
		case "kirby":
		switch (abilityToCheck)
		{
			case "beam":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeBeamP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeBeamP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch(sprite_index)
				{
					case sprBeamCharge:
					equipmentIndex = spr_Kirby_Equipment_Beam_KSSU_Charge;
					break;
					
					case sprBeamAttack1:
					equipmentIndex = spr_Kirby_Equipment_Beam_KSSU_Attack1;
					break;
					
					case sprBeamAttack2:
					equipmentIndex = spr_Kirby_Equipment_Beam_KSSU_Attack2;
					break;
					
					case sprBeamAttack3:
					equipmentIndex = spr_Kirby_Equipment_Beam_KSSU_Attack3;
					break;
					
					case sprBeamAttack4:
					equipmentIndex = spr_Kirby_Equipment_Beam_KSSU_Attack4;
					break;
					
					case sprBeamAttack5:
					equipmentIndex = spr_Kirby_Equipment_Beam_KSSU_Attack5;
					break;
					
					default:
					equipmentIndex = -1;
					break;
				}
				break;
				
				case "marxSoul":
				switch(sprite_index)
				{
					case sprBeamCharge:
					equipmentIndex = spr_Kirby_Equipment_Beam_MarxSoul_Charge;
					break;
					
					case sprBeamAttack1:
					equipmentIndex = spr_Kirby_Equipment_Beam_MarxSoul_Attack1;
					break;
					
					case sprBeamAttack2:
					equipmentIndex = spr_Kirby_Equipment_Beam_MarxSoul_Attack2;
					break;
					
					case sprBeamAttack3:
					equipmentIndex = spr_Kirby_Equipment_Beam_MarxSoul_Attack3;
					break;
					
					case sprBeamAttack4:
					equipmentIndex = spr_Kirby_Equipment_Beam_MarxSoul_Attack4;
					break;
					
					case sprBeamAttack5:
					equipmentIndex = spr_Kirby_Equipment_Beam_MarxSoul_Attack5;
					break;
					
					default:
					equipmentIndex = -1;
					break;
				}
				break;
				
				default:
				equipmentIndex = -1;
				break;
			}
			break;
			
			case "mysticBeam":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeBeamP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeBeamP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch(sprite_index)
				{
					case sprBeamCharge:
					equipmentIndex = spr_Kirby_Equipment_Beam_KSSU_Charge;
					break;
					
					case sprBeamAttack1:
					equipmentIndex = spr_Kirby_Equipment_Beam_KSSU_Attack1;
					break;
					
					case sprBeamAttack2:
					equipmentIndex = spr_Kirby_Equipment_Beam_KSSU_Attack2;
					break;
					
					case sprBeamAttack3:
					equipmentIndex = spr_Kirby_Equipment_Beam_KSSU_Attack3;
					break;
					
					case sprBeamAttack4:
					equipmentIndex = spr_Kirby_Equipment_Beam_KSSU_Attack4;
					break;
					
					case sprBeamAttack5:
					equipmentIndex = spr_Kirby_Equipment_Beam_KSSU_Attack5;
					break;
					
					case sprMysticBeamAttack1:
					equipmentIndex = spr_Kirby_Equipment_Beam_KSSU_Attack3;
					break;
					
					default:
					equipmentIndex = -1;
					break;
				}
				break;
				
				default:
				equipmentIndex = -1;
				break;
			}
			break;
			
			case "stone":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeStoneP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeStoneP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch(sprite_index)
				{
					case sprStoneAttack2Ready:
					equipmentIndex = spr_Kirby_Equipment_Stone_KSSU_Attack2Ready;
					break;
					
					case sprStoneAttack2:
					equipmentIndex = spr_Kirby_Equipment_Stone_KSSU_Attack2;
					break;
					
					case sprStoneAttack2Release:
					equipmentIndex = spr_Kirby_Equipment_Stone_KSSU_Attack2Release;
					break;
					
					default:
					equipmentIndex = -1;
					break;
				}
				break;
				
				case "modern":
				switch(sprite_index)
				{
					case sprStoneAttack2Ready:
					equipmentIndex = spr_Kirby_Equipment_Stone_Modern_Attack2Ready;
					break;
					
					case sprStoneAttack2:
					equipmentIndex = spr_Kirby_Equipment_Stone_Modern_Attack2;
					break;
					
					case sprStoneAttack2Release:
					equipmentIndex = spr_Kirby_Equipment_Stone_Modern_Attack2Release;
					break;
					
					default:
					equipmentIndex = -1;
					break;
				}
				break;
				
				default:
				equipmentIndex = -1;
				break;
			}
			break;
			
			case "ufo":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeUfoP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeUfoP2;
			}
			
			switch (altHatToCheck)
			{
				case "modern":
				switch(sprite_index)
				{
					case sprUfoIdle:
					equipmentIndex = spr_Kirby_Equipment_Ufo_Modern_Idle;
					break;
					
					default:
					equipmentIndex = -1;
					break;
				}
				break;
				
				default:
				equipmentIndex = -1;
				break;
			}
			break;
			
			case "mirror":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeMirrorP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeMirrorP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch(sprite_index)
				{
					case sprMirrorAttack1:
					equipmentIndex = spr_Kirby_Equipment_Mirror_KSSU_Attack1;
					break;
					
					case sprMirrorAttack2:
					equipmentIndex = spr_Kirby_Equipment_Mirror_KSSU_Attack2;
					break;
					
					case sprMirrorAttack2Release:
					equipmentIndex = spr_Kirby_Equipment_Mirror_KSSU_Attack2Release;
					break;
					
					default:
					equipmentIndex = -1;
					break;
				}
				break;
				
				case "modern":
				switch(sprite_index)
				{
					case sprMirrorAttack1:
					equipmentIndex = spr_Kirby_Equipment_Mirror_Modern_Attack1;
					break;
					
					case sprMirrorAttack2:
					equipmentIndex = spr_Kirby_Equipment_Mirror_Modern_Attack2;
					break;
					
					case sprMirrorAttack2Release:
					equipmentIndex = spr_Kirby_Equipment_Mirror_Modern_Attack2Release;
					break;
					
					default:
					equipmentIndex = -1;
					break;
				}
				break;
				
				default:
				equipmentIndex = -1;
				break;
			}
			break;
			
			case "ninja":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeNinjaP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeNinjaP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch(sprite_index)
				{
					case sprNinjaCharge:
					equipmentIndex = spr_Kirby_Equipment_Ninja_KSSU_Charge;
					break;
					
					case sprNinjaAttack2:
					equipmentIndex = spr_Kirby_Equipment_Ninja_KSSU_Attack2;
					break;
					
					default:
					equipmentIndex = -1;
					break;
				}
				break;
				
				case "modern":
				switch(sprite_index)
				{
					case sprNinjaCharge:
					equipmentIndex = spr_Kirby_Equipment_Ninja_Modern_Charge;
					break;
					
					case sprNinjaAttack2:
					equipmentIndex = spr_Kirby_Equipment_Ninja_Modern_Attack2;
					break;
					
					default:
					equipmentIndex = -1;
					break;
				}
				break;
				
				default:
				equipmentIndex = -1;
				break;
			}
			break;
			
			case "bell":
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeBellP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeBellP2;
			}
			
			switch (altHatToCheck)
			{
				case "modern":
				switch(sprite_index)
				{
					case sprAbilityChange:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_AbilityChange;
					break;
					
					default:
					equipmentIndex = -1;
					break;
				}
				break;
				
				default:
				equipmentIndex = -1;
				break;
			}
			break;
			
			default:
			equipmentIndex = -1;
			break;
		}
		break;
		
		default:
		equipmentIndex = -1;
		break;
	}
	return equipmentIndex;
}