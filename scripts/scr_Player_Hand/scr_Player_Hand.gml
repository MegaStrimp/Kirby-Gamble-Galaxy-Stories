///@description Player - Hand
///@param {real} abilityToCheck Which value to check.
///@param {real} selectedCharacter Which character to check.

function scr_Player_Hand(argument0)
{
	var selectedCharacter = argument0;
	var handIndex;
	
	switch(selectedCharacter)
	{
		case "kirby":
		switch(sprite_index)
		{
			case sprItemCarryLightIdle:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Idle_Hands;
			break;
			
			case sprItemCarryLightIdleBlink:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_IdleBlink_Hands;
			break;
			
			case sprItemCarryLightIdleNormalSlopeL:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Idle_NormalSlopeL_Hands;
			break;
			
			case sprItemCarryLightIdleNormalSlopeLBlink:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Idle_NormalSlopeLBlink_Hands;
			break;
			
			case sprItemCarryLightIdleNormalSlopeR:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Idle_NormalSlopeR_Hands;
			break;
			
			case sprItemCarryLightIdleNormalSlopeRBlink:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Idle_NormalSlopeRBlink_Hands;
			break;
			
			case sprItemCarryLightIdleSteepSlopeL:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Idle_SteepSlopeL_Hands;
			break;
			
			case sprItemCarryLightIdleSteepSlopeLBlink:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Idle_SteepSlopeLBlink_Hands;
			break;
			
			case sprItemCarryLightIdleSteepSlopeR:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Idle_SteepSlopeR_Hands;
			break;
			
			case sprItemCarryLightIdleSteepSlopeRBlink:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Idle_SteepSlopeRBlink_Hands;
			break;
			
			case sprItemCarryLightWalk:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Walk_Hands;
			break;
			
			case sprItemCarryLightDuck:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Duck_Hands;
			break;
			
			case sprItemCarryLightDuckBlink:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_DuckBlink_Hands;
			break;
			
			case sprItemCarryLightDuckNormalSlopeL:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Duck_NormalSlopeL_Hands;
			break;
			
			case sprItemCarryLightDuckNormalSlopeLBlink:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Duck_NormalSlopeLBlink_Hands;
			break;
			
			case sprItemCarryLightDuckNormalSlopeR:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Duck_NormalSlopeR_Hands;
			break;
			
			case sprItemCarryLightDuckNormalSlopeRBlink:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Duck_NormalSlopeRBlink_Hands;
			break;
			
			case sprItemCarryLightDuckSteepSlopeL:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Duck_SteepSlopeL_Hands;
			break;
			
			case sprItemCarryLightDuckSteepSlopeLBlink:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Duck_SteepSlopeLBlink_Hands;
			break;
			
			case sprItemCarryLightDuckSteepSlopeR:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Duck_SteepSlopeR_Hands;
			break;
			
			case sprItemCarryLightDuckSteepSlopeRBlink:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Duck_SteepSlopeRBlink_Hands;
			break;
			
			case sprItemCarryLightFloatReady:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_FloatReady_Hands;
			break;
			
			case sprItemCarryLightFloat:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Float_Hands;
			break;
			
			case sprItemCarryLightFlap:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_Flap_Hands;
			break;
			
			case sprItemCarryLightFloatSpit:
			handIndex = spr_Kirby_Normal_ItemCarry_Light_FloatSpit_Hands;
			break;
			
			default:
			handIndex = -1;
			break;
		}
		break;
		
		default:
		handIndex = -1;
		break;
	}
	return handIndex;
}