///@description Player - Character Setup - Kirby
///@param {real} playerId Id of the target player

function scr_Player_CharacterSetup_Kirby(argument0)
{
	var playerId = argument0;
	
	with (playerId)
	{
		#region Skins & Spray Paints
		switch (player)
		{
			case 0:
			var skin = global.skinKirbyP1;
			global.sprayPaintP1 = scr_Player_SprayPaint(global.sprayPaintKirbyP1,playerCharacters.kirby,skin);
			break;
			
			case 1:
			var skin = global.skinKirbyP2;
			global.sprayPaintP2 = scr_Player_SprayPaint(global.sprayPaintKirbyP2,playerCharacters.kirby,skin);
			break;
			
			case 2:
			var skin = global.skinKirbyP3;
			global.sprayPaintP3 = scr_Player_SprayPaint(global.sprayPaintKirbyP3,playerCharacters.kirby,skin);
			break;
			
			case 3:
			var skin = global.skinKirbyP4;
			global.sprayPaintP4 = scr_Player_SprayPaint(global.sprayPaintKirbyP4,playerCharacters.kirby,skin);
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
		jumpspeedFloat = 2;
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
		accel = .3;
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
		sprIdle = spr_Kirby_Normal_Idle;
		sprIdleBlink = spr_Kirby_Normal_IdleBlink;
		sprIdleNormalSlopeL = spr_Kirby_Normal_Idle_NormalSlopeL;
		sprIdleNormalSlopeLBlink = spr_Kirby_Normal_Idle_NormalSlopeLBlink;
		sprIdleNormalSlopeR = spr_Kirby_Normal_Idle_NormalSlopeR;
		sprIdleNormalSlopeRBlink = spr_Kirby_Normal_Idle_NormalSlopeRBlink;
		sprIdleSteepSlopeL = spr_Kirby_Normal_Idle_SteepSlopeL;
		sprIdleSteepSlopeLBlink = spr_Kirby_Normal_Idle_SteepSlopeLBlink;
		sprIdleSteepSlopeR = spr_Kirby_Normal_Idle_SteepSlopeR;
		sprIdleSteepSlopeRBlink = spr_Kirby_Normal_Idle_SteepSlopeRBlink;
		sprItemCarryLightIdle = spr_Kirby_Normal_ItemCarry_Light_Idle;
		sprItemCarryLightIdleBlink = spr_Kirby_Normal_ItemCarry_Light_IdleBlink;
		sprItemCarryLightIdleNormalSlopeL = spr_Kirby_Normal_ItemCarry_Light_Idle_NormalSlopeL;
		sprItemCarryLightIdleNormalSlopeLBlink = spr_Kirby_Normal_ItemCarry_Light_Idle_NormalSlopeLBlink;
		sprItemCarryLightIdleNormalSlopeR = spr_Kirby_Normal_ItemCarry_Light_Idle_NormalSlopeR;
		sprItemCarryLightIdleNormalSlopeRBlink = spr_Kirby_Normal_ItemCarry_Light_Idle_NormalSlopeRBlink;
		sprItemCarryLightIdleSteepSlopeL = spr_Kirby_Normal_ItemCarry_Light_Idle_SteepSlopeL;
		sprItemCarryLightIdleSteepSlopeLBlink = spr_Kirby_Normal_ItemCarry_Light_Idle_SteepSlopeLBlink;
		sprItemCarryLightIdleSteepSlopeR = spr_Kirby_Normal_ItemCarry_Light_Idle_SteepSlopeR;
		sprItemCarryLightIdleSteepSlopeRBlink = spr_Kirby_Normal_ItemCarry_Light_Idle_SteepSlopeRBlink;
		sprWalk = spr_Kirby_Normal_Walk;
		sprItemCarryLightWalk = spr_Kirby_Normal_ItemCarry_Light_Walk;
		sprRun = spr_Kirby_Normal_Run;
		sprRunTurn = spr_Kirby_Normal_RunTurn;
		sprJump = spr_Kirby_Normal_Jump;
		sprRoll = spr_Kirby_Normal_Roll;
		sprRollDuckReady = spr_Kirby_Normal_RollDuckReady;
		sprRollDuck = spr_Kirby_Normal_RollDuck;
		sprBackflip = spr_Kirby_Normal_Backflip;
		sprFall = spr_Kirby_Normal_Fall;
		sprSquish = spr_Kirby_Normal_Squish;
		sprDuck = spr_Kirby_Normal_Duck;
		sprDuckBlink = spr_Kirby_Normal_DuckBlink;
		sprDuckNormalSlopeL = spr_Kirby_Normal_Duck_NormalSlopeL;
		sprDuckNormalSlopeLBlink = spr_Kirby_Normal_Duck_NormalSlopeLBlink;
		sprDuckNormalSlopeR = spr_Kirby_Normal_Duck_NormalSlopeR;
		sprDuckNormalSlopeRBlink = spr_Kirby_Normal_Duck_NormalSlopeRBlink;
		sprDuckSteepSlopeL = spr_Kirby_Normal_Duck_SteepSlopeL;
		sprDuckSteepSlopeLBlink = spr_Kirby_Normal_Duck_SteepSlopeLBlink;
		sprDuckSteepSlopeR = spr_Kirby_Normal_Duck_SteepSlopeR;
		sprDuckSteepSlopeRBlink = spr_Kirby_Normal_Duck_SteepSlopeRBlink;
		sprItemCarryLightDuck = spr_Kirby_Normal_Duck;
		sprItemCarryLightDuckBlink = spr_Kirby_Normal_ItemCarry_Light_DuckBlink;
		sprItemCarryLightDuckNormalSlopeL = spr_Kirby_Normal_ItemCarry_Light_Duck_NormalSlopeL;
		sprItemCarryLightDuckNormalSlopeLBlink = spr_Kirby_Normal_ItemCarry_Light_Duck_NormalSlopeLBlink;
		sprItemCarryLightDuckNormalSlopeR = spr_Kirby_Normal_ItemCarry_Light_Duck_NormalSlopeR;
		sprItemCarryLightDuckNormalSlopeRBlink = spr_Kirby_Normal_ItemCarry_Light_Duck_NormalSlopeRBlink;
		sprItemCarryLightDuckSteepSlopeL = spr_Kirby_Normal_ItemCarry_Light_Duck_SteepSlopeL;
		sprItemCarryLightDuckSteepSlopeLBlink = spr_Kirby_Normal_ItemCarry_Light_Duck_SteepSlopeLBlink;
		sprItemCarryLightDuckSteepSlopeR = spr_Kirby_Normal_ItemCarry_Light_Duck_SteepSlopeR;
		sprItemCarryLightDuckSteepSlopeRBlink = spr_Kirby_Normal_ItemCarry_Light_Duck_SteepSlopeRBlink;
		sprItemCarryHeavyDuck = spr_Kirby_Normal_ItemCarry_Heavy_Duck;
		sprSlide = spr_Kirby_Normal_Slide;
		sprSlideEnd = spr_Kirby_Normal_SlideEnd;
		sprFloatReady = spr_Kirby_Normal_FloatReady;
		sprItemCarryLightFloatReady = spr_Kirby_Normal_ItemCarry_Light_FloatReady;
		sprFloat = spr_Kirby_Normal_Float;
		sprItemCarryLightFloat = spr_Kirby_Normal_ItemCarry_Light_Float;
		sprFlap = spr_Kirby_Normal_Flap;
		sprItemCarryLightFlap = spr_Kirby_Normal_ItemCarry_Light_Flap;
		sprFloatSpit = spr_Kirby_Normal_FloatSpit;
		sprItemCarryLightFloatSpit = spr_Kirby_Normal_ItemCarry_Light_FloatSpit;
		sprFloatHurt = spr_Kirby_Normal_FloatHurt;
		sprEnter = spr_Kirby_Normal_Enter;
		sprClimbUp = spr_Kirby_Normal_ClimbUp;
		sprClimbDown = spr_Kirby_Normal_ClimbDown;
		sprInhaleReady = spr_Kirby_Normal_InhaleReady;
		sprInhale = spr_Kirby_Normal_Inhale;
		sprInhaleEnd = spr_Kirby_Normal_InhaleEnd;
		sprCarryIdle = spr_Kirby_Normal_CarryIdle;
		sprCarryIdleBlink = spr_Kirby_Normal_CarryIdleBlink;
		sprCarryIdleNormalSlopeL = spr_Kirby_Normal_CarryIdle_NormalSlopeL;
		sprCarryIdleNormalSlopeLBlink = spr_Kirby_Normal_CarryIdle_NormalSlopeLBlink;
		sprCarryIdleNormalSlopeR = spr_Kirby_Normal_CarryIdle_NormalSlopeR;
		sprCarryIdleNormalSlopeRBlink = spr_Kirby_Normal_CarryIdle_NormalSlopeRBlink;
		sprCarryIdleSteepSlopeL = spr_Kirby_Normal_CarryIdle_SteepSlopeL;
		sprCarryIdleSteepSlopeLBlink = spr_Kirby_Normal_CarryIdle_SteepSlopeLBlink;
		sprCarryIdleSteepSlopeR = spr_Kirby_Normal_CarryIdle_SteepSlopeR;
		sprCarryIdleSteepSlopeRBlink = spr_Kirby_Normal_CarryIdle_SteepSlopeRBlink;
		sprCarryWalk = spr_Kirby_Normal_CarryWalk;
		sprCarryJump = spr_Kirby_Normal_CarryJump;
		sprCarryFall = spr_Kirby_Normal_CarryFall;
		sprCarryDuck = spr_Kirby_Normal_CarryDuck;
		sprSpit = spr_Kirby_Normal_Spit;
		sprSwallow = spr_Kirby_Normal_Swallow;
		sprHardSwallow = spr_Kirby_Normal_HardSwallow;
		sprAbilityChange = spr_Kirby_Normal_AbilityChange;
		sprWarpStar1 = spr_Kirby_Normal_WarpStar1;
		sprWarpStar2 = spr_Kirby_Normal_WarpStar2;
		sprGuard = spr_Kirby_Normal_Guard;
		sprGuardSlope = spr_Kirby_Normal_Guard_Slope;
		sprItemCarryThrow = spr_Kirby_Normal_ItemCarry_Throw;
		sprCutterCharge = spr_Kirby_Normal_Cutter_Charge;
		sprCutterAttack1 = spr_Kirby_Normal_Cutter_Attack1;
		sprCutterAttack2 = spr_Kirby_Normal_Cutter_Attack2;
		sprCutterAttack3 = spr_Kirby_Normal_Cutter_Attack3;
		sprCutterAttack4 = spr_Kirby_Normal_Cutter_Attack4;
		sprCutterAttack5 = spr_Kirby_Normal_Cutter_Attack5;
		sprCutterAttack6 = spr_Kirby_Normal_Cutter_Attack6;
		sprCutterCatch = spr_Kirby_Normal_Cutter_Catch;
		sprBeamCharge = spr_Kirby_Normal_Beam_Charge;
		sprBeamAttack1 = spr_Kirby_Normal_Beam_Attack1;
		sprBeamAttack2 = spr_Kirby_Normal_Beam_Attack2;
		sprBeamAttack3 = spr_Kirby_Normal_Beam_Attack3;
		sprBeamAttack4 = spr_Kirby_Normal_Beam_Attack4;
		sprBeamAttack5 = spr_Kirby_Normal_Beam_Attack5;
		sprBeamAttack6 = spr_Kirby_Normal_Beam_Attack6;
		sprMysticBeamAttack1 = spr_Kirby_Normal_MysticBeam_Attack1;
		sprMysticBeamAttack2 = spr_Kirby_Normal_MysticBeam_Attack2;
		sprStoneAttack1Ready = spr_Kirby_Normal_Stone_Attack1Ready;
		switch (player)
		{
			case 0:
			sprStoneAttack1Common = spr_Kirby_Normal_Stone_Attack1_Common1;
			sprStoneAttack1Uncommon = spr_Kirby_Normal_Stone_Attack1_Uncommon1;
			sprStoneAttack1Rare = spr_Kirby_Normal_Stone_Attack1_Rare1;
			break;
			
			case 1:
			sprStoneAttack1Common = spr_Kirby_Normal_Stone_Attack1_Common1;
			sprStoneAttack1Uncommon = spr_Kirby_Normal_Stone_Attack1_Uncommon1;
			sprStoneAttack1Rare = spr_Kirby_Normal_Stone_Attack1_Rare1;
			break;
			
			case 2:
			sprStoneAttack1Common = spr_Kirby_Normal_Stone_Attack1_Common2;
			sprStoneAttack1Uncommon = spr_Kirby_Normal_Stone_Attack1_Uncommon2;
			sprStoneAttack1Rare = spr_Kirby_Normal_Stone_Attack1_Rare2;
			break;
			
			case 3:
			sprStoneAttack1Common = spr_Kirby_Normal_Stone_Attack1_Common1;
			sprStoneAttack1Uncommon = spr_Kirby_Normal_Stone_Attack1_Uncommon1;
			sprStoneAttack1Rare = spr_Kirby_Normal_Stone_Attack1_Rare1;
			break;
		}
		sprStoneAttack2Ready = spr_Kirby_Normal_Stone_Attack2Ready;
		sprStoneAttack2 = spr_Kirby_Normal_Stone_Attack2;
		sprStoneAttack2Release = spr_Kirby_Normal_Stone_Attack2Release;
		sprUfoIdle = spr_Kirby_Normal_Ufo_Idle;
		sprUfoUp = spr_Kirby_Normal_Ufo_Up;
		sprUfoDown = spr_Kirby_Normal_Ufo_Down;
		sprUfoEnter = spr_Kirby_Normal_Ufo_Enter;
		sprUfoCharge = spr_Kirby_Normal_Ufo_Charge;
		sprUfoAttack1 = spr_Kirby_Normal_Ufo_Attack1;
		sprUfoAttack2 = spr_Kirby_Normal_Ufo_Attack2;
		sprMirrorDash = spr_Kirby_Normal_Mirror_Dash;
		sprMirrorAttack1 = spr_Kirby_Normal_Mirror_Attack1;
		sprMirrorAttack2 = spr_Kirby_Normal_Mirror_Attack2;
		sprMirrorAttack2Release = spr_Kirby_Normal_Mirror_Attack2Release;
		sprMirrorAttack3 = spr_Kirby_Normal_Mirror_Attack3;
		sprMirrorAttack4 = spr_Kirby_Normal_Mirror_Attack4;
		sprMirrorAttack5 = spr_Kirby_Normal_Mirror_Attack5;
		sprNinjaCharge = spr_Kirby_Normal_Ninja_Charge;
		sprNinjaAttack1 = spr_Kirby_Normal_Ninja_Attack1;
		sprNinjaAttack2 = spr_Kirby_Normal_Ninja_Attack2;
		sprBombReady = spr_Kirby_Normal_Bomb_Ready;
		sprBombAttack1 = spr_Kirby_Normal_Bomb_Attack1;
		sprBombAttack2 = spr_Kirby_Normal_Bomb_Attack2;
		sprBombAttack3Ready = spr_Kirby_Normal_Bomb_Attack3Ready;
		sprBombAttack3Release = spr_Kirby_Normal_Bomb_Attack3Release;
		sprBombAttack4 = spr_Kirby_Normal_Bomb_Attack4;
		sprFireAttack1 = spr_Kirby_Normal_Fire_Attack1;
		sprFireAttack2 = spr_Kirby_Normal_Fire_Attack2;
		sprFireAttack3 = spr_Kirby_Normal_Fire_Attack3;
		sprFireAttack4 = spr_Kirby_Normal_Fire_Attack4;
		sprFireAttackRelease1 = spr_Kirby_Normal_Fire_AttackRelease1;
		sprFireAttackRelease2 = spr_Kirby_Normal_Fire_AttackRelease2;
		sprIceAttack1Ready = spr_Kirby_Normal_Ice_Attack1Ready;
		sprIceAttack1 = spr_Kirby_Normal_Ice_Attack1;
		sprIceAttack1Release = spr_Kirby_Normal_Ice_Attack1Release;
		sprIceKick = spr_Kirby_Normal_Ice_Kick;
		sprIceGrabReady = spr_Kirby_Normal_Ice_GrabReady;
		sprIceGrab = spr_Kirby_Normal_Ice_Grab;
		sprIceGrabRelease = spr_Kirby_Normal_Ice_GrabRelease;
		sprSparkMaxCharge = spr_Kirby_Normal_Spark_MaxCharge;
		sprSparkMaxChargeNormalSlopeL = spr_Kirby_Normal_Spark_MaxCharge_NormalSlopeL;
		sprSparkMaxChargeNormalSlopeR = spr_Kirby_Normal_Spark_MaxCharge_NormalSlopeR;
		sprSparkMaxChargeSteepSlopeL = spr_Kirby_Normal_Spark_MaxCharge_SteepSlopeL;
		sprSparkMaxChargeSteepSlopeR = spr_Kirby_Normal_Spark_MaxCharge_SteepSlopeR;
		sprSparkAttack1Ready = spr_Kirby_Normal_Spark_Attack1Ready;
		sprSparkAttack1 = spr_Kirby_Normal_Spark_Attack1;
		sprSparkAttack2Ready = spr_Kirby_Normal_Spark_Attack2Ready;
		sprSparkAttack2 = spr_Kirby_Normal_Spark_Attack2;
		sprSparkAttack3 = spr_Kirby_Normal_Spark_Attack3;
		sprSparkAttack4 = spr_Kirby_Normal_Spark_Attack4;
		sprYoyoAttack2Ready = spr_Kirby_Normal_Yoyo_Attack2Ready;
		sprYoyoAttack2 = spr_Kirby_Normal_Yoyo_Attack2;
		sprYoyoAttack2Release = spr_Kirby_Normal_Yoyo_Attack2Release;
		sprWingAttack1 = spr_Kirby_Normal_Wing_Attack1;
		sprWingAttack2Ready = spr_Kirby_Normal_Wing_Attack2Ready;
		sprWingAttack2 = spr_Kirby_Normal_Wing_Attack2;
		sprSwordAttack1 = spr_Kirby_Normal_Sword_Attack1;
		sprSwordAttackDash = spr_Kirby_Normal_Sword_Dash;
		sprSwordAttackAir = spr_Kirby_Normal_Sword_AttackAir;
		sprSwordAttackAirDash = spr_Kirby_Normal_Sword_Spin;
		sprSwordAttackCombo = spr_Kirby_Normal_Sword_Combo;
		sprSwordAttackBarrageAir = spr_Kirby_Normal_Sword_BarrageAir;
		sprSwordAttackBarrage = spr_Kirby_Normal_Sword_Barrage;
		sprSwordAttack1 = spr_Kirby_Normal_Sword_Attack1;
		sprSwordAttack2 = spr_Kirby_Normal_Sword_Dash;
		sprParasolAttack2Ready = spr_Kirby_Normal_Parasol_Attack2Ready;
		sprParasolAttack2 = spr_Kirby_Normal_Parasol_Attack2;
		sprParasolAttack2Release = spr_Kirby_Normal_Parasol_Attack2Release;
		sprSleepReady = spr_Kirby_Normal_SleepReady;
		sprSleep = spr_Kirby_Normal_Sleep;
		sprSleepEnd = spr_Kirby_Normal_SleepEnd;
		sprScanReady = spr_Kirby_Normal_ScanReady;
		sprScan = spr_Kirby_Normal_Scan;
		sprScanEnd = spr_Kirby_Normal_ScanEnd;
		sprMicAttack1Ready = spr_Kirby_Normal_Mic_Attack1Ready;
		sprMicAttack1 = spr_Kirby_Normal_Mic_Attack1;
		sprMicAttack1End = spr_Kirby_Normal_Mic_Attack1End;
		sprMicAttack2Ready = spr_Kirby_Normal_Mic_Attack2Ready;
		sprMicAttack2 = spr_Kirby_Normal_Mic_Attack2;
		sprMicAttack2End = spr_Kirby_Normal_Mic_Attack2End;
		sprMicAttack3Ready = spr_Kirby_Normal_Mic_Attack3Ready;
		sprMicAttack3 = spr_Kirby_Normal_Mic_Attack3;
		sprMicAttack3End = spr_Kirby_Normal_Mic_Attack3End;
		sprHurt = spr_Kirby_Normal_Hurt;
		sprDeath = spr_Kirby_Normal_Death;
		
		maskIndex = spr_16Square_Mask;
		#endregion
	}
}