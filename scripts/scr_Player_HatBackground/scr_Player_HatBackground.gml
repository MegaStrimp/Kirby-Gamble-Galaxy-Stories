///@description Player - Ability Hat Background
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Player_HatBackground(argument0,argument1)
{
	var abilityToCheck = argument0;
	var selectedCharacter = argument1;
	var hatBackgroundIndex;
	
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
					case sprItemCarryHeavyIdle:
					case sprItemCarryHeavyIdleSlopeL:
					case sprItemCarryHeavyIdleSlopeR:
					case sprItemCarryThrow:
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Walk;
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
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Duck;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Flap;
					break;
					
					case sprAbilityChange:
					if (floor(image_index) == image_number - 1)
					{
						hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_AbilityChange;
						if (hatBackgroundImageIndex < sprite_get_number(hatBackgroundIndex) - 1)
						{
							hatBackgroundImageIndex += hatBackgroundImageIndexSpd;
						}
						else
						{
							hatBackgroundImageIndex -= sprite_get_number(hatBackgroundIndex) - 1;
						}
					}
					else
					{
						hatBackgroundIndex = -1;
					}
					break;
					
					case sprGuard:
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Guard_Slope;
					break;
					
					default:
					hatBackgroundIndex = -1;
					break;
				}
				break;
				
				default:
				hatBackgroundIndex = -1;
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
					case sprItemCarryHeavyIdle:
					case sprItemCarryHeavyIdleSlopeL:
					case sprItemCarryHeavyIdleSlopeR:
					case sprItemCarryThrow:
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Walk;
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
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Duck;
					break;
					
					case sprFloat:
					case sprItemCarryLightFloat:
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Float;
					break;
					
					case sprFlap:
					case sprItemCarryLightFlap:
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Flap;
					break;
					
					case sprAbilityChange:
					if (floor(image_index) == image_number - 1)
					{
						hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_AbilityChange;
						if (hatBackgroundImageIndex < sprite_get_number(hatBackgroundIndex) - 1)
						{
							hatBackgroundImageIndex += hatBackgroundImageIndexSpd;
						}
						else
						{
							hatBackgroundImageIndex -= sprite_get_number(hatBackgroundIndex) - 1;
						}
					}
					else
					{
						hatBackgroundIndex = -1;
					}
					break;
					
					case sprGuard:
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					hatBackgroundIndex = spr_Kirby_HatBackground_Fire_KSSU_Guard_Slope;
					break;
					
					default:
					hatBackgroundIndex = -1;
					break;
				}
				break;
				
				default:
				hatBackgroundIndex = -1;
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
					case sprItemCarryHeavyIdle:
					case sprItemCarryHeavyIdleSlopeL:
					case sprItemCarryHeavyIdleSlopeR:
					case sprItemCarryThrow:
					hatBackgroundIndex = spr_Kirby_HatBackground_Spark_KSSU_Idle;
					break;
					
					case sprWalk:
					case sprItemCarryLightWalk:
					case sprItemCarryHeavyWalk:
					hatBackgroundIndex = spr_Kirby_HatBackground_Spark_KSSU_Walk;
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
					hatBackgroundIndex = spr_Kirby_HatBackground_Spark_KSSU_Duck;
					break;
					
					case sprFloat:
					hatBackgroundIndex = spr_Kirby_HatBackground_Spark_KSSU_Float;
					break;
					
					case sprFlap:
					hatBackgroundIndex = spr_Kirby_HatBackground_Spark_KSSU_Flap;
					break;
					
					case sprItemCarryLightFloat:
					hatBackgroundIndex = spr_Kirby_HatBackground_Spark_KSSU_Float;
					break;
					
					case sprItemCarryLightFlap:
					hatBackgroundIndex = spr_Kirby_HatBackground_Spark_KSSU_Flap;
					break;
					
					case sprAbilityChange:
					if (floor(image_index) == image_number - 1)
					{
						hatBackgroundIndex = spr_Kirby_HatBackground_Spark_KSSU_AbilityChange;
						if (hatBackgroundImageIndex < sprite_get_number(hatBackgroundIndex) - 1)
						{
							hatBackgroundImageIndex += hatBackgroundImageIndexSpd;
						}
						else
						{
							hatBackgroundImageIndex -= sprite_get_number(hatBackgroundIndex) - 1;
						}
					}
					else
					{
						hatBackgroundIndex = -1;
					}
					break;
					
					case sprGuard:
					hatBackgroundIndex = spr_Kirby_HatBackground_Spark_KSSU_Guard;
					break;
					
					case sprGuardSlope:
					hatBackgroundIndex = spr_Kirby_HatBackground_Spark_KSSU_Guard_Slope;
					break;
					
					case sprSparkAttack3:
					hatBackgroundIndex = spr_Kirby_HatBackground_Spark_KSSU_Attack3;
					break;
					
					case sprSparkAttack4:
					hatBackgroundIndex = spr_Kirby_HatBackground_Spark_KSSU_Attack4;
					break;
					
					default:
					hatBackgroundIndex = -1;
					break;
				}
				break;
				
				default:
				hatBackgroundIndex = -1;
				break;
			}
			break;
			
			default:
			hatBackgroundIndex = -1;
			break;
		}
		break;
		
		default:
		hatBackgroundIndex = -1;
		break;
	}
	return hatBackgroundIndex;
}