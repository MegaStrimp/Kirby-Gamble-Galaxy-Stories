///@description Player - Character Setup - Helper - Gordo
///@param {real} playerId Id of the target player

function scr_Player_CharacterSetup_Helper_Gordo(argument0)
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
		var skin = choose("normal");
		
		switch (skin)
		{
			#region Normal
			case "normal":
			var pal;
			var i = 0;
			pal[i] = spr_Gordo_Normal_Palette_ThornyBackside;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_DarkMetal;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Silver;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Golden;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Nuclear;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Crimson;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Orange;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Crystal;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Lunar;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Vintage;
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
		jumpspeedNormal = 4;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.5;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		#endregion
		
		#region Attributes
		hasGravity = true;
		hasJumpLimit = false;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = false;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAutoJump = true;
		canFallRoll = false;
		canAttack = false;
		canDuck = false;
		canDuckHighJump = false;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		canGetHurt = false;
		runImageSpeedIncrease = 0;
		hasIdleAnimation = false;
		#endregion
		
		#region Sprites & Masks
		switch (skin)
		{
			#region Normal
			case "normal":
			sprIdle = spr_Gordo_Normal_Idle;
			sprWalk = spr_Gordo_Normal_Idle;
			sprJump = spr_Gordo_Normal_Idle;
			sprFall = spr_Gordo_Normal_Idle;
			sprSquish = spr_Gordo_Normal_Idle;
			sprDuck = spr_Gordo_Normal_Idle;
			sprEnter = spr_Gordo_Normal_Idle;
			sprHurt = spr_Gordo_Normal_Idle;
			sprDeath = spr_Gordo_Normal_Idle;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
		}
		#endregion
	}
}