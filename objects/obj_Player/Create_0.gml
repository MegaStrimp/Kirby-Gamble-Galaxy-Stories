///@description Initialize Variables

//Randomize

randomize();

/*
for (var i = 0; i < 100; i++)
{
	var par = instance_create_depth(x + (i * 24),-24,depth + 1,obj_Particle);
	par.sprite_index = spr_FallingLeaf_Normal_Idle;
	par.direction = irandom_range(250,290);
	par.image_blend = choose(c_green,c_yellow,c_lime);
	par.image_speed = random_range(.75,1.25);
	par.spdBuiltIn = random_range(1,3);
	par.destroyAfterAnimation = false;
}
instance_create_depth(x,y,-9999,obj_Dialogue);
*/

//Physics

downHeld = 0;
gravNormal = .23;
gravStone = .7;
gravWheel = .5;
grav = gravNormal;
gravFloat = .075;
gravFireDash = .05;
gravLimitNormal = 5;
gravLimitFloat = 0.8;
gravLimitBeamAir = 3;
gravLimitStone = 7;
gravLimitFireDash = 1.25;
gravLimitWheel = 5;
gravLimit = gravLimitNormal;
hsp = 0;
hspCarry = 0;
fireDashHsp = 0;
hspCollision = 0;
hspFinal = 0;
vsp = 0;
vspCarry = 0;
vspCollision = 0;
vspFinal = 0;
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
movespeedJetKick = 7;
movespeedJetBoost = 7;
movespeedJetAirBoostSmall = 7;
movespeedJetAirDashBoostSmall = 7;
movespeedWheel = 6;
movespeed = movespeedNormal;
ufoFloatSpd = 2;
accel = .5;
accelFloat = .1;
accelWheel = .25;
decel = .075;
decelSlide = .125;
decelYoyoDash = .1;
decelWheel = .1;
decelSwordDash = .1;
decelParasolDash = .1;
decelFloat = .025;
climbSpeed = 2.5;
jetCharge = 0;
gravJetDash = 0.25;
gravLimitJetDash = 0.65;

//Sprites

maskIndex = spr_16Square_Mask;
paletteIndex = spr_Kirby_Normal_Palette_FriendlyPink;
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
sprItemCarryHeavyIdle = spr_Kirby_Normal_ItemCarry_Heavy_Idle;
sprItemCarryHeavyIdleSlopeL = spr_Kirby_Normal_ItemCarry_Heavy_Idle_SlopeL;
sprItemCarryHeavyIdleSlopeR = spr_Kirby_Normal_ItemCarry_Heavy_Idle_SlopeR;
sprWalk = spr_Kirby_Normal_Walk;
sprItemCarryLightWalk = spr_Kirby_Normal_ItemCarry_Light_Walk;
sprItemCarryHeavyWalk = spr_Kirby_Normal_ItemCarry_Heavy_Walk;
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
sprStoneAttack1Common = spr_Kirby_Normal_Stone_Attack1_Common1;
sprStoneAttack1Uncommon = spr_Kirby_Normal_Stone_Attack1_Uncommon1;
sprStoneAttack1Rare = spr_Kirby_Normal_Stone_Attack1_Rare1;
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
sprSwordAttack2 = spr_Kirby_Normal_Sword_Attack2;
sprYoyoAttack2Ready = spr_Kirby_Normal_Yoyo_Attack2Ready;
sprYoyoAttack2 = spr_Kirby_Normal_Yoyo_Attack2;
sprYoyoAttack2Release = spr_Kirby_Normal_Yoyo_Attack2Release;
sprSleepReady = spr_Kirby_Normal_SleepReady;
sprSleep = spr_Kirby_Normal_Sleep;
sprSleepEnd = spr_Kirby_Normal_SleepEnd;
sprScanReady = spr_Kirby_Normal_ScanReady;
sprScan = spr_Kirby_Normal_Scan;
sprScanEnd = spr_Kirby_Normal_ScanEnd;
sprHurt = spr_Kirby_Normal_Hurt;
sprDeath = spr_Kirby_Normal_Death;

//Upgrades

cutterMotorCutterUpgrade = false;
cutterPropellerWingUpgrade = false;
beamGoldenFlareUpgrade = false;
mysticBeamVortexInAJarUpgrade = false;
stoneRockCandyUpgrade = false;
stoneComboCobaltUpgrade = false;
bombMultiBombUpgrade = false;
bombEyeBombUpgrade = false;
bombSmartBombUpgrade = false;
bombMagmaBombUpgrade = false;
bombExplosivePowderUpgrade = false;
fireMagicCharcoalUpgrade = false;
iceEmptyConeUpgrade = false;
sparkBrightPluggUpgrade = false;
waterEggSoilUpgrade = false;

