///@description Player - Character Setup - Helper - Waddle Doo
///@param {real} playerId Id of the target player

function scr_Player_CharacterSetup_Helper_WaddleDoo(argument0)
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
		var skin = choose("normal","normal","normal","bandit");
		
		switch (skin)
		{
			#region Normal
			case "normal":
			var pal;
			var i = 0;
			pal[i] = spr_WaddleDoo_Normal_Palette_WaddleWaddle;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_Uranium;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_IvoryEgg;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_Kirby;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_TrueBlue;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_Lilac;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_AquaDepths;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_Ocean;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_MintyBreeze;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_FilthyRich;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_CowardlyBrother;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_LetsaGo;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_Choco;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_Bloodshot;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_RipeTomato;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_BeamOfLight;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_Aluminum;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_HelperToHero;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_AngelicGold;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_FrozenTundra;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_PinkStar;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_Brick;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_CorruptedTwilight;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_PalePurple;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_DarkFlux;
			break;
			#endregion
			
			#region Bandit
			case "bandit":
			var pal;
			var i = 0;
			pal[i] = spr_WaddleDoo_Bandit_Palette_GreenThief;
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
		movespeedRun = 2.3;
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
		canDuck = true;
		canDuckHighJump = true;
		canSlide = true;
		canClimb = true;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		canGetHurt = true;
		runImageSpeedIncrease = 0;
		hasIdleAnimation = false;
		#endregion
		
		#region Sprites & Masks
		switch (skin)
		{
			#region Normal
			case "normal":
			sprIdle = spr_WaddleDoo_Normal_Idle;
			sprWalk = spr_WaddleDoo_Normal_Walk;
			sprRun = spr_WaddleDoo_Normal_Walk;
			sprRunTurn = spr_WaddleDoo_Normal_RunTurn;
			sprJump = spr_WaddleDoo_Normal_Jump;
			sprFall = spr_WaddleDoo_Normal_Fall;
			sprSquish = spr_WaddleDoo_Normal_Idle;
			sprDuck = spr_WaddleDoo_Normal_Duck;
			sprSlide = spr_WaddleDoo_Normal_Slide;
			sprSlideEnd = spr_WaddleDoo_Normal_Slide;
			sprEnter = spr_WaddleDoo_Normal_Walk;
			sprClimbUp = spr_WaddleDoo_Normal_ClimbUp;
			sprClimbDown = spr_WaddleDoo_Normal_ClimbDown;
			sprHurt = spr_WaddleDoo_Normal_Hurt;
			sprDeath = spr_WaddleDoo_Normal_Death;
			sprBeamAttack1 = spr_WaddleDoo_Normal_Attack;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
			
			#region Bandit
			case "bandit":
			sprIdle = spr_WaddleDoo_Bandit_Idle;
			sprWalk = spr_WaddleDoo_Bandit_Walk;
			sprRun = spr_WaddleDoo_Bandit_Walk;
			sprRunTurn = spr_WaddleDoo_Bandit_RunTurn;
			sprJump = spr_WaddleDoo_Bandit_Jump;
			sprFall = spr_WaddleDoo_Bandit_Fall;
			sprSquish = spr_WaddleDoo_Bandit_Idle;
			sprDuck = spr_WaddleDoo_Bandit_Duck;
			sprSlide = spr_WaddleDoo_Bandit_Slide;
			sprSlideEnd = spr_WaddleDoo_Bandit_Slide;
			sprEnter = spr_WaddleDoo_Bandit_Walk;
			sprClimbUp = spr_WaddleDoo_Bandit_ClimbUp;
			sprClimbDown = spr_WaddleDoo_Bandit_ClimbDown;
			sprHurt = spr_WaddleDoo_Bandit_Hurt;
			sprDeath = spr_WaddleDoo_Bandit_Death;
			sprBeamAttack1 = spr_WaddleDoo_Bandit_Attack;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
		}
		#endregion
	}
}