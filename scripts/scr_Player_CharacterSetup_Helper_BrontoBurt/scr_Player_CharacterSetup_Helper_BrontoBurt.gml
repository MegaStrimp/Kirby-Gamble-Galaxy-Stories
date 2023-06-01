///@description Player - Character Setup - Helper - Bronto Burt
///@param {real} playerId Id of the target player

function scr_Player_CharacterSetup_Helper_BrontoBurt(argument0)
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
		var skin = choose("normal","normal","normal","alien");
		
		switch (skin)
		{
			#region Normal
			case "normal":
			var pal;
			var i = 0;
			pal[i] = spr_BrontoBurt_Normal_Palette_ClassicalFlight;
			i += 1;
			pal[i] = spr_BrontoBurt_Normal_Palette_Acidic;
			i += 1;
			pal[i] = spr_BrontoBurt_Normal_Palette_Alien;
			i += 1;
			pal[i] = spr_BrontoBurt_Normal_Palette_Black;
			i += 1;
			pal[i] = spr_BrontoBurt_Normal_Palette_Green;
			i += 1;
			pal[i] = spr_BrontoBurt_Normal_Palette_Light;
			i += 1;
			pal[i] = spr_BrontoBurt_Normal_Palette_Pumpkin;
			i += 1;
			pal[i] = spr_BrontoBurt_Normal_Palette_Purple;
			i += 1;
			pal[i] = spr_BrontoBurt_Normal_Palette_UraniumGreen;
			i += 1;
			pal[i] = spr_BrontoBurt_Normal_Palette_UraniumPurple;
			i += 1;
			pal[i] = spr_BrontoBurt_Normal_Palette_Cosmic;
			i += 1;
			pal[i] = spr_BrontoBurt_Normal_Palette_Avalanche;
			i += 1;
			pal[i] = spr_BrontoBurt_Normal_Palette_CreamyPink;
			break;
			#endregion
			
			#region Alien
			case "alien":
			var pal;
			var i = 0;
			pal[i] = spr_BrontoBurt_Alien_Palette_Graylien;
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
		movespeed = .75;
		jumpspeed = 1.5;
		gravNormal = .1;
		grav = gravNormal;
		gravLimitNormal = 2;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 3;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 2;
		movespeedRun = 2.5;
		movespeed = movespeedNormal;
		accel = .1;
		decel = .04;
		climbSpeed = 2;
		#endregion
		
		#region Attributes
		hasGravity = true;
		hasJumpLimit = false;
		canWalk = true;
		canRun = true;
		canRunTurn = false;
		canJump = true;
		canMultiJump = true;
		multiJumpLimit = 5;
		canAutoJump = false;
		canFallRoll = false;
		canAttack = false;
		canDuck = false;
		canDuckHighJump = false;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		canGetHurt = true;
		runImageSpeedIncrease = .75;
		hasIdleAnimation = false;
		#endregion
		
		#region Sprites & Masks
		switch (skin)
		{
			#region Normal
			case "normal":
			sprIdle = spr_BrontoBurt_Normal_Idle;
			sprWalk = spr_BrontoBurt_Normal_Walk;
			sprRun = spr_BrontoBurt_Normal_Walk;
			sprJump = spr_BrontoBurt_Normal_Fly;
			sprFall = spr_BrontoBurt_Normal_Fly;
			sprSquish = spr_BrontoBurt_Normal_Ready;
			sprDuck = spr_BrontoBurt_Normal_Ready;
			sprEnter = spr_BrontoBurt_Normal_Ready;
			sprHurt = spr_BrontoBurt_Normal_HurtGround;
			sprDeath = spr_BrontoBurt_Normal_HurtFly;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
			
			#region Alien
			case "alien":
			sprIdle = spr_BrontoBurt_Alien_Idle;
			sprWalk = spr_BrontoBurt_Alien_Walk;
			sprRun = spr_BrontoBurt_Alien_Walk;
			sprJump = spr_BrontoBurt_Alien_Fly;
			sprFall = spr_BrontoBurt_Alien_Fly;
			sprSquish = spr_BrontoBurt_Alien_Ready;
			sprDuck = spr_BrontoBurt_Alien_Ready;
			sprEnter = spr_BrontoBurt_Alien_Ready;
			sprHurt = spr_BrontoBurt_Alien_HurtGround;
			sprDeath = spr_BrontoBurt_Alien_HurtFly;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
		}
		#endregion
	}
}