//Other Variables

if ((global.hpP1 == 0) or (global.hpP2 == 0))
{
	if (global.pause) global.pause = false;
	global.hpP1 = global.hpMax;
	global.hpP2 = global.hpMax;
}
player = 0;
playerCharacter = 0;
playerAbility = 0;
hatBackgroundImageIndex = 0;
hatBackgroundImageIndexSpd = .25;
hatFrontImageIndex = 0;
hatFrontImageIndexSpd = .25;
state = playerStates.normal;
hasGravity = true;
hasJumpLimit = true;
canWalk = true;
canRun = true;
canRunTurn = true;
canJump = true;
canMultiJump = false;
multiJumpCounter = 0;
multiJumpLimit = -1;
canAutoJump = false;
canAttack = true;
canDuck = true;
canDuckHighJump = false;
canSlide = true;
canClimb = true;
canFloat = true;
canEnter = true;
canUfoFloat = false;
canGetHurt = true;
run = false;
runDoubleTap = 20;
runParticleNum = 0;
runCancelTimer = -1;
runImageSpeedIncrease = 0;
runTurn = false;
walkDuck = false;
walkSquish = false;
fallRoll = false;
fallHop = false;
duck = false;
duckJumpCharge = 0;
duckJumpChargeMax = 45;
duckSlide = false;
scale = 1;
targetScale = 1;
scaleExX = 0;
scaleExY = 0;
scaleExSpd = .1;
dir = 1;
shakeX = 0;
shakeY = 0;
floatSfx = -1;
floating = false;
floatingTimer = -1;
float = false;
floatSpit = false;
airPuffSpd = 7;
attack = false;
attackable = true;
attackNumber = playerAttacks.none;
cutterCharge = 0;
cutterChargeMax = 45;
cutterAirThrown = true;
cutterCatch = false;
comboBuffer = 0;
finalCutterReadInput = false;
finalCutterBuffer = 0;
finalCutterState = 0; // this is used to determine which attack between Cleaving Cutter, Nonstop Cutter, and Final Cutter is used.
beamAttack2FirstHit = false;
beamCharge = 0;
beamChargeMax = 45;
parBeamCycle1 = -1;
canMysticBeamShield = true;
mysticBeamChargeEx = 0;
mysticBeamUpAttackCount = 0;
stoneParticleCount = 0;
stoneReleaseParticleCount = 0;
stoneReady = true;
stoneFallen = false;
stoneAngle = 0;
stoneFistReady = true;
ufoCharge = 0;
ufoChargeMax = 45;
mirrorDashSfx = -1;
mirrorHold = false;
mirrorFirstAttack = true;
mirrorAttackDir = 1;
mirrorShieldHpMax = 3;
mirrorShieldHp = mirrorShieldHpMax;
ninjaHoldCharge = 0;
ninjaHoldChargeMax = 8;
bombDir = 0;
bombDirMax = 60;
bombDownReady = false;
fireBackCharge = 0;
fireBackChargeMax = 60;
fireDashDir = 1;
fireLandWheel = 2;
canFireDashUp = true;
iceReady = true;
iceRelease = false;
icePosition = 0;
iceKick = false;
iceGrab = false;
sparkCooldown = 0;
sparkHoldCharge = 0;
sparkHoldChargeMax = 12;
sparkCharge = 0;
sparkChargeMax = 20;
sparkChargeDecelMin = .003;
sparkChargeDecelMax = .05;
sparkChargeDecel = sparkChargeDecelMin;
sparkMaxCharge = false;
wheelDir = 1;
wheelReady = true;
wheelTurn = false;
wheelCrash = false;
wingFeatherPos = 0;
waterWalkHatAnim = 0;
micFlash = false;
isSleeping = false;
sleepEnd = false;
sleepHatParticle = false;
inhaling = false;
invincible = false;
invincibleFlash = false;
inhaleSoundCont = false;
ateHeavy = false;
ateAbilityStar = -1;
ateCappyShroom = false;
swallow = false;
cAbility = playerAbilities.none;
sucked = 0;
inhaleEnd = false;
spit = false;
swallowAction = 0;
damageType = damageTypes.none;
dmg = 15;
hurt = false;
death = false;
jumpLimit = true;
hspLimit = true;
bubblePos = 0;
blackAlphaBox = false;
chargeSfx = -1;
chargeSfxState = "intro";
imageAngle = 0;
idleAnimation = false;
idleAnimationTimer = 0;
idleAnimationTimerMax = 30;
fallHopCounter = 0;
fallHopCounterMax = 10;
carriedItem = carriedItems.none;
carriedItemIndex = -1;
carriedItemState = carriedItemStates.none;
enterDoor = false;
gooeyScaleDir = 1;
gooeyScaleOffset = 0;
canGrab = true;
didJump = false;
collisionX = obj_Wall;
collisionY = obj_Wall;
inBackground = false;
warpStarIndex = -1;
downHeld = 0;
hasInvinCandy = false;
invinCandyMask = -1;
hasMintLeaf = false;
mixAbilities = -1;

