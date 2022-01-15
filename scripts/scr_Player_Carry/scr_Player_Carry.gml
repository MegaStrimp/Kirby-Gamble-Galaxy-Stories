///@description Carry State

function scr_Player_Carry()
{
	if (!global.pause)
	{
		//Variables
		
		var playerCharacter = global.characterP1;
		if (player == 1) playerCharacter = global.characterP2;
		
		var playerAbility = global.abilityP1;
		if (player == 1) playerAbility = global.abilityP2;
		
		//Run
		
		runDoubleTap -= 1;
		if ((!global.cutscene) and ((keyLeftPressed) or (keyRightPressed)) and (!inhaleEnd) and (!spit))
		{
		    if (runDoubleTap > 0)
		    {
		        if (!run)
				{
					if (!place_meeting(x,y + 1,obj_Wall))
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
		
		//Jump
		
		if (place_meeting(x,y + 1,obj_Wall))
		{
			vsp = 0;
			if ((!global.cutscene) and (keyJumpPressed) and (!inhaleEnd) and (!spit))
			{
				vsp = -jumpspeed;
				audio_play_sound(snd_Jump,0,false);
			}
		}
		
		//Change to Normal
		
		if (!hurt)
		{
		    if ((!global.cutscene) and (keyAttackPressed) and (!inhaleEnd) and (!spit))
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
		        cAbility = "none";
				if (ateHeavy) ateHeavy = false;
				if (ateCappyShroom) ateCappyShroom = false;
		    }
			
		    if ((!global.cutscene) and (place_meeting(x,y + 1,obj_Wall)) and (!inhaleEnd) and (!spit) and (keyDownPressed))
		    {
				if (player == 0)
				{
					global.abilityP1 = cAbility;
				}
				else
				{
					global.abilityP2 = cAbility;
				}
				if (cAbility != "none")
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
				if (audio_is_playing(snd_Swallow)) audio_stop_sound(snd_Swallow);
				audio_play_sound(snd_Swallow,0,false);
				hsp = 0;
				vsp = 0;
				run = false;
				swallow = true;
			    cAbility = "none";
				ateHeavy = false;
				ateCappyShroom = false;
				image_index = 0;
			    state = playerStates.swallow;
		    }
		}
		
		//Animation
		
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
					
			        if ((place_meeting(x,y + 1,obj_Wall)) and (vsp == 0))
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
							
							var collidedWall = instance_place(x,y + 1,obj_Wall);
							if ((playerCharacter == "kirby") and (collidedWall.slope))
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
									case "kirby":
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
			image_speed = 1;
		    sprite_index = sprFloatHurt;
		}
		
		//Walk Duck
		
		if ((!walkDuck) and (place_meeting(x,y + (1 + vspFinal),obj_Wall)) and (vsp > 1) and (!inhaleEnd) and (!spit) and (!attack))
		{
			image_index = 0;
			walkDuck = true;
			walkDuckTimer = walkDuckTimerMax;
			audio_play_sound(snd_Squish,0,false);
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
		
		if ((walkDuck) and (vsp == 0) and (!attack))
		{
			sprite_index = sprCarryDuck;
		}
		
		//Collision
		
		scr_Player_Collision();
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}