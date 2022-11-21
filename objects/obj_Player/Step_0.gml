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

invincibleFlash = false;
grounded = false;
if (place_meeting(x,y + 1,obj_ParentWall))
{
	var collidingWall = instance_place(x,y + 1,obj_ParentWall);
	if ((!collidingWall.platform) or ((collidingWall.platform) and (((!keyDownHold) and ((downHeld < 8) or (playerAbility != playerAbilities.ufo))) and !(round(bbox_bottom) > collidingWall.y - collidingWall.vsp + 20 + vspFinal) and (!place_meeting(x,y + vspFinal,obj_Wall))))) grounded = true;
}
else if (place_meeting(x,y + 1,obj_Spring))
{
	//var collidingSpring = instance_place(x,y + 1,obj_Spring);
	grounded = true;
}

wallAbove = false;
if (place_meeting(x,y - 1,obj_Wall))
{
	var collidingWall = instance_place(x,y - 1,obj_Wall);
	if ((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + collidingWall.vsp + 20 + vspFinal)))) wallAbove = true;
}

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
	if (global.goldenTomato)
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

if (!global.pause)
{
	//Moving Walls
	/*
	if (place_meeting(x,y + 1,obj_ParentWall))
	{
		var movingWall = instance_place(x,y + 1,obj_ParentWall);
		if (movingWall.hsp != 0) x += movingWall.hsp;
		if (movingWall.vsp != 0) y += movingWall.vsp;
	}
	if (place_meeting(x,y - 1,obj_ParentWall))
	{
		var movingWall = instance_place(x,y - 1,obj_ParentWall);
		if (movingWall.vsp != 0) y += movingWall.vsp;
	}
	if (place_meeting(x + sign(hspFinal),y,obj_ParentWall))
	{
		var movingWall = instance_place(x + sign(hspFinal),y,obj_ParentWall);
		if (movingWall.hsp != 0) x += movingWall.hsp;
	}
	*/
	
	//Down Held

    if ((keyDownHold) and (downHeld < 1000)) downHeld += 1;
    if (keyDownReleased || attack || /*state == 5 || */hsp != 0) downHeld = 0;
	
	//Depth & Scale Changer
	
	if (place_meeting(x,y,obj_DepthChanger))
	{
		var collidedDepthChanger = instance_place(x,y,obj_DepthChanger);
		if (collidedDepthChanger.targetScale != -1) targetScale = collidedDepthChanger.targetScale;
		if (collidedDepthChanger.targetDepth != -1) depth = collidedDepthChanger.targetDepth;
	}
	
	scale = lerp(scale,targetScale,.02);
	
	if (inBackground)
	{
		collisionX = obj_BackgroundWall;
		collisionY = obj_BackgroundWall;
	}
	else
	{
		collisionX = obj_ParentWall;
		collisionY = obj_ParentWall;
	}
	
	//Abilities
	
	switch (playerAbility)
	{
		case playerAbilities.bomb:
		if (state != playerStates.slide) bombDownReady = false;
		break;
		
		case playerAbilities.fire:
		var maxTimer = fireParticleTimerMax;
		if ((attackNumber == playerAttacks.fireAerial) or (attackNumber == playerAttacks.fireWheel) or (attackNumber == playerAttacks.fireBack)) maxTimer = floor(fireParticleTimerMax / 2);
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
				aura.abilityType = playerAbilities.spark;
				aura.sprite_index = spr_Particle_SparkAura;
				aura.dmg = 6;
			}
			sparkMaxCharge = true;
		}
		break;
		
		case playerAbilities.sword:
		if (carriedItem == carriedItems.none) carriedItemState = carriedItemStates.light;
		break;
		
		case playerAbilities.parasol:
		if (carriedItem == carriedItems.none) carriedItemState = carriedItemStates.light;
		break;
		
		case playerAbilities.hammer:
		if (carriedItem == carriedItems.none) carriedItemState = carriedItemStates.light;
		break;
		
		case playerAbilities.water:
		if (sprite_index != sprWalk) waterWalkHatAnim = 0;
		break;
	}
	
	if ((playerCharacter != playerCharacters.gordo) and (playerCharacter != playerCharacters.bloodGordo)) imageAngle = 0;
	
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
		jumpLimitTimer = jumpLimitTimerMax + (collidedBumper.force - 6);
		
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
					if (audio_is_playing(snd_BigJump)) audio_stop_sound(snd_BigJump);
					audio_play_sound(snd_BigJump,0,false);
				}
				else
				{
					if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
					audio_play_sound(snd_Jump,0,false);
				}
			
				if ((collidedSpring.object_index == obj_BouncyCloud) or (collidedSpring.object_index == obj_BouncyCloudHigh))
				{
					collidedSpring.scaleExY = -.2;
					collidedSpring.yDrawOffset = drawOffsetForce;
				}
			
				if (carriedItem == carriedItems.none) fallRoll = true;
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
	scr_Player_States_Normal();
	break;
	
	//Slide
	
    case (playerStates.slide):
	scr_Player_States_Slide();
	break;
	
	//Float
	
    case (playerStates.float):
	scr_Player_States_Float();
	break;
	
	//Climb
	
    case (playerStates.climb):
	scr_Player_States_Climb();
	break;
	
	//Enter
	
    case (playerStates.enter):
	scr_Player_States_Enter();
	break;
	
	//Inhale
	
    case (playerStates.inhale):
	scr_Player_States_Inhale();
	break;
	
	//Carry
	
    case (playerStates.carry):
	scr_Player_States_Carry();
	break;
	
	//Swallow
	
    case (playerStates.swallow):
	scr_Player_States_Swallow();
	break;
	
	//Cutter Dash
	
    case (playerStates.cutterDash):
	scr_Player_States_CutterDash();
	break;
	
	//Cutter Drop
	
    case (playerStates.cutterDrop):
	scr_Player_States_CutterDrop();
	break;
	
	//Cleaving Cutter, Nonstop Cutter, and Final Cutter
	
	case (playerStates.finalCutter):
	scr_Player_States_FinalCutter();
	break;
	
	//Beam Grab
	
    case (playerStates.beamGrab):
	scr_Player_States_BeamGrab();
	break;
	
	//Mystic Beam Grab
	
    case (playerStates.mysticBeamGrab):
	scr_Player_States_MysticBeamGrab();
	break;
	
	//Mirror Dash
	
    case (playerStates.mirrorDash):
	scr_Player_States_MirrorDash();
	break;
	
	//Ninja Dash
	
    case (playerStates.ninjaDash):
	scr_Player_States_NinjaDash();
	break;
	
	//Ninja Drop
	
    case (playerStates.ninjaDrop):
	scr_Player_States_NinjaDrop();
	break;
	
	//Fire Dash
	
    case (playerStates.fireDash):
	scr_Player_States_FireDash();
	break;
	
	//Ice Grab
	
    case (playerStates.iceGrab):
	scr_Player_States_IceGrab();
	break;
	
	//Yoyo Dash
	
    case (playerStates.yoyoDash):
	scr_Player_States_YoyoDash();
	break;
	
	//Wheel Normal
	
    case (playerStates.wheelNormal):
	scr_Player_States_WheelNormal();
	break;
	
	//Wing Dash
	
    case (playerStates.wingDash):
	scr_Player_States_WingDash();
	break;
	
	//Sword Dash
	
    case (playerStates.swordDash):
	scr_Player_States_SwordDash();
	break;
	
	//Parasol Dash
	
    case (playerStates.parasolDash):
	scr_Player_States_ParasolDash();
	break;
	
	//Jet Dash
	
    case (playerStates.jetDash):
	scr_Player_States_JetDash();
	break;
	
	//Warp Star
	
    case (playerStates.warpStar):
	scr_Player_States_WarpStar();
	break;
	
	//Death
	
    case (playerStates.death):
	scr_Player_States_Death();
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
			abilityDropStar.hsp = -dir * 1.5;
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
				break;
			
				case playerAbilities.sleep:
				abilityDropStar.sprite_index = spr_AbilityStar_Sleep;
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

