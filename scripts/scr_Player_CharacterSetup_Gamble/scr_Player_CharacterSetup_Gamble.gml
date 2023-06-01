///@description Player - Character Setup - Gamble
///@param {real} playerId Id of the target player

function scr_Player_CharacterSetup_Gamble(argument0)
{
	var playerId = argument0;
	
	with (playerId)
	{
		#region Skins & Spray Paints
		switch (player)
		{
			case 0:
			var skin = global.skinGambleP1;
			global.sprayPaintP1 = scr_Player_SprayPaint(global.sprayPaintGambleP1,playerCharacters.gamble,skin);
			break;
			
			case 1:
			var skin = global.skinGambleP2;
			global.sprayPaintP2 = scr_Player_SprayPaint(global.sprayPaintGambleP2,playerCharacters.gamble,skin);
			break;
			
			case 2:
			var skin = global.skinGambleP3;
			global.sprayPaintP3 = scr_Player_SprayPaint(global.sprayPaintGambleP3,playerCharacters.gamble,skin);
			break;
			
			case 3:
			var skin = global.skinGambleP4;
			global.sprayPaintP4 = scr_Player_SprayPaint(global.sprayPaintGambleP4,playerCharacters.gamble,skin);
			break;
		}
		#endregion
		
		#region Physics
		gravNormal = .23;
		gravStone = .7;
		grav = gravNormal;
		gravFloat = .075;
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
		climbSpeed = 2;
		#endregion
		
		#region Attributes
		hasGravity = false;
		hasJumpLimit = true;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = false;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAutoJump = false;
		canFallRoll = true;
		canAttack = true;
		canDuck = false;
		canDuckHighJump = false;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = true;
		canGetHurt = true;
		runImageSpeedIncrease = 0;
		hasIdleAnimation = false;
		#endregion
		
		#region Sprites & Masks
		sprIdle = spr_Gamble_Normal_Side_Idle;
		sprWalk = spr_Gamble_Normal_Side_Walk;
		sprRun = spr_Kirby_Normal_Run;
		sprJump = spr_Gamble_Normal_Side_Jump;
		sprRoll = spr_Gamble_Normal_Side_Jump;
		sprFall = spr_Gamble_Normal_Side_Jump;
		sprDuck = spr_Gamble_Normal_Side_LayDown;
		sprEnter = spr_Gamble_Normal_Side_Jump;
		sprClimbUp = spr_Gamble_Normal_Back_Idle;
		sprClimbDown = spr_Gamble_Normal_Back_Idle;
		sprHurt = spr_Gamble_Normal_Side_Walk;
		sprDeath = spr_Gamble_Normal_Side_Death;
		
		maskIndex = spr_16Square_Mask;
		#endregion
	}
}