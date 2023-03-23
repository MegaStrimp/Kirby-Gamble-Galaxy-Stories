///@description Player - Character Setup - Gooey
///@param {real} playerId Id of the target player

function scr_Player_CharacterSetup_Gooey(argument0)
{
	var playerId = argument0;
	
	with (playerId)
	{
		#region Skins & Spray Paints
		switch (player)
		{
			case 0:
			var skin = global.skinGooeyP1;
			global.sprayPaintP1 = scr_Player_SprayPaint(global.sprayPaintGooeyP1,playerCharacters.gooey,skin);
			break;
			
			case 1:
			var skin = global.skinGooeyP2;
			global.sprayPaintP2 = scr_Player_SprayPaint(global.sprayPaintGooeyP2,playerCharacters.gooey,skin);
			break;
			
			case 2:
			var skin = global.skinGooeyP3;
			global.sprayPaintP3 = scr_Player_SprayPaint(global.sprayPaintGooeyP3,playerCharacters.gooey,skin);
			break;
			
			case 3:
			var skin = global.skinGooeyP4;
			global.sprayPaintP4 = scr_Player_SprayPaint(global.sprayPaintGooeyP4,playerCharacters.gooey,skin);
			break;
		}
		#endregion
		
		#region Physics
		gravNormal = .23;
		gravStone = .7;
		grav = gravNormal;
		gravFloat = .05;
		gravFireDash = .05;
		gravLimitNormal = 5;
		gravLimitFloat = 1.2;
		gravLimitBeamAir = 3;
		gravLimitStone = 7;
		gravLimitFireDash = 1.25;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 6;
		jumpspeedFloat = 1.8;
		jumpspeedWheel = 8;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.7;
		movespeedRun = 2.6;
		movespeedSlide = 5;
		movespeedFloat = 1.9;
		movespeedCarry = 2;
		movespeedBurst = 7;
		movespeed = movespeedNormal;
		ufoFloatSpd = 2;
		accel = .2;
		accelFloat = .1;
		decel = .075;
		decelSlide = .125;
		decelSwordDash = .1;
		decelFloat = .025;
		climbSpeed = 2.5;
		#endregion
		
		#region Attributes
		hasGravity = true;
		hasJumpLimit = true;
		canWalk = true;
		canRun = true;
		canRunTurn = true;
		canJump = true;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAutoJump = false;
		canFallRoll = true;
		canAttack = true;
		canDuck = true;
		canDuckHighJump = false;
		canSlide = true;
		canClimb = true;
		canFloat = true;
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
			#region Sprites
			sprIdle = spr_Gooey_Normal_Idle;
			sprWalk = spr_Gooey_Normal_Walk;
			sprRun = spr_Gooey_Normal_Run;
			sprRunTurn = spr_Gooey_Normal_RunTurn;
			sprJump = spr_Gooey_Normal_Jump;
			sprRoll = spr_Gooey_Normal_Roll;
			sprRollDuckReady = spr_Gooey_Normal_RollDuckReady;
			sprRollDuck = spr_Gooey_Normal_RollDuck;
			sprBackflip = spr_Gooey_Normal_Backflip;
			sprFall = spr_Gooey_Normal_Fall;
			sprSquish = spr_Gooey_Normal_Squish;
			sprDuck = spr_Gooey_Normal_Duck;
			sprSlide = spr_Gooey_Normal_Slide;
			sprSlideEnd = spr_Gooey_Normal_SlideEnd;
			sprFloat = spr_Gooey_Normal_Float;
			sprStoneAttack1Ready = spr_Gooey_Normal_Stone_AttackReady;
			switch (player)
			{
				case 0:
				sprStoneAttack1Common = spr_Gooey_Normal_Stone_Attack_Common1;
				sprStoneAttack1Uncommon = spr_Gooey_Normal_Stone_Attack_Uncommon1;
				sprStoneAttack1Rare = spr_Gooey_Normal_Stone_Attack_Rare1;
				break;
				
				case 1:
				sprStoneAttack1Common = spr_Gooey_Normal_Stone_Attack_Common2;
				sprStoneAttack1Uncommon = spr_Gooey_Normal_Stone_Attack_Uncommon2;
				sprStoneAttack1Rare = spr_Gooey_Normal_Stone_Attack_Rare2;
				break;
				
				case 2:
				sprStoneAttack1Common = spr_Gooey_Normal_Stone_Attack_Common1;
				sprStoneAttack1Uncommon = spr_Gooey_Normal_Stone_Attack_Uncommon1;
				sprStoneAttack1Rare = spr_Gooey_Normal_Stone_Attack_Rare1;
				break;
				
				case 3:
				sprStoneAttack1Common = spr_Gooey_Normal_Stone_Attack_Common1;
				sprStoneAttack1Uncommon = spr_Gooey_Normal_Stone_Attack_Uncommon1;
				sprStoneAttack1Rare = spr_Gooey_Normal_Stone_Attack_Rare1;
				break;
			}
			sprFireAttack2 = spr_Gooey_Normal_Fire_Attack;
			sprFireAttackRelease1 = spr_Gooey_Normal_Fire_AttackRelease1;
			sprFireAttackRelease2 = spr_Gooey_Normal_Fire_AttackRelease2;
			#endregion
			break;
			#endregion
			
			#region Pipis
			case "pipis":
			#region Sprites
			sprIdle = spr_Gooey_Pipis_Idle;
			sprWalk = spr_Gooey_Normal_Walk;
			sprRun = spr_Gooey_Normal_Run;
			sprRunTurn = spr_Gooey_Normal_RunTurn;
			sprJump = spr_Gooey_Pipis_Jump;
			sprRoll = spr_Gooey_Pipis_Roll;
			sprRollDuckReady = spr_Gooey_Pipis_RollDuckReady;
			sprRollDuck = spr_Gooey_Pipis_RollDuck;
			sprBackflip = spr_Gooey_Pipis_Backflip;
			sprFall = spr_Gooey_Pipis_Fall;
			sprSquish = spr_Gooey_Normal_Squish;
			sprDuck = spr_Gooey_Pipis_Duck;
			sprSlide = spr_Gooey_Normal_Slide;
			sprSlideEnd = spr_Gooey_Normal_SlideEnd;
			sprFloat = spr_Gooey_Normal_Float;
			sprStoneAttack1Ready = spr_Gooey_Pipis_Stone_AttackReady;
			switch (player)
			{
				case 0:
				sprStoneAttack1Common = spr_Gooey_Normal_Stone_Attack_Common1;
				sprStoneAttack1Uncommon = spr_Gooey_Normal_Stone_Attack_Uncommon1;
				sprStoneAttack1Rare = spr_Gooey_Normal_Stone_Attack_Rare1;
				break;
				
				case 1:
				sprStoneAttack1Common = spr_Gooey_Normal_Stone_Attack_Common2;
				sprStoneAttack1Uncommon = spr_Gooey_Normal_Stone_Attack_Uncommon2;
				sprStoneAttack1Rare = spr_Gooey_Normal_Stone_Attack_Rare2;
				break;
				
				case 2:
				sprStoneAttack1Common = spr_Gooey_Normal_Stone_Attack_Common1;
				sprStoneAttack1Uncommon = spr_Gooey_Normal_Stone_Attack_Uncommon1;
				sprStoneAttack1Rare = spr_Gooey_Normal_Stone_Attack_Rare1;
				break;
				
				case 3:
				sprStoneAttack1Common = spr_Gooey_Normal_Stone_Attack_Common1;
				sprStoneAttack1Uncommon = spr_Gooey_Normal_Stone_Attack_Uncommon1;
				sprStoneAttack1Rare = spr_Gooey_Normal_Stone_Attack_Rare1;
				break;
			}
			sprFireAttack2 = spr_Gooey_Pipis_Fire_Attack;
			sprFireAttackRelease1 = spr_Gooey_Pipis_Fire_AttackRelease1;
			sprFireAttackRelease2 = spr_Gooey_Pipis_Fire_AttackRelease2;
			#endregion
			break;
			#endregion
		}
		#endregion
	}
}