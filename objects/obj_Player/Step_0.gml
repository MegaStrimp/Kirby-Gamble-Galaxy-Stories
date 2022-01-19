///@description Main

//Variables

var playerAbility = global.abilityP1;
if (player == 1) playerAbility = global.abilityP2;

var playerCharacter = global.characterP1;
if (player == 1) playerCharacter = global.characterP2;

var playerIsHelper = global.isHelperP1;
if (player == 1) playerIsHelper = global.isHelperP2;

var playerFamiliar = global.familiarP1;
if (player == 1) playerFamiliar = global.familiarP2;

scr_Player_Inputs(player);

//Clamp To View

var clampToView = false;

if ((instance_exists(obj_Camera)) and (obj_Camera.targetClampToView)) clampToView = true;

if ((clampToView) and (!death))
{
	x = clamp(x,camera_get_view_x(gameView),camera_get_view_x(gameView) + camera_get_view_width(gameView));
	y = clamp(y,camera_get_view_y(gameView),camera_get_view_y(gameView) + camera_get_view_height(gameView));
}

//Death

if ((((player == 0) and (global.hpP1 == 0)) or ((player == 1) and (global.hpP2 == 0))) and (!death))
{
	if ((global.goldenTomato) and (!global.gambleMaykr))
	{
		if (audio_is_playing(snd_Charge_Ready)) audio_stop_sound(snd_Charge_Ready);
		audio_play_sound(snd_Charge_Ready,0,false);
		if (instance_exists(obj_Hud))
		{
			var particle = instance_create_depth(obj_Hud.goldenTomatoPosX,obj_Hud.goldenTomatoPosY,obj_Hud.depth - 1,obj_Particle);
			particle.sprite_index = spr_Particle_Flash1;
			particle.destroyAfterAnimation = true;
		}
		global.hpP1 = global.hpMax;
		global.hpP2 = global.hpMax;
		global.goldenTomato = false;
	}
	else
	{
		audio_stop_all();
		if (instance_exists(obj_Music)) instance_destroy(obj_Music);
		audio_play_sound(snd_Hurt,0,false);
		death = true;
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

if (!global.pause)
{
	//Abilities
	
	switch (playerAbility)
	{
		case playerAbilities.bomb:
		if (state != playerStates.slide) bombDownReady = false;
		break;
		
		case playerAbilities.fire:
		var maxTimer = fireParticleTimerMax;
		if ((attackNumber == "fireAerial") or (attackNumber == "fireWheel") or (attackNumber == "fireBack")) maxTimer = floor(fireParticleTimerMax / 2);
		if (fireParticleTimer == -1) fireParticleTimer = fireParticleTimerMax;
		break;
		
		case playerAbilities.spark:
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
				aura.sprite_index = spr_Particle_SparkAura;
				aura.dmg = 6;
			}
			sparkMaxCharge = true;
		}
		break;
	}
	
	if ((playerCharacter != "gordo") and (playerCharacter != "bloodGordo")) imageAngle = 0;
	
	//State Based Variables
	
	if (state != playerStates.normal)
	{
		fallHop = false;
		fallHopCounter = 0;
		iceKick = false;
	}
	
	//Bumpers
	
	if (place_meeting(x,y,obj_Bumper))
	{
		//Variables
		
		var collidedBumper = instance_place(x,y,obj_Bumper);
		collidedBumper.hit = true;
		collidedBumper.hitTimer = collidedBumper.hitTimerMax;
		jumpLimit = false;
		jumpLimitTimer = jumpLimitTimerMax;
		
		//Sound
		
		audio_play_sound(snd_Bumper,0,false);
		
		//Change State To Normal
		
		if ((state == playerStates.inhale) or (state == playerStates.climb) or (state == playerStates.slide))
		{
			inhaleSoundCont = false;
			if (audio_is_playing(snd_Inhale_Intro)) audio_stop_sound(snd_Inhale_Intro);
			if (audio_is_playing(snd_Inhale_Loop)) audio_stop_sound(snd_Inhale_Loop);
			state = playerStates.normal;
		}
		
		//Vertical Knockback
		
		if (y > ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2 )) + 4))
		{
			vsp = collidedBumper.force;
		}
		if (y < ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2 )) - 4))
		{
			vsp = -collidedBumper.force;
		}
		if ((y < ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2 )) + 4)) and (y > ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2 )) - 4)))
		{
			vsp = collidedBumper.force / 2;
		}
		
		//Horizontal Knockback
	
		if (x > ((collidedBumper.x + (sprite_get_width(collidedBumper.sprite_index) / 2 )) + 4))
		{
			hsp = collidedBumper.force;
		}
		if (x < ((collidedBumper.x + (sprite_get_width(collidedBumper.sprite_index) / 2 )) - 4))
		{
			hsp = -collidedBumper.force;
		}
	}
	
	//Springs
	
	if (place_meeting(x,y + 1,obj_Spring))
	{
		if (sign(vsp) == 1)
		{
			//Variables
			
			var collidedSpring = instance_place(x,y + 1,obj_Spring);
			collidedSpring.hit = true;
			collidedSpring.hitTimer = collidedSpring.hitTimerMax;
			jumpLimit = false;
			jumpLimitTimer = jumpLimitTimerMax;
			
			//Particles
			
			for (var i = 0; i < 2; i++)
			{
				var par = instance_create_depth(collidedSpring.x + (8 * collidedSpring.image_xscale),collidedSpring.y + (4 * collidedSpring.image_yscale),collidedSpring.depth + 1,obj_Particle);
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
			
			//Sound
			
			if (!global.cutscene)
			{
				if (keyJumpPressed)
				{
					audio_play_sound(snd_BigJump,0,false);
				}
				else
				{
					audio_play_sound(snd_Jump,0,false);
				}
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
			
			if ((!global.cutscene) and (keyJumpPressed))
			{
				vsp = -collidedSpring.force * 1.5;
			}
			else
			{
				vsp = -collidedSpring.force;
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
		}
	}
}

//Player States

switch (state)
{
	//Normal
	
    case (playerStates.normal):
	scr_Player_Normal();
	break;
	
	//Slide
	
    case (playerStates.slide):
	scr_Player_Slide();
	break;
	
	//Float
	
    case (playerStates.float):
	scr_Player_Float();
	break;
	
	//Climb
	
    case (playerStates.climb):
	scr_Player_Climb();
	break;
	
	//Enter
	
    case (playerStates.enter):
	scr_Player_Enter();
	break;
	
	//Inhale
	
    case (playerStates.inhale):
	scr_Player_Inhale();
	break;
	
	//Carry
	
    case (playerStates.carry):
	scr_Player_Carry();
	break;
	
	//Swallow
	
    case (playerStates.swallow):
	scr_Player_Swallow();
	break;
	
	//Cutter Dash
	
    case (playerStates.cutterDash):
	scr_Player_CutterDash();
	break;
	
	//Cutter Drop
	
    case (playerStates.cutterDrop):
	scr_Player_CutterDrop();
	break;
	
	//Beam Grab
	
    case (playerStates.beamGrab):
	scr_Player_BeamGrab();
	break;
	
	//Mystic Beam Grab
	
    case (playerStates.mysticBeamGrab):
	scr_Player_MysticBeamGrab();
	break;
	
	//Mirror Dash
	
    case (playerStates.mirrorDash):
	scr_Player_MirrorDash();
	break;
	
	//Fire Dash
	
    case (playerStates.fireDash):
	scr_Player_FireDash();
	break;
	
	//Ice Grab
	
    case (playerStates.iceGrab):
	scr_Player_IceGrab();
	break;
	
	//Wing Dash
	
    case (playerStates.wingDash):
	scr_Player_WingDash();
	break;
	
	//Sword Dash
	
    case (playerStates.swordDash):
	scr_Player_SwordDash();
	break;
	
	//Death
	
    case (playerStates.death):
	scr_Player_Death();
	break;
}

//Select Button

if (keySelectPressed)
{
	switch (playerCharacter)
	{
		case playerCharacters.kirby:
		if ((!global.pause) and (!global.cutscene) and (((player == 0) and (global.abilityP1 != playerAbilities.none)) or ((player == 1) and (global.abilityP2 != playerAbilities.none))) and (!attack))
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
			abilityDropStar.vsp = -abilityDropStar.jumpspeed;
			abilityDropStar.dir = -image_xscale;
			abilityDropStar.player = player;
			if (player == 0)
			{
				abilityDropStar.ability = global.abilityP1;
				global.abilityP1 = playerAbilities.none;
			}
			else
			{
				abilityDropStar.ability = global.abilityP2;
				global.abilityP2 = playerAbilities.none;
			}
			switch (abilityDropStar.ability)
			{
				case playerAbilities.cutter:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Cutter;
				break;
			
				case playerAbilities.beam:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Beam;
				break;
			
				case playerAbilities.mysticBeam:
				abilityDropStar.sprite_index = spr_AbilityDropStar_MysticBeam;
				break;
			
				case playerAbilities.stone:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Stone;
				break;
			
				case playerAbilities.ufo:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Ufo;
				break;
			
				case playerAbilities.mirror:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Mirror;
				break;
			
				case playerAbilities.ninja:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Ninja;
				break;
			
				case playerAbilities.bomb:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Bomb;
				break;
			
				case playerAbilities.fire:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Fire;
				break;
			
				case playerAbilities.mysticFire:
				abilityDropStar.sprite_index = spr_AbilityDropStar_MysticFire;
				break;
			
				case playerAbilities.ice:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Ice;
				break;
			
				case playerAbilities.spark:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Spark;
				break;
			
				case playerAbilities.yoyo:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Yoyo;
				break;
			
				case playerAbilities.wheel:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Wheel;
				break;
			
				case playerAbilities.artist:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Artist;
				break;
			
				case playerAbilities.fighter:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Fighter;
				break;
			
				case playerAbilities.suplex:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Suplex;
				break;
			
				case playerAbilities.wing:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Wing;
				break;
			
				case playerAbilities.jet:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Jet;
				break;
			
				case playerAbilities.sword:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Sword;
				break;
			
				case playerAbilities.parasol:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Parasol;
				break;
			
				case playerAbilities.hammer:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Hammer;
				break;
			
				case playerAbilities.bell:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Bell;
				break;
			
				case playerAbilities.water:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Water;
				break;
			
				default:
				abilityDropStar.sprite_index = spr_AbilityDropStar_Normal;
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
		if (hatBackgroundImageIndex <= sprite_get_number(hatFrontIndex) - 1)
		{
			hatBackgroundImageIndex += hatBackgroundImageIndexSpd;
		}
		else
		{
			hatBackgroundImageIndex -= sprite_get_number(hatFrontIndex) - 1;
		}
	}
}

//Hp Clamp

global.hpP1 = clamp(global.hpP1,0,global.hpMax);
global.hpP2 = clamp(global.hpP2,0,global.hpMax);

//Scale

if ((attackNumber == "stoneNormal") or (attackNumber == "gooeyStoneNormal"))
{
	image_xscale = scale;
}
else
{
	image_xscale = scale * dir;
}
image_yscale = scale;

//Masks

mask_index = maskIndex;

if (state == playerStates.slide)
{
	mask_index = spr_Kirby_DuckMask;
}

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
		invincibleFlashTimer = invincibleFlashTimerMax;
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
		if (run)
		{
			if ((place_meeting(x,y + 1,obj_Wall)) and (abs(hsp) >= (movespeedRun * .25)))
			{
				var collidingWall = instance_place(x,y + 1,obj_Wall);
				if ((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + 20 + vspFinal))))
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
		if ((!keyLeftHold) and (!keyRightHold))
	    {
	        runCancelTimer = runCancelTimerMax;
	        runCancelTimer = -1;
	        run = false;
	        runDoubleTap = 0;
	    }
	    else
	    {
	        runCancelTimer = -1;
	    }
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
	
	if ((attack) and (attackNumber = "beamAir"))
	{
		if (beamAttack2Timer > 0)
		{
			beamAttack2Timer -= 1;
		}
		else if (beamAttack2Timer == 0)
		{
			var projBeam = instance_create_depth(x + (15 * dir),y + 10,depth,obj_Projectile_Beam);
			projBeam.imageSpeed = 1;
			projBeam.owner = id;
			projBeam.dmg = 8 + (10 * beamAttack2FirstHit);
		    projBeam.dirX = -dir;
		    projBeam.dir = dir;
			projBeam.image_xscale = projBeam.dirX;
			projBeam.spd = random_range(6,8);
			projBeam.direction = 270 + (projBeam.dir * 45) + irandom_range(-25,25);
		    projBeam.state = 1;
		    projBeam.enemy = false;
			projBeam.invisTimer = -1;
			projBeam.alphaTimer = projBeam.alphaTimerMax;
			if (beamGoldenFlareUpgrade)
			{
				projBeam.character = 6;
				projBeam.sprite_index = spr_Projectile_Beam_Gold;
			}
			if (beamAttack2FirstHit) beamAttack2FirstHit = false;
		    beamAttack2Timer = -1;
		}
	}
	
	//Beam Dash Attack Timer
	
	if ((attack) and (attackNumber = "beamDash"))
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
				par.destroyTimer = 10;
			}
		    beamDashAttackTimer = -1;
		}
	}
	
	//Beam Grab Timer
	
	if ((attack) and (attackNumber = "beamGrab"))
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
			projBeam.dmg = 21;
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
		    beamGrabTimer = beamGrabTimerMax - beamGoldenFlareUpgrade;
		}
	}
	else
	{
		beamGrabTimer = -1;
	}
	
	//Mystic Beam Grab Timer
	
	if ((attack) and (attackNumber = "mysticBeamGrab"))
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
			projBeam.dmg = 21;
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
	
	if ((attack) and (attackNumber = "mysticBeamAir"))
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
			projBeam.dmg = 18;
		    projBeam.dirX = -dir;
		    projBeam.dir = dir;
			projBeam.image_xscale = projBeam.dirX;
			projBeam.spd = 5;
			projBeam.direction = 270 + (projBeam.dir * 45);
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
	
	//Waddle Doo Eye Flash Timer
	
	if (attackNumber == "waddleDooBeamNormal")
	{
		if (waddleDooEyeFlashTimer > 0)
		{
			waddleDooEyeFlashTimer -= 1;
		}
		else if (waddleDooEyeFlashTimer == 0)
		{
			if (waddleDooEyeFlash)
			{
				waddleDooEyeFlash = false;
			}
			else
			{
				waddleDooEyeFlash = true;
			}
			waddleDooEyeFlashTimer = waddleDooEyeFlashTimerMax;
		}
	}
	else
	{
		waddleDooEyeFlash = false;
		waddleDooEyeFlashTimer = -1;
	}
	
	//Stone Ready Timer
	
	if (stoneReadyTimer > 0)
	{
		stoneReadyTimer -= 1;
	}
	else if (stoneReadyTimer == 0)
	{
		stoneReady = false;
		if (!place_meeting(x,y + 1,obj_Wall))
		{
			scaleExX = -.1;
			scaleExY = .1;
		}
		grav = gravStone;
		gravLimit = gravLimitStone;
		stoneMaskProj = instance_create_depth(x,y,depth - 1,obj_Projectile_StoneMask);
		stoneMaskProj.dmg = 50;
		stoneMaskProj.hsp = hsp;
		stoneMaskProj.vsp = vsp;
		stoneMaskProj.enemy = false;
		stoneMaskProj.owner = id;
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
		stoneFistMaskProj = instance_create_depth(x + (10 * dir),y - 7,depth - 1,obj_Projectile_StoneFistMask);
		stoneFistMaskProj.dmg = 40;
		stoneFistMaskProj.dirX = dir;
		stoneFistMaskProj.xPos = 12;
		stoneFistMaskProj.yPos = -10;
		stoneFistMaskProj.enemy = false;
		stoneFistMaskProj.owner = id;
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
		projectile.dmg = 4;
		if (mirrorFirstAttack)
		{
			projectile.dmg = 12;
			mirrorFirstAttack = false;
		}
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
			if (attackNumber == "fireBack")
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
		projectile.imageSpeed = 1 - (fireMagicCharcoalUpgrade / 4);
		projectile.dmg = 6;
		projectile.sprite_index = projectile.sprIdle;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.hsp = 2 * dir;
        if ((!global.cutscene) and (keyUpHold))
        {
            projectile.vsp = random_range(-.5,0) - .75;
        }
        else if ((!global.cutscene) and (keyDownHold))
        {
            projectile.vsp = random_range(0,.5) + .75;
        }
        else
        {
            projectile.vsp = random_range(-.5,.5);
        }
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
		if (place_meeting(x,y + 1,obj_Wall)) sprite_index = sprFireAttackRelease1;
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
		projectile.dmg = 6;
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
	
	if (attackNumber == "wingDash")
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

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	if (!global.gambleMaykr)
	{
		if ((playerFamiliar != "none") and ((playerFamiliar == "Gamble") + (playerCharacter = playerCharacters.gamble) != 2))
		{
			var followerObject = instance_create_depth(x + (30 * -dir),y - 15,depth,obj_Familiar);
			followerObject.owner = id;
			followerObject.character = playerFamiliar;
		}
		if ((global.hasCoop) and (instance_number(obj_Player) == 1))
		{
			var xx = x;
			if (!place_meeting(x - 24,y,obj_Wall))
			{
				xx = x - 24;
			}
			else if (!place_meeting(x + 24,y,obj_Wall))
			{
				xx = x + 24;
			}
			else
			{
				xx = x;
			}
			
			var secondPlayer = instance_create_depth(xx,y,depth,obj_Player);
			secondPlayer.player = 1;
			player = 0;
		}
	}
	setupTimer = -1;
}

