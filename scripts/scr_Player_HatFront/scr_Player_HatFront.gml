///@description Player - Ability Hat Front
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Player_HatFront(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var hatFrontIndex;
	
	switch (selectedCharacter)
	{
		case playerCharacters.kirby:
		switch (abilityToCheck)
		{
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
					case sprRollDuck:
					hatFrontIndex = spr_Kirby_HatFront_Fire_KSSU_RollDuck;
					break;
					
					case sprClimbUp:
					hatFrontIndex = spr_Kirby_HatFront_Fire_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					hatFrontIndex = spr_Kirby_HatFront_Fire_KSSU_ClimbDown;
					break;
					
					default:
					hatFrontIndex = -1;
					break;
				}
				break;
				
				default:
				hatFrontIndex = -1;
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
					case sprRollDuck:
					hatFrontIndex = spr_Kirby_HatFront_Fire_KSSU_RollDuck;
					break;
					
					case sprClimbUp:
					hatFrontIndex = spr_Kirby_HatFront_Fire_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					hatFrontIndex = spr_Kirby_HatFront_Fire_KSSU_ClimbDown;
					break;
					
					default:
					hatFrontIndex = -1;
					break;
				}
				break;
				
				default:
				hatFrontIndex = -1;
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
					case sprClimbUp:
					hatFrontIndex = spr_Kirby_HatFront_Spark_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					hatFrontIndex = spr_Kirby_HatFront_Spark_KSSU_ClimbDown;
					break;
					
					default:
					hatFrontIndex = -1;
					break;
				}
				break;
				
				default:
				hatFrontIndex = -1;
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
				/*case "kssu":
				switch (sprite_index)
				{
					case sprIdle:
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
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeL:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeLBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeR:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleNormalSlopeRBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeL:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeLBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeR:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprIdleSteepSlopeRBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprItemCarryLightIdle:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprItemCarryLightIdleBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprItemCarryLightIdleNormalSlopeL:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprItemCarryLightIdleNormalSlopeLBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprItemCarryLightIdleNormalSlopeR:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprItemCarryLightIdleNormalSlopeRBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprItemCarryLightIdleSteepSlopeL:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprItemCarryLightIdleSteepSlopeLBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprItemCarryLightIdleSteepSlopeR:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprItemCarryLightIdleSteepSlopeRBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Walk;
					break;
					
					case sprItemCarryLightWalk:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Walk;
					break;
					
					case sprRun:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Run;
					break;
					
					case sprRunTurn:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_RunTurn;
					break;
					
					case sprJump:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Jump;
					break;
					
					case sprRoll:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Roll;
					break;
					
					case sprRollDuckReady:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Roll;
					break;
					
					case sprFall:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Fall;
					break;
					
					case sprSquish:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Squish;
					break;
					
					case sprDuck:
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
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeL:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeLBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeR:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckNormalSlopeRBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeL:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeLBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeR:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprDuckSteepSlopeRBlink:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Duck;
					break;
					
					case sprItemCarryLightDuck:
					hatFrontIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprItemCarryLightDuckBlink:
					hatFrontIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprItemCarryLightDuckNormalSlopeL:
					hatFrontIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprItemCarryLightDuckNormalSlopeLBlink:
					hatFrontIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprItemCarryLightDuckNormalSlopeR:
					hatFrontIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprItemCarryLightDuckNormalSlopeRBlink:
					hatFrontIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprItemCarryLightDuckSteepSlopeL:
					hatFrontIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprItemCarryLightDuckSteepSlopeLBlink:
					hatFrontIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprItemCarryLightDuckSteepSlopeR:
					hatFrontIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprItemCarryLightDuckSteepSlopeRBlink:
					hatFrontIndex = spr_Kirby_AbilityHat_Wing_KSSU_Duck;
					break;
					
					case sprSlide:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Slide;
					break;
					
					case sprSlideEnd:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_SlideEnd;
					break;
					
					case sprEnter:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Enter;
					break;
					
					case sprAbilityChange:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_AbilityChange;
					break;
					
					case sprGuard:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Guard_Slope;
					break;
					
					case sprWingAttack1:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Attack1;
					break;
					
					case sprWingAttack2:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_Attack2;
					break;
					
					default:
					hatFrontIndex = -1;
					break;
				}
				break;*/
				
				default:
				hatFrontIndex = -1;
				break;
			}
			break;
			
			default:
			hatFrontIndex = -1;
			break;
		}
		break;
		
		default:
		hatFrontIndex = -1;
		break;
	}
	return hatFrontIndex;
}