//Inputs

scr_Player_Inputs(player);

//Timers

setupTimer = 0;
characterSetupTimer = 0;
upgradeSetupTimer = 0;
groundFailsafeTimer = 1;
walkSquishTimer = -1;
walkSquishTimerMax = 7;
walkDuckTimer = -1;
walkDuckTimerMax = 7;
hurtTimer = -1;
hurtTimerMax = 15;
invincibleTimer = -1;
invincibleTimerMax = 60;
invincibleFlashTimer = -1;
invincibleFlashTimerMax = 2;
invinCandyParticleTimer = -1;
invinCandyParticleTimerMax = 5;
mintLeafParticleTimer = -1;
mintLeafParticleTimerMax = 15;
mintLeafAttackTimer = -1;
mintLeafAttackTimerMax = 20;
jumpLimitTimer = -1;
jumpLimitTimerMax = 15;
hspLimitTimer = -1;
hspLimitTimerMax = 15;
runParticleTimer = -1;
runParticleTimerMin = 5;
runParticleTimerMax = 55;
mirrorDashParticleTimer = -1;
mirrorDashParticleTimerMax = 8;
runCancelTimer = -1;
runCancelTimerMax = 30;
abilityTrophyTimer = -1;
abilityTrophyTimerMax = 30;
swallowTimer = -1;
swallowActionTimer = -1;
attackTimer = -1;
cutterCatchTimer = -1;
cutterCatchTimerMax = 10;
beamDashAttackTimer = -1;
beamDashAttackTimerMax = 12;
beamAttack2Timer = -1;
beamAttack2TimerMax = 6;
beamGrabTimer = -1;
beamGrabTimerMax = 6;
mysticBeamAttack2Timer = -1;
mysticBeamAttack2TimerMax = 12;
mysticBeamGrabTimer = -1;
mysticBeamGrabTimerMax = 9;
mysticBeamUpAttackTimer = -1;
mysticBeamUpAttackTimerMax = 12;
stoneReadyTimer = -1;
stoneReadyTimerMax = 2;
stoneParticleTimer = -1;
stoneParticleTimerMax = 4;
stoneReleaseParticleTimer = -1;
stoneReleaseParticleTimerMax = 4;
stoneFistReadyTimer = -1;
stoneFistReadyTimerMax = 30;
stoneFistReleaseTimer = -1;
stoneFistReleaseTimerMax = 15;
mirrorNormalAttackTimer = -1;
mirrorNormalAttackTimerMax = 5;
mirrorShieldTimer = -1;
mirrorShieldTimerMax = 450;
fireParticleTimer = -1;
fireParticleTimerMax = 10;
fireNormalAttackTimer = -1;
fireNormalAttackTimerMax = 5;
fireReleaseTimer = -1;
fireReleaseTimerMax = -1;
iceNormalAttackTimer = -1;
iceNormalAttackTimerMax = 5;
iceKickTimer = -1;
iceKickTimerMax = 15;
sparkParticleTimer = -1;
sparkParticleTimerMax = 24;
wheelReadyTimer = -1;
wingDashParticleTimer = -1;
wingDashParticleTimerMax = 2;
sleepParticleTimer = -1;
sleepParticleTimerMax = 80;
sleepEndTimer = -1;
sleepEndTimerMax = 330;
scanTimer = -1;
scanTimerMax = 60;
micFlashTimer = -1;
micFlashTimerMax = 5;
helperTimer = -1;
helperTimerMax = 300;
canGrabTimer = -1;
deathTimer = -1;
deathTimerMax = 60;
deathParticleTimer = -1;
deathParticleTimerMax = 10;
deathRestartTimer = -1;
deathRestartTimerMax = 210;
bubblePosTimerMax = 20;
bubblePosTimer = bubblePosTimerMax;

//Zwat's testing grounds
jetDashAir = 3;
finalCutterEndlag = 12;
downInputBuffer = 15;
downInputBufferTimer = 0;
jetHoverAccel = 0.7;
jetHoverMax = 3.5;
//////////////////

//Create Objects

if (!instance_exists(obj_Pause_Control)) instance_create_depth(x,y,-1000,obj_Pause_Control);
if (!instance_exists(obj_Hud)) instance_create_depth(x,y,-997,obj_Hud);