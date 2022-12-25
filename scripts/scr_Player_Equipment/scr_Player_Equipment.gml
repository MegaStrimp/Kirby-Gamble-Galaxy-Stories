///@description Player - Ability Equipment
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Player_Equipment(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var equipmentIndex = -1;
	
	switch (selectedCharacter)
	{
		case playerCharacters.kirby:
		switch (abilityToCheck)
		{
			case playerAbilities.cutter:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeCutterP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeCutterP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeCutterP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeCutterP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.cutter_kssu:
				switch (sprite_index)
				{
					case sprCutterCharge:
					equipmentIndex = spr_Kirby_Equipment_Cutter_KSSU_Charge;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.beam:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeBeamP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeBeamP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeBeamP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeBeamP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.beam_kssu:
				switch (sprite_index)
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
				}
				break;
				
				case abilityHatSkins.beam_marxSoul:
				switch (sprite_index)
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
				}
				break;
			}
			break;
			
			case playerAbilities.mysticBeam:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeBeamP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeBeamP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeBeamP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeBeamP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.mysticBeam_ggs:
				switch (sprite_index)
				{
					case sprBeamCharge:
					equipmentIndex = spr_Kirby_Equipment_MysticBeam_KSSU_Charge;
					break;
					
					case sprMysticBeamAttack1:
					equipmentIndex = spr_Kirby_Equipment_MysticBeam_KSSU_Attack3;
					break;
					
					case sprBeamAttack1:
					equipmentIndex = spr_Kirby_Equipment_MysticBeam_KSSU_Attack1;
					break;
					
					case sprBeamAttack2:
					equipmentIndex = spr_Kirby_Equipment_MysticBeam_KSSU_Attack2;
					break;
					
					case sprBeamAttack3:
					equipmentIndex = spr_Kirby_Equipment_MysticBeam_KSSU_Attack3;
					break;
					
					case sprBeamAttack4:
					equipmentIndex = spr_Kirby_Equipment_MysticBeam_KSSU_Attack4;
					break;
					
					case sprBeamAttack5:
					equipmentIndex = spr_Kirby_Equipment_MysticBeam_KSSU_Attack5;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.stone:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeStoneP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeStoneP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeStoneP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeStoneP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.stone_kssu:
				var isBitcrushed = false;
				if ((object_index == obj_Player) and (((player == 0) and (global.hatPaletteStoneKSSUP1 == abilityHatPaints.stone_kssu_bitcrushed)) or ((player == 1) and (global.hatPaletteStoneKSSUP2 == abilityHatPaints.stone_kssu_bitcrushed)))) isBitcrushed = true;
				if (isBitcrushed)
				{
					switch (sprite_index)
					{
						case sprStoneAttack2Ready:
						equipmentIndex = spr_Kirby_Equipment_Stone_KSSU_Attack2Ready_Bitcrushed;
						break;
						
						case sprStoneAttack2:
						equipmentIndex = spr_Kirby_Equipment_Stone_KSSU_Attack2_Bitcrushed;
						break;
						
						case sprStoneAttack2Release:
						equipmentIndex = spr_Kirby_Equipment_Stone_KSSU_Attack2Release_Bitcrushed;
						break;
					}
				}
				else
				{
					switch (sprite_index)
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
					}
				}
				break;
				
				case abilityHatSkins.stone_modern:
				var isBitcrushed = false;
				if ((object_index == obj_Player) and (((player == 0) and (global.hatPaletteStoneModernP1 == abilityHatPaints.stone_modern_bitcrushed)) or ((player == 1) and (global.hatPaletteStoneModernP2 == abilityHatPaints.stone_modern_bitcrushed)))) isBitcrushed = true;
				if (isBitcrushed)
				{
					switch (sprite_index)
					{
						case sprStoneAttack2Ready:
						equipmentIndex = spr_Kirby_Equipment_Stone_Modern_Attack2Ready_Bitcrushed;
						break;
						
						case sprStoneAttack2:
						equipmentIndex = spr_Kirby_Equipment_Stone_Modern_Attack2_Bitcrushed;
						break;
						
						case sprStoneAttack2Release:
						equipmentIndex = spr_Kirby_Equipment_Stone_Modern_Attack2Release_Bitcrushed;
						break;
					}
				}
				else
				{
					switch (sprite_index)
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
					}
				}
				break;
			}
			break;
			
			case playerAbilities.mirror:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeMirrorP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeMirrorP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeMirrorP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeMirrorP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.mirror_kssu:
				switch (sprite_index)
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
				}
				break;
				
				case abilityHatSkins.mirror_modern:
				switch (sprite_index)
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
				}
				break;
			}
			break;
			
			case playerAbilities.ninja:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeNinjaP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeNinjaP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeNinjaP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeNinjaP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.ninja_kssu:
				switch (sprite_index)
				{
					case sprNinjaCharge:
					equipmentIndex = spr_Kirby_Equipment_Ninja_KSSU_Charge;
					break;
					
					case sprNinjaAttack2:
					equipmentIndex = spr_Kirby_Equipment_Ninja_KSSU_Attack2;
					break;
				}
				break;
				
				case abilityHatSkins.ninja_modern:
				switch (sprite_index)
				{
					case sprNinjaCharge:
					equipmentIndex = spr_Kirby_Equipment_Ninja_Modern_Charge;
					break;
					
					case sprNinjaAttack2:
					equipmentIndex = spr_Kirby_Equipment_Ninja_Modern_Attack2;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.sword:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeSwordP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeSwordP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeSwordP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeSwordP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.sword_kssu:
				switch (sprite_index)
				{
					case sprSwordAttack1:
					equipmentIndex = spr_Kirby_Equipment_Sword_KSSU_Attack1;
					break;
					
					case sprSwordAttackDash:
					equipmentIndex = spr_Kirby_Equipment_Sword_KSSU_Attack2;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.parasol:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeParasolP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeParasolP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeParasolP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeParasolP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.parasol_kssu:
				switch (sprite_index)
				{
					case sprIdle:
					case sprIdleBlink:
					case sprIdleNormalSlopeL:
					case sprIdleNormalSlopeLBlink:
					case sprIdleNormalSlopeR:
					case sprIdleNormalSlopeRBlink:
					case sprIdleSteepSlopeL:
					case sprIdleSteepSlopeLBlink:
					case sprIdleSteepSlopeR:
					case sprIdleSteepSlopeRBlink:
					case sprItemCarryLightIdleNormalSlopeL:
					case sprItemCarryLightIdleNormalSlopeLBlink:
					case sprItemCarryLightIdleNormalSlopeR:
					case sprItemCarryLightIdleNormalSlopeRBlink:
					case sprItemCarryLightIdleSteepSlopeL:
					case sprItemCarryLightIdleSteepSlopeLBlink:
					case sprItemCarryLightIdleSteepSlopeR:
					case sprItemCarryLightIdleSteepSlopeRBlink:
					case sprItemCarryHeavyIdle:
					case sprItemCarryHeavyIdleSlopeL:
					case sprItemCarryHeavyIdleSlopeR:
					case sprItemCarryThrow:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_ItemCarry_Light_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_ItemCarry_Light_Walk;
					break;
					
					case sprRun:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_Run;
					break;
					
					case sprRunTurn:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_RunTurn;
					break;
					
					case sprJump:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_Jump;
					break;
					
					case sprRoll:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_RollDuckReady;
					break;
					
					case sprRollDuck:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_Backflip;
					break;
					
					case sprSquish:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_Squish;
					break;
					
					case sprDuck:
					case sprDuckBlink:
					case sprDuckNormalSlopeL:
					case sprDuckNormalSlopeLBlink:
					case sprDuckNormalSlopeR:
					case sprDuckNormalSlopeRBlink:
					case sprDuckSteepSlopeL:
					case sprDuckSteepSlopeLBlink:
					case sprDuckSteepSlopeR:
					case sprDuckSteepSlopeRBlink:
					case sprItemCarryLightDuck:
					case sprItemCarryLightDuckBlink:
					case sprItemCarryLightDuckNormalSlopeL:
					case sprItemCarryLightDuckNormalSlopeLBlink:
					case sprItemCarryLightDuckNormalSlopeR:
					case sprItemCarryLightDuckNormalSlopeRBlink:
					case sprItemCarryLightDuckSteepSlopeL:
					case sprItemCarryLightDuckSteepSlopeLBlink:
					case sprItemCarryLightDuckSteepSlopeR:
					case sprItemCarryLightDuckSteepSlopeRBlink:
					case sprItemCarryHeavyDuck:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_ItemCarry_Light_Duck;
					break;
					
					case sprSlide:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_ItemCarry_Light_FloatReady;
					break;
					
					case sprFloat:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_ItemCarry_Light_Float;
					break;
					
					case sprFlap:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_ItemCarry_Light_Flap;
					break;
					
					case sprFloatSpit:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_ItemCarry_Light_FloatSpit;
					break;
					
					case sprFloatHurt:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_Enter;
					break;
					
					case sprClimbUp:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_WarpStar2;
					break;
					
					case sprGuard:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_Hurt;
					break;
					
					case sprParasolAttack2Ready:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_Attack2Ready;
					break;
					
					case sprParasolAttack2:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_Attack2;
					break;
					
					case sprParasolAttack2Release:
					equipmentIndex = spr_Kirby_Equipment_Parasol_KSSU_Attack2Release;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.bell:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeBellP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeBellP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeBellP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeBellP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.bell_modern:
				switch (sprite_index)
				{
					case sprIdle:
					case sprIdleBlink:
					case sprIdleNormalSlopeL:
					case sprIdleNormalSlopeLBlink:
					case sprIdleNormalSlopeR:
					case sprIdleNormalSlopeRBlink:
					case sprIdleSteepSlopeL:
					case sprIdleSteepSlopeLBlink:
					case sprIdleSteepSlopeR:
					case sprIdleSteepSlopeRBlink:
					case sprItemCarryLightIdleNormalSlopeL:
					case sprItemCarryLightIdleNormalSlopeLBlink:
					case sprItemCarryLightIdleNormalSlopeR:
					case sprItemCarryLightIdleNormalSlopeRBlink:
					case sprItemCarryLightIdleSteepSlopeL:
					case sprItemCarryLightIdleSteepSlopeLBlink:
					case sprItemCarryLightIdleSteepSlopeR:
					case sprItemCarryLightIdleSteepSlopeRBlink:
					case sprItemCarryHeavyIdle:
					case sprItemCarryHeavyIdleSlopeL:
					case sprItemCarryHeavyIdleSlopeR:
					case sprItemCarryThrow:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Walk;
					break;
					
					case sprRun:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Run;
					break;
					
					case sprRunTurn:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_RunTurn;
					break;
					
					case sprJump:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Jump;
					break;
					
					case sprRoll:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Roll;
					break;
					
					case sprRollDuckReady:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_RollDuckReady;
					break;
					
					case sprRollDuck:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_RollDuck;
					break;
					
					case sprBackflip:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Backflip;
					break;
					
					case sprFall:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Fall;
					break;
					
					case sprDuck:
					case sprDuckBlink:
					case sprDuckNormalSlopeL:
					case sprDuckNormalSlopeLBlink:
					case sprDuckNormalSlopeR:
					case sprDuckNormalSlopeRBlink:
					case sprDuckSteepSlopeL:
					case sprDuckSteepSlopeLBlink:
					case sprDuckSteepSlopeR:
					case sprDuckSteepSlopeRBlink:
					case sprItemCarryLightDuck:
					case sprItemCarryLightDuckBlink:
					case sprItemCarryLightDuckNormalSlopeL:
					case sprItemCarryLightDuckNormalSlopeLBlink:
					case sprItemCarryLightDuckNormalSlopeR:
					case sprItemCarryLightDuckNormalSlopeRBlink:
					case sprItemCarryLightDuckSteepSlopeL:
					case sprItemCarryLightDuckSteepSlopeLBlink:
					case sprItemCarryLightDuckSteepSlopeR:
					case sprItemCarryLightDuckSteepSlopeRBlink:
					case sprItemCarryHeavyDuck:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Duck;
					break;
					
					case sprSlide:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Slide;
					break;
					
					case sprSlideEnd:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_FloatSpit;
					break;
					
					case sprFloatHurt:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_FloatHurt;
					break;
					
					case sprEnter:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Enter;
					break;
					
					case sprClimbUp:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_ClimbUp;
					break;
					
					case sprClimbDown:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_ClimbDown;
					break;
					
					case sprAbilityChange:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					//equipmentIndex = spr_Kirby_Equipment_Bell_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					//equipmentIndex = spr_Kirby_Equipment_Bell_Modern_WarpStar2;
					break;
					
					case sprGuard:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Guard;
					break;
					
					case sprGuardSlope:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Guard_Slope;
					break;
					
					case sprHurt:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Hurt;
					break;
					
					case sprDeath:
					equipmentIndex = spr_Kirby_Equipment_Bell_Modern_Death;
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
		}
		break;
	}
	return equipmentIndex;
}