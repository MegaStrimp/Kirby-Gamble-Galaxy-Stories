///@description Player - Character Setup - Helper - Sir Kibble
///@param {real} playerId Id of the target player

function scr_Player_CharacterSetup_Helper_SirKibble(argument0)
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
			pal[i] = spr_SirKibble_Normal_Palette_Yellow;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_Black;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_KnightlyPink;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_Green;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_Jade;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_Stone;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_Titanium;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_Gold;
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
		jumpspeedNormal = 5.5;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.3;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		climbSpeed = 2;
		#endregion
		
		#region Attributes
		hasGravity = true;
		hasJumpLimit = true;
		canWalk = true;
		canRun = true;
		canRunTurn = false;
		canJump = true;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAutoJump = false;
		canFallRoll = false;
		canAttack = true;
		canDuck = false;
		canDuckHighJump = true;
		canSlide = false;
		canClimb = true;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		canGetHurt = true;
		runImageSpeedIncrease = .5;
		hasIdleAnimation = false;
		#endregion
		
		#region Sprites & Masks
		switch (skin)
		{
			#region Normal
			case "normal":
			sprIdle = spr_SirKibble_Normal_Idle;
			sprWalk = spr_SirKibble_Normal_Walk;
			sprRun = spr_SirKibble_Normal_Walk;
			sprJump = spr_SirKibble_Normal_Catch;
			sprFall = spr_SirKibble_Normal_Catch;
			sprSquish = spr_SirKibble_Normal_Idle;
			sprDuck = spr_SirKibble_Normal_Idle;
			sprEnter = spr_SirKibble_Normal_Walk;
			sprClimbUp = spr_Kirby_Normal_ClimbUp;
			sprClimbDown = spr_Kirby_Normal_ClimbDown;
			sprHurt = spr_SirKibble_Normal_Hurt;
			sprDeath = spr_SirKibble_Normal_HurtAir;
			sprCutterChargeReady = spr_SirKibble_Normal_Catch;
			sprCutterChargeEnd = spr_SirKibble_Normal_Catch;
			sprCutterAttack1 = spr_SirKibble_Normal_Attack;
			sprCutterCatch = spr_SirKibble_Normal_Catch;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
		}
		#endregion
	}
}