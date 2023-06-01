///@description Player - Character Setup - Helper - Twizzy
///@param {real} playerId Id of the target player

function scr_Player_CharacterSetup_Helper_Twizzy(argument0)
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
			pal[i] = spr_Twizzy_Normal_Palette_FlyingYolk;
			i += 1;
			pal[i] = spr_Twizzy_Normal_Palette_Blue;
			i += 1;
			pal[i] = spr_Twizzy_Normal_Palette_Dove;
			i += 1;
			pal[i] = spr_Twizzy_Normal_Palette_Green;
			i += 1;
			pal[i] = spr_Twizzy_Normal_Palette_Orange;
			i += 1;
			pal[i] = spr_Twizzy_Normal_Palette_Red;
			i += 1;
			pal[i] = spr_Twizzy_Normal_Palette_Toothpaste;
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
		gravLimitNormal = 2.25;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 3;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.75;
		movespeed = movespeedNormal;
		accel = .1;
		decel = .04;
		climbSpeed = 2;
		#endregion
		
		#region Attributes
		hasGravity = true;
		hasJumpLimit = false;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = true;
		canMultiJump = true;
		multiJumpLimit = 6;
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
			sprIdle = spr_Twizzy_Normal_Idle;
			sprWalk = spr_Twizzy_Normal_Fly;
			sprRun = spr_Twizzy_Normal_Fly;
			sprJump = spr_Twizzy_Normal_Fly;
			sprFall = spr_Twizzy_Normal_Fly;
			sprSquish = spr_Twizzy_Normal_Idle;
			sprDuck = spr_Twizzy_Normal_Idle;
			sprEnter = spr_Twizzy_Normal_Idle;
			sprHurt = spr_Twizzy_Normal_Hurt;
			sprDeath = spr_Twizzy_Normal_Hurt;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
		}
		#endregion
	}
}