///@description Player - Ability Hat Front
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Player_HatFront(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var hatFrontIndex = -1;
	
	switch (selectedCharacter)
	{
		case playerCharacters.kirby:
		switch (abilityToCheck)
		{
			case playerAbilities.fire:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeFireP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeFireP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeFireP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeFireP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.fire_kssu:
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
				}
				break;
			}
			break;
			
			case playerAbilities.mysticFire:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeFireP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeFireP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeFireP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeFireP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.mysticFire_ggs:
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
				}
				break;
			}
			break;
			
			case playerAbilities.spark:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeSparkP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeSparkP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeSparkP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeSparkP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.spark_kssu:
				switch (sprite_index)
				{
					case sprClimbUp:
					hatFrontIndex = spr_Kirby_HatFront_Spark_KSSU_ClimbUp;
					break;
					
					case sprClimbDown:
					hatFrontIndex = spr_Kirby_HatFront_Spark_KSSU_ClimbDown;
					break;
				}
				break;
			}
			break;
			
			case playerAbilities.wing:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeWingP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeWingP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeWingP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeWingP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.wing_kssu:
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
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
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
					
					case sprWarpStar1:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_WarpStar1;
					break;
					
					case sprWarpStar2:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_WarpStar2;
					break;
					
					case sprWarpStar3:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_WarpStar3;
					break;
					
					case sprWarpStar4:
					hatFrontIndex = spr_Kirby_HatFront_Wing_KSSU_WarpStar4;
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
				}
				break;
			}
			break;
			
			case playerAbilities.water:
			switch (player)
			{
				case 0:
				var altHatToCheck = global.hatTypeWaterP1;
				break;
				
				case 1:
				var altHatToCheck = global.hatTypeWaterP2;
				break;
				
				case 2:
				var altHatToCheck = global.hatTypeWaterP3;
				break;
				
				case 3:
				var altHatToCheck = global.hatTypeWaterP4;
				break;
			}
			
			switch (altHatToCheck)
			{
				case abilityHatSkins.water_modern:
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
					hatFrontIndex = spr_Kirby_HatFront_Water_Modern_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					if (waterWalkHatAnim == 0)
					{
						hatFrontIndex = spr_Kirby_HatFront_Water_Modern_WalkAnim1;
					}
					else
					{
						hatFrontIndex = spr_Kirby_HatFront_Water_Modern_WalkAnim2;
					}
					break;
					
					case sprWarpStar1:
					hatFrontIndex = spr_Kirby_HatFront_Water_Modern_WarpStar1;
					break;
					
					case sprWarpStar2:
					hatFrontIndex = spr_Kirby_HatFront_Water_Modern_WarpStar2;
					break;
					
					case sprWarpStar3:
					hatFrontIndex = spr_Kirby_HatFront_Water_Modern_WarpStar3;
					break;
					
					case sprWarpStar4:
					hatFrontIndex = spr_Kirby_HatFront_Water_Modern_WarpStar4;
					break;
				}
				break;
			}
			break;
		}
		break;
	}
	return hatFrontIndex;
}