//Hp Clamp

global.hpP1 = clamp(global.hpP1,0,global.hpMax);
global.hpP2 = clamp(global.hpP2,0,global.hpMax);

//Scale

if ((attackNumber == playerAttacks.stoneNormal) or (attackNumber == playerAttacks.gooeyStoneNormal))
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
	
	if ((invincible) and (invincibleFlashTimer == -1)) invincibleFlashTimer = invincibleFlashTimerMax;
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
	
	if (player == 0)
	{
		//Invin Candy Timer P1
		
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
		
		//Mint Leaf Timer P1
		
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
	}
	else
	{
		//Invin Candy Timer P2
		
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
		
		//Mint Leaf Timer P2
		
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
		if (run)
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
	
	if ((attack) and (attackNumber == playerAttacks.beamAir))
	{
		if (beamAttack2Timer > 0)
		{
			beamAttack2Timer -= 1;
		}
		else if (beamAttack2Timer == 0)
		{
			//vsp = -.15;
			var projBeam = instance_create_depth(x + (15 * dir),y + 10,depth,obj_Projectile_Beam);
			projBeam.imageSpeed = 1;
			projBeam.owner = id;
			projBeam.abilityType = playerAbilities.beam;
			projBeam.player = player;
			projBeam.dmg = 8 + (10 * beamAttack2FirstHit);
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
			projBeam.dmg = 18;
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
			projBeam.dmg = 18;
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
		stoneMaskProj.dmg = 50;
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
		stoneFistMaskProj.dmg = 20;
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
		projectile.dmg = 3;
		projectile.sprite_index = projectile.sprIdle;
		projectile.dirX = dir;
		projectile.image_xscale = projectile.dirX;
		projectile.enemy = false;
		projectile.destroyableByEnemy = false;
		projectile.destroyableByObject = false;
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

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	if ((playerFamiliar != -1) and ((playerFamiliar == "Gamble") + (playerCharacter = playerCharacters.gamble) != 2))
	{
		var followerObject = instance_create_depth(x + (30 * -dir),y - 15,depth,obj_Familiar);
		followerObject.owner = id;
		followerObject.character = playerFamiliar;
	}
	if ((global.hasCoop) and (instance_number(obj_Player) == 1))
	{
		var xx = x;
		if (!place_meeting(x - 24,y,obj_ParentWall))
		{
			xx = x - 24;
		}
		else if (!place_meeting(x + 24,y,obj_ParentWall))
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
		var skin = global.skinKirbyP1;
		if (player == 1) skin = global.skinKirbyP2;
		
		if (player == 0)
		{
			global.sprayPaintP1 = scr_Player_SprayPaint(global.sprayPaintKirbyP1,playerCharacters.kirby,skin);
		}
		else
		{
			global.sprayPaintP2 = scr_Player_SprayPaint(global.sprayPaintKirbyP2,playerCharacters.kirby,skin);
		}
		
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
		sprHurt = spr_Kirby_Normal_Hurt;
		sprDeath = spr_Kirby_Normal_Death;
		break;
		
		case playerCharacters.gamble:
		var skin = global.skinGambleP1;
		if (player == 1) skin = global.skinGambleP2;
		
		if (player == 0)
		{
			global.sprayPaintP1 = scr_Player_SprayPaint(global.sprayPaintGambleP1,playerCharacters.gamble,skin);
		}
		else
		{
			global.sprayPaintP2 = scr_Player_SprayPaint(global.sprayPaintGambleP2,playerCharacters.gamble,skin);
		}
		
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
		var skin = global.skinGooeyP1;
		if (player == 1) skin = global.skinGooeyP2;
		
		if (player == 0)
		{
			global.sprayPaintP1 = scr_Player_SprayPaint(global.sprayPaintGooeyP1,playerCharacters.gooey,skin);
		}
		else
		{
			global.sprayPaintP2 = scr_Player_SprayPaint(global.sprayPaintGooeyP2,playerCharacters.gooey,skin);
		}
		
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
		
		switch (skin)
		{
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
			#endregion
			break;
			
			case "pipis":
			#region Sprites
			sprIdle = spr_Gooey_Pipis_Idle;
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
			#endregion
			break;
		}
		break;
		
		case playerCharacters.waddleDee:
		var skin = choose("normal","normal","normal","normal","normal","normal","egg","egg","egg","gold");
		
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
		canSlide = true;
		canClimb = true;
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
			#endregion
			
			#region Sprites
			maskIndex = spr_16Square_Mask;
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
		
		case playerCharacters.waddleDoo:
		var skin = choose("normal");
		
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
		canSlide = true;
		canClimb = true;
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
			#endregion
		
			#region Sprites
			maskIndex = spr_16Square_Mask;
			sprIdle = spr_WaddleDoo_Normal_Idle;
			sprWalk = spr_WaddleDoo_Normal_Walk;
			sprRun = spr_WaddleDoo_Normal_Walk;
			sprRunTurn = spr_WaddleDoo_Normal_RunTurn;
			sprJump = spr_WaddleDoo_Normal_Jump;
			sprFall = spr_WaddleDoo_Normal_Fall;
			sprSquish = spr_WaddleDoo_Normal_Idle;
			sprDuck = spr_WaddleDoo_Normal_Duck;
			sprDuck = spr_WaddleDoo_Normal_Slide;
			sprEnter = spr_WaddleDoo_Normal_Walk;
			sprClimbUp = spr_WaddleDoo_Normal_ClimbUp;
			sprClimbDown = spr_WaddleDoo_Normal_ClimbDown;
			sprHurt = spr_WaddleDoo_Normal_Hurt;
			sprDeath = spr_WaddleDoo_Normal_Death;
			sprBeamAttack1 = spr_WaddleDoo_Normal_Attack;
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
		
		case playerCharacters.brontoBurt:
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
		
		case playerCharacters.twizzy:
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
		
		case playerCharacters.tookey:
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
		
		case playerCharacters.sirKibble:
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
		
		case playerCharacters.bouncy:
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
		
		case playerCharacters.gordo:
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
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_DarkMetal;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Silver;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Golden;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Nuclear;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Crimson;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Orange;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Crystal;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Lunar;
			i += 1;
			pal[i] = spr_Gordo_Normal_Palette_Vintage;
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
		
		case playerCharacters.bloodGordo:
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
	cutterMotorCutterUpgrade = global.cutterMotorCutterUpgradeEquipped;
	cutterPropellerWingUpgrade = global.cutterPropellerWingUpgradeEquipped;
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
	global.abilityP1 = playerAbilities.none;
	var musDeath = mus_Death1;
	if ((global.playerLives <= 0) and (global.gamemode != gamemodes.maykr)) musDeath = mus_Death2;
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
	if (global.gamemode != gamemodes.maykr)
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

//Input Buffers (for motion input attacks)
if(keyDownHold){
	downInputBufferTimer = downInputBuffer;
}else{
	downInputBufferTimer--;
}