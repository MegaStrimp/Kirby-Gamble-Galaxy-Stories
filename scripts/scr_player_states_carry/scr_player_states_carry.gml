///@description Carry State

function scr_Player_States_Carry()
{
	if (!global.pause)
	{
		//Variables
		
		switch (player)
		{
			case 0:
			var playerAbility = global.abilityP1;
			var playerCharacter = global.characterP1;
			break;
			
			case 1:
			var playerAbility = global.abilityP2;
			var playerCharacter = global.characterP2;
			break;
			
			case 2:
			var playerAbility = global.abilityP3;
			var playerCharacter = global.characterP3;
			break;
			
			case 3:
			var playerAbility = global.abilityP4;
			var playerCharacter = global.characterP4;
			break;
		}
		
		if ((hurt) or (!place_meeting(x,y,obj_Door))) enteredDoor = -1;
		
		//Run
		
		runDoubleTap -= 1;
		if ((!global.cutscene) and ((keyLeftPressed) or (keyRightPressed)) and (!inhaleEnd) and (!spit))
		{
		    if (runDoubleTap > 0)
		    {
		        if (!isRunning)
				{
					if (!grounded)
					{
						var parJump = instance_create_depth(x,y,depth + 1,obj_Particle);
						parJump.sprite_index = spr_Particle_Jump;
						parJump.destroyAfterAnimation = true;
						parJump.spdBuiltIn = 6;
						parJump.fricSpd = .6;
						parJump.direction = 180;
						if (dir == -1) parJump.direction = 0;
					}
					if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
					audio_play_sound(snd_DashBegin,0,false);
					runParticleTimer = 0;
					runBuffer = 0;
					isRunning = true;
				}
		    }
		    runDoubleTap = 20;
		}
		
		if (isRunning)
		{
		    movespeed = movespeedRun;
			if (((runCancelTimer == -1) and (!inhaleEnd) and (!spit) and ((keyLeftReleased) or (keyRightReleased))) or (global.cutscene))
		    {
		        runCancelTimer = 15;
		    }
		}
		else
		{
		    movespeed = movespeedCarry;
		}
		
		//Movement
		
		var invinCandyMult = 1;
		
		if (hasInvinCandy) invinCandyMult = 1.5;
		
		var movespeedFinal = movespeed * invinCandyMult;
		
		if ((!hurt))
		{
			if ((!global.cutscene) and (!inhaleEnd) and (!spit))
			{
				if (keyLeftHold)
				{
					hsp -= accel;
					dir = -1;
				}
				else if (keyRightHold)
				{
					hsp += accel;
					dir = 1;
				}
			}
			
			if ((((keyLeftHold) and (keyRightHold)) or ((!keyLeftHold) and (!keyRightHold))) or (attack) or (runTurn) or (global.cutscene))
			{
				hsp = scr_Friction(hsp,decel);
			}
		
			hsp = clamp(hsp, -movespeedFinal, movespeedFinal);
		}
		
		if (vsp < gravLimitNormal)
		{
			vsp += grav;
		}
		else
		{
			vsp = gravLimitNormal;
		}
	
		if ((!global.cutscene) and (vsp < 0) and (!keyJumpHold))
		{
		    if (jumpLimit) vsp = max(vsp,-jumpspeed / 4);
		}
		
		//Grounded
		
		if ((grounded) and (jumpLimit)) vsp = 0;
		
		//Jump
		
		if (grounded)
		{
			if ((!global.cutscene) and (keyJumpPressed) and (!inhaleEnd) and (!spit))
			{
				vsp = -jumpspeed;
				grounded = false;
				audio_play_sound(snd_Jump,0,false);
			}
		}
		
		//Change to Normal
		
		if (!hurt)
		{
			if ((!spit) and (keyAttackPressed))
			{
				spitBuffer = true;
			}
			
		    if ((!global.cutscene) and ((enteredDoor != -1) or (spitBuffer)) and (!inhaleEnd) and (!spit))
		    {
				spitBuffer = false;
				
				audio_play_sound(snd_Spit,0,false);
				for (var i = 0; i < 2; i++)
				{
					var parDir = 1;
					if (i == 1) parDir = -1;
					var parSpit = instance_create_depth(x + (14 * parDir),y + 4,depth - 1,obj_Particle);
					parSpit.sprite_index = spr_Particle_Spit;
					parSpit.hsp = 1.25 * parDir;
					parSpit.vsp = -.5;
					parSpit.imageSpeed = 1;
					parSpit.destroyAfterAnimation = true;
					parSpit.dir = parDir;
				}
				var projSpitStar = instance_create_depth(x + (4 * dir),y - 4,depth - 1,obj_SpitStar);
				projSpitStar.owner = id;
				projSpitStar.dirX = dir;
				projSpitStar.image_xscale = projSpitStar.dirX;
		        if (sucked < 2)
		        {
					projSpitStar.state = "smallStar";
					projSpitStar.destroyableByEnemy = true;
					projSpitStar.destroyableByObject = true;
					projSpitStar.dmg = kirby_SpitStarNone_Damage + (isRunning * kirby_SpitStarNone_RunDamageMult);
					scr_Attack_SetKnockback(projSpitStar,kirby_SpitStarNone_Strength,kirby_SpitStarNone_HitStopAffectSource,kirby_SpitStarNone_HitStopAffectPlayer,kirby_SpitStarNone_HitStopAffectTarget,kirby_SpitStarNone_HitStopLength,kirby_SpitStarNone_HitStopShakeStrength);
					projSpitStar.sprite_index = spr_SpitStar_Small;
		        }
		        else
		        {
					projSpitStar.state = "bigStar";
					projSpitStar.destroyableByEnemy = false;
					projSpitStar.destroyableByObject = false;
					projSpitStar.dmg = kirby_SpitStarBig_Damage + ((sucked - 2) * kirby_SpitStarBig_InhaleDamageMult) + (isRunning * kirby_SpitStarBig_RunDamageMult);
					scr_Attack_SetKnockback(projSpitStar,kirby_SpitStarBig_Strength,kirby_SpitStarBig_HitStopAffectSource,kirby_SpitStarBig_HitStopAffectPlayer,kirby_SpitStarBig_HitStopAffectTarget,kirby_SpitStarBig_HitStopLength,kirby_SpitStarBig_HitStopShakeStrength);
					projSpitStar.hitInvincibility = projSpitStar.hitInvincibilityMax;
					projSpitStar.sprite_index = spr_SpitStar_Big;
		        }
				image_index = 0;
				spit = true;
				scr_Player_ResetSucked(id);
		        cAbility = playerAbilities.none;
				if (ateHeavy) ateHeavy = false;
				if (ateAbilityStar) ateAbilityStar = -1;
				if (ateCappyShroom) ateCappyShroom = false;
		    }
			
			if ((!spit) and (keyDownPressed))
			{
				swallowBuffer = true;
			}
			
		    if ((!global.cutscene) and (((global.autoSwallow) and (cAbility != playerAbilities.none)) or (((grounded) or (cAbility != playerAbilities.none)) and (!inhaleEnd) and (!spit) and (swallowBuffer))))
		    {
				swallowBuffer = false;
				
				if (cAbility == playerAbilities.mix)
				{
					global.mixActive = player;
					global.pause = true;
					if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
					if (!instance_exists(obj_Hud)) instance_create_depth(x,y,-997,obj_Hud);
					blackAlphaBox = true;
					swallowActionTimer = 0;
					sprite_index = sprSwallow;
					image_index = 0;
					with (obj_Hud)
					{
						mixIndex = 0;
						mixRosterAbility = -1;
						mixRosterText = -1;
						mixRosterIcon = -1;
						mixTimer = irandom_range(150,250);
						mixIndexTimer = mixIndexTimerMax;
						
						var i = 0;
						//mixRosterAbility[i] = playerAbilities.none;
						//mixRosterText[i] = spr_Hud_AbilityText_Kirby;
						//mixRosterIcon[i] = spr_Hud_Icon_Kirby;
						//i += 1;
						
						if ((global.cutterAbilityKills >= global.cutterAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.cutter) != -1))
						{
							mixRosterAbility[i] = playerAbilities.cutter;
							mixRosterText[i] = spr_Hud_AbilityText_Cutter;
							mixRosterIcon[i] = spr_Hud_Icon_Cutter;
							i += 1;
						}
						
						if ((global.beamAbilityKills >= global.beamAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.beam) != -1))
						{
							mixRosterAbility[i] = playerAbilities.beam;
							mixRosterText[i] = spr_Hud_AbilityText_Beam;
							mixRosterIcon[i] = spr_Hud_Icon_Beam;
							i += 1;
						}
						
						if ((global.mysticBeamAbilityKills >= global.mysticBeamAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.mysticBeam) != -1))
						{
							mixRosterAbility[i] = playerAbilities.mysticBeam;
							mixRosterText[i] = spr_Hud_AbilityText_MysticBeam;
							mixRosterIcon[i] = spr_Hud_Icon_MysticBeam;
							i += 1;
						}
						
						if ((global.stoneAbilityKills >= global.stoneAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.stone) != -1))
						{
							mixRosterAbility[i] = playerAbilities.stone;
							mixRosterText[i] = spr_Hud_AbilityText_Stone;
							mixRosterIcon[i] = spr_Hud_Icon_Stone;
							i += 1;
						}
						
						if ((global.ufoAbilityKills >= global.ufoAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.ufo) != -1))
						{
							mixRosterAbility[i] = playerAbilities.ufo;
							mixRosterText[i] = spr_Hud_AbilityText_Ufo;
							mixRosterIcon[i] = spr_Hud_Icon_Ufo;
							i += 1;
						}
						
						if ((global.mirrorAbilityKills >= global.mirrorAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.mirror) != -1))
						{
							mixRosterAbility[i] = playerAbilities.mirror;
							mixRosterText[i] = spr_Hud_AbilityText_Mirror;
							mixRosterIcon[i] = spr_Hud_Icon_Mirror;
							i += 1;
						}
						
						if ((global.ninjaAbilityKills >= global.ninjaAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.ninja) != -1))
						{
							mixRosterAbility[i] = playerAbilities.ninja;
							mixRosterText[i] = spr_Hud_AbilityText_Ninja;
							mixRosterIcon[i] = spr_Hud_Icon_Ninja;
							i += 1;
						}
						
						if ((global.bombAbilityKills >= global.bombAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.bomb) != -1))
						{
							mixRosterAbility[i] = playerAbilities.bomb;
							mixRosterText[i] = spr_Hud_AbilityText_Bomb;
							mixRosterIcon[i] = spr_Hud_Icon_Bomb;
							i += 1;
						}
						
						if ((global.fireAbilityKills >= global.fireAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.fire) != -1))
						{
							mixRosterAbility[i] = playerAbilities.fire;
							mixRosterText[i] = spr_Hud_AbilityText_Fire;
							mixRosterIcon[i] = spr_Hud_Icon_Fire;
							i += 1;
						}
						
						if ((global.mysticFireAbilityKills >= global.mysticFireAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.mysticFire) != -1))
						{
							mixRosterAbility[i] = playerAbilities.mysticFire;
							mixRosterText[i] = spr_Hud_AbilityText_MysticFire;
							mixRosterIcon[i] = spr_Hud_Icon_MysticFire;
							i += 1;
						}
						
						if ((global.iceAbilityKills >= global.iceAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.ice) != -1))
						{
							mixRosterAbility[i] = playerAbilities.ice;
							mixRosterText[i] = spr_Hud_AbilityText_Ice;
							mixRosterIcon[i] = spr_Hud_Icon_Ice;
							i += 1;
						}
						
						if ((global.sparkAbilityKills >= global.sparkAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.spark) != -1))
						{
							mixRosterAbility[i] = playerAbilities.spark;
							mixRosterText[i] = spr_Hud_AbilityText_Spark;
							mixRosterIcon[i] = spr_Hud_Icon_Spark;
							i += 1;
						}
						
						if ((global.yoyoAbilityKills >= global.yoyoAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.yoyo) != -1))
						{
							mixRosterAbility[i] = playerAbilities.yoyo;
							mixRosterText[i] = spr_Hud_AbilityText_Yoyo;
							mixRosterIcon[i] = spr_Hud_Icon_Yoyo;
							i += 1;
						}
						
						if ((global.wheelAbilityKills >= global.wheelAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.wheel) != -1))
						{
							mixRosterAbility[i] = playerAbilities.wheel;
							mixRosterText[i] = spr_Hud_AbilityText_Wheel;
							mixRosterIcon[i] = spr_Hud_Icon_Wheel;
							i += 1;
						}
						
						if ((global.artistAbilityKills >= global.artistAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.artist) != -1))
						{
							mixRosterAbility[i] = playerAbilities.artist;
							mixRosterText[i] = spr_Hud_AbilityText_Artist;
							mixRosterIcon[i] = spr_Hud_Icon_Artist;
							i += 1;
						}
						
						if ((global.fighterAbilityKills >= global.fighterAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.fighter) != -1))
						{
							mixRosterAbility[i] = playerAbilities.fighter;
							mixRosterText[i] = spr_Hud_AbilityText_Fighter;
							mixRosterIcon[i] = spr_Hud_Icon_Fighter;
							i += 1;
						}
						
						if ((global.suplexAbilityKills >= global.suplexAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.suplex) != -1))
						{
							mixRosterAbility[i] = playerAbilities.suplex;
							mixRosterText[i] = spr_Hud_AbilityText_Suplex;
							mixRosterIcon[i] = spr_Hud_Icon_Suplex;
							i += 1;
						}
						
						if ((global.wingAbilityKills >= global.wingAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.wing) != -1))
						{
							mixRosterAbility[i] = playerAbilities.wing;
							mixRosterText[i] = spr_Hud_AbilityText_Wing;
							mixRosterIcon[i] = spr_Hud_Icon_Wing;
							i += 1;
						}
						
						if ((global.jetAbilityKills >= global.jetAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.jet) != -1))
						{
							mixRosterAbility[i] = playerAbilities.jet;
							mixRosterText[i] = spr_Hud_AbilityText_Jet;
							mixRosterIcon[i] = spr_Hud_Icon_Jet;
							i += 1;
						}
						
						if ((global.swordAbilityKills >= global.swordAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.sword) != -1))
						{
							mixRosterAbility[i] = playerAbilities.sword;
							mixRosterText[i] = spr_Hud_AbilityText_Sword;
							mixRosterIcon[i] = spr_Hud_Icon_Sword;
							i += 1;
						}
						
						if ((global.parasolAbilityKills >= global.parasolAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.parasol) != -1))
						{
							mixRosterAbility[i] = playerAbilities.parasol;
							mixRosterText[i] = spr_Hud_AbilityText_Parasol;
							mixRosterIcon[i] = spr_Hud_Icon_Parasol;
							i += 1;
						}
						
						if ((global.hammerAbilityKills >= global.hammerAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.hammer) != -1))
						{
							mixRosterAbility[i] = playerAbilities.hammer;
							mixRosterText[i] = spr_Hud_AbilityText_Hammer;
							mixRosterIcon[i] = spr_Hud_Icon_Hammer;
							i += 1;
						}
						
						if ((global.bellAbilityKills >= global.bellAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.bell) != -1))
						{
							mixRosterAbility[i] = playerAbilities.bell;
							mixRosterText[i] = spr_Hud_AbilityText_Bell;
							mixRosterIcon[i] = spr_Hud_Icon_Bell;
							i += 1;
						}
						
						if ((global.waterAbilityKills >= global.waterAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.water) != -1))
						{
							mixRosterAbility[i] = playerAbilities.water;
							mixRosterText[i] = spr_Hud_AbilityText_Water;
							mixRosterIcon[i] = spr_Hud_Icon_Water;
							i += 1;
						}
						
						if ((global.hiJumpAbilityKills >= global.hiJumpAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.hiJump) != -1))
						{
							mixRosterAbility[i] = playerAbilities.water;
							mixRosterText[i] = spr_Hud_AbilityText_Water;
							mixRosterIcon[i] = spr_Hud_Icon_Water;
							i += 1;
						}
						
						if ((global.gearAbilityKills >= global.gearAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.gear) != -1))
						{
							mixRosterAbility[i] = playerAbilities.gear;
							mixRosterText[i] = spr_Hud_AbilityText_Gear;
							mixRosterIcon[i] = spr_Hud_Icon_Gear;
							i += 1;
						}
						
						if ((global.sleepAbilityKills >= global.sleepAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.sleep) != -1))
						{
							mixRosterAbility[i] = playerAbilities.sleep;
							mixRosterText[i] = spr_Hud_AbilityText_Sleep;
							mixRosterIcon[i] = spr_Hud_Icon_Sleep;
							i += 1;
						}
						
						if ((global.scanAbilityKills >= global.scanAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.scan) != -1))
						{
							mixRosterAbility[i] = playerAbilities.scan;
							mixRosterText[i] = spr_Hud_AbilityText_Scan;
							mixRosterIcon[i] = spr_Hud_Icon_Scan;
							i += 1;
						}
						
						if ((global.crashAbilityKills >= global.crashAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.crash) != -1))
						{
							mixRosterAbility[i] = playerAbilities.crash;
							mixRosterText[i] = spr_Hud_AbilityText_Crash;
							mixRosterIcon[i] = spr_Hud_Icon_Crash;
							i += 1;
						}
						
						if ((global.micAbilityKills >= global.micAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.mic) != -1))
						{
							mixRosterAbility[i] = playerAbilities.mic;
							mixRosterText[i] = spr_Hud_AbilityText_Mic;
							mixRosterIcon[i] = spr_Hud_Icon_Mic;
							i += 1;
						}
						
						if ((global.chefAbilityKills >= global.chefAbilityKillsTarget) or (ds_list_find_index(other.mixAbilities,playerAbilities.chef) != -1))
						{
							mixRosterAbility[i] = playerAbilities.chef;
							mixRosterText[i] = spr_Hud_AbilityText_Chef;
							mixRosterIcon[i] = spr_Hud_Icon_Chef;
							i += 1;
						}
					}
					
					if (other.mixAbilities != -1)
					{
						ds_list_destroy(other.mixAbilities);
						other.mixAbilities = -1;
					}
				}
				if (global.mixActive == -1)
				{
					if (ateAbilityStar != -1) cAbility = ateAbilityStar;
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
					if (cAbility != playerAbilities.none)
					{
						for (var i = 0; i < 2; i++)
						{
							var parDir = 1;
							if (i == 1) parDir = -1;
							var parSpit = instance_create_depth(x + (14 * parDir),y + 4,depth + 1,obj_Particle);
							parSpit.sprite_index = spr_Particle_Spit;
							parSpit.hsp = 1.25 * parDir;
							parSpit.vsp = -.5;
							parSpit.imageSpeed = 1;
							parSpit.pausable = false;
							parSpit.destroyAfterAnimation = true;
							parSpit.dir = parDir;
						}
						blackAlphaBox = true;
						swallowActionTimer = 0;
						global.pause = true;
						if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
					}
				}
				if (audio_is_playing(snd_Swallow)) audio_stop_sound(snd_Swallow);
				audio_play_sound(snd_Swallow,0,false);
				hsp = 0;
				vsp = 0;
				isRunning = false;
				swallow = true;
			    cAbility = playerAbilities.none;
				ateHeavy = false;
				ateAbilityStar = -1;
				ateCappyShroom = false;
				image_index = 0;
			    state = playerStates.swallow;
		    }
		}
		
		//Enter Door
		
		if ((!global.cutscene) and (canEnter) and (position_meeting(x,y,obj_Door)) and (keyUpHold) and (!inhaleEnd) and (!spit))
		{
		    if ((!instance_exists(obj_Fade)) and (!hurt))
		    {
				hsp = 0;
				enteredDoor = instance_place(x,y,obj_Door);
		    }
		}
		
		//Animation
		
		image_speed = 1;
		if (!hurt)
		{
			if (!inhaleEnd)
			{
			    if (spit)
			    {
					image_speed = 1;
			        sprite_index = sprSpit;
			    }
			    else
			    {
					if (!isRunning)
					{
						image_speed = 1;
					}
					else
					{
						image_speed = 1.5;
					}
					
			        if ((grounded) and (vsp == 0))
					{
					    if (hsp == 0)
						{
							if (hasIdleAnimation)
							{
								if (!idleAnimation)
								{
									if (idleAnimationTimer < idleAnimationTimerMax)
									{
										idleAnimationTimer += 1;
									}
									else
									{
										image_index = 0;
										idleAnimationTimer = 0;
										idleAnimation = true;
									}
								}
							}
							
							var carryidlesprite = sprCarryIdle;
							var carryidleblinksprite = sprCarryIdleBlink;
							
							if (playerCharacter == playerCharacters.kirby)
							{
								switch (groundedSlopeType)
								{
									case "normal":
									if (dir == 1)
									{
										if (groundedWallDir == 1)
										{
											carryidlesprite = sprCarryIdleNormalSlopeL;
											carryidleblinksprite = sprCarryIdleNormalSlopeLBlink;
										}
										else
										{
											carryidlesprite = sprCarryIdleNormalSlopeR;
											carryidleblinksprite = sprCarryIdleNormalSlopeRBlink;
										}
									}
									else
									{
										if (groundedWallDir == 1)
										{
											carryidlesprite = sprCarryIdleNormalSlopeR;
											carryidleblinksprite = sprCarryIdleNormalSlopeRBlink;
										}
										else
										{
											carryidlesprite = sprCarryIdleNormalSlopeL;
											carryidleblinksprite = sprCarryIdleNormalSlopeLBlink;
										}
									}
									break;
									
									case slopeTypes.gentle:
									if (dir == 1)
									{
										if (groundedWallDir == 1)
										{
											carryidlesprite = sprCarryIdleNormalSlopeR;
											carryidleblinksprite = sprCarryIdleNormalSlopeRBlink;
										}
										else
										{
											carryidlesprite = sprCarryIdleNormalSlopeL;
											carryidleblinksprite = sprCarryIdleNormalSlopeLBlink;
										}
									}
									else
									{
										if (groundedWallDir == 1)
										{
											carryidlesprite = sprCarryIdleNormalSlopeL;
											carryidleblinksprite = sprCarryIdleNormalSlopeLBlink;
										}
										else
										{
											carryidlesprite = sprCarryIdleNormalSlopeR;
											carryidleblinksprite = sprCarryIdleNormalSlopeRBlink;
										}
									}
									break;
									
									case slopeTypes.steep:
									if (dir == 1)
									{
										if (groundedWallDir == 1)
										{
											carryidlesprite = sprCarryIdleSteepSlopeR;
											carryidleblinksprite = sprCarryIdleSteepSlopeRBlink;
										}
										else
										{
											carryidlesprite = sprCarryIdleSteepSlopeL;
											carryidleblinksprite = sprCarryIdleSteepSlopeLBlink;
										}
									}
									else
									{
										if (groundedWallDir == 1)
										{
											carryidlesprite = sprCarryIdleSteepSlopeL;
											carryidleblinksprite = sprCarryIdleSteepSlopeLBlink;
										}
										else
										{
											carryidlesprite = sprCarryIdleSteepSlopeR;
											carryidleblinksprite = sprCarryIdleSteepSlopeRBlink;
										}
									}
									break;
								}
							}
							
							if ((hasIdleAnimation) and (idleAnimation))
							{
								switch (playerCharacter)
								{
									case playerCharacters.kirby:
									sprite_index = carryidleblinksprite;
									break;
									
									default:
									sprite_index = carryidlesprite;
									break;
								}
							}
							else
							{
								sprite_index = carryidlesprite;
							}
						}
						else
						{
							if (hasIdleAnimation)
							{
								if (idleAnimation) image_index = 0;
								idleAnimation = false;
								idleAnimationTimer = 0;
								idleAnimationTimerMax = 30;
							}
							
							sprite_index = sprCarryWalk;
						}
					}
					else
					{
					    if (vsp < 0)
						{
							if (sprCarryJump != -1)
							{
								sprite_index = sprCarryJump;
							}
							else
							{
								sprite_index = sprCarryWalk;
							}
						}
						else
						{
							if (sprCarryFall != -1)
							{
								sprite_index = sprCarryFall;
							}
							else
							{
								sprite_index = sprCarryWalk;
							}
						}
					}
			    }
			}
		}
		else
		{
		    sprite_index = sprFloatHurt;
		}
		
		//Walk Duck
		
		if ((!walkDuck) and (place_meeting(x,y + (1 + vsp),obj_ParentWall)) and (vsp > 1) and (!inhaleEnd) and (!spit) and (!attack))
		{
			var collidingWall = instance_place(x,y + (1 + vsp),obj_ParentWall);
			if ((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + collidingWall.vsp + 20 + vspFinal))))
			{
				image_index = 0;
				walkDuck = true;
				walkDuckTimer = walkDuckTimerMax;
				audio_play_sound(snd_SquishLow,0,false);
				var parDirection = irandom_range(0,359);
				var parScaleDir = 1;
				if ((parDirection > 90) and (parDirection <= 270))
				{
					parScaleDir = -1;
				}
				var parSquish = instance_create_depth(x,y,depth + 1,obj_Particle);
				parSquish.sprite_index = spr_Particle_SmallStar;
				parSquish.imageSpeed = 0;
				parSquish.destroyTimer = 30;
				parSquish.spdBuiltIn = 6;
				parSquish.fricSpd = .6;
				parSquish.direction = parDirection;
				parSquish.dir = parScaleDir;
			}
		}
		
		if ((walkDuck) and (vsp == 0) and (!attack))
		{
			sprite_index = sprCarryDuck;
		}
		
		//Collision
		
		scr_Player_Collision(playerMechs.none);
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}