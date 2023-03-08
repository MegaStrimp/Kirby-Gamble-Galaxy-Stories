///@description Main

#region Pointers
switch (player)
{
	case 0:
	var playerAbility = global.abilityP1;
	var playerCharacter = global.characterP1;
	var playerIsHelper = global.isHelperP1;
	var playerFamiliar = global.familiarP1;
	var micCount = global.micCountP1;
	break;
	
	case 1:
	var playerAbility = global.abilityP2;
	var playerCharacter = global.characterP2;
	var playerIsHelper = global.isHelperP2;
	var playerFamiliar = global.familiarP2;
	var micCount = global.micCountP2;
	break;
	
	case 2:
	var playerAbility = global.abilityP3;
	var playerCharacter = global.characterP3;
	var playerIsHelper = global.isHelperP3;
	var playerFamiliar = global.familiarP3;
	var micCount = global.micCountP3;
	break;
	
	case 3:
	var playerAbility = global.abilityP4;
	var playerCharacter = global.characterP4;
	var playerIsHelper = global.isHelperP4;
	var playerFamiliar = global.familiarP4;
	var micCount = global.micCountP4;
	break;
}
#endregion

#region Variables
var canFlash = false;
if ((invincible) or (attackNumber == playerAttacks.slideJump))
{
	invincibleFlashTimerMax = 2;
	canFlash = true;
}
if (
((cAbility != playerAbilities.none) and (state = playerStates.carry) and (!spit))
or (playerAbility == playerAbilities.sleep)
or ((playerAbility == playerAbilities.crash) and (!attack))
or ((playerAbility == playerAbilities.mic) and (!attack))
)
{
	invincibleFlashTimerMax = 4;
	canFlash = true;
}
#endregion

#region Clamp To View
var clampToView = false;

if ((instance_exists(obj_Camera)) and (obj_Camera.targetClampToView)) clampToView = true;

if ((clampToView) and (!death))
{
	x = clamp(x,camera_get_view_x(gameView),camera_get_view_x(gameView) + camera_get_view_width(gameView));
	y = clamp(y,camera_get_view_y(gameView),camera_get_view_y(gameView) + camera_get_view_height(gameView));
}
#endregion

#region Death
var goldenTomatoAmountPointer = global.goldenTomatoAmountP1;
switch (player)
{
	case 1:
	goldenTomatoAmountPointer = global.goldenTomatoAmountP2;
	break;
	
	case 2:
	goldenTomatoAmountPointer = global.goldenTomatoAmountP3;
	break;
	
	case 3:
	goldenTomatoAmountPointer = global.goldenTomatoAmountP4;
	break;
}

if ((((player == 0) and (global.healthP1 == 0))
or ((player == 1) and (global.healthP2 == 0))
or ((player == 2) and (global.healthP3 == 0))
or ((player == 3) and (global.healthP4 == 0)))
and (!death))
{
	if ((goldenTomatoAmountPointer > 0) and (!tomatolessDeath))
	{
		if (audio_is_playing(snd_Charge_Ready)) audio_stop_sound(snd_Charge_Ready);
		audio_play_sound(snd_Charge_Ready,0,false);
		
		if (instance_exists(obj_Hud))
		{
			var particle = instance_create_depth(x,y,depth - 1,obj_Particle);
			particle.sprite_index = spr_Particle_Flash1;
			particle.destroyAfterAnimation = true;
		}
		
		switch (player)
		{
			case 0:
			global.healthP1 = global.healthP1Max;
			global.goldenTomatoAmountP1 -= 1;
			break;
			
			case 1:
			global.healthP2 = global.healthP2Max;
			global.goldenTomatoAmountP2 -= 1;
			break;
			
			case 2:
			global.healthP3 = global.healthP3Max;
			global.goldenTomatoAmountP3 -= 1;
			break;
			
			case 3:
			global.healthP4 = global.healthP4Max;
			global.goldenTomatoAmountP4 -= 1;
			break;
		}
	}
	else
	{
		audio_stop_all();
		audio_play_sound(snd_Hurt,0,false);
		global.healthbarMarkedEnemy = -1;
		death = true;
		blackAlphaBox = true;
		global.pause = true;
		if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
		sprite_index = sprHurt;
		visible = true;
	    ability = playerAbilities.none;
		hsp = 0;
		vsp = 0;
		deathTimer = deathTimerMax;
	}
}
#endregion

if (!global.pause)
{
	#region Down Held
    if ((keyDownHold) and (downHeld < 1000)) downHeld += 1;
    if (keyDownReleased || attack || /*state == 5 || */hsp != 0) downHeld = 0;
	if (playerAbility == playerAbilities.ufo) downHeld = 10;
	#endregion
	
	#region Character Based Variables & Functions
	if ((playerCharacter != playerCharacters.gordo) and (playerCharacter != playerCharacters.bloodGordo)) imageAngle = 0;
	#endregion
	
	#region Ability Based Variables & Functions
	switch (playerAbility)
	{
		case playerAbilities.bomb:
		#region Bomb Down Attack Variable
		if (state != playerStates.slide) bombDownReady = false;
		#endregion
		break;
		
		case playerAbilities.fire:
		#region Fire Particles
		var maxTimer = fireParticleTimerMax;
		if ((attackNumber == playerAttacks.fireAerial) or (attackNumber == playerAttacks.fireWheel) or (attackNumber == playerAttacks.fireBack))
		{
			maxTimer = floor(fireParticleTimerMax / 2);
		}
		if (fireParticleTimer == -1) fireParticleTimer = maxTimer;
		#endregion
		break;
		
		case playerAbilities.spark:
		#region Spark Particles
		var maxTimer = sparkParticleTimerMax - floor(sparkCharge);
		if (sparkParticleTimer == -1) sparkParticleTimer = maxTimer;
		
		if (sparkCharge > 0) sparkCharge -= sparkChargeDecel;
		if (sparkCharge < 0) sparkCharge = 0;
		if (sparkCharge == 0) sparkMaxCharge = false;
		if (sparkChargeDecel < sparkChargeDecelMax)
		{
			sparkChargeDecel += (sparkChargeDecel / 2);
		}
		else
		{
			sparkChargeDecel = sparkChargeDecelMax;
		}
		#endregion
		
		#region Spark Charge
		if ((keyLeftPressed) or (keyRightPressed))
		{
			if (audio_is_playing(snd_SparkCharge)) audio_stop_sound(snd_SparkCharge);
			audio_play_sound(snd_SparkCharge,0,false);
			sparkChargeDecel = sparkChargeDecelMin;
			sparkCharge += 1;
		}
		
		if (sparkCharge >= sparkChargeMax)
		{
			sparkCharge = sparkChargeMax;
			if (!sparkMaxCharge)
			{
				var aura = instance_create_depth(x,y - 4,depth - 1,obj_Projectile_SparkAura);
				aura.owner = id;
				aura.abilityType = playerAbilities.spark;
				aura.sprite_index = spr_Particle_SparkAura;
				aura.dmg = kirby_SparkAura_Damage;
				scr_Attack_SetKnockback(aura,kirby_SparkAura_Strength,kirby_SparkAura_HitStopAffectSource,kirby_SparkAura_HitStopAffectPlayer,kirby_SparkAura_HitStopAffectTarget,kirby_SparkAura_HitStopLength,kirby_SparkAura_HitStopShakeStrength);
			}
			sparkMaxCharge = true;
		}
		#endregion
		break;
		
		case playerAbilities.sword:
		#region Set Carried Item
		if (carriedItem == carriedItems.none) carriedItemState = carriedItemStates.light;
		#endregion
		break;
		
		case playerAbilities.parasol:
		#region Set Carried Item
		if (carriedItem == carriedItems.none) carriedItemState = carriedItemStates.light;
		#endregion
		break;
		
		case playerAbilities.hammer:
		#region Set Carried Item
		if (carriedItem == carriedItems.none) carriedItemState = carriedItemStates.light;
		#endregion
		break;
		
		case playerAbilities.water:
		#region Water Hat Walk Animation Variable
		if (sprite_index != sprWalk) waterWalkHatAnim = 0;
		#endregion
		break;
	}
	#endregion
	
	#region State Based Variables & Functions
	if (state != playerStates.normal)
	{
		fallHop = false;
		fallHopCounter = 0;
		iceKick = false;
	}
	#endregion
	
	#region Bumpers
	if (place_meeting(x,y,obj_Bumper))
	{
		#region Variables
		var collidedBumper = instance_place(x,y,obj_Bumper);
		collidedBumper.hit = true;
		collidedBumper.hitTimer = collidedBumper.hitTimerMax;
		jumpLimit = false;
		jumpLimitTimer = jumpLimitTimerMax + (collidedBumper.force - 6);
		#endregion
		
		#region Play Sound
		if (audio_is_playing(snd_Bumper)) audio_stop_sound(snd_Bumper);
		audio_play_sound(snd_Bumper,0,false);
		#endregion
		
		#region Change State To Normal
		if ((state == playerStates.inhale) or (state == playerStates.climb) or (state == playerStates.slide))
		{
			inhaleSoundCont = false;
			if (audio_is_playing(snd_Inhale_Intro)) audio_stop_sound(snd_Inhale_Intro);
			if (audio_is_playing(snd_Inhale_Loop)) audio_stop_sound(snd_Inhale_Loop);
			state = playerStates.normal;
		}
		#endregion
		
		#region Vertical Knockback
		if (y > ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2 )) + 4))
		{
			vsp = collidedBumper.force;
		}
		if (y < ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2 )) - 4))
		{
			vsp = -collidedBumper.force;
			grounded = false;
		}
		if ((y < ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2 )) + 4)) and (y > ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2 )) - 4)))
		{
			vsp = collidedBumper.force / 2;
		}
		#endregion
		
		#region Horizontal Knockback
		if (x > ((collidedBumper.x + (sprite_get_width(collidedBumper.sprite_index) / 2 )) + 4))
		{
			hsp = collidedBumper.force;
		}
		if (x < ((collidedBumper.x + (sprite_get_width(collidedBumper.sprite_index) / 2 )) - 4))
		{
			hsp = -collidedBumper.force;
		}
		#endregion
	}
	#endregion
	
	//Springs
	
	if (place_meeting(x,y + 1,obj_Spring))
	{
		if (sign(vsp) != -1)
		{
			//Variables
			
			var collidedSpring = instance_place(x,y + 1,obj_Spring);
			if (instance_exists(collidedSpring))
			{
				collidedSpring.hit = true;
				collidedSpring.hitTimer = collidedSpring.hitTimerMax;
				var finalForce = collidedSpring.force;
				var drawOffsetForce = 8;
			
				//Cancel Attack
			
				scr_Player_CancelAttack(id);
			
				//Jump
			
				if ((keyJumpHold) or (keyUpHold))
				{
					finalForce *= 1.25;
					drawOffsetForce = 16;
					if (audio_is_playing(snd_Cloud_Superjump)) audio_stop_sound(snd_Cloud_Superjump);
					audio_play_sound(snd_Cloud_Superjump,0,false);
				}
				else
				{
					if (collidedSpring.object_index == obj_BouncyCloudHigh)
					{
						if (audio_is_playing(snd_Cloud_Superjump)) audio_stop_sound(snd_Cloud_Superjump);
						audio_play_sound(snd_Cloud_Superjump,0,false);
					}
					else if (collidedSpring.object_index == obj_BouncyCloud)
					{
						if (audio_is_playing(snd_Cloud_Bounce)) audio_stop_sound(snd_Cloud_Bounce);
						audio_play_sound(snd_Cloud_Bounce,0,false);
					}
				}
			
				if ((collidedSpring.object_index == obj_BouncyCloud) or (collidedSpring.object_index == obj_BouncyCloudHigh))
				{
					collidedSpring.scaleExY = -.2;
					collidedSpring.yDrawOffset = drawOffsetForce;
				}
			
				if ((canFallRoll) and (carriedItem == carriedItems.none) and (playerAbility != playerAbilities.sword) and (playerAbility != playerAbilities.parasol) and (playerAbility != playerAbilities.hammer)) fallRoll = true;
				jumpLimit = false;
				jumpLimitTimer = jumpLimitTimerMax + floor((finalForce - 6) * 3);
			
				//Particles
			
				for (var i = 0; i < 2; i++)
				{
					var par = instance_create_depth(x,y + 4,depth,obj_Particle);
					par.sprite_index = spr_Particle_SmallStar;
					par.hsp = 6;
					if (i == 0)
					{
						par.hsp = 2;
						par.dir = 1;
					}
					else if (i == 1)
					{
						par.hsp = -2;
						par.dir = -1;
					}
					par.vsp = -4;
					par.grav = .5;
					par.destroyTimer = 15;
					par.hasGravity = true;
				}
			
				//Change State To Normal
			
				if ((state == playerStates.inhale) or (state == playerStates.climb) or (state == playerStates.slide))
				{
					inhaleSoundCont = false;
					if (audio_is_playing(snd_Inhale_Intro)) audio_stop_sound(snd_Inhale_Intro);
					if (audio_is_playing(snd_Inhale_Loop)) audio_stop_sound(snd_Inhale_Loop);
					state = playerStates.normal;
				}
			
				//Vertical Knockback
			
				vsp = -finalForce;
				grounded = false;
			}
		}
	}
	
	//Trampolines
	
	if (place_meeting(x,y - 1,obj_Trampoline))
	{
		if (sign(vsp) == 1)
		{
			//Variables
			
			var collidedTrampoline = instance_place(x,y - 1,obj_Trampoline);
			collidedTrampoline.jumpCount += 1;
			collidedTrampoline.resetTimer = collidedTrampoline.resetTimerMax;
			collidedTrampoline.hit = true;
			collidedTrampoline.hitTimer = collidedTrampoline.hitTimerMax;
			jumpLimit = false;
			jumpLimitTimer = jumpLimitTimerMax;
			
			//Particles
			
			if (collidedTrampoline.jumpCount >= (floor(collidedTrampoline.jumpCountMax / 2)))
			{
				for (var i = 0; i < 2; i++)
				{
					var par = instance_create_depth(collidedTrampoline.x + (12 * collidedTrampoline.image_xscale),collidedTrampoline.y,collidedTrampoline.depth + 1,obj_Particle);
					par.sprite_index = spr_Particle_SmallStar;
					par.hsp = 6;
					if (i == 0)
					{
						par.hsp = 2;
					}
					else if (i == 1)
					{
						par.hsp = -2;
					}
					par.vsp = -4;
					par.grav = .5;
					par.destroyTimer = 15;
					var parScaleDir = 1;
					if ((par.direction > 90) and (par.direction <= 270))
					{
						var parScaleDir = -1;
					}
					par.dir = parScaleDir;
					par.hasGravity = true;
				}
				
				//Sound
				
				audio_play_sound(snd_BigJump,0,false);
			}
			else
			{
				audio_play_sound(snd_Jump,0,false);
			}
			
			//Change State To Normal
			
			if ((state == playerStates.inhale) or (state == playerStates.climb) or (state == playerStates.slide))
			{
				inhaleSoundCont = false;
				if (audio_is_playing(snd_Inhale_Intro)) audio_stop_sound(snd_Inhale_Intro);
				if (audio_is_playing(snd_Inhale_Loop)) audio_stop_sound(snd_Inhale_Loop);
				state = playerStates.normal;
			}
			
			//Vertical Knockback
			
			vsp = -(collidedTrampoline.force / 3) - ((collidedTrampoline.force / collidedTrampoline.jumpCountMax) * collidedTrampoline.jumpCount);
			grounded = false;
		}
	}
}

