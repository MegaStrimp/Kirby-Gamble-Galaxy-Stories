///@description Player - Character Setup - Helper - Waddle Dee
///@param {real} playerId Id of the target player

function scr_Player_CharacterSetup_Helper_WaddleDee(argument0)
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
		var skin = choose("normal","normal","normal","normal","normal","normal","egg","egg","egg","gold","bandit","bandit","bandit");
		
		switch (skin)
		{
			#region Normal
			case "normal":
			var pal;
			var i = 0;
			pal[i] = spr_WaddleDee_Normal_Palette_WaddleWaddle;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_BlueberryPie;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_SeenAGhost;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_Hypothermic;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_MidnightForest;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_CelestialGlow;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_InvertedGold;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_CherryBomb;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_Corruption;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_NightVision;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_UpsetStomach;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_FadedWaddle;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_InvisibleSpray;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_Snowball;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_KeyDee;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_BurntToACrisp;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_ImpendingDoom;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_Ultra;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_SherbetSurprise;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_CottonCandy;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_GamerDee;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_Crimson;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_TropicalOcean;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_Mulberry;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_GrandDee;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_SunKissed;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_VitaminDeeMilk;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_SunkenSea;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_GhostlyGhoul;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_Throwback50s;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_Roaring20s;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_ExtremeContrast;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_BubbleGum;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_ParkaDee;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_HalloweenSpirit;
			break;
			#endregion
			
			#region Egg
			case "egg":
			var pal;
			var i = 0;
			pal[i] = spr_WaddleDee_Egg_Palette_EggedOn;
			break;
			#endregion
			
			#region Gold
			case "gold":
			var pal;
			var i = 0;
			pal[i] = spr_WaddleDee_Gold_Palette_HiddenTreasure;
			break;
			#endregion
			
			#region Alien
			case "alien":
			var pal;
			var i = 0;
			pal[i] = spr_WaddleDee_Alien_Palette_Graylien;
			break;
			#endregion
			
			#region Bandit
			case "bandit":
			var pal;
			var i = 0;
			pal[i] = spr_WaddleDee_Alien_Palette_Graylien;
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
		canAttack = false;
		canDuck = true;
		canDuckHighJump = true;
		canSlide = true;
		canClimb = true;
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
			sprIdle = spr_WaddleDee_Normal_Idle;
			sprWalk = spr_WaddleDee_Normal_Walk;
			sprRun = spr_WaddleDee_Normal_Run;
			sprJump = spr_WaddleDee_Normal_Jump;
			sprFall = spr_WaddleDee_Normal_Fall;
			sprSquish = spr_WaddleDee_Normal_Idle;
			sprDuck = spr_WaddleDee_Normal_Duck;
			sprSlide = spr_WaddleDee_Normal_Slide;
			sprSlideEnd = spr_WaddleDee_Normal_Slide;
			sprEnter = spr_WaddleDee_Normal_Walk;
			sprClimbUp = spr_WaddleDee_Normal_ClimbUp;
			sprClimbDown = spr_WaddleDee_Normal_ClimbDown;
			sprHurt = spr_WaddleDee_Normal_Hurt;
			sprDeath = spr_WaddleDee_Normal_Hurt;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
			
			#region Egg
			case "egg":
			sprIdle = spr_WaddleDee_Egg_Idle;
			sprWalk = spr_WaddleDee_Egg_Walk;
			sprRun = spr_WaddleDee_Normal_Run;
			sprJump = spr_WaddleDee_Egg_Jump;
			sprFall = spr_WaddleDee_Egg_Fall;
			sprSquish = spr_WaddleDee_Egg_Idle;
			sprDuck = spr_WaddleDee_Egg_Duck;
			sprSlide = spr_WaddleDee_Normal_Slide;
			sprSlideEnd = spr_WaddleDee_Normal_Slide;
			sprEnter = spr_WaddleDee_Egg_Walk;
			sprClimbUp = spr_WaddleDee_Egg_ClimbUp;
			sprClimbDown = spr_WaddleDee_Egg_ClimbDown;
			sprHurt = spr_WaddleDee_Egg_Hurt;
			sprDeath = spr_WaddleDee_Egg_Hurt;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
			
			#region Gold
			case "gold":
			sprIdle = spr_WaddleDee_Gold_Idle;
			sprWalk = spr_WaddleDee_Gold_Walk;
			sprRun = spr_WaddleDee_Normal_Run;
			sprJump = spr_WaddleDee_Gold_Jump;
			sprFall = spr_WaddleDee_Gold_Fall;
			sprSquish = spr_WaddleDee_Gold_Idle;
			sprDuck = spr_WaddleDee_Gold_Duck;
			sprSlide = spr_WaddleDee_Normal_Slide;
			sprSlideEnd = spr_WaddleDee_Normal_Slide;
			sprEnter = spr_WaddleDee_Gold_Walk;
			sprClimbUp = spr_WaddleDee_Gold_ClimbUp;
			sprClimbDown = spr_WaddleDee_Gold_ClimbDown;
			sprHurt = spr_WaddleDee_Gold_Hurt;
			sprDeath = spr_WaddleDee_Gold_Hurt;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
			
			#region Alien
			case "alien":
			sprIdle = spr_WaddleDee_Alien_Idle;
			sprWalk = spr_WaddleDee_Alien_Walk;
			sprRun = spr_WaddleDee_Normal_Run;
			sprJump = spr_WaddleDee_Alien_Jump;
			sprFall = spr_WaddleDee_Alien_Fall;
			sprSquish = spr_WaddleDee_Alien_Idle;
			sprDuck = spr_WaddleDee_Alien_Duck;
			sprSlide = spr_WaddleDee_Normal_Slide;
			sprSlideEnd = spr_WaddleDee_Normal_Slide;
			sprEnter = spr_WaddleDee_Alien_Walk;
			sprClimbUp = spr_WaddleDee_Alien_ClimbUp;
			sprClimbDown = spr_WaddleDee_Alien_ClimbDown;
			sprHurt = spr_WaddleDee_Alien_Hurt;
			sprDeath = spr_WaddleDee_Alien_Hurt;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
			
			#region Bandit
			case "bandit":
			sprIdle = spr_WaddleDee_Bandit_Idle;
			sprWalk = spr_WaddleDee_Bandit_Walk;
			sprRun = spr_WaddleDee_Bandit_Run;
			sprJump = spr_WaddleDee_Bandit_Jump;
			sprFall = spr_WaddleDee_Bandit_Fall;
			sprSquish = spr_WaddleDee_Bandit_Idle;
			sprDuck = spr_WaddleDee_Bandit_Duck;
			sprSlide = spr_WaddleDee_Bandit_Slide;
			sprSlideEnd = spr_WaddleDee_Bandit_Slide;
			sprEnter = spr_WaddleDee_Bandit_Walk;
			sprClimbUp = spr_WaddleDee_Bandit_ClimbUp;
			sprClimbDown = spr_WaddleDee_Bandit_ClimbDown;
			sprHurt = spr_WaddleDee_Bandit_Hurt;
			sprDeath = spr_WaddleDee_Bandit_Hurt;
			
			maskIndex = spr_16Square_Mask;
			break;
			#endregion
		}
		#endregion
	}
}