//Character Setup Timer

if (characterSetupTimer > 0)
{
	characterSetupTimer -= 1;
}
else if (characterSetupTimer == 0)
{
	if (player == 0)
	{
		var sprayPaint = global.sprayPaintP1;
		global.isHelperP1 = false;
	}
	else
	{
		var sprayPaint = global.sprayPaintP2;
		global.isHelperP2 = false;
	}
	var selectedCharacter = global.characterP1;
	if (player == 1) selectedCharacter = global.characterP2;
	
	switch (selectedCharacter)
	{
		case playerCharacters.kirby:
		if (player == 0)
		{
			global.sprayPaintP1 = global.sprayPaintKirbyP1;
		}
		else
		{
			global.sprayPaintP2 = global.sprayPaintKirbyP2;
		}
		gravNormal = .23;
		gravStone = .7;
		grav = gravNormal;
		gravFloat = .075;
		gravFireDash = .05;
		gravLimitNormal = 5;
		gravLimitFloat = 2.3;
		gravLimitStone = 7;
		gravLimitFireDash = 1.25;
		gravLimit = gravLimitNormal;
		hsp = 0;
		fireDashHsp = 0;
		hspFinal = 0;
		vsp = 0;
		vspFinal = 0;
		jumpspeedNormal = 6;
		jumpspeedFloat = 1.8;
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
		
		hasGravity = true;
		hasJumpLimit = true;
		canWalk = true;
		canRun = true;
		canRunTurn = true;
		canJump = true;
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
		runImageSpeedIncrease = 0;
		
		maskIndex = spr_16Square_Mask;
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
		sprCutterCharge = spr_SirKibble_Normal_Catch;
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
		sprWaddleDooFlashingEye = spr_WaddleDoo_Normal_FlashingEye;
		sprStoneAttack1Ready = spr_Kirby_Normal_Stone_Attack1Ready;
		if (player == 0)
		{
			sprStoneAttack1Common = spr_Kirby_Normal_Stone_Attack1_Common1;
			sprStoneAttack1Uncommon = spr_Kirby_Normal_Stone_Attack1_Uncommon1;
			sprStoneAttack1Rare = spr_Kirby_Normal_Stone_Attack1_Rare1;
		}
		else
		{
			sprStoneAttack1Common = spr_Kirby_Normal_Stone_Attack1_Common2;
			sprStoneAttack1Uncommon = spr_Kirby_Normal_Stone_Attack1_Uncommon2;
			sprStoneAttack1Rare = spr_Kirby_Normal_Stone_Attack1_Rare2;
		}
		sprStoneAttack2Ready = spr_Kirby_Normal_Stone_Attack2Ready;
		sprStoneAttack2 = spr_Kirby_Normal_Stone_Attack2;
		sprStoneAttack2Release = spr_Kirby_Normal_Stone_Attack2Release;
		sprUfoIdle = spr_Kirby_Normal_Ufo_Idle;
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
		sprSparkMaxChargeSteepSlopeR = spr_Kirby_Normal_Spark_MaxCharge_SteepSlopeR
		sprSparkAttack1Ready = spr_Kirby_Normal_Spark_Attack1Ready;
		sprSparkAttack1 = spr_Kirby_Normal_Spark_Attack1;
		sprSparkAttack2Ready = spr_Kirby_Normal_Spark_Attack2Ready;
		sprSparkAttack2 = spr_Kirby_Normal_Spark_Attack2;
		sprSparkAttack3 = spr_Kirby_Normal_Spark_Attack3;
		sprSparkAttack4 = spr_Kirby_Normal_Spark_Attack4;
		sprWingAttack1 = spr_Kirby_Normal_Wing_Attack1;
		sprWingAttack2Ready = spr_Kirby_Normal_Wing_Attack2Ready;
		sprWingAttack2 = spr_Kirby_Normal_Wing_Attack2;
		sprSwordAttack1 = spr_Kirby_Normal_Sword_Attack1;
		sprSwordAttack2 = spr_Kirby_Normal_Sword_Attack2;
		sprSleepReady = spr_Kirby_Normal_SleepReady;
		sprSleep = spr_Kirby_Normal_Sleep;
		sprSleepEnd = spr_Kirby_Normal_SleepEnd;
		sprScanReady = spr_Kirby_Normal_ScanReady;
		sprScan = spr_Kirby_Normal_Scan;
		sprScanEnd = spr_Kirby_Normal_ScanEnd;
		sprFreezeAttack1Ready = spr_Kirby_Normal_Freeze_Attack1Ready;
		sprFreezeAttack1 = spr_Kirby_Normal_Freeze_Attack1;
		sprHurt = spr_Kirby_Normal_Hurt;
		sprDeath = spr_Kirby_Normal_Death;
		break;
		
		case playerCharacters.gamble:
		if (player == 0)
		{
			global.sprayPaintP1 = global.sprayPaintKirbyP1;
		}
		else
		{
			global.sprayPaintP2 = global.sprayPaintKirbyP2;
		}
		
		gravNormal = .23;
		gravStone = .7;
		grav = gravNormal;
		gravFloat = .075;
		gravLimitNormal = 5;
		gravLimitFloat = 2.3;
		gravLimitStone = 7;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 6;
		jumpspeedFloat = 1.8;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.7;
		movespeedRun = 2.6;
		movespeedSlide = 5;
		movespeedFloat = 1.9;
		movespeedCarry = 2;
		movespeedBurst = 6;
		movespeed = movespeedNormal;
		ufoFloatSpd = 2;
		accel = .2;
		accelFloat = .1;
		decel = .075;
		decelSlide = .125;
		decelSwordDash = .1;
		decelFloat = .025;
		climbSpeed = 2;
		
		hasGravity = false;
		hasJumpLimit = true;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = false;
		canAutoJump = false;
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
		
		maskIndex = spr_16Square_Mask;
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
		break;
		
		case playerCharacters.gooey:
		sprIdle = spr_Gooey_Normal_Idle;
		sprDuck = spr_Gooey_Normal_Duck;
		sprJump = spr_Gooey_Normal_Jump;
		sprRoll = spr_Gooey_Normal_Roll;
		sprRollDuckReady = spr_Gooey_Normal_RollDuckReady;
		sprRollDuck = spr_Gooey_Normal_RollDuck;
		sprBackflip = spr_Gooey_Normal_Backflip;
		sprFall = spr_Gooey_Normal_Fall;
		sprStoneAttack1Ready = spr_Gooey_Normal_Stone_AttackReady;
		if (player == 0)
		{
			sprStoneAttack1Common = spr_Gooey_Normal_Stone_Attack_Common1;
			sprStoneAttack1Uncommon = spr_Gooey_Normal_Stone_Attack_Uncommon1;
			sprStoneAttack1Rare = spr_Gooey_Normal_Stone_Attack_Rare1;
		}
		else
		{
			sprStoneAttack1Common = spr_Gooey_Normal_Stone_Attack_Common2;
			sprStoneAttack1Uncommon = spr_Gooey_Normal_Stone_Attack_Uncommon2;
			sprStoneAttack1Rare = spr_Gooey_Normal_Stone_Attack_Rare2;
		}
		sprFireAttack2 = spr_Gooey_Normal_Fire_Attack;
		sprFireAttackRelease1 = spr_Gooey_Normal_Fire_AttackRelease1;
		sprFireAttackRelease2 = spr_Gooey_Normal_Fire_AttackRelease2;
		break;
		
		case "waddleDee":
		var skin = choose("normal","normal","normal","normal","normal","normal","egg","egg","egg","gold");
		
		#region Physics
		gravNormal = .2;
		grav = gravNormal;
		gravLimitNormal = 5;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 5;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.3;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		climbSpeed = 2;
		#endregion
		
		#region Other Variables
		hasGravity = true;
		hasJumpLimit = true;
		canWalk = true;
		canRun = true;
		canRunTurn = false;
		canJump = true;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAutoJump = false;
		canAttack = false;
		canDuck = true;
		canDuckHighJump = true;
		canSlide = false;
		canClimb = true;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		canGetHurt = true;
		runImageSpeedIncrease = .5;
		#endregion
		
		switch (skin)
		{
			case "normal":
			#region Palettes
			var pal;
			var i = 0;
			pal[i] = spr_WaddleDee_Normal_Palette_WaddleWaddle;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_AzureSky;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_FineChina;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_ParkRobot;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_BarkNBite;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_TreadingLightly;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_EtherealHoney;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_JollyRed;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_DimBerry;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_RetroScreen;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_RottenCore;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_FadedGlory;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_NowYouSeeMe;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_Snowtops;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_AngelicGold;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_UnderlingGlow;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_AbominableSnowdee;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_SparklingGold;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_GroveGamble;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_DeepPoison;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_ArrogantMercenary;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_BurntSienna;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_CoralReef;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_MoonlitLake;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_DirtyPast;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_CranberryDelight;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_Whiteboard;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_Deepsink;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_GlowOfTheGrey;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_ChillingBane;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_OneBitWonder;
			i += 1;
			pal[i] = spr_WaddleDee_Normal_Palette_CandyWrappers;
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
			sprIdle = spr_WaddleDee_Normal_Idle;
			sprWalk = spr_WaddleDee_Normal_Walk;
			sprRun = spr_WaddleDee_Normal_Walk;
			sprJump = spr_WaddleDee_Normal_Jump;
			sprFall = spr_WaddleDee_Normal_Fall;
			sprSquish = spr_WaddleDee_Normal_Idle;
			sprDuck = spr_WaddleDee_Normal_Duck;
			sprEnter = spr_WaddleDee_Normal_Walk;
			sprClimbUp = spr_WaddleDee_Normal_ClimbUp;
			sprClimbDown = spr_WaddleDee_Normal_ClimbDown;
			sprHurt = spr_WaddleDee_Normal_Hurt;
			sprDeath = spr_WaddleDee_Normal_Hurt;
			#endregion
			break;
			
			case "egg":
			#region Palettes
			var pal;
			var i = 0;
			pal[i] = spr_WaddleDee_Egg_Palette_EggedOn;
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
			sprIdle = spr_WaddleDee_Egg_Idle;
			sprWalk = spr_WaddleDee_Egg_Walk;
			sprRun = spr_WaddleDee_Egg_Walk;
			sprJump = spr_WaddleDee_Egg_Jump;
			sprFall = spr_WaddleDee_Egg_Fall;
			sprSquish = spr_WaddleDee_Egg_Idle;
			sprDuck = spr_WaddleDee_Egg_Duck;
			sprEnter = spr_WaddleDee_Egg_Walk;
			sprClimbUp = spr_WaddleDee_Egg_ClimbUp;
			sprClimbDown = spr_WaddleDee_Egg_ClimbDown;
			sprHurt = spr_WaddleDee_Egg_Hurt;
			sprDeath = spr_WaddleDee_Egg_Hurt;
			#endregion
			break;
			
			case "gold":
			#region Palettes
			var pal;
			var i = 0;
			pal[i] = spr_WaddleDee_Gold_Palette_HiddenTreasure;
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
			sprIdle = spr_WaddleDee_Gold_Idle;
			sprWalk = spr_WaddleDee_Gold_Walk;
			sprRun = spr_WaddleDee_Gold_Walk;
			sprJump = spr_WaddleDee_Gold_Jump;
			sprFall = spr_WaddleDee_Gold_Fall;
			sprSquish = spr_WaddleDee_Gold_Idle;
			sprDuck = spr_WaddleDee_Gold_Duck;
			sprEnter = spr_WaddleDee_Gold_Walk;
			sprClimbUp = spr_WaddleDee_Gold_ClimbUp;
			sprClimbDown = spr_WaddleDee_Gold_ClimbDown;
			sprHurt = spr_WaddleDee_Gold_Hurt;
			sprDeath = spr_WaddleDee_Gold_Hurt;
			#endregion
			break;
			
			case "alien":
			#region Palettes
			var pal;
			var i = 0;
			pal[i] = spr_WaddleDee_Alien_Palette_Graylien;
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
			sprIdle = spr_WaddleDee_Alien_Idle;
			sprWalk = spr_WaddleDee_Alien_Walk;
			sprRun = spr_WaddleDee_Alien_Walk;
			sprJump = spr_WaddleDee_Alien_Jump;
			sprFall = spr_WaddleDee_Alien_Fall;
			sprSquish = spr_WaddleDee_Alien_Idle;
			sprDuck = spr_WaddleDee_Alien_Duck;
			sprEnter = spr_WaddleDee_Alien_Walk;
			sprClimbUp = spr_WaddleDee_Alien_ClimbUp;
			sprClimbDown = spr_WaddleDee_Alien_ClimbDown;
			sprHurt = spr_WaddleDee_Alien_Hurt;
			sprDeath = spr_WaddleDee_Alien_Hurt;
			#endregion
			break;
		}
		
		if (player == 0)
		{
			global.sprayPaintP1 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP1 = true;
		}
		else
		{
			global.sprayPaintP2 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP2 = true;
		}
		break;
		
		case "waddleDoo":
		var skin = choose("normal");
		
		#region Physics
		gravNormal = .2;
		grav = gravNormal;
		gravLimitNormal = 5;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 5;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.3;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		climbSpeed = 2;
		#endregion
		
		#region Other Variables
		hasGravity = true;
		hasJumpLimit = true;
		canWalk = true;
		canRun = true;
		canRunTurn = false;
		canJump = true;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAutoJump = false;
		canAttack = true;
		canDuck = true;
		canDuckHighJump = true;
		canSlide = false;
		canClimb = true;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		canGetHurt = true;
		runImageSpeedIncrease = .5;
		#endregion
		
		switch (skin)
		{
			case "normal":
			#region Palettes
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
			pal[i] = spr_WaddleDoo_Normal_Palette_Berry;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_Lilac;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_AquaDepths;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_Ocean;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_MintyBreeze;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_NoFun;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_FilthyRich;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_CowardlyBrother;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_LetsaGo;
			i += 1;
			pal[i] = spr_WaddleDoo_Normal_Palette_Amber;
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
			#endregion
		
			#region Sprites
			maskIndex = spr_16Square_Mask;
			sprIdle = spr_WaddleDoo_Normal_Idle;
			sprWalk = spr_WaddleDoo_Normal_Walk;
			sprRun = spr_WaddleDoo_Normal_Walk;
			sprJump = spr_WaddleDoo_Normal_Jump;
			sprFall = spr_WaddleDoo_Normal_Fall;
			sprSquish = spr_WaddleDoo_Normal_Idle;
			sprDuck = spr_WaddleDoo_Normal_Duck;
			sprEnter = spr_WaddleDoo_Normal_Walk;
			sprClimbUp = spr_WaddleDoo_Normal_ClimbUp;
			sprClimbDown = spr_WaddleDoo_Normal_ClimbDown;
			sprHurt = spr_WaddleDoo_Normal_Hurt;
			sprDeath = spr_WaddleDoo_Normal_Hurt;
			sprBeamAttack1 = spr_WaddleDoo_Normal_Attack;
			sprWaddleDooFlashingEye = spr_WaddleDoo_Normal_FlashingEye;
			#endregion
			break;
		}
		
		if (player == 0)
		{
			global.sprayPaintP1 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP1 = true;
		}
		else
		{
			global.sprayPaintP2 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP2 = true;
		}
		break;
		
		case "brontoBurt":
		var skin = choose("normal");
		
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
		
		#region Other Variables
		hasGravity = true;
		hasJumpLimit = false;
		canWalk = true;
		canRun = true;
		canRunTurn = false;
		canJump = true;
		canAutoJump = false;
		canMultiJump = true;
		multiJumpLimit = 5;
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
		#endregion
		
		switch (skin)
		{
			case "normal":
			#region Palettes
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
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
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
			#endregion
			break;
			
			case "alien":
			#region Palettes
			var pal;
			var i = 0;
			pal[i] = spr_BrontoBurt_Alien_Palette_Graylien;
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
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
			#endregion
			break;
		}
		if (player == 0)
		{
			global.sprayPaintP1 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP1 = true;
		}
		else
		{
			global.sprayPaintP2 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP2 = true;
		}
		break;
		
		case "twizzy":
		var skin = choose("normal");
		
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
		
		#region Other Variables
		hasGravity = true;
		hasJumpLimit = false;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = true;
		canAutoJump = false;
		canMultiJump = true;
		multiJumpLimit = 6;
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
		#endregion
		
		switch (skin)
		{
			case "normal":
			#region Palettes
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
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
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
			#endregion
			break;
		}
		
		if (player == 0)
		{
			global.sprayPaintP1 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP1 = true;
		}
		else
		{
			global.sprayPaintP2 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP2 = true;
		}
		break;
		
		case "tookey":
		var skin = choose("normal");
		
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
		
		#region Other Variables
		hasGravity = true;
		hasJumpLimit = false;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = true;
		canAutoJump = false;
		canMultiJump = true;
		multiJumpLimit = 6;
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
		#endregion
		
		switch (skin)
		{
			case "normal":
			#region Palettes
			var pal;
			var i = 0;
			pal[i] = spr_Tookey_Normal_Palette_FlyingWhite;
			i += 1;
			pal[i] = spr_Tookey_Normal_Palette_Grape;
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
			sprIdle = spr_Tookey_Normal_Idle;
			sprWalk = spr_Tookey_Normal_Fly;
			sprRun = spr_Tookey_Normal_Fly;
			sprJump = spr_Tookey_Normal_Fly;
			sprFall = spr_Tookey_Normal_Fly;
			sprSquish = spr_Tookey_Normal_Idle;
			sprDuck = spr_Tookey_Normal_Idle;
			sprEnter = spr_Tookey_Normal_Idle;
			sprHurt = spr_Tookey_Normal_Hurt;
			sprDeath = spr_Tookey_Normal_Hurt;
			#endregion
			break;
		}
		
		if (player == 0)
		{
			global.sprayPaintP1 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP1 = true;
		}
		else
		{
			global.sprayPaintP2 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP2 = true;
		}
		break;
		
		case "sirKibble":
		var skin = choose("normal");
		
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
		
		#region Other Variables
		hasGravity = true;
		hasJumpLimit = true;
		canWalk = true;
		canRun = true;
		canRunTurn = false;
		canJump = true;
		canAutoJump = false;
		canMultiJump = false;
		multiJumpLimit = -1;
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
		#endregion
		
		switch (skin)
		{
			case "normal":
			#region Palettes
			var pal;
			var i = 0;
			pal[i] = spr_SirKibble_Normal_Palette_KnightlyPink;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_Black;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_Gold;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_Green;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_Jade;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_Stone;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_Titanium;
			i += 1;
			pal[i] = spr_SirKibble_Normal_Palette_Yellow;
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
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
			sprCutterCharge = spr_SirKibble_Normal_Catch;
			sprCutterAttack1 = spr_SirKibble_Normal_Attack;
			sprCutterCatch = spr_SirKibble_Normal_Catch;
			#endregion
			break;
		}
		
		if (player == 0)
		{
			global.sprayPaintP1 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP1 = true;
		}
		else
		{
			global.sprayPaintP2 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP2 = true;
		}
		break;
		
		case "bouncy":
		var skin = choose("normal","normal","normal","robo","robo");
		
		#region Physics
		gravNormal = .2;
		grav = gravNormal;
		gravLimitNormal = 5;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 5;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.3;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		#endregion
		
		#region Other Variables
		hasGravity = true;
		hasJumpLimit = true;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = false;
		canAutoJump = true;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAttack = false;
		canDuck = true;
		canDuckHighJump = true;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		canGetHurt = true;
		runImageSpeedIncrease = 0;
		#endregion
		
		switch (skin)
		{
			case "normal":
			#region Palettes
			var pal;
			var i = 0;
			pal[i] = spr_Bouncy_Normal_Palette_HoppingPink;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_BerryBounce;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_AmberNChrome;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_AzureSpring;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_DeepSeaDive;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_EmeraldEscape;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_Exoskeleton;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_GoldsMold;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_GolfCourse;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_GrapeGetaway;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_HotSpring;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_LightlyBouncing;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_OceansBounce;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_RustedFlux;
			i += 1;
			pal[i] = spr_Bouncy_Normal_Palette_TwistyTumble;
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
			sprIdle = spr_Bouncy_Normal_Idle;
			sprWalk = spr_Bouncy_Normal_Jump;
			sprJump = spr_Bouncy_Normal_Jump;
			sprFall = spr_Bouncy_Normal_Idle;
			sprSquish = spr_Bouncy_Normal_Idle;
			sprDuck = spr_Bouncy_Normal_Duck;
			sprEnter = spr_Bouncy_Normal_Idle;
			sprHurt = spr_Bouncy_Normal_Hurt;
			sprDeath = spr_Bouncy_Normal_Hurt;
			#endregion
			break;
			
			case "robo":
			#region Palettes
			var pal;
			var i = 0;
			pal[i] = spr_Bouncy_Robo_Palette_MechanicalGray;
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
			sprIdle = spr_Bouncy_Robo_Idle;
			sprWalk = spr_Bouncy_Robo_Jump;
			sprJump = spr_Bouncy_Robo_Jump;
			sprFall = spr_Bouncy_Robo_Idle;
			sprSquish = spr_Bouncy_Robo_Idle;
			sprDuck = spr_Bouncy_Robo_Duck;
			sprEnter = spr_Bouncy_Robo_Idle;
			sprHurt = spr_Bouncy_Robo_Hurt;
			sprDeath = spr_Bouncy_Robo_Hurt;
			#endregion
			break;
		}
		
		if (player == 0)
		{
			global.sprayPaintP1 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP1 = true;
		}
		else
		{
			global.sprayPaintP2 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP2 = true;
		}
		break;
		
		case "gordo":
		var skin = choose("normal");
		
		#region Physics
		gravNormal = .2;
		grav = gravNormal;
		gravLimitNormal = 5;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 4;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.5;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		#endregion
		
		#region Other Variables
		hasGravity = true;
		hasJumpLimit = false;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = false;
		canAutoJump = true;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAttack = false;
		canDuck = true;
		canDuckHighJump = true;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		canGetHurt = false;
		runImageSpeedIncrease = 0;
		#endregion
		
		switch (skin)
		{
			case "normal":
			#region Palettes
			var pal;
			var i = 0;
			pal[i] = spr_Gordo_Normal_Palette_ThornyBackside;
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
			sprIdle = spr_Gordo_Normal_Idle;
			sprWalk = spr_Gordo_Normal_Idle;
			sprJump = spr_Gordo_Normal_Idle;
			sprFall = spr_Gordo_Normal_Idle;
			sprSquish = spr_Gordo_Normal_Idle;
			sprDuck = spr_Gordo_Normal_Idle;
			sprEnter = spr_Gordo_Normal_Idle;
			sprHurt = spr_Gordo_Normal_Idle;
			sprDeath = spr_Gordo_Normal_Idle;
			#endregion
			break;
		}
		
		if (player == 0)
		{
			global.sprayPaintP1 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP1 = true;
		}
		else
		{
			global.sprayPaintP2 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP2 = true;
		}
		break;
		
		case "bloodGordo":
		var skin = choose("normal");
		
		#region Physics
		gravNormal = .4;
		grav = gravNormal;
		gravLimitNormal = 8;
		gravLimit = gravLimitNormal;
		jumpspeedNormal = 6;
		jumpspeed = jumpspeedNormal;
		movespeedNormal = 1.5;
		movespeedRun = 2;
		movespeed = movespeedNormal;
		accel = .15;
		decel = .05;
		#endregion
		
		#region Other Variables
		hasGravity = true;
		hasJumpLimit = false;
		canWalk = true;
		canRun = false;
		canRunTurn = false;
		canJump = false;
		canAutoJump = true;
		canMultiJump = false;
		multiJumpLimit = -1;
		canAttack = false;
		canDuck = true;
		canDuckHighJump = true;
		canSlide = false;
		canClimb = false;
		canFloat = false;
		canEnter = true;
		canUfoFloat = false;
		canGetHurt = false;
		runImageSpeedIncrease = 0;
		#endregion
		
		switch (skin)
		{
			case "normal":
			#region Palettes
			var pal;
			var i = 0;
			pal[i] = spr_BloodGordo_Normal_Palette_BloodyThorns;
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
			sprIdle = spr_BloodGordo_Normal_Idle;
			sprWalk = spr_BloodGordo_Normal_Idle;
			sprJump = spr_BloodGordo_Normal_Idle;
			sprFall = spr_BloodGordo_Normal_Idle;
			sprSquish = spr_BloodGordo_Normal_Idle;
			sprDuck = spr_BloodGordo_Normal_Idle;
			sprEnter = spr_BloodGordo_Normal_Idle;
			sprHurt = spr_BloodGordo_Normal_Idle;
			sprDeath = spr_BloodGordo_Normal_Idle;
			#endregion
			break;
		}
		
		if (player == 0)
		{
			global.sprayPaintP1 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP1 = true;
		}
		else
		{
			global.sprayPaintP2 = pal[irandom_range(0,array_length(pal) - 1)];
			global.isHelperP2 = true;
		}
		break;
	}
	
	if (player == 0)
	{
		paletteIndex = global.sprayPaintP1;
	}
	else
	{
		paletteIndex = global.sprayPaintP2;
	}
	
	characterSetupTimer = -1;
}