#region Player States
switch (state)
{
	#region Normal
    case playerStates.normal:
	scr_Player_States_Normal();
	break;
	#endregion
	
	#region Slide
    case playerStates.slide:
	scr_Player_States_Slide();
	break;
	#endregion
	
	#region Float
    case playerStates.float:
	scr_Player_States_Float();
	break;
	#endregion
	
	#region Climb
    case playerStates.climb:
	scr_Player_States_Climb();
	break;
	#endregion
	
	#region Enter
    case playerStates.enter:
	scr_Player_States_Enter();
	break;
	#endregion
	
	#region Inhale
    case playerStates.inhale:
	scr_Player_States_Inhale();
	break;
	#endregion
	
	#region Carry
    case playerStates.carry:
	scr_Player_States_Carry();
	break;
	#endregion
	
	#region Swallow
    case playerStates.swallow:
	scr_Player_States_Swallow();
	break;
	#endregion
	
	#region Cutter Dash
    case playerStates.cutterDash:
	scr_Player_States_CutterDash();
	break;
	#endregion
	
	#region Cutter Drop
    case playerStates.cutterDrop:
	scr_Player_States_CutterDrop();
	break;
	#endregion
	
	#region Final Cutter
	case playerStates.finalCutter:
	scr_Player_States_FinalCutter();
	break;
	#endregion
	
	#region Beam Grab
    case playerStates.beamGrab:
	scr_Player_States_BeamGrab();
	break;
	#endregion
	
	#region Mystic Beam Grab
    case playerStates.mysticBeamGrab:
	scr_Player_States_MysticBeamGrab();
	break;
	#endregion
	
	#region Mirror Dash
    case playerStates.mirrorDash:
	scr_Player_States_MirrorDash();
	break;
	#endregion
	
	#region Ninja Dash
    case playerStates.ninjaDash:
	scr_Player_States_NinjaDash();
	break;
	#endregion
	
	#region Ninja Drop
    case playerStates.ninjaDrop:
	scr_Player_States_NinjaDrop();
	break;
	#endregion
	
	#region Fire Dash
    case playerStates.fireDash:
	scr_Player_States_FireDash();
	break;
	#endregion
	
	#region Ice Grab
    case playerStates.iceGrab:
	scr_Player_States_IceGrab();
	break;
	#endregion
	
	#region Yoyo Dash
    case playerStates.yoyoDash:
	scr_Player_States_YoyoDash();
	break;
	#endregion
	
	#region Wheel Normal
    case playerStates.wheelNormal:
	scr_Player_States_WheelNormal();
	break;
	#endregion
	
	#region Wing Dash
    case playerStates.wingDash:
	scr_Player_States_WingDash();
	break;
	#endregion
	
	#region Sword Dash
    case playerStates.swordDash:
	scr_Player_States_SwordDash();
	break;
	#endregion
	
	#region Parasol Dash
    case playerStates.parasolDash:
	scr_Player_States_ParasolDash();
	break;
	#endregion
	
	#region Jet Hover
    case playerStates.jetHover:
	scr_Player_States_JetHover();
	break;
	#endregion
	
	#region Jet Dash
    case playerStates.jetDash:
	scr_Player_States_JetDash();
	break;
	#endregion
	
	#region Warp Star
    case playerStates.warpStar:
	scr_Player_States_WarpStar();
	break;
	#endregion
	
	#region Inside Mech
    case playerStates.insideMech:
	scr_Player_States_InsideMech();
	break;
	#endregion
	
	#region Death
    case playerStates.death:
	scr_Player_States_Death();
	break;
	#endregion
}
#endregion

#region Cancel Fall Roll If Attacking
if ((attack)
and (attackNumber != playerAttacks.slideJump)
) fallRoll = false;
#endregion

#region Mic Flash
if ((attackNumber == playerAttacks.micNormal) and (canMicFlash))
{
	with (obj_Camera)
	{
		shakeX = 2;
		shakeY = 2;
	}
	if (micFlashTimer == -1) micFlashTimer = micFlashTimerMax;
}
else
{
	micFlash = false;
	micFlashTimer = -1;
}
#endregion

//Select Button

if ((mechIndex == -1) and (keySelectPressed))
{
	switch (playerCharacter)
	{
		case playerCharacters.kirby:
		if ((!global.pause) and (!global.cutscene) and
		(((player == 0) and (global.abilityP1 != playerAbilities.none))
		or ((player == 1) and (global.abilityP2 != playerAbilities.none))
		or ((player == 2) and (global.abilityP3 != playerAbilities.none))
		or ((player == 3) and (global.abilityP4 != playerAbilities.none)))
		and (!attack))
		{
			audio_play_sound(snd_AbilityDrop,0,false);
			if (instance_exists(obj_AbilityDropStar))
			{
				with (obj_AbilityDropStar)
				{
					if ((!isBubble) and (owner.player == other.player)) destroy = true;
				}
			}
			var abilityDropStar = instance_create_depth(round(x),round(y - 6),depth + 1,obj_AbilityDropStar);
			abilityDropStar.owner = id;
			abilityDropStar.hsp = -dir * 1.5;
			abilityDropStar.vsp = -abilityDropStar.jumpspeed;
			abilityDropStar.dir = -image_xscale;
			abilityDropStar.player = player;
			switch (player)
			{
				case 0:
				abilityDropStar.ability = global.abilityP1;
				global.abilityP1 = playerAbilities.none;
				abilityDropStar.micCount = global.micCountP1;
				global.micCountP1 = 0;
				break;
				
				case 1:
				abilityDropStar.ability = global.abilityP2;
				global.abilityP2 = playerAbilities.none;
				abilityDropStar.micCount = global.micCountP2;
				global.micCountP2 = 0;
				break;
				
				case 2:
				abilityDropStar.ability = global.abilityP3;
				global.abilityP3 = playerAbilities.none;
				abilityDropStar.micCount = global.micCountP3;
				global.micCountP3 = 0;
				break;
				
				case 3:
				abilityDropStar.ability = global.abilityP4;
				global.abilityP4 = playerAbilities.none;
				abilityDropStar.micCount = global.micCountP4;
				global.micCountP4 = 0;
				break;
			}
			switch (abilityDropStar.ability)
			{
				case playerAbilities.cutter:
				abilityDropStar.sprite_index = spr_AbilityStar_Cutter;
				break;
			
				case playerAbilities.beam:
				abilityDropStar.sprite_index = spr_AbilityStar_Beam;
				break;
			
				case playerAbilities.mysticBeam:
				abilityDropStar.sprite_index = spr_AbilityStar_MysticBeam;
				break;
			
				case playerAbilities.stone:
				abilityDropStar.sprite_index = spr_AbilityStar_Stone;
				break;
			
				case playerAbilities.ufo:
				abilityDropStar.sprite_index = spr_AbilityStar_Ufo;
				break;
			
				case playerAbilities.mirror:
				abilityDropStar.sprite_index = spr_AbilityStar_Mirror;
				break;
			
				case playerAbilities.ninja:
				abilityDropStar.sprite_index = spr_AbilityStar_Ninja;
				break;
			
				case playerAbilities.bomb:
				abilityDropStar.sprite_index = spr_AbilityStar_Bomb;
				break;
			
				case playerAbilities.fire:
				abilityDropStar.sprite_index = spr_AbilityStar_Fire;
				break;
			
				case playerAbilities.mysticFire:
				abilityDropStar.sprite_index = spr_AbilityStar_MysticFire;
				break;
			
				case playerAbilities.ice:
				abilityDropStar.sprite_index = spr_AbilityStar_Ice;
				break;
			
				case playerAbilities.spark:
				abilityDropStar.sprite_index = spr_AbilityStar_Spark;
				break;
			
				case playerAbilities.yoyo:
				abilityDropStar.sprite_index = spr_AbilityStar_Yoyo;
				break;
			
				case playerAbilities.wheel:
				abilityDropStar.sprite_index = spr_AbilityStar_Wheel;
				break;
			
				case playerAbilities.artist:
				abilityDropStar.sprite_index = spr_AbilityStar_Artist;
				break;
			
				case playerAbilities.fighter:
				abilityDropStar.sprite_index = spr_AbilityStar_Fighter;
				break;
			
				case playerAbilities.suplex:
				abilityDropStar.sprite_index = spr_AbilityStar_Suplex;
				break;
			
				case playerAbilities.wing:
				abilityDropStar.sprite_index = spr_AbilityStar_Wing;
				break;
			
				case playerAbilities.jet:
				abilityDropStar.sprite_index = spr_AbilityStar_Jet;
				break;
			
				case playerAbilities.sword:
				abilityDropStar.sprite_index = spr_AbilityStar_Sword;
				break;
			
				case playerAbilities.parasol:
				abilityDropStar.sprite_index = spr_AbilityStar_Parasol;
				break;
			
				case playerAbilities.hammer:
				abilityDropStar.sprite_index = spr_AbilityStar_Hammer;
				break;
			
				case playerAbilities.bell:
				abilityDropStar.sprite_index = spr_AbilityStar_Bell;
				break;
			
				case playerAbilities.water:
				abilityDropStar.sprite_index = spr_AbilityStar_Water;
				break;
			
				case playerAbilities.sleep:
				abilityDropStar.sprite_index = spr_AbilityStar_Sleep;
				break;
			
				case playerAbilities.scan:
				abilityDropStar.sprite_index = spr_AbilityStar_Scan;
				break;
			
				case playerAbilities.mic:
				abilityDropStar.sprite_index = spr_AbilityStar_Mic;
				break;
			
				default:
				abilityDropStar.sprite_index = spr_AbilityStar_Normal;
				break;
			}
			scr_Player_CancelAbility(id);
		}
		break;
			
		default:
		if (playerIsHelper)
		{
			if ((helperTimer == -1) and (!global.helperHud))
			{
				if (audio_is_playing(snd_Charge_Ready)) audio_stop_sound(snd_Charge_Ready);
				audio_play_sound(snd_Charge_Ready,0,false);
				global.helperHud = true;
			}
		}
		break;
	}
}
	
//Helper Hud
	
if (global.helperHud)
{
	if (!instance_exists(obj_HelperControl))
	{
		global.pause = true;
		if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
		blackAlphaBox = true;
		var helperControl = instance_create_depth(x,y,depth - 1,obj_HelperControl);
		helperControl.owner = id;
		helperControl.player = player;
	}
}

if (!global.pause)
{
	//Scale Ex
	
	scaleExX = lerp(scaleExX,0,scaleExSpd);
	scaleExY = lerp(scaleExY,0,scaleExSpd);
	
	//Hat Background Index
	
	var hatBackgroundIndex = scr_Player_HatBackground(playerAbility,playerCharacter);
	var hatFrontIndex = scr_Player_HatFront(playerAbility,playerCharacter);
	
	if (hatBackgroundIndex != -1)
	{
		if (hatBackgroundImageIndex <= sprite_get_number(hatBackgroundIndex) - 1)
		{
			hatBackgroundImageIndex += hatBackgroundImageIndexSpd;
		}
		else
		{
			hatBackgroundImageIndex -= sprite_get_number(hatBackgroundIndex) - 1;
		}
	}
	else if (hatFrontIndex != -1)
	{
		if (hatFrontImageIndex <= sprite_get_number(hatFrontIndex) - 1)
		{
			hatFrontImageIndex += hatFrontImageIndexSpd;
		}
		else
		{
			hatFrontImageIndex -= sprite_get_number(hatFrontIndex) - 1;
		}
	}
}

#region Hp Clamp
global.healthP1 = clamp(global.healthP1,0,global.healthP1Max);
global.healthP2 = clamp(global.healthP2,0,global.healthP2Max);
global.healthP3 = clamp(global.healthP3,0,global.healthP3Max);
global.healthP4 = clamp(global.healthP4,0,global.healthP4Max);
#endregion

#region Scale
if ((attackNumber == playerAttacks.stoneNormal) or (attackNumber == playerAttacks.gooeyStoneNormal))
{
	image_xscale = scale;
}
else
{
	image_xscale = scale * dir;
}

var hasFlipside = 1;
if (global.cheatFlipsideEquipped) hasFlipside = -1
image_yscale = scale * (hasFlipside);
#endregion

#region Masks
mask_index = maskIndex;
if (state == playerStates.slide)
{
	mask_index = spr_Kirby_DuckMask;
}
#endregion

if (!global.pause)
{
	//Walk Duck Timer
	
	if (walkDuckTimer > 0)
	{
		walkDuckTimer -= 1;
	}
	else if (walkDuckTimer == 0)
	{
		walkDuck = false;
		if (fallHop)
		{
			sprite_index = sprRoll;
			image_index = 3;
			vsp = -3.5;
			grounded = false;
			jumpLimit = false;
			jumpLimitTimer = jumpLimitTimerMax;
		}
		walkDuckTimer = -1;
	}
	
	//Walk Squish Timer
	
	if (walkSquishTimer > 0)
	{
		walkSquishTimer -= 1;
	}
	else if (walkSquishTimer == 0)
	{
		walkSquish = false;
		walkSquishTimer = -1;
	}
	
	//Hurt Timer
	
	if (hurtTimer > 0)
	{
		hurtTimer -= 1;
	}
	else if (hurtTimer == 0)
	{
		hurt = false;
		hurtTimer = -1;
	}
	
	//Invincible Timer
	
	if (invincibleTimer > 0)
	{
		invincibleTimer -= 1;
	}
	else if (invincibleTimer == 0)
	{
		invincible = false;
		invincibleFlash = false;
		invincibleFlashTimer = -1;
		invincibleTimer = -1;
	}
	
	//Invincible Flash Timer
	
	if (canFlash)
	{
		if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
	}
	else
	{
		invincibleFlash = false;
		invincibleFlashTimer = -1;
	}
	
	if (invincibleFlashTimer > 0)
	{
		invincibleFlashTimer -= 1;
	}
	else if (invincibleFlashTimer == 0)
	{
		if (invincibleFlash)
		{
			invincibleFlash = false;
		}
		else
		{
			invincibleFlash = true;
		}
		invincibleFlashTimer = -1;
	}
	
	switch (player)
	{
		case 0:
		//Invin Candy Timer
		
		if (global.invinCandyTimerP1 > 0)
		{
			global.invinCandyTimerP1 -= 1;
		}
		else if (global.invinCandyTimerP1 == 0)
		{
			invincibleFlash = false;
			invincibleFlashTimer = -1;
			global.invinCandyTimerP1 = -1;
		}
		
		//Mint Leaf Timer
		
		if (global.mintLeafTimerP1 > 0)
		{
			global.mintLeafTimerP1 -= 1;
		}
		else if (global.mintLeafTimerP1 == 0)
		{
			invincibleFlash = false;
			invincibleFlashTimer = -1;
			global.mintLeafTimerP1 = -1;
		}
		break;
		
		case 1:
		//Invin Candy Timer
		
		if (global.invinCandyTimerP2 > 0)
		{
			global.invinCandyTimerP2 -= 1;
		}
		else if (global.invinCandyTimerP2 == 0)
		{
			invincibleFlash = false;
			invincibleFlashTimer = -1;
			global.invinCandyTimerP2 = -1;
		}
		
		//Mint Leaf Timer
		
		if (global.mintLeafTimerP2 > 0)
		{
			global.mintLeafTimerP2 -= 1;
		}
		else if (global.mintLeafTimerP2 == 0)
		{
			invincibleFlash = false;
			invincibleFlashTimer = -1;
			global.mintLeafTimerP2 = -1;
		}
		break;
		
		case 2:
		//Invin Candy Timer
		
		if (global.invinCandyTimerP3 > 0)
		{
			global.invinCandyTimerP3 -= 1;
		}
		else if (global.invinCandyTimerP3 == 0)
		{
			invincibleFlash = false;
			invincibleFlashTimer = -1;
			global.invinCandyTimerP3 = -1;
		}
		
		//Mint Leaf Timer
		
		if (global.mintLeafTimerP3 > 0)
		{
			global.mintLeafTimerP3 -= 1;
		}
		else if (global.mintLeafTimerP3 == 0)
		{
			invincibleFlash = false;
			invincibleFlashTimer = -1;
			global.mintLeafTimerP3 = -1;
		}
		break;
		
		case 3:
		//Invin Candy Timer
		
		if (global.invinCandyTimerP4 > 0)
		{
			global.invinCandyTimerP4 -= 1;
		}
		else if (global.invinCandyTimerP4 == 0)
		{
			invincibleFlash = false;
			invincibleFlashTimer = -1;
			global.invinCandyTimerP4 = -1;
		}
		
		//Mint Leaf Timer
		
		if (global.mintLeafTimerP4 > 0)
		{
			global.mintLeafTimerP4 -= 1;
		}
		else if (global.mintLeafTimerP4 == 0)
		{
			invincibleFlash = false;
			invincibleFlashTimer = -1;
			global.mintLeafTimerP4 = -1;
		}
		break;
	}
	
	//Invincibility Candy Particle Timer
	
	if (hasInvinCandy)
	{
		if (invinCandyParticleTimer > 0)
		{
			invinCandyParticleTimer -= 1;
		}
		else if (invinCandyParticleTimer == 0)
		{
			var par = instance_create_depth(x + (irandom_range(12,-12)),y - 8 + (irandom_range(12,-12)),depth - 1,obj_Particle);
	        par.sprite_index = spr_Particle_ShrinkingStar3;
	        par.direction = irandom_range(0,359);
			var angle = 90 - par.direction;
			if (angle > 360) angle -= 360;
			if (angle < 0) angle += 360;
	        par.image_angle = angle;
	        par.spdBuiltIn = irandom_range(2,3);
			par.destroyAfterAnimation = true;
		    invinCandyParticleTimer = -1;
		}
	}
	else
	{
		invinCandyParticleTimer = -1;
	}
	
	//Mint Leaf Particle Timer
	
	if (hasMintLeaf)
	{
		if (mintLeafParticleTimer > 0)
		{
			mintLeafParticleTimer -= 1;
		}
		else if (mintLeafParticleTimer == 0)
		{
			var par = instance_create_depth(x + (irandom_range(12,-12)),y - 8 + (irandom_range(12,-12)),depth - 1,obj_Particle);
	        par.sprite_index = spr_Particle_ShrinkingStar3;
	        par.direction = irandom_range(0,359);
			var angle = 90 - par.direction;
			if (angle > 360) angle -= 360;
			if (angle < 0) angle += 360;
	        par.image_angle = angle;
	        par.spdBuiltIn = irandom_range(2,3);
			par.destroyAfterAnimation = true;
		    mintLeafParticleTimer = -1;
		}
	}
	else
	{
		mintLeafParticleTimer = -1;
	}
	
	//Jump Limit Timer
	
	if (jumpLimitTimer > 0)
	{
		jumpLimitTimer -= 1;
	}
	else if (jumpLimitTimer == 0)
	{
		jumpLimit = true;
		jumpLimitTimer = -1;
	}
	
	//Hsp Limit Timer
	
	if (hspLimitTimer > 0)
	{
		hspLimitTimer -= 1;
	}
	else if (hspLimitTimer == 0)
	{
		hspLimit = true;
		hspLimitTimer = -1;
	}
	
	//Run Particle Timer
	
	if (runParticleTimer > 0)
	{
		runParticleTimer -= 1;
	}
	else if (runParticleTimer == 0)
	{
		if (isRunning)
		{
			if ((place_meeting(x,y + 1,obj_ParentWall)) and (abs(hsp) >= (movespeedRun * .25)))
			{
				var collidingWall = instance_place(x,y + 1,obj_ParentWall);
				if ((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + collidingWall.vsp + 20 + vspFinal))))
				{
					var parCarryStart = instance_create_depth(x + (16 * -dir),y + 16,depth + 1,obj_Particle);
					parCarryStart.sprite_index = spr_Particle_Run;
					parCarryStart.hsp = (1.25 + random_range(-.75,.75)) * -dir;
					parCarryStart.vsp = -(2 + random_range(-.75,.75));
					parCarryStart.imageSpeed = 1;
					parCarryStart.destroyAfterAnimation = true;
					parCarryStart.dir = -dir;
				}
			}
			if (runParticleNum == 0)
			{
				runParticleTimer = runParticleTimerMin;
				runParticleNum += 1;
			}
			else
			{
				runParticleNum = 0;
				runParticleTimer = runParticleTimerMax;
			}
		}
		else
		{
			runParticleNum = 0;
			runParticleTimer = -1;
		}
	}
	
	//Mirror Dash Particle Timer
	
	if (mirrorDashParticleTimer > 0)
	{
		mirrorDashParticleTimer -= 1;
	}
	else if (mirrorDashParticleTimer == 0)
	{
		for (var i = 0; i < 1; i++)
		{
			var par = instance_create_depth(x,y - 7,depth - 1,obj_Particle);
			par.direction = random_range(0,359);
			par.sprite_index = choose(spr_Particle_Mirror1,spr_Particle_Mirror1,spr_Particle_Mirror2);
			par.image_speed = irandom_range(3,5);
			par.spdBuiltIn = irandom_range(1,1.5);
			par.destroyAfterAnimation = true;
		}
		mirrorDashParticleTimer = -1;
	}
	
	//Run Cancel Timer
	
	if (runCancelTimer > 0)
	{
		runCancelTimer -= 1;
	}
	else if (runCancelTimer == 0)
	{
		if (((!keyLeftHold) and (!keyRightHold)) or ((keyLeftHold) and (keyRightHold)))
	    {
	        runCancelTimer = runCancelTimerMax;
	        runCancelTimer = -1;
	        isRunning = false;
	        runDoubleTap = 0;
	    }
	    else
	    {
	        runCancelTimer = -1;
	    }
	}
	
	//Run Turn Cancel Timer
	
	if (runTurnCancelTimer > 0)
	{
		runTurnCancelTimer -= 1;
	}
	else if (runTurnCancelTimer == 0)
	{
		runTurn = false;
		hsp *= -dir;
	    runTurnCancelTimer = -1;
	}
	
	//Ability Trophy Timer
	
	if (abilityTrophyTimer > 0)
	{
		abilityTrophyTimer -= 1;
	}
	else if (abilityTrophyTimer == 0)
	{
	    abilityTrophyTimer = -1;
	}
	
	//Attack Timer
	
	if (attackTimer > 0)
	{
		attackTimer -= 1;
	}
	else if (attackTimer == 0)
	{
		scr_Player_CancelAttack(id);
	    attackTimer = -1;
	}
	
	//Cutter Catch Timer
	
	if (cutterCatchTimer > 0)
	{
		cutterCatchTimer -= 1;
	}
	else if (cutterCatchTimer == 0)
	{
		cutterCatch = false;
	    cutterCatchTimer = -1;
	}
	
	//Beam Attack 2 Timer
	
	if ((attack) and (attackNumber == playerAttacks.beamAir))
	{
		if (beamAttack2Timer > 0)
		{
			beamAttack2Timer -= 1;
		}
		else if (beamAttack2Timer == 0)
		{
			//vsp = -.15;
			//grounded = false;
			var projBeam = instance_create_depth(x + (15 * dir),y + 10,depth,obj_Projectile_Beam);
			projBeam.imageSpeed = 1;
			projBeam.owner = id;
			projBeam.abilityType = playerAbilities.beam;
			projBeam.player = player;
			projBeam.dmg = kirby_BeamAir_Damage + (kirby_BeamAir_FirstHitDamage * beamAttack2FirstHit);
			scr_Attack_SetKnockback(projBeam,kirby_BeamAir_Strength,kirby_BeamAir_HitStopAffectSource,kirby_BeamAir_HitStopAffectPlayer,kirby_BeamAir_HitStopAffectTarget,kirby_BeamAir_HitStopLength,kirby_BeamAir_HitStopShakeStrength);
		    projBeam.dirX = -dir;
		    projBeam.dir = dir;
			projBeam.image_xscale = projBeam.dirX;
			projBeam.spd = random_range(6,8);
			projBeam.direction = 270 + (projBeam.dir * 45) + irandom_range(-35,35);
		    projBeam.state = 1;
		    projBeam.enemy = false;
			projBeam.invisTimer = -1;
			projBeam.alphaTimer = projBeam.alphaTimerMax;
			if (beamGoldenFlareUpgrade)
			{
				projBeam.character = 6;
				projBeam.sprite_index = spr_Projectile_Beam_Gold;
			}
			if (((player == 0) and (global.hatTypeBeamP1 == abilityHatSkins.beam_marxSoul))
			or ((player == 1) and (global.hatTypeBeamP2 == abilityHatSkins.beam_marxSoul))
			or ((player == 2) and (global.hatTypeBeamP3 == abilityHatSkins.beam_marxSoul))
			or ((player == 3) and (global.hatTypeBeamP4 == abilityHatSkins.beam_marxSoul)))
			{
				var rng = choose(0,1);
				if (rng)
				{
					projBeam.character = 9;
					projBeam.sprite_index = spr_Projectile_Beam_MarxSoul1;
				}
				else
				{
					projBeam.character = 10;
					projBeam.sprite_index = spr_Projectile_Beam_MarxSoul2;
				}
			}
			if (beamAttack2FirstHit) beamAttack2FirstHit = false;
		    beamAttack2Timer = -1;
		}
	}
	
	//Beam Dash Attack Timer
	
	if ((attack) and (attackNumber = playerAttacks.beamDash))
	{
		if (beamDashAttackTimer > 0)
		{
			beamDashAttackTimer -= 1;
		}
		else if (beamDashAttackTimer == 0)
		{
			for (var i = 0; i < 5; i++)
			{
				var parDir = (270 + (90 * dir)) - 30 + (15 * i);
				if (parDir >= 360) parDir -= 360;
				if (parDir < 0) parDir += 360;
				var par = instance_create_depth(x + (23 * dir),y - 8,depth - 1,obj_Particle);
				par.sprite_index = spr_Particle_BeamCycle;
				par.direction = parDir;
				par.hasPiTurn = true;
				par.piTurnSpd = 4 + (hsp * dir);
				par.angle = i / 4 * 2 * pi;
				par.destroyTimer = 15;
			}
		    beamDashAttackTimer = -1;
		}
	}
	
	//Beam Grab Timer
	
	if ((attack) and (attackNumber = playerAttacks.beamGrab))
	{
		if (beamGrabTimer > 0)
		{
			beamGrabTimer -= 1;
		}
		else if (beamGrabTimer == 0)
		{
			var projBeam = instance_create_depth(x + (23 * dir),y - 8,depth,obj_Projectile_Beam);
			projBeam.imageSpeed = 1;
			projBeam.owner = id;
			projBeam.abilityType = playerAbilities.beam;
			projBeam.player = player;
			projBeam.dmg = kirby_BeamGrabBeam_Damage;
			scr_Attack_SetKnockback(projBeam,kirby_BeamGrabBeam_Strength,kirby_BeamGrabBeam_HitStopAffectSource,kirby_BeamGrabBeam_HitStopAffectPlayer,kirby_BeamGrabBeam_HitStopAffectTarget,kirby_BeamGrabBeam_HitStopLength,kirby_BeamGrabBeam_HitStopShakeStrength);
		    projBeam.dirX = dir;
		    projBeam.dir = dir;
			projBeam.image_xscale = projBeam.dirX;
			projBeam.spd = random_range(6,8);
			projBeam.direction = 90 - (projBeam.dir * 45) + irandom_range(-25,25);
		    projBeam.state = 1;
		    projBeam.enemy = false;
			projBeam.invisTimer = -1;
			projBeam.alphaTimer = projBeam.alphaTimerMax;
			if (beamGoldenFlareUpgrade)
			{
				projBeam.character = 6;
				projBeam.sprite_index = spr_Projectile_Beam_Gold;
			}
			if (((player == 0) and (global.hatTypeBeamP1 == abilityHatSkins.beam_marxSoul))
			or ((player == 1) and (global.hatTypeBeamP2 == abilityHatSkins.beam_marxSoul))
			or ((player == 2) and (global.hatTypeBeamP3 == abilityHatSkins.beam_marxSoul))
			or ((player == 3) and (global.hatTypeBeamP4 == abilityHatSkins.beam_marxSoul)))
			{
				var rng = choose(0,1);
				if (rng)
				{
					projBeam.character = 9;
					projBeam.sprite_index = spr_Projectile_Beam_MarxSoul1;
				}
				else
				{
					projBeam.character = 10;
					projBeam.sprite_index = spr_Projectile_Beam_MarxSoul2;
				}
			}
		    beamGrabTimer = beamGrabTimerMax - beamGoldenFlareUpgrade;
		}
	}
	else
	{
		beamGrabTimer = -1;
	}
	
	//Mystic Beam Grab Timer
	
	if ((attack) and (attackNumber = playerAttacks.mysticBeamGrab))
	{
		if (mysticBeamGrabTimer > 0)
		{
			mysticBeamGrabTimer -= 1;
		}
		else if (mysticBeamGrabTimer == 0)
		{
			var projBeam = instance_create_depth(x + (23 * dir),y - 8,depth,obj_Projectile_Beam);
			projBeam.imageSpeed = 1;
			projBeam.owner = id;
			projBeam.abilityType = playerAbilities.mysticBeam;
			projBeam.player = player;
			projBeam.dmg = kirby_MysticBeamGrabBeam_Damage;
			scr_Attack_SetKnockback(projBeam,kirby_MysticBeamGrabBeam_Strength,kirby_MysticBeamGrabBeam_HitStopAffectSource,kirby_MysticBeamGrabBeam_HitStopAffectPlayer,kirby_MysticBeamGrabBeam_HitStopAffectTarget,kirby_MysticBeamGrabBeam_HitStopLength,kirby_MysticBeamGrabBeam_HitStopShakeStrength);
		    projBeam.dirX = dir;
		    projBeam.dir = dir;
			projBeam.image_xscale = projBeam.dirX;
			projBeam.spd = random_range(6,8);
			projBeam.direction = 90 + (-dir * 90) + irandom_range(-5,5);
		    projBeam.state = 1;
		    projBeam.enemy = false;
			projBeam.character = 2;
			projBeam.sprIdle = spr_Projectile_MysticBeam_Normal;
			projBeam.isMystic = true;
			projBeam.sprite_index = projBeam.sprIdle;
			projBeam.invisTimer = -1;
			projBeam.alphaTimer = projBeam.alphaTimerMax;
		    mysticBeamGrabTimer = mysticBeamGrabTimerMax;
		}
	}
	else
	{
		mysticBeamGrabTimer = -1;
	}
	
	//Mystic Beam Attack 2 Timer
	
	if ((attack) and (attackNumber = playerAttacks.mysticBeamAir))
	{
		if (mysticBeamAttack2Timer > 0)
		{
			mysticBeamAttack2Timer -= 1;
		}
		else if (mysticBeamAttack2Timer == 0)
		{
			var projBeam = instance_create_depth(x + (15 * dir),y + 10,depth,obj_Projectile_Beam);
			projBeam.imageSpeed = 1;
			projBeam.character = 7;
			projBeam.sprite_index = spr_Projectile_MysticBeam_Air;
			projBeam.owner = id;
			projBeam.abilityType = playerAbilities.mysticBeam;
			projBeam.player = player;
			projBeam.dmg = kirby_MysticBeamAir_Damage;
			scr_Attack_SetKnockback(projBeam,kirby_MysticBeamAir_Strength,kirby_MysticBeamAir_HitStopAffectSource,kirby_MysticBeamAir_HitStopAffectPlayer,kirby_MysticBeamAir_HitStopAffectTarget,kirby_MysticBeamAir_HitStopLength,kirby_MysticBeamAir_HitStopShakeStrength);
		    projBeam.dirX = -dir;
		    projBeam.dir = dir;
			projBeam.image_xscale = projBeam.dirX;
			projBeam.spd = 6;
			projBeam.direction = 270 + (projBeam.dir * 45) + irandom_range(-5,5);
		    projBeam.state = 3;
		    projBeam.enemy = false;
		    projBeam.destroyableByWall = false;
			projBeam.isMystic = true;
			projBeam.invisTimer = -1;
			projBeam.alphaTimer = projBeam.alphaTimerMax;
			projBeam.trailTimer = 0;
			projBeam.destroyTimer = 180;
		    mysticBeamAttack2Timer = -1;
		}
	}
	
	//Mystic Beam Up Attack Timer
	
	if ((attack) and (attackNumber == playerAttacks.mysticBeamUp))
	{
		if (mysticBeamUpAttackTimer > 0)
		{
			mysticBeamUpAttackTimer -= 1;
		}
		else if (mysticBeamUpAttackTimer == 0)
		{
			mysticBeamUpAttackCount += 1;
			if (audio_is_playing(snd_BeamAir)) audio_stop_sound(snd_BeamAir);
			audio_play_sound(snd_BeamAir,0,false);
			var projBeam = instance_create_depth(x,y - 10,depth,obj_Projectile_Beam);
			projBeam.imageSpeed = 1;
			projBeam.character = 7;
			projBeam.sprite_index = spr_Projectile_MysticBeam_Air;
			projBeam.owner = id;
			projBeam.abilityType = playerAbilities.mysticBeam;
			projBeam.player = player;
			projBeam.dmg = kirby_MysticBeamUp_Damage;
			scr_Attack_SetKnockback(projBeam,kirby_MysticBeamUp_Strength,kirby_MysticBeamUp_HitStopAffectSource,kirby_MysticBeamUp_HitStopAffectPlayer,kirby_MysticBeamUp_HitStopAffectTarget,kirby_MysticBeamUp_HitStopLength,kirby_MysticBeamUp_HitStopShakeStrength);
		    projBeam.dirX = -dir;
		    projBeam.dir = dir;
			projBeam.image_xscale = projBeam.dirX;
			projBeam.spd = 6;
			projBeam.direction = 90 - (90 * dir) + (mysticBeamUpAttackCount * 45 * dir);
			if (mysticBeamUpAttackCount == 2) projBeam.straightBounce = true;
		    projBeam.state = 3;
		    projBeam.enemy = false;
		    projBeam.destroyableByWall = false;
			projBeam.isMystic = true;
			projBeam.invisTimer = -1;
			projBeam.alphaTimer = projBeam.alphaTimerMax;
			projBeam.trailTimer = 0;
			projBeam.destroyTimer = 180;
			if (mysticBeamUpAttackCount == 3)
			{
				mysticBeamUpAttackCount = 0;
				attackTimer = 0;
				mysticBeamUpAttackTimer = -1;
			}
			else
			{
				mysticBeamUpAttackTimer = mysticBeamUpAttackTimerMax;
			}
		}
	}
	else
	{
		mysticBeamUpAttackTimer = -1;
	}
	
	//Stone Ready Timer
	
	if (stoneReadyTimer > 0)
	{
		stoneReadyTimer -= 1;
	}
	else if (stoneReadyTimer == 0)
	{
		stoneReady = false;
		if (!place_meeting(x,y + 1,obj_ParentWall))
		{
			scaleExX = -.1;
			scaleExY = .1;
		}
		grav = gravStone;
		gravLimit = gravLimitStone;
		stoneMaskProj = instance_create_depth(x,y,depth - 1,obj_Projectile_StoneMask);
		stoneMaskProj.dmg = kirby_StoneNormal_Damage;
		scr_Attack_SetKnockback(stoneMaskProj,kirby_StoneNormal_Strength,kirby_StoneNormal_HitStopAffectSource,kirby_StoneNormal_HitStopAffectPlayer,kirby_StoneNormal_HitStopAffectTarget,kirby_StoneNormal_HitStopLength,kirby_StoneNormal_HitStopShakeStrength);
		if (playerCharacter == playerCharacters.gooey)
		{
			stoneMaskProj.dmg = gooey_StoneNormal_Damage;
			scr_Attack_SetKnockback(stoneMaskProj,gooey_StoneNormal_Strength,gooey_StoneNormal_HitStopAffectSource,gooey_StoneNormal_HitStopAffectPlayer,gooey_StoneNormal_HitStopAffectTarget,gooey_StoneNormal_HitStopLength,gooey_StoneNormal_HitStopShakeStrength);
		}
		stoneMaskProj.hsp = hsp;
		stoneMaskProj.vsp = vsp;
		stoneMaskProj.enemy = false;
		stoneMaskProj.owner = id;
		stoneMaskProj.abilityType = playerAbilities.stone;
		stoneMaskProj.hitInvincibility = stoneMaskProj.hitInvincibilityMax;
		stoneMaskProj.image_xscale = image_xscale;
		stoneMaskProj.image_yscale = image_yscale;
		var stoneRarity = irandom_range(0,24);
		if (stoneRarity == 0) sprite_index = sprStoneAttack1Rare;
		if ((stoneRarity >= 1) and (stoneRarity <= 10)) sprite_index = sprStoneAttack1Uncommon;
		if ((stoneRarity >= 11) and (stoneRarity <= 24)) sprite_index = sprStoneAttack1Common;
		image_index = irandom_range(0,image_number - 1);
	    stoneReadyTimer = -1;
	}
	
	//Stone Release Particle Timer
	
	if (stoneReleaseParticleTimer > 0)
	{
		stoneReleaseParticleTimer -= 1;
	}
	else if (stoneReleaseParticleTimer == 0)
	{
		stoneReleaseParticleCount += 1;
		switch (stoneReleaseParticleCount)
		{
			case 1:
			var par = instance_create_depth(x - 8,y - 4,depth - 1,obj_Particle);
			par.vsp = -2;
			stoneReleaseParticleTimer = stoneReleaseParticleTimerMax;
			break;
			
			case 2:
			var par = instance_create_depth(x + 8,y - 4,depth - 1,obj_Particle);
			par.hsp = 2;
			par.vsp = -2;
			stoneReleaseParticleTimer = stoneReleaseParticleTimerMax;
			break;
			
			case 3:
			var par = instance_create_depth(x - 8,y - 2,depth - 1,obj_Particle);
			par.hsp = -2;
			stoneReleaseParticleTimer = stoneReleaseParticleTimerMax;
			break;
			
			case 4:
			var par = instance_create_depth(x +  8,y - 2,depth - 1,obj_Particle);
			par.hsp = 2;
			stoneReleaseParticleCount = 0;
			stoneReleaseParticleTimer = -1;
			break;
		}
		par.sprite_index = spr_Particle_ShrinkingStar5;
		par.destroyAfterAnimation = true;
	}
	
	//Stone Particle Timer
	
	if (stoneParticleTimer > 0)
	{
		stoneParticleTimer -= 1;
	}
	else if (stoneParticleTimer == 0)
	{
		for (var i = 0; i < 6; i++)
		{
			switch (i)
			{
				case 0:
				var stonePar = instance_create_depth(x - 8,y - 16,depth - 1,obj_Particle);
				stoneParticleTimer = stoneParticleTimerMax;
				break;
				
				case 1:
				var stonePar = instance_create_depth(x - 6,y + 10,depth - 1,obj_Particle);
				stoneParticleTimer = stoneParticleTimerMax;
				break;
				
				case 2:
				var stonePar = instance_create_depth(x + 16,y,depth - 1,obj_Particle);
				stoneParticleTimer = stoneParticleTimerMax;
				break;
				
				case 3:
				var stonePar = instance_create_depth(x + 14,y - 16,depth - 1,obj_Particle);
				stoneParticleTimer = stoneParticleTimerMax;
				break;
				
				case 4:
				var stonePar = instance_create_depth(x - 16,y - 10,depth - 1,obj_Particle);
				stoneParticleTimer = stoneParticleTimerMax;
				break;
				
				case 5:
				var stonePar = instance_create_depth(x + 12,y + 2,depth - 1,obj_Particle);
				stoneParticleTimer = -1;
				break;
			}
			stonePar.imageSpeed = 0;
			switch (playerCharacter)
			{
				default:
				stonePar.sprite_index = spr_Particle_Stone1;
				break;
				
				case playerCharacters.gooey:
				stonePar.sprite_index = spr_Particle_Stone2;
				break;
			}
			stonePar.image_index = i;
			stonePar.destroyAfterCollidingFollow = false;
			stonePar.followObject = true;
			stonePar.followedObject = id;
			stonePar.dir = dir;
			stonePar.hasPalette = true;
			stonePar.paletteSpriteIndex = paletteIndex;
			if ((playerCharacter == playerCharacters.kirby) and (global.abilitySpraysKeycard) and (global.cheatColoredAbilitiesEquipped)) stonePar.paletteSpriteIndex = spr_Kirby_Normal_Palette_Stone;
			stonePar.paletteIndex = 1;
			stonePar.destroyTimer = 7;
		}
	}
	
	//Stone Fist Ready Timer
	
	if (stoneFistReadyTimer > 0)
	{
		stoneFistReadyTimer -= 1;
	}
	else if (stoneFistReadyTimer == 0)
	{
		if (audio_is_playing(snd_StoneFist)) audio_stop_sound(snd_StoneFist);
		audio_play_sound(snd_StoneFist,0,false);
		if (instance_exists(obj_Camera))
		{
			obj_Camera.shakeX = 2;
			obj_Camera.shakeY = 2;
		}
		stoneFistReady = false;
		stoneFistReleaseTimer = stoneFistReleaseTimerMax;
		sprite_index = sprStoneAttack2;
		image_index = 0;
		stoneFistMaskProj = instance_create_depth(x,y,depth - 1,obj_Projectile_StoneFistMask);
		stoneFistMaskProj.dmg = kirby_StoneUp_Damage;
		scr_Attack_SetKnockback(stoneFistMaskProj,kirby_StoneUp_Strength,kirby_StoneUp_HitStopAffectSource,kirby_StoneUp_HitStopAffectPlayer,kirby_StoneUp_HitStopAffectTarget,kirby_StoneUp_HitStopLength,kirby_StoneUp_HitStopShakeStrength);
		stoneFistMaskProj.dirX = dir;
		stoneFistMaskProj.enemy = false;
		stoneFistMaskProj.owner = id;
		stoneFistMaskProj.abilityType = playerAbilities.stone;
		stoneFistMaskProj.image_xscale = image_xscale;
		stoneFistMaskProj.image_yscale = image_yscale;
	    stoneFistReadyTimer = -1;
	}
	
	//Stone Fist Release Timer
	
	if (stoneFistReleaseTimer > 0)
	{
		stoneFistReleaseTimer -= 1;
	}
	else if (stoneFistReleaseTimer == 0)
	{
		attackTimer = 10;
		sprite_index = sprStoneAttack2Release;
		image_index = 0;
	    stoneFistReleaseTimer = -1;
	}
	
	//Mirror Normal Attack Timer
	
	if (mirrorNormalAttackTimer > 0)
	{
		mirrorNormalAttackTimer -= 1;
	}
	else if (mirrorNormalAttackTimer == 0)
	{
		mirrorAttackDir *= -1;
		if (audio_is_playing(snd_Mirror1)) audio_stop_sound(snd_Mirror1);
		audio_play_sound(snd_Mirror1,0,false);
		var par = instance_create_depth(x + (8 * dir),y - 4,depth - 1,obj_Particle);
		par.sprite_index = spr_Particle_Mirror3;
		par.dir = dir;
		par.image_xscale = dir;
		par.destroyTimer = 1;
		var projectile = instance_create_depth(x + (24 * dir),y - 6,depth - 1,obj_Projectile_Mirror);
		projectile.owner = id;
		projectile.abilityType = playerAbilities.mirror;
		projectile.dmg = kirby_MirrorNormal_Damage;
		if (mirrorFirstAttack)
		{
			projectile.dmg = kirby_MirrorNormal_FirstTimeDamage;
			mirrorFirstAttack = false;
		}
		scr_Attack_SetKnockback(projectile,kirby_MirrorNormal_Strength,kirby_MirrorNormal_HitStopAffectSource,kirby_MirrorNormal_HitStopAffectPlayer,kirby_MirrorNormal_HitStopAffectTarget,kirby_MirrorNormal_HitStopLength,kirby_MirrorNormal_HitStopShakeStrength);
		projectile.sprite_index = projectile.sprIdle;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.hsp = 2 * dir;
		projectile.vsp = .8 * mirrorAttackDir;
	    mirrorNormalAttackTimer = -1;
	}
	
	//Mirror Shield Timer
	
	if (mirrorShieldTimer > 0)
	{
		mirrorShieldTimer -= 1;
	}
	else if (mirrorShieldTimer == 0)
	{
		mirrorShieldHp = mirrorShieldHpMax;
	    mirrorShieldTimer = -1;
	}
	
	//Fire Particle Timer
	
	if (playerAbility == playerAbilities.fire)
	{
		if (fireParticleTimer > 0)
		{
			fireParticleTimer -= 1;
		}
		else if (fireParticleTimer == 0)
		{
			var yy = y - 8;
			var dep = depth + 1;
			var spr = spr_Particle_Fire1;
			if (attackNumber == playerAttacks.fireBack)
			{
				yy = y + 12;
				dep = depth - 1;
				spr = spr_Particle_Fire4;
			}
			var par = instance_create_depth(x + (irandom_range(8,-8)),yy,dep,obj_Particle);
	        par.sprite_index = spr;
	        par.direction = irandom_range(80,100);
			var angle = 90 - par.direction;
			if (angle > 360) angle -= 360;
			if (angle < 0) angle += 360;
	        par.image_angle = angle;
	        par.spdBuiltIn = irandom_range(1,3);
			par.destroyAfterAnimation = true;
			par.paletteSpriteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
			par.paletteIndex = 1;
		    fireParticleTimer = -1;
		}
	}
	else
	{
		fireParticleTimer = -1;
	}
	
	//Fire Normal Attack Timer
	
	if (fireNormalAttackTimer > 0)
	{
		fireNormalAttackTimer -= 1;
	}
	else if (fireNormalAttackTimer == 0)
	{
		if (audio_is_playing(snd_Fire2)) audio_stop_sound(snd_Fire2);
		audio_play_sound(snd_Fire2,0,false);
		var projectile = instance_create_depth(x + (10 * dir),y - 2,depth - 1,obj_Projectile_Fire);
		projectile.owner = id;
		projectile.abilityType = playerAbilities.fire;
		projectile.imageSpeed = 1 - (fireMagicCharcoalUpgrade / 4);
		projectile.dmg = kirby_FireNormal_Damage;
		scr_Attack_SetKnockback(projectile,kirby_FireNormal_Strength,kirby_FireNormal_HitStopAffectSource,kirby_FireNormal_HitStopAffectPlayer,kirby_FireNormal_HitStopAffectTarget,kirby_FireNormal_HitStopLength,kirby_FireNormal_HitStopShakeStrength);
		projectile.sprite_index = projectile.sprIdle;
		//projectile.dirX = dir;
		//projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.destroyableByEnemy = false;
		projectile.destroyableByObject = false;
        if ((!global.cutscene) and (keyLeftHold))
        {
			if (dir == 1)
			{
				projectile.hsp = 1.5;
			}
			else
			{
				projectile.hsp = -3;
			}
        }
        else if ((!global.cutscene) and (keyRightHold))
        {
            if (dir == 1)
			{
				projectile.hsp = 3;
			}
			else
			{
				projectile.hsp = -1.5;
			}
        }
        else
        {
            if (dir == 1)
			{
				projectile.hsp = 2;
			}
			else
			{
				projectile.hsp = -2;
			}
        }
		
        if ((!global.cutscene) and (keyUpHold))
        {
            projectile.vsp = random_range(-.75,.75) - .75;
        }
        else if ((!global.cutscene) and (keyDownHold))
        {
            projectile.vsp = random_range(-.75,.75) + .75;
        }
        else
        {
            projectile.vsp = random_range(-.75,.75);
        }
		projectile.imageAngle = point_direction(0,0,projectile.hsp,projectile.vsp);
		projectile.image_angle = projectile.imageAngle;
		projectile.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
	    fireNormalAttackTimer = -1;
	}
	
	//Fire Release Timer
	
	if (fireReleaseTimer > 0)
	{
		fireReleaseTimer -= 1;
	}
	else if (fireReleaseTimer == 0)
	{
		if (place_meeting(x,y + 1,obj_ParentWall)) sprite_index = sprFireAttackRelease1;
	    fireReleaseTimer = -1;
	}
	
	//Ice Normal Attack Timer
	
	if (iceNormalAttackTimer > 0)
	{
		iceNormalAttackTimer -= 1;
	}
	else if (iceNormalAttackTimer == 0)
	{
		if (audio_is_playing(snd_Ice)) audio_stop_sound(snd_Ice);
		audio_play_sound(snd_Ice,0,false);
		var projectile = instance_create_depth(x + (14 * dir),y - 6,depth - 1,obj_Projectile_Ice);
		projectile.owner = id;
		projectile.abilityType = playerAbilities.ice;
		projectile.dmg = kirby_IceNormal_Damage;
		scr_Attack_SetKnockback(projectile,kirby_IceNormal_Strength,kirby_IceNormal_HitStopAffectSource,kirby_IceNormal_HitStopAffectPlayer,kirby_IceNormal_HitStopAffectTarget,kirby_IceNormal_HitStopLength,kirby_IceNormal_HitStopShakeStrength);
		projectile.sprite_index = projectile.sprIdle;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.hsp = 3.5 * dir;
		switch (icePosition)
		{
			case 0:
			projectile.vsp = random_range(-.5,.5);
			icePosition += 1;
			break;
			
			case 1:
			projectile.vsp = random_range(0,.5) + .75;
			icePosition += 1;
			break;
			
			case 2:
			projectile.vsp = random_range(-.5,.5);
			var par = instance_create_depth(x + (14 * dir),y - 6,depth - 2,obj_Particle);
	        par.sprite_index = spr_Particle_Ice1;
	        par.hsp = projectile.hsp + random_range(.5,.5);
	        par.vsp = projectile.vsp + random_range(.5,.5);
			par.destroyAfterAnimation = true;
			icePosition += 1;
			break;
			
			case 3:
			projectile.vsp = random_range(-.5,0) - .75;
			icePosition = 0;
			break;
		}
	    iceNormalAttackTimer = -1;
	}
	
	//Ice Kick Timer
	
	if (iceKickTimer > 0)
	{
		iceKickTimer -= 1;
	}
	else if (iceKickTimer == 0)
	{
		iceKick = false;
		iceKickTimer = -1;
	}
	
	//Wheel Ready Timer
	
	if (wheelReadyTimer > 0)
	{
		wheelReadyTimer -= 1;
	}
	else if (wheelReadyTimer == 0)
	{
		wheelReady = true;
		hsp = movespeedWheel * dir;
		wheelReadyTimer = -1;
	}
	
	//Spark Particle Timer
	
	if (playerAbility == playerAbilities.spark)
	{
		if (sparkParticleTimer > 0)
		{
			sparkParticleTimer -= 1;
		}
		else if (sparkParticleTimer == 0)
		{
			var par = instance_create_depth(x - (8 * dir) + (irandom_range(8,-8)),y - 22,depth - 1,obj_Particle);
	        par.sprite_index = spr_Particle_Spark3;
			par.image_index = irandom_range(0,par.image_number - 1);
			par.destroyTimer = 2;
			par.paletteSpriteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
			par.paletteIndex = 1;
		    sparkParticleTimer = -1;
		}
	}
	else
	{
		sparkParticleTimer = -1;
	}
	
	//Wing Dash Particle Timer
	
	if (attackNumber == playerAttacks.wingDash)
	{
		if (wingDashParticleTimer > 0)
		{
			wingDashParticleTimer -= 1;
		}
		else if (wingDashParticleTimer == 0)
		{
			var par = instance_create_depth(x - (12 * dir),y - 4,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_Sparkle4;
			par.hsp = (4 * -dir);
			par.destroyAfterAnimation = true;
			var par = instance_create_depth(x - (12 * dir),y - 4,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_Aura1;
			par.destroyTimer = 1;
			wingDashParticleTimer = wingDashParticleTimerMax;
		}
	}
	else
	{
		wingDashParticleTimer = -1;
	}
	
	//Sleep Particle Timer
	
	if (sprite_index == sprSleep)
	{
		if (sleepParticleTimer > 0)
		{
			sleepParticleTimer -= 1;
		}
		else if (sleepParticleTimer == 0)
		{
			var par = instance_create_depth(x + (6 * dir),y - 4,depth - 1,obj_Particle);
			par.sprite_index = spr_Particle_Bubble2;
			par.hsp = .1 * dir;
			par.vsp = -.25;
			par.dir = dir;
			par.destroyAfterAnimation = true;
			sleepParticleTimer = sleepParticleTimerMax;
		}
	}
	else
	{
		sleepParticleTimer = -1;
	}
	
	//Sleep End Timer
	
	if (sleepEndTimer > 0)
	{
		sleepEndTimer -= 1;
	}
	else if (sleepEndTimer == 0)
	{
		sleepHatParticle = true;
		sleepEnd = true;
		sprite_index = sprSleepEnd;
		image_index = 0;
		sleepEndTimer = -1;
	}
	
	//Helper Timer
	
	if (helperTimer > 0)
	{
		helperTimer -= 1;
	}
	else if (helperTimer == 0)
	{
		helperTimer = -1;
	}
	
	//Can Grab Timer
	
	if (canGrabTimer > 0)
	{
		canGrabTimer -= 1;
	}
	else if (canGrabTimer == 0)
	{
		canGrab = true;
		canGrabTimer = -1;
	}
}
else
{
	//Debug Move
	
	if (global.debug)
	{
		if (mouse_check_button(mb_middle))
		{
			x = mouse_x;
			y = mouse_y;
		}
	}
}



//Ground Failsafe Timer

if (groundFailsafeTimer > 0)
{
	groundFailsafeTimer -= 1;
}
else if (groundFailsafeTimer == 0)
{
	//Ground Failsafe
	
	while (place_meeting(x,y + 1,obj_ParentWall)) y -= 1;
	groundFailsafeTimer = -1;
}

//Death Timer

if (deathTimer > 0)
{
	deathTimer -= 1;
}
else if (deathTimer == 0)
{
	for (var i = 0; i < 8; i++)
	{
		var par = instance_create_depth(x,y,depth + 1,obj_Particle);
		par.sprite_index = spr_Particle_ShrinkingStar3;
		par.destroyAfterAnimation = true;
		par.spdBuiltIn = 9;
		par.fricSpd = .6;
		par.direction = (i * 45);
		par.pausable = false;
	}
	var par = instance_create_depth(x,y,depth + 1,obj_Particle);
	par.sprite_index = spr_Particle_ShrinkingStar3;
	par.destroyAfterAnimation = true;
	par.spdBuiltIn = 6;
	par.fricSpd = .4;
	par.direction = 90;
	par.pausable = false;
	switch (player)
	{
		case 0:
		global.abilityP1 = playerAbilities.none;
		break;
		
		case 1:
		global.abilityP2 = playerAbilities.none;
		break;
		
		case 2:
		global.abilityP3 = playerAbilities.none;
		break;
		
		case 3:
		global.abilityP4 = playerAbilities.none;
		break;
	}
	var musDeath = mus_Death1;
	if ((global.playerLives <= 0) and (global.gamemode != gamemodes.maykr)) musDeath = mus_Death2;
	audio_play_sound(musDeath,0,false);
	deathParticleTimer = deathParticleTimerMax;
	deathRestartTimer = deathRestartTimerMax;
	vsp = -jumpspeedNormal * 1.25;
	grounded = false;
	state = playerStates.death;
    deathTimer = -1;
}

//Death Particle Timer

if (deathParticleTimer > 0)
{
	deathParticleTimer -= 1;
}
else if (deathParticleTimer == 0)
{
	var par = instance_create_depth(x,y - 3,depth + 1,obj_Particle);
	par.sprite_index = spr_Particle_Sparkle2;
	par.spdBuiltIn = 6;
	par.fricSpd = .4;
	par.direction = 90 + irandom_range(-25,25);
	par.destroyAfterAnimation = true;
	par.pausable = false;
	var par = instance_create_depth(x,y,depth + 1,obj_Particle);
	par.sprite_index = spr_Particle_ShrinkingStar3;
	par.destroyAfterAnimation = true;
	par.spdBuiltIn = 6;
	par.fricSpd = .4;
	par.direction = 90 + irandom_range(-25,25);
	par.pausable = false;
    deathParticleTimer = deathParticleTimerMax;
}

//Death Restart Timer

if (deathRestartTimer > 0)
{
	deathRestartTimer -= 1;
}
else if (deathRestartTimer == 0)
{
	if (global.gamemode != gamemodes.maykr)
	{
		var fadeTrans = instance_create_depth(0,0,-999,obj_Fade);
		fadeTrans.targetRoom = global.roomCheckpoint;
		fadeTrans.alphaSpd = 0.02;
		fadeTrans.pausable = false;
		if (!global.cheatLifelessEquipped) global.playerLives -= 1;
		if (global.playerLives < 0)
		{
			var jellyChance = irandom_range(0,199);
			if (jellyChance == 0)
			{
				fadeTrans.targetRoom = rm_GameOverJellyMarx;
			}
			else
			{
				fadeTrans.targetRoom = rm_GameOver;
			}
		}
	}
    deathRestartTimer = -1;
}

//Bubble Position Timer

if (sprite_index == sprSleep)
{
	if (bubblePosTimer > 0)
	{
		bubblePosTimer -= 1;
	}
	else if (bubblePosTimer == 0)
	{
		if (bubblePos == 0)
		{
			bubblePos = 1;
		}
		else
		{
			bubblePos = 0;
		}
		bubblePosTimer = bubblePosTimerMax;
	}
}

//Scan Timer

if (scanTimer > 0)
{
	scanTimer -= 1;
}
else if (scanTimer == 0)
{
	if (instance_exists(scanProjectile)) instance_destroy(scanProjectile);
	switch (player)
	{
		case 0:
		global.abilityP1 = cAbility;
		break;
		
		case 1:
		global.abilityP2 = cAbility;
		break;
		
		case 2:
		global.abilityP3 = cAbility;
		break;
		
		case 3:
		global.abilityP4 = cAbility;
		break;
	}
	if (cAbility != playerAbilities.none)
	{
		blackAlphaBox = true;
		swallowActionTimer = 0;
		global.pause = true;
		if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
	}
	switch (cAbility)
	{
		case playerAbilities.cutter:
		global.cutterAbilityObtained = true;
		break;
	
		case playerAbilities.beam:
		global.beamAbilityObtained = true;
		break;
	
		case playerAbilities.mysticBeam:
		global.mysticBeamAbilityObtained = true;
		break;
	
		case playerAbilities.stone:
		global.stoneAbilityObtained = true;
		break;
	
		case playerAbilities.ufo:
		global.ufoAbilityObtained = true;
		break;
	
		case playerAbilities.mirror:
		global.mirrorAbilityObtained = true;
		break;
	
		case playerAbilities.ninja:
		global.ninjaAbilityObtained = true;
		break;
	
		case playerAbilities.bomb:
		global.bombAbilityObtained = true;
		break;
	
		case playerAbilities.fire:
		global.fireAbilityObtained = true;
		break;
	
		case playerAbilities.mysticFire:
		global.mysticFireAbilityObtained = true;
		break;
	
		case playerAbilities.ice:
		global.iceAbilityObtained = true;
		break;
	
		case playerAbilities.spark:
		global.sparkAbilityObtained = true;
		break;
	
		case playerAbilities.yoyo:
		global.yoyoAbilityObtained = true;
		break;
	
		case playerAbilities.wheel:
		global.wheelAbilityObtained = true;
		break;
	
		case playerAbilities.artist:
		global.artistAbilityObtained = true;
		break;
	
		case playerAbilities.fighter:
		global.fighterAbilityObtained = true;
		break;
	
		case playerAbilities.suplex:
		global.suplexAbilityObtained = true;
		break;
	
		case playerAbilities.wing:
		global.wingAbilityObtained = true;
		break;
	
		case playerAbilities.jet:
		global.jetAbilityObtained = true;
		break;
	
		case playerAbilities.sword:
		global.swordAbilityObtained = true;
		break;
	
		case playerAbilities.parasol:
		global.parasolAbilityObtained = true;
		break;
	
		case playerAbilities.hammer:
		global.hammerAbilityObtained = true;
		break;
	
		case playerAbilities.bell:
		global.bellAbilityObtained = true;
		break;
	
		case playerAbilities.water:
		global.waterAbilityObtained = true;
		break;
	
		case playerAbilities.hiJump:
		global.hiJumpAbilityObtained = true;
		break;
	
		case playerAbilities.gear:
		global.gearAbilityObtained = true;
		break;
	
		case playerAbilities.sleep:
		global.sleepAbilityObtained = true;
		break;
	
		case playerAbilities.scan:
		global.scanAbilityObtained = true;
		break;
	
		case playerAbilities.crash:
		global.crashAbilityObtained = true;
		break;
	
		case playerAbilities.mic:
		global.micAbilityObtained = true;
		break;
	
		case playerAbilities.chef:
		global.chefAbilityObtained = true;
		break;
	
		case playerAbilities.ultraSword:
		global.ultraSwordAbilityObtained = true;
		break;
	
		case playerAbilities.cosmicBlade:
		global.cosmicBladeAbilityObtained = true;
		break;
	}
	if (audio_is_playing(snd_Swallow)) audio_stop_sound(snd_Swallow);
	audio_play_sound(snd_Swallow,0,false);
	hsp = 0;
	vsp = 0;
	isRunning = false;
	cAbility = playerAbilities.none;
	image_index = 0;
	state = playerStates.swallow;
	attackTimer = 0;
	scanTimer = -1;
}

//Mic Timer

if (micTimer > 0)
{
	micTimer -= 1;
	if (micTimer == 30)
	{
		canMicFlash = false;
		if (sprite_index == sprMicAttack1)
		{
			sprite_index = sprMicAttack1End;
			image_index = 0;
		}
		else if (sprite_index == sprMicAttack2)
		{
			sprite_index = sprMicAttack2End;
			image_index = 0;
		}
		else if (sprite_index == sprMicAttack3)
		{
			sprite_index = sprMicAttack3End;
			image_index = 0;
		}
	}
}
else if (micTimer == 0)
{
	global.pause = false;
	image_index = 0;
	state = playerStates.normal;
	attackTimer = 0;
	
	micProjectile = instance_create_depth(-100,-100,depth,obj_Projectile_MicShot);
	micProjectile.owner = id;
	micProjectile.abilityType = playerAbilities.mic;
	switch (micCount)
	{
		case 1:
		micProjectile.dmg = kirby_MicNormal1_Damage;
		scr_Attack_SetKnockback(micProjectile,kirby_MicNormal1_Strength,kirby_MicNormal1_HitStopAffectSource,kirby_MicNormal1_HitStopAffectPlayer,kirby_MicNormal1_HitStopAffectTarget,kirby_MicNormal1_HitStopLength,kirby_MicNormal1_HitStopShakeStrength);
		break;
								
		case 2:
		micProjectile.dmg = kirby_MicNormal2_Damage;
		scr_Attack_SetKnockback(micProjectile,kirby_MicNormal2_Strength,kirby_MicNormal2_HitStopAffectSource,kirby_MicNormal2_HitStopAffectPlayer,kirby_MicNormal2_HitStopAffectTarget,kirby_MicNormal2_HitStopLength,kirby_MicNormal2_HitStopShakeStrength);
		break;
								
		case 3:
		micProjectile.dmg = kirby_MicNormal3_Damage;
		scr_Attack_SetKnockback(micProjectile,kirby_MicNormal3_Strength,kirby_MicNormal3_HitStopAffectSource,kirby_MicNormal3_HitStopAffectPlayer,kirby_MicNormal3_HitStopAffectTarget,kirby_MicNormal3_HitStopLength,kirby_MicNormal3_HitStopShakeStrength);
		break;
	}
	micProjectile.enemy = false;
	with (obj_Enemy)
	{
		if (!scr_OutsideView())
		{
			scr_Enemy_Hurt(id,other.micProjectile);
		}
	}
	
	if (micCount >= 3)
	{
		scr_Player_CancelAbility(id);
		
		switch (player)
		{
			case 0:
			global.abilityP1 = playerAbilities.none;
			global.micCountP1 = 0;
			break;
				
			case 1:
			global.abilityP2 = playerAbilities.none;
			global.micCountP2 = 0;
			break;
				
			case 2:
			global.abilityP3 = playerAbilities.none;
			global.micCountP3 = 0;
			break;
				
			case 3:
			global.abilityP4 = playerAbilities.none;
			global.micCountP4 = 0;
			break;
		}
	}
	micTimer = -1;
}

//Mic Flash Timer

if (micFlashTimer > 0)
{
	micFlashTimer -= 1;
}
else if (micFlashTimer == 0)
{
	micFlash = !micFlash;
	micFlashTimer = micFlashTimerMax;
}

//Reset Final Cutter State Counter
if(finalCutterBuffer <= 0 && !attack){
	finalCutterState = 0;
	finalCutterReadInput = false;
}else{
	finalCutterBuffer--;
}

//Reset Combo Buffer
comboBuffer = clamp(comboBuffer-1,0,99990);

//Reset Upward Fire Dash on landing
if(grounded){
	fireDashUp = 2;
	jetDashAir = 3;
}

//Fast Fall
//if(keyDownPressed && downInputBufferTimer > 0){
//	vsp = gravLimit;
//	fallHop = true;
//}

//Input Buffers (for motion input attacks)
runBuffer += 1;
runBuffer = clamp(runBuffer,0,10000);

if(keyDownHold){
	downInputBufferTimer = downInputBuffer;
}else{
	downInputBufferTimer--;
}