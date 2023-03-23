///@description Player - Character Setup - Helper - Bouncy
///@param {real} playerId Id of the target player

function scr_Player_CharacterSetup_Helper_Bouncy(argument0)
{
	var playerId = argument0;
	
	with (playerId)
	{
		#region Helper Variables
		switch (player)
		{
			case 0:
			global.isHelperP1 = true;
			break;
			
			case 1:
			global.isHelperP2 = true;
			break;
			
			case 2:
			global.isHelperP3 = true;
			break;
			
			case 3:
			global.isHelperP4 = true;
			break;
		}
		#endregion
		
		#region Skins & Spray Paints
		var skin = choose("normal","normal","normal","robo");
		
		switch (skin)
		{
			#region Normal
			case "normal":
			var pal;
			var i = 0;
			pal[i] = spr_Bouncy_Normal_Palette_HoppingPink;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_BerryBounce;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_AmberNChrome;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_AzureSpring;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_DeepSeaDive;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_EmeraldEscape;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_Exoskeleton;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_GoldsMold;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_GolfCourse;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_GrapeGetaway;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_HotSpring;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_LightlyBouncing;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_OceansBounce;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_RustedFlux;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_TwistyTumble;
			break;
			#endregion
			
			#region Robo
			case "robo":
			var pal;
			var i = 0;
			pal[i] = spr_Bouncy_Robo_Palette_MechanicalGray;
			break;
			#endregion
		}
		
		#region Choose Palette
		
		switch (player)
		{
			case 0:
			global.sprayPaintP1 = pal[irandom_range(0,array_length(pal) - 1)];
			break;
			
			case 1:
			global.sprayPaintP2 = pal[irandom_range(0,array_length(pal) - 1)];
			break;
			
			case 2:
			global.sprayPaintP3 = pal[irandom_range(0,array_length(pal) - 1)];
			break;
			
			case 3:
			global.sprayPaintP4 = pal[irandom_range(0,array_length(pal) - 1)];
			break;
		}
		#endregion
		#endregion
		
		#region Physics
		gravNormal = .2;
		grav = gravNormal;
		gravLimitNormal = 5;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 5;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.3;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		#endregion
		
		#region Attributes
		hasGravity = true;
		hasJumpLimit = true;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = false;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAutoJump = true;
		canFallRoll = false;
		canAttack = false;
		canDuck = true;
		canDuckHighJump = true;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		canGetHurt = true;
		runImageSpeedIncrease = 0;
		#endregion
		
		#region Sprites & Masks
		switch (skin)
		{
			#region Normal
			case "normal":
			sprIdle = spr_Bouncy_Normal_Idle;
			sprWalk = spr_Bouncy_Normal_Jump;
			sprJump = spr_Bouncy_Normal_Jump;
			sprFall = spr_Bouncy_Normal_Idle;
			sprSquish = spr_Bouncy_Normal_Idle;
			sprDuck = spr_Bouncy_Normal_Duck;
			sprEnter = spr_Bouncy_Normal_Idle;
			sprHurt = spr_Bouncy_Normal_Hurt;
			sprDeath = spr_Bouncy_Normal_Hurt;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
			
			#region Robo
			case "robo":
			sprIdle = spr_Bouncy_Robo_Idle;
			sprWalk = spr_Bouncy_Robo_Jump;
			sprJump = spr_Bouncy_Robo_Jump;
			sprFall = spr_Bouncy_Robo_Idle;
			sprSquish = spr_Bouncy_Robo_Idle;
			sprDuck = spr_Bouncy_Robo_Duck;
			sprEnter = spr_Bouncy_Robo_Idle;
			sprHurt = spr_Bouncy_Robo_Hurt;
			sprDeath = spr_Bouncy_Robo_Hurt;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
		}
		#endregion
	}
}