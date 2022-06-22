///@description Carry State

function scr_Player_States_Carry()
{
	if (!global.pause)
	{
		//Variables
		
		var playerCharacter = global.characterP1;
		if (player == 1) playerCharacter = global.characterP2;
		
		var playerAbility = global.abilityP1;
		if (player == 1) playerAbility = global.abilityP2;
		
		var grounded = false;
		if (place_meeting(x,y + 1,obj_ParentWall))
		{
			var collidingWall = instance_place(x,y + 1,obj_ParentWall);
			if ((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y - collidingWall.vsp + 20 + vspFinal)))) grounded = true;
		}
		else if (place_meeting(x,y + 1,obj_Spring))
		{
			//var collidingSpring = instance_place(x,y + 1,obj_Spring);
			grounded = true;
		}
		
		if ((hurt) or (!place_meeting(x,y,obj_Door))) enterDoor = false;
		
		//Run
		
		runDoubleTap -= 1;
		if ((!global.cutscene) and ((keyLeftPressed) or (keyRightPressed)) and (!inhaleEnd) and (!spit))
		{
		    if (runDoubleTap > 0)
		    {
		        if (!run)
				{
					if (!place_meeting(x,y + 1,obj_ParentWall))
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
					run = true;
				}
		    }
		    runDoubleTap = 20;
		}
		
		if (run)
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
		
			hsp = clamp(hsp, -movespeed, movespeed);
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
		
		if (place_meeting(x,y + 1,obj_ParentWall))
		{
			if ((!global.cutscene) and (keyJumpPressed) and (!inhaleEnd) and (!spit))
			{
				vsp = -jumpspeed;
				audio_play_sound(snd_Jump,0,false);
			}
		}
		
		//Change to Normal
		
		if (!hurt)
		{
		    if ((!global.cutscene) and ((enterDoor) or (keyAttackPressed)) and (!inhaleEnd) and (!spit))
		    {
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
				projSpitStar.dirX = dir;
				projSpitStar.image_xscale = projSpitStar.dirX;
		        if (sucked < 2)
		        {
					projSpitStar.state = "smallStar";
					projSpitStar.destroyableByEnemy = true;
					projSpitStar.destroyableByObject = true;
					projSpitStar.dmg = 52 + (run * 8);
					projSpitStar.sprite_index = spr_SpitStar_Small;
		        }
		        else
		        {
					projSpitStar.state = "bigStar";
					projSpitStar.destroyableByEnemy = false;
					projSpitStar.destroyableByObject = false;
					projSpitStar.dmg = 60 + ((sucked - 2) * .5) + (run * 5);
					projSpitStar.hitInvincibility = projSpitStar.hitInvincibilityMax;
					projSpitStar.sprite_index = spr_SpitStar_Big;
		        }
				image_index = 0;
				spit = true;
				sucked = 0;
		        cAbility = playerAbilities.none;
				if (ateHeavy) ateHeavy = false;
				if (ateCappyShroom) ateCappyShroom = false;
		    }
			
		    if ((!global.cutscene) and (((global.autoSwallow) and (cAbility != playerAbilities.none)) or ((place_meeting(x,y + 1,obj_ParentWall)) and (!inhaleEnd) and (!spit) and (keyDownPressed))))
		    {
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
						mixRosterAbility[i] = playerAbilities.none;
						mixRosterText[i] = spr_Hud_AbilityText_Kirby;
						mixRosterIcon[i] = spr_Hud_Icon_Kirby;
						i += 1;
						
						if (global.cutterAbilityKills >= global.cutterAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.cutter;
							mixRosterText[i] = spr_Hud_AbilityText_Cutter;
							mixRosterIcon[i] = spr_Hud_Icon_Cutter;
							i += 1;
						}
						
						if (global.beamAbilityKills >= global.beamAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.beam;
							mixRosterText[i] = spr_Hud_AbilityText_Beam;
							mixRosterIcon[i] = spr_Hud_Icon_Beam;
							i += 1;
						}
						
						if (global.mysticBeamAbilityKills >= global.mysticBeamAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.mysticBeam;
							mixRosterText[i] = spr_Hud_AbilityText_MysticBeam;
							mixRosterIcon[i] = spr_Hud_Icon_MysticBeam;
							i += 1;
						}
						
						if (global.stoneAbilityKills >= global.stoneAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.stone;
							mixRosterText[i] = spr_Hud_AbilityText_Stone;
							mixRosterIcon[i] = spr_Hud_Icon_Stone;
							i += 1;
						}
						
						if (global.ufoAbilityKills >= global.ufoAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.ufo;
							mixRosterText[i] = spr_Hud_AbilityText_Ufo;
							mixRosterIcon[i] = spr_Hud_Icon_Ufo;
							i += 1;
						}
						
						if (global.mirrorAbilityKills >= global.mirrorAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.mirror;
							mixRosterText[i] = spr_Hud_AbilityText_Mirror;
							mixRosterIcon[i] = spr_Hud_Icon_Mirror;
							i += 1;
						}
						
						if (global.ninjaAbilityKills >= global.ninjaAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.ninja;
							mixRosterText[i] = spr_Hud_AbilityText_Ninja;
							mixRosterIcon[i] = spr_Hud_Icon_Ninja;
							i += 1;
						}
						
						if (global.bombAbilityKills >= global.bombAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.bomb;
							mixRosterText[i] = spr_Hud_AbilityText_Bomb;
							mixRosterIcon[i] = spr_Hud_Icon_Bomb;
							i += 1;
						}
						
						if (global.fireAbilityKills >= global.fireAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.fire;
							mixRosterText[i] = spr_Hud_AbilityText_Fire;
							mixRosterIcon[i] = spr_Hud_Icon_Fire;
							i += 1;
						}
						
						if (global.mysticFireAbilityKills >= global.mysticFireAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.mysticFire;
							mixRosterText[i] = spr_Hud_AbilityText_MysticFire;
							mixRosterIcon[i] = spr_Hud_Icon_MysticFire;
							i += 1;
						}
						
						if (global.iceAbilityKills >= global.iceAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.ice;
							mixRosterText[i] = spr_Hud_AbilityText_Ice;
							mixRosterIcon[i] = spr_Hud_Icon_Ice;
							i += 1;
						}
						
						if (global.sparkAbilityKills >= global.sparkAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.spark;
							mixRosterText[i] = spr_Hud_AbilityText_Spark;
							mixRosterIcon[i] = spr_Hud_Icon_Spark;
							i += 1;
						}
						
						if (global.yoyoAbilityKills >= global.yoyoAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.yoyo;
							mixRosterText[i] = spr_Hud_AbilityText_Yoyo;
							mixRosterIcon[i] = spr_Hud_Icon_Yoyo;
							i += 1;
						}
						
						if (global.wheelAbilityKills >= global.wheelAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.wheel;
							mixRosterText[i] = spr_Hud_AbilityText_Wheel;
							mixRosterIcon[i] = spr_Hud_Icon_Wheel;
							i += 1;
						}
						
						if (global.artistAbilityKills >= global.artistAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.artist;
							mixRosterText[i] = spr_Hud_AbilityText_Artist;
							mixRosterIcon[i] = spr_Hud_Icon_Artist;
							i += 1;
						}
						
						if (global.fighterAbilityKills >= global.fighterAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.fighter;
							mixRosterText[i] = spr_Hud_AbilityText_Fighter;
							mixRosterIcon[i] = spr_Hud_Icon_Fighter;
							i += 1;
						}
						
						if (global.suplexAbilityKills >= global.suplexAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.suplex;
							mixRosterText[i] = spr_Hud_AbilityText_Suplex;
							mixRosterIcon[i] = spr_Hud_Icon_Suplex;
							i += 1;
						}
						
						if (global.wingAbilityKills >= global.wingAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.wing;
							mixRosterText[i] = spr_Hud_AbilityText_Wing;
							mixRosterIcon[i] = spr_Hud_Icon_Wing;
							i += 1;
						}
						
						if (global.jetAbilityKills >= global.jetAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.jet;
							mixRosterText[i] = spr_Hud_AbilityText_Jet;
							mixRosterIcon[i] = spr_Hud_Icon_Jet;
							i += 1;
						}
						
						if (global.swordAbilityKills >= global.swordAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.sword;
							mixRosterText[i] = spr_Hud_AbilityText_Sword;
							mixRosterIcon[i] = spr_Hud_Icon_Sword;
							i += 1;
						}
						
						if (global.parasolAbilityKills >= global.parasolAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.parasol;
							mixRosterText[i] = spr_Hud_AbilityText_Parasol;
							mixRosterIcon[i] = spr_Hud_Icon_Parasol;
							i += 1;
						}
						
						if (global.hammerAbilityKills >= global.hammerAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.hammer;
							mixRosterText[i] = spr_Hud_AbilityText_Hammer;
							mixRosterIcon[i] = spr_Hud_Icon_Hammer;
							i += 1;
						}
						
						if (global.bellAbilityKills >= global.bellAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.bell;
							mixRosterText[i] = spr_Hud_AbilityText_Bell;
							mixRosterIcon[i] = spr_Hud_Icon_Bell;
							i += 1;
						}
						
						if (global.waterAbilityKills >= global.waterAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.water;
							mixRosterText[i] = spr_Hud_AbilityText_Water;
							mixRosterIcon[i] = spr_Hud_Icon_Water;
							i += 1;
						}
						
						if (global.sleepAbilityKills >= global.sleepAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.sleep;
							mixRosterText[i] = spr_Hud_AbilityText_Sleep;
							mixRosterIcon[i] = spr_Hud_Icon_Sleep;
							i += 1;
						}
						
						if (global.scanAbilityKills >= global.scanAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.scan;
							mixRosterText[i] = spr_Hud_AbilityText_Scan;
							mixRosterIcon[i] = spr_Hud_Icon_Scan;
							i += 1;
						}
						
						if (global.crashAbilityKills >= global.crashAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.crash;
							mixRosterText[i] = spr_Hud_AbilityText_Crash;
							mixRosterIcon[i] = spr_Hud_Icon_Crash;
							i += 1;
						}
						
						if (global.micAbilityKills >= global.micAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.mic;
							mixRosterText[i] = spr_Hud_AbilityText_Mic;
							mixRosterIcon[i] = spr_Hud_Icon_Mic;
							i += 1;
						}
						
						if (global.chefAbilityKills >= global.chefAbilityKillsTarget)
						{
							mixRosterAbility[i] = playerAbilities.chef;
							mixRosterText[i] = spr_Hud_AbilityText_Chef;
							mixRosterIcon[i] = spr_Hud_Icon_Chef;
							i += 1;
						}
					}
				}
				if (global.mixActive == -1)
				{
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
				run = false;
				swallow = true;
			    cAbility = playerAbilities.none;
				ateHeavy = false;
				ateCappyShroom = false;
				image_index = 0;
			    state = playerStates.swallow;
		    }
		}
		
		//Enter Door
		
		if ((!global.cutscene) and (canEnter) and (position_meeting(x,y,obj_Door)) and (keyUpPressed) and (!inhaleEnd) and (!spit))
		{
		    if ((!instance_exists(obj_Fade)) and (!hurt))
		    {
				hsp = 0;
				enterDoor = true;
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
					if (!run)
					{
						image_speed = 1;
					}
					else
					{
						image_speed = 1.5;
					}
					
			        if ((place_meeting(x,y + 1,obj_ParentWall)) and (vsp == 0))
					{
					    if (hsp == 0)
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
							
							var carryidlesprite = sprCarryIdle;
							var carryidleblinksprite = sprCarryIdleBlink;
							
							var collidedWall = instance_place(x,y + 1,obj_ParentWall);
							if ((playerCharacter == playerCharacters.kirby) and (collidedWall.slope))
							{
								switch (collidedWall.slopeType)
								{
									case "normal":
									if (dir == 1)
									{
										if (sign(collidedWall.image_xscale) == 1)
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
										if (sign(collidedWall.image_xscale) == 1)
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
									
									case "gentle":
									if (dir == 1)
									{
										if (sign(collidedWall.image_xscale) == 1)
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
										if (sign(collidedWall.image_xscale) == 1)
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
									
									case "steep":
									if (dir == 1)
									{
										if (sign(collidedWall.image_xscale) == 1)
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
										if (sign(collidedWall.image_xscale) == 1)
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
							
							if (idleAnimation)
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
							if (idleAnimation) image_index = 0;
							idleAnimation = false;
							idleAnimationTimer = 0;
							idleAnimationTimerMax = 30;
							sprite_index = sprCarryWalk;
						}
					}
					else
					{
					    if (vsp < 0)
						{
							if (sprCarryJump != "none")
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
							if (sprCarryFall != "none")
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