//Upgrade Setup Timer

if (upgradeSetupTimer > 0)
{
	upgradeSetupTimer -= 1;
}
else if (upgradeSetupTimer == 0)
{
	beamGoldenFlareUpgrade = global.beamGoldenFlareUpgradeEquipped;
	mysticBeamVortexInAJarUpgrade = global.mysticBeamVortexInAJarUpgradeEquipped;
	stoneRockCandyUpgrade = global.stoneRockCandyUpgradeEquipped;
	stoneComboCobaltUpgrade = global.stoneComboCobaltUpgradeEquipped;
	bombMultiBombUpgrade = global.bombMultiBombUpgradeEquipped;
	bombEyeBombUpgrade = global.bombEyeBombUpgradeEquipped;
	bombSmartBombUpgrade = global.bombSmartBombUpgradeEquipped;
	bombMagmaBombUpgrade = global.bombMagmaBombUpgradeEquipped;
	bombExplosivePowderUpgrade = global.bombExplosivePowderUpgradeEquipped;
	fireMagicCharcoalUpgrade = global.fireMagicCharcoalUpgradeEquipped;
	iceEmptyConeUpgrade = global.iceEmptyConeUpgradeEquipped;
	sparkBrightPluggUpgrade = global.sparkBrightPluggUpgradeEquipped;
	waterEggSoilUpgrade = global.waterEggSoilUpgradeEquipped;
	upgradeSetupTimer = -1;
}

//Ground Failsafe Timer

if (groundFailsafeTimer > 0)
{
	groundFailsafeTimer -= 1;
}
else if (groundFailsafeTimer == 0)
{
	//Ground Failsafe
	
	while (place_meeting(x,y + 1,obj_Wall)) y -= 1;
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
	global.abilityP1 = playerAbilities.none;
	var musDeath = mus_Death1;
	if ((global.playerLives <= 0) and (!global.gambleMaykr)) musDeath = mus_Death2;
	audio_play_sound(musDeath,0,false);
	deathParticleTimer = deathParticleTimerMax;
	deathRestartTimer = deathRestartTimerMax;
	vsp = -jumpspeedNormal * 1.25;
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
	if (!global.gambleMaykr)
	{
		var fadeTrans = instance_create_depth(0,0,-999,obj_Fade);
		fadeTrans.targetRoom = global.roomCheckpoint;
		fadeTrans.alphaSpd = 0.02;
		fadeTrans.pausable = false;
		global.playerLives -= 1;
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
	if (player == 0)
	{
		global.abilityP1 = cAbility;
	}
	else
	{
		global.abilityP2 = cAbility;
	}
	if (cAbility != playerAbilities.none)
	{
		blackAlphaBox = true;
		swallowActionTimer = 0;
		global.pause = true;
		if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
	}
	if (audio_is_playing(snd_Swallow)) audio_stop_sound(snd_Swallow);
	audio_play_sound(snd_Swallow,0,false);
	hsp = 0;
	vsp = 0;
	run = false;
	cAbility = playerAbilities.none;
	image_index = 0;
	state = playerStates.swallow;
	attackTimer = 0;
	scanTimer = -1;
}