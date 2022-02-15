///@description Player - Ability Hat
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Player_AbilityHat(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var abilityHatIndex;
	
	switch (selectedCharacter)
	{
		case playerCharacters.kirby:
		switch (abilityToCheck)
		{
			case playerAbilities.cutter:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeCutterP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeCutterP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Hurt;
					break;
					
					case sprCutterAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Attack1;
					break;
					
					case sprCutterAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Attack2;
					break;
					
					case sprCutterAttack3:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Attack3;
					break;
					
					case sprCutterAttack4:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Attack4;
					break;
					
					case sprCutterAttack5:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Attack5;
					break;
					
					case sprCutterAttack6:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Attack6;
					break;
					
					case sprCutterCatch:
					abilityHatIndex = spr_Kirby_AbilityHat_Cutter_KSSU_Catch;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.beam:
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
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Hurt;
					break;
					
					case sprBeamCharge:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Charge;
					break;
					
					case sprBeamAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack1;
					break;
					
					case sprBeamAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack2;
					break;
					
					case sprBeamAttack3:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack3;
					break;
					
					case sprBeamAttack4:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack4;
					break;
					
					case sprBeamAttack5:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack5;
					break;
					
					case sprBeamAttack6:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack6;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				case "marxSoul":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Hurt;
					break;
					
					case sprBeamCharge:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Charge;
					break;
					
					case sprBeamAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Attack1;
					break;
					
					case sprBeamAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Attack2;
					break;
					
					case sprBeamAttack3:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Attack3;
					break;
					
					case sprBeamAttack4:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Attack4;
					break;
					
					case sprBeamAttack5:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Attack5;
					break;
					
					case sprBeamAttack6:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_MarxSoul_Attack6;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.mysticBeam:
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
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Hurt;
					break;
					
					case sprBeamCharge:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Charge;
					break;
					
					case sprBeamAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack1;
					break;
					
					case sprBeamAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack2;
					break;
					
					case sprBeamAttack3:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack3;
					break;
					
					case sprBeamAttack4:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack4;
					break;
					
					case sprBeamAttack5:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack5;
					break;
					
					case sprBeamAttack6:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack6;
					break;
					
					case sprMysticBeamAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Beam_KSSU_Attack3;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.stone:
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
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Hurt;
					break;
					
					case sprStoneAttack1Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Attack1Ready;
					break;
					
					case sprStoneAttack2Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Attack2Ready;
					break;
					
					case sprStoneAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Attack2;
					break;
					
					case sprStoneAttack2Release:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_KSSU_Attack2Release;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				case "modern":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Hurt;
					break;
					
					case sprStoneAttack1Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Attack1Ready;
					break;
					
					case sprStoneAttack2Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Attack2Ready;
					break;
					
					case sprStoneAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Attack2;
					break;
					
					case sprStoneAttack2Release:
					abilityHatIndex = spr_Kirby_AbilityHat_Stone_Modern_Attack2Release;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.ufo:
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
				switch (sprite_index)
				{
					case sprUfoIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Ufo_Modern_Idle;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.mirror:
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
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Walk;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Hurt;
					break;
					
					case sprMirrorDash:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Dash;
					break;
					
					case sprMirrorAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Attack1;
					break;
					
					case sprMirrorAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Attack2;
					break;
					
					case sprMirrorAttack2Release:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Attack2Release;
					break;
					
					case sprMirrorAttack3:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Attack3;
					break;
					
					case sprMirrorAttack4:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Attack4;
					break;
					
					case sprMirrorAttack5:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_KSSU_Attack5;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				case "modern":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Walk;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Hurt;
					break;
					
					case sprMirrorDash:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Dash;
					break;
					
					case sprMirrorAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Attack1;
					break;
					
					case sprMirrorAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Attack2;
					break;
					
					case sprMirrorAttack2Release:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Attack2Release;
					break;
					
					case sprMirrorAttack3:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Attack3;
					break;
					
					case sprMirrorAttack4:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Attack4;
					break;
					
					case sprMirrorAttack5:
					abilityHatIndex = spr_Kirby_AbilityHat_Mirror_Modern_Attack5;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.ninja:
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
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Hurt;
					break;
					
					case sprNinjaCharge:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Charge;
					break;
					
					case sprNinjaAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Attack1;
					break;
					
					case sprNinjaAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_KSSU_Attack2;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				case "modern":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Hurt;
					break;
					
					case sprNinjaCharge:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Charge;
					break;
					
					case sprNinjaAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Attack1;
					break;
					
					case sprNinjaAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Ninja_Modern_Attack2;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.bomb:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeBombP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeBombP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
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
					case sprItemCarryLightIdle:
					case sprItemCarryLightIdleBlink:
					case sprItemCarryLightIdleNormalSlopeL:
					case sprItemCarryLightIdleNormalSlopeLBlink:
					case sprItemCarryLightIdleNormalSlopeR:
					case sprItemCarryLightIdleNormalSlopeRBlink:
					case sprItemCarryLightIdleSteepSlopeL:
					case sprItemCarryLightIdleSteepSlopeLBlink:
					case sprItemCarryLightIdleSteepSlopeR:
					case sprItemCarryLightIdleSteepSlopeRBlink:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Idle;
					break;
					
					case sprItemCarryHeavyIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Heavy_Idle;
					break;
					
					case sprItemCarryHeavyIdleSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Heavy_SlopeL;
					break;
					
					case sprItemCarryHeavyIdleSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Heavy_SlopeR;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Walk;
					break;
					
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Heavy_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Squish;
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
					case sprItemCarryThrow:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Hurt;
					break;
					
					case sprBombReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Ready;
					break;
					
					case sprBombAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Attack1;
					break;
					
					case sprBombAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Attack2;
					break;
					
					case sprBombAttack3Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Attack3Ready;
					break;
					
					case sprBombAttack3Release:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Attack3Release;
					break;
					
					case sprBombAttack4:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_KSSU_Attack4;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				case "modern":
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
					case sprItemCarryLightIdle:
					case sprItemCarryLightIdleBlink:
					case sprItemCarryLightIdleNormalSlopeL:
					case sprItemCarryLightIdleNormalSlopeLBlink:
					case sprItemCarryLightIdleNormalSlopeR:
					case sprItemCarryLightIdleNormalSlopeRBlink:
					case sprItemCarryLightIdleSteepSlopeL:
					case sprItemCarryLightIdleSteepSlopeLBlink:
					case sprItemCarryLightIdleSteepSlopeR:
					case sprItemCarryLightIdleSteepSlopeRBlink:
					case sprItemCarryThrow:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Idle;
					break;
					
					case sprItemCarryHeavyIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Heavy_Idle;
					break;
					
					case sprItemCarryHeavyIdleSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Heavy_SlopeL;
					break;
					
					case sprItemCarryHeavyIdleSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Heavy_SlopeR;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Walk;
					break;
					
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Heavy_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Hurt;
					break;
					
					case sprBombReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Ready;
					break;
					
					case sprBombAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Attack1;
					break;
					
					case sprBombAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Attack2;
					break;
					
					case sprBombAttack3Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Attack3Ready;
					break;
					
					case sprBombAttack3Release:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Attack3Release;
					break;
					
					case sprBombAttack4:
					abilityHatIndex = spr_Kirby_AbilityHat_Bomb_Modern_Attack4;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.fire:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeFireP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeFireP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Enter;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Hurt;
					break;
					
					case sprFireAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Attack1;
					break;
					
					case sprFireAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Attack2;
					break;
					
					case sprFireAttack3:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Attack3;
					break;
					
					case sprFireAttack4:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Attack4;
					break;
					
					case sprFireAttackRelease1:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_AttackRelease1;
					break;
					
					case sprFireAttackRelease2:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_AttackRelease2;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.mysticFire:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeFireP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeFireP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Enter;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Hurt;
					break;
					
					case sprFireAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Fire_KSSU_Attack1;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.ice:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeIceP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeIceP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_AbilityChange;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Hurt;
					break;
					
					case sprIceAttack1Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Attack1Ready;
					break;
					
					case sprIceAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Attack1;
					break;
					
					case sprIceAttack1Release:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_Attack1Release;
					break;
					
					case sprIceKick:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_IceKick;
					break;
					
					case sprIceGrabReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_IceGrabReady;
					break;
					
					case sprIceGrab:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_IceGrab;
					break;
					
					case sprIceGrabRelease:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_KSSU_IceGrabRelease;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				case "snowman":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_AbilityChange;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Ice_Snowman_Hurt;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.spark:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeSparkP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeSparkP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Enter;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_AbilityChange;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Hurt;
					break;
					
					case sprSparkMaxCharge:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_MaxCharge;
					break;
					
					case sprSparkMaxChargeNormalSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_MaxCharge;
					break;
					
					case sprSparkMaxChargeNormalSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_MaxCharge;
					break;
					
					case sprSparkMaxChargeSteepSlopeL:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_MaxCharge;
					break;
					
					case sprSparkMaxChargeSteepSlopeR:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_MaxCharge;
					break;
					
					case sprSparkAttack1Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Attack1Ready;
					break;
					
					case sprSparkAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Attack1;
					break;
					
					case sprSparkAttack2Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Attack2Ready;
					break;
					
					case sprSparkAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Attack2;
					break;
					
					case sprSparkAttack3:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Attack3;
					break;
					
					case sprSparkAttack4:
					abilityHatIndex = spr_Kirby_AbilityHat_Spark_KSSU_Attack4;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.yoyo:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeYoyoP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeYoyoP2;
			}
				
			switch (altHatToCheck)
			{
				case "kssu":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Yoyo_KSSU_Hurt;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
					
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.wheel:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeWheelP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeWheelP2;
			}
				
			switch (altHatToCheck)
			{
				case "kssu":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Wheel_KSSU_Hurt;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
					
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.artist:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeArtistP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeArtistP2;
			}
				
			switch (altHatToCheck)
			{
				case "kssu":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_KSSU_Hurt;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				case "modern":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_Modern_Idle;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Artist_Modern_Duck;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
					
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.fighter:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeFighterP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeFighterP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_AbilityChange;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Fighter_KSSU_Hurt;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.suplex:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeSuplexP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeSuplexP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_AbilityChange;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Suplex_KSSU_Hurt;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.wing:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeWingP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeWingP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_SlideEnd;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_AbilityChange;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Hurt;
					break;
					
					case sprWingAttack1:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Attack1;
					break;
					
					case sprWingAttack2Ready:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Attack2Ready;
					break;
					
					case sprWingAttack2:
					abilityHatIndex = spr_Kirby_AbilityHat_Wing_KSSU_Attack2;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.jet:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeJetP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeJetP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
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
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Roll;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_SlideEnd;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_AbilityChange;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Jet_KSSU_Hurt;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.bell:
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
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Walk;
					break;
					
					case sprRun:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Run;
					break;
					
					case sprRunTurn:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_RunTurn;
					break;
					
					case sprJump:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Jump;
					break;
					
					case sprRoll:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Roll;
					break;
					
					case sprRollDuckReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Roll;
					break;
					
					case sprRollDuck:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_RollDuck;
					break;
					
					case sprBackflip:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Backflip;
					break;
					
					case sprFall:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Fall;
					break;
					
					case sprSquish:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Squish;
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
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Duck;
					break;
					
					case sprSlide:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Slide;
					break;
					
					case sprSlideEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_SlideEnd;
					break;
					
					case sprFloatReady:
					case sprItemCarryLightFloatReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_FloatReady;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Flap;
					break;
					
					case sprFloatSpit:
					case sprItemCarryLightFloatSpit:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_FloatSpit;
					break;
					
					case sprFloatHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_FloatHurt;
					break;
					
					case sprEnter:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Enter;
					break;
					
					case sprClimbUp:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_ClimbUp;
					break;
					
					case sprClimbDown:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_ClimbDown;
					break;
					
					case sprAbilityChange:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_AbilityChange;
					break;
					
					case sprWarpStar1:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_WarpStar2;
					break;
					
					case sprGuard:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Guard;
					break;
					
					case sprGuardSlope:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Guard_Slope;
					break;
					
					case sprHurt:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Hurt;
					break;
					
					case sprDeath:
					abilityHatIndex = spr_Kirby_AbilityHat_Bell_Modern_Death;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.water:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeWaterP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeWaterP2;
			}
			
			switch (altHatToCheck)
			{
				case "modern":
				switch (sprite_index)
				{
					case sprIdle:
					abilityHatIndex = spr_Kirby_AbilityHat_Water_Modern_Idle;
					break;
					
					case sprWalk:
					abilityHatIndex = spr_Kirby_AbilityHat_Water_Modern_Walk;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.sleep:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeSleepP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeSleepP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprSleepReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Sleep_KSSU_SleepReady;
					break;
					
					case sprSleep:
					abilityHatIndex = spr_Kirby_AbilityHat_Sleep_KSSU_Sleep;
					break;
					
					case sprSleepEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Sleep_KSSU_SleepEnd;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			case playerAbilities.scan:
			if (player == 0)
			{
				var altHatToCheck = global.hatTypeScanP1;
			}
			else
			{
				var altHatToCheck = global.hatTypeScanP2;
			}
			
			switch (altHatToCheck)
			{
				case "kssu":
				switch (sprite_index)
				{
					case sprScanReady:
					abilityHatIndex = spr_Kirby_AbilityHat_Scan_KSSU_ScanReady;
					break;
					
					case sprScan:
					abilityHatIndex = spr_Kirby_AbilityHat_Scan_KSSU_Scan;
					break;
					
					case sprScanEnd:
					abilityHatIndex = spr_Kirby_AbilityHat_Scan_KSSU_ScanEnd;
					break;
					
					default:
					abilityHatIndex = -1;
					break;
				}
				break;
				
				default:
				abilityHatIndex = -1;
				break;
			}
			break;
			
			default:
			abilityHatIndex = -1;
			break;
		}
		break;
		
		default:
		abilityHatIndex = -1;
		break;
	}
	return abilityHatIndex;
}