///@description Normal State

function scr_Player_Normal()
{
	if (!global.pause)
	{
		//Variables
		
		var playerCharacter = global.characterP1;
		if (player == 1) playerCharacter = global.characterP2;
		
		var playerAbility = global.abilityP1;
		if (player == 1) playerAbility = global.abilityP2;
		
		var grounded = false;
		if (place_meeting(x,y + 1,obj_Wall))
		{
			var collidingWall = instance_place(x,y + 1,obj_Wall);
			if ((!collidingWall.platform) or ((collidingWall.platform) and (((!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padd))) and !(round(bbox_bottom) > collidingWall.y + 20 + vspFinal)))) grounded = true;
		}
		
		var wallAbove = false;
		if (place_meeting(x,y - 1,obj_Wall))
		{
			var collidingWall = instance_place(x,y - 1,obj_Wall);
			if ((!collidingWall.platform) or ((collidingWall.platform) and (((!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padd))) and !(round(bbox_bottom) > collidingWall.y + 20 + vspFinal)))) wallAbove = true;
		}
		
		//Run
		
		if ((canRun) and (playerAbility != "ufo"))
		{
			if (runDoubleTap > -1) runDoubleTap -= 1;
			if ((!global.cutscene) and (!runTurn) and (((keyboard_check_pressed(keyLeft)) or (keyboard_check_pressed(keyRight))) or ((gamepad_button_check_pressed(0,gp_padl)) or (gamepad_button_check_pressed(0,gp_padr)))))
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
						if (playerAbility == "mirror")
						{
							mirrorDashParticleTimer = 0;
						}
						else
						{
							runParticleTimer = 0;
						}
						run = true;
					}
			    }
			    runDoubleTap = 20;
			}
		}
		
		if (run)
		{
		    movespeed = movespeedRun;
		    if (((runCancelTimer == -1) and (grounded) and ((keyboard_check_released(keyLeft)) or (keyboard_check_released(keyRight)) or (gamepad_button_check_released(0,gp_padl)) or (gamepad_button_check_released(0,gp_padr)))) or (global.cutscene))
		    {
		        runCancelTimer = 15;
		    }
			if (sprite_index == sprMirrorDash)
			{
				if (!audio_is_playing(mirrorDashSfx)) mirrorDashSfx = audio_play_sound(snd_Mirror3,0,false);
				if (mirrorDashParticleTimer == -1) mirrorDashParticleTimer = mirrorDashParticleTimerMax;
				image_index = 0;
				var afterimage = instance_create_depth(x,y,depth + 1,obj_Afterimage);
				afterimage.sprite_index = scr_Player_AbilityHat(playerAbility,playerCharacter);
				afterimage.image_index = choose(1,2);
				afterimage.image_xscale = image_xscale;
				afterimage.image_alpha = .6;
				afterimage.paletteIndex = spr_Kirby_Normal_Palette_Misc_MirrorCyan;
				afterimage.destroyTimer = 4;
			}
			else
			{
				if (audio_is_playing(mirrorDashSfx)) audio_stop_sound(mirrorDashSfx);
				mirrorDashParticleTimer = -1;
			}
		}
		else
		{
		    movespeed = movespeedNormal;
		}
		
		if ((runTurn) and (hsp == 0))
		{
			//run = false;
			runTurn = false;
		}
		
		//Movement
		
		if ((!hurt) and (walkSquishTimer == -1))
		{
			if ((!global.cutscene) and (canWalk) and (!runTurn))
			{
				if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr)))
				{
					if (!attack)
					{
						hsp += accel;
						if (!runTurn) dir = 1;
						if ((canRunTurn) and (carriedItem == "none") and (grounded) and (run) and (playerAbility != "mirror") and (sign(hsp) != 0) and (sign(hsp) != sign(dir)))
						{
							if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
							audio_play_sound(snd_DashBegin,0,false);
							dir = -1;
							runParticleNum = 0;
							runParticleTimer = 0;
							runTurn = true;
						}
					}
				}
				if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))
				{
					if (!attack)
					{
						hsp -= accel;
						if (!runTurn) dir = -1;
						if ((canRunTurn) and (carriedItem == "none") and (grounded) and (run) and (playerAbility != "mirror") and (sign(hsp) != 0) and (sign(hsp) != sign(dir)))
						{
							if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
							audio_play_sound(snd_DashBegin,0,false);
							dir = 1;
							runParticleNum = 0;
							runParticleTimer = 0;
							runTurn = true;
						}
					}
				}
			}
			
			if ((canUfoFloat) or (playerAbility == "ufo"))
			{
				if (!global.cutscene)
				{
					if ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu)))
					{
						if (!attack) vsp -= accel;
					}
					if ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd)))
					{
						if (!attack) vsp += accel;
					}
				}
				
				if ((((keyboard_check(keyDown)) and (keyboard_check(keyUp)) and (!gamepad_button_check(0,gp_padu)) and (!gamepad_button_check(0,gp_padd))) or ((gamepad_button_check(0,gp_padu)) and (gamepad_button_check(0,gp_padd)) and (!keyboard_check(keyDown)) and (!keyboard_check(keyUp))) or ((!keyboard_check(keyDown)) and (!keyboard_check(keyUp) and (!gamepad_button_check(0,gp_padu)) and (!gamepad_button_check(0,gp_padd))))) or (attack) or (global.cutscene))
				{
					vsp = scr_Friction(vsp,decel);
				}
				
				hsp = clamp(hsp, -ufoFloatSpd, ufoFloatSpd);
				vsp = clamp(vsp, -ufoFloatSpd, ufoFloatSpd);
			}
			else
			{
				if (hspLimit) hsp = clamp(hsp, -movespeed, movespeed);
			}
			
			if ((((keyboard_check(keyLeft)) and (keyboard_check(keyRight)) and (!gamepad_button_check(0,gp_padl)) and (!gamepad_button_check(0,gp_padr))) or ((gamepad_button_check(0,gp_padl)) and (gamepad_button_check(0,gp_padr)) and (!keyboard_check(keyLeft)) and (!keyboard_check(keyRight))) or ((!keyboard_check(keyLeft)) and (!keyboard_check(keyRight) and (!gamepad_button_check(0,gp_padl)) and (!gamepad_button_check(0,gp_padr))))) or (attack) or (runTurn) or (global.cutscene))
			{
				var ultiDecel = decel;
				if (runTurn) ultiDecel = decel * 2;
				if (attackNumber == "fireWheel") ultiDecel = decelSlide;
				if (attackNumber == "beamAir") ultiDecel = decel - .025;
				if (hsp >= ultiDecel) hsp -= ultiDecel;
				if (hsp <= -ultiDecel) hsp += ultiDecel;
				if ((hsp > -ultiDecel) and (hsp < ultiDecel)) hsp = 0;
			}
			
		}
		
		if ((hasGravity) and (playerAbility != "ufo"))
		{
			var gravOffset = 0;
			if (attackNumber == "beamAir") gravOffset = .05;
			if (vsp < gravLimit)
			{
				vsp += grav - gravOffset;
			}
			else
			{
				vsp = gravLimit - (gravOffset * 5);
				if (((playerCharacter == "kirby") or (playerCharacter == "gooey")) and (fallHopCounter < fallHopCounterMax)) fallHopCounter += 1;
			}
		}
		
		if ((!global.cutscene) and (!canUfoFloat) and (playerAbility != "ufo") and (vsp < 0) and (!keyboard_check(keyJump)) and (!gamepad_button_check(0,gp_face1)))
		{
			var jumpLimitValue = -jumpspeed / 4;
			switch (playerCharacter)
			{
				case "bouncy":
				jumpLimitValue = -jumpspeed / 2;
				break;
				
				default:
				jumpLimitValue = -jumpspeed / 4;
				break;
			}
		    if ((hasJumpLimit) and (jumpLimit)) vsp = max(vsp,jumpLimitValue);
		}
		
		//Grounded
		
		if (grounded)
		{
			if (((!canUfoFloat) and (playerAbility != "ufo")))
			{
				if ((canMultiJump) and (multiJumpLimit != -1))
				{
					multiJumpCounter = 0;
					if (!invincible)
					{
						invincibleFlash = false;
						invincibleFlashTimer = -1;
					}
				}
				fallRoll = false;
				cutterAirThrown = false;
				if (jumpLimit) vsp = 0;
				if (fallHopCounter != 0) fallHopCounter = 0;
				if ((attackNumber == "cutterAir") or (attackNumber == "fireAerial")) attackTimer = 0;
			}
			if (playerCharacter == "gamble")
			{
				canUfoFloat = false;
				canJump = true;
			}
		}
		else
		{
			if (playerCharacter == "gamble")
			{
				canUfoFloat = true; 
				canJump = false;
			}
		}
		
		//Abilities
		
		switch (carriedItem)
		{
			case "bomb":
			if (!global.cutscene)
			{
				if ((!hurt) and (!attack) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))))
				{
					var grabEnemy = -1;
					if (place_meeting(x + (16 * dir),y,obj_Enemy)) grabEnemy = instance_place(x + (16 * dir),y,obj_Enemy);
					if ((grabEnemy != -1) and (grabEnemy.hurtable) and (!grabEnemy.hurt) and (!grabEnemy.isBoss))
					{
						if (audio_is_playing(snd_Guard)) audio_stop_sound(snd_Guard);
						audio_play_sound(snd_Guard,0,false);
						sprite_index = sprBombAttack4;
						grabObj = instance_create_depth(grabEnemy.x,grabEnemy.y,grabEnemy.depth,obj_Projectile_GrabEnemy);
						grabObj.owner = id;
						grabObj.dirX = grabEnemy.dirX;
						grabObj.dmg = "none";
						grabObj.active = true;
						grabObj.particleTimer = grabObj.particleTimerMax;
						grabObj.destroyTimer = 30;
						var grabSpr = grabEnemy.sprHurt;
						if ((grabSpr = -1) or (grabSpr = "self"))
						{
							grabObj.sprite_index = grabEnemy.sprite_index;
						}
						else
						{
							grabObj.sprite_index = grabSpr;
						}
						grabObj.paletteIndex = grabEnemy.paletteIndex;
						grabEnemy.hasDeathParticles = false;
						grabEnemy.death = true;
						attack = true;
						attackNumber = "bombGrab";
						carriedItemIndex.owner = carriedItemIndex;
						carriedItemIndex.xOffset = 0;
						carriedItemIndex.yOffset = 0;
						carriedItemIndex.hasGravity = false;
						carriedItemIndex.x = grabObj.x;
						carriedItemIndex.y = grabObj.y - sprite_get_height(grabObj.sprite_index) + 6;
						carriedItemIndex.explodeTimer = 30;
						carriedItem = "none";
						carriedItemIndex = -1;
						carriedItemState = "none";
						attackTimer = 10;
					}
					
					if (!attack)
					{
						if (run)
						{
							attack = true;
							attackNumber = "bombDash";
							sprite_index = sprBombAttack3Ready;
							image_index = 0;
						}
						else
						{
							attack = true;
							attackNumber = "bombNormal";
							sprite_index = sprBombAttack1;
							image_index = 0;
						}
					}
				}
				
				if (attackNumber == "bombNormal")
				{
					if (((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))) or (hurt))
					{
						if (audio_is_playing(snd_BombThrow)) audio_stop_sound(snd_BombThrow);
						audio_play_sound(snd_BombThrow,0,false);
						sprite_index = sprBombAttack2;
						image_index = 0;
						var bdir = (270 + (90 * dir)) + (bombDir * dir);
						if (bdir >= 360) bdir -= 360;
						if (bdir < 0) bdir += 360;
						carriedItemIndex.active = true;
						carriedItemIndex.hsp = lengthdir_x(6,bdir);
						carriedItemIndex.vsp = lengthdir_y(6,bdir);
						carriedItemIndex.angleSpd = carriedItemIndex.hsp * 4;
						if (bombMultiBombUpgrade)
						{
							var bombCount = irandom_range(1,2);
							for (var i = 0; i < bombCount; i++)
							{
								var bomb = instance_create_depth(carriedItemIndex.x,carriedItemIndex.y,depth - 1,obj_Projectile_Bomb);
								bomb.owner = id;
								bomb.hasRemoteDetonation = bombSmartBombUpgrade;
								bomb.hasHoming = bombEyeBombUpgrade;
								bomb.hasMagma = bombMagmaBombUpgrade;
								bomb.active = true;
								bomb.enemy = false;
								bomb.dirX = dir;
								bomb.objectOnHitDmg = 26;
								bomb.destroyableByWall = false;
								bomb.destroyableByPlayer = false;
								bomb.destroyableByEnemy = false;
								bomb.destroyableByObject = false;
								bomb.destroyableByProjectile = false;
								bomb.hurtsObject = false;
								bomb.hurtsEnemy = false;
								bomb.hurtsBoss = false;
								bomb.hurtsPlayer = false;
								bomb.hurtsProjectile = false;
								bomb.image_xscale = bomb.dirX;
								var bdir = (270 + (90 * dir)) + ((bombDir + (10 * (i + 1))) * dir);
								if (bdir >= 360) bdir -= 360;
								if (bdir < 0) bdir += 360;
								bomb.hsp = lengthdir_x(6,bdir);
								bomb.vsp = lengthdir_y(6,bdir);
								bomb.angleSpd = bomb.hsp * 4;
							}
						}
						carriedItem = "none";
						carriedItemIndex = -1;
						carriedItemState = "none";
						bombDir = 0;
						attackTimer = 20;
					}
					else
					{
						if (bombDir < bombDirMax) bombDir += 2;
						if (bombDir >= (bombDirMax / 2))
						{
							image_index = 1;
						}
						else
						{
							image_index = 0;
						}
					}
				}
				
				if (attackNumber == "bombDash")
				{
					if (audio_is_playing(snd_BombDash)) audio_stop_sound(snd_BombDash);
					audio_play_sound(snd_BombDash,0,false);
					carriedItemIndex.active = true;
					carriedItemIndex.y += 12;
					carriedItemIndex.hasGravity = false;
					carriedItemIndex.hsp = 6 * dir;
					carriedItemIndex.vsp = 0;
					carriedItemIndex.objectOnHitDmg = 12;
					carriedItemIndex.angleSpd = carriedItemIndex.hsp * 4;
					carriedItem = "none";
					carriedItemIndex = -1;
					carriedItemState = "none";
					bombDir = 0;
					attackTimer = 60;
				}
			}
			break;
			
			default:
			if (canAttack)
			{
				switch (playerCharacter)
				{
					case "kirby":
					switch (playerAbility)
					{
						case "none":
					    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt))
					    {
							if (!hurt)
							{
							    var inhaleMask = instance_create_depth(x + (3 * dir),y - 2,depth + 1,obj_InhaleMask);
								inhaleMask.image_xscale = image_xscale;
								inhaleMask.owner = id;
							}
							walkDuck = false;
							walkDuckTimer = -1;
					        run = false;
					        image_index = 0;
							inhaling = false;
					        state = playerStates.inhale;
					    }
						break;
					
						case "cutter":
					    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
					    {
							if ((run) and (vsp == 0) and (hsp != 0))
							{
								attack = true;
								attackNumber = "cutterDash";
								sprite_index = sprCutterAttack2;
						        image_index = 0;
				                cutterCatch = false;
							}
							else if ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd)))
							{
								var cutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CutterDropMask);
								cutterMaskProj.owner = id;
								cutterMaskProj.dmg = 22;
								cutterMaskProj.image_xscale = image_xscale;
								cutterMaskProj.image_yscale = image_yscale;
								invincible = true;
								attack = true;
								attackNumber = "cutterDrop";
								sprite_index = sprCutterAttack3;
								image_index = 0;
				                state = playerStates.cutterDrop;
							}
							else if (cutterAirThrown)
							{
								var cutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CutterDropMask);
								cutterMaskProj.owner = id;
								cutterMaskProj.dmg = 22;
								cutterMaskProj.image_xscale = image_xscale;
								cutterMaskProj.image_yscale = image_yscale;
								invincible = true;
								attack = true;
								attackNumber = "cutterAir";
								sprite_index = sprCutterAttack3;
								image_index = 0;
							}
							else
							{
								if ((!cutterAirThrown) or (vsp == 0))
								{
									if (vsp != 0) cutterAirThrown = true;
									attack = true;
									attackNumber = "cutterCharge";
									sprite_index = sprCutterAttack1;
									image_index = 0;
								}
							}
					    }
					
						if (attackNumber == "cutterCharge")
						{
							image_index = 0;
							if (cutterCharge == cutterChargeMax - 1)
							{
								if (audio_is_playing(snd_Charge_Ready)) audio_stop_sound(snd_Charge_Ready);
								audio_play_sound(snd_Charge_Ready,0,false);
								var particle = instance_create_depth(x,y - 15,depth - 1,obj_Particle);
								particle.sprite_index = spr_Particle_Flash1;
								particle.scale = 1.5;
								particle.destroyAfterAnimation = true;
							}
							cutterCharge += 1;
							if ((!audio_is_playing(snd_Charge_Intro)) and (!audio_is_playing(snd_Charge_Loop)))
							{
								if (chargeSfxState == "intro")
								{
								    chargeSfx = audio_play_sound(snd_Charge_Intro,0,false);
								    chargeSfxState = "loop";
								}
								else
								{
								    chargeSfx = audio_play_sound(snd_Charge_Loop,0,false);
								}
							}
						
							if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr)))
							{
								dir = 1;
							}
							if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))
							{
								dir = -1;
							}
						
							if (cutterCharge < cutterChargeMax)
							{
								if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
								{
									cutterCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									invincibleFlash = false;
									invincibleFlashTimer = -1;
									attack = true;
									attackNumber = "cutterNormal";
									sprite_index = sprCutterAttack1;
								    image_index = 0;
								}
							}
							else
							{
								if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
								if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
								{
									cutterCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									invincibleFlash = false;
									invincibleFlashTimer = -1;
									attack = true;
									attackNumber = "cutterChargeAttack";
									sprite_index = sprCutterAttack1;
								    image_index = 0;
								}
							}
						}
					
						if (attackNumber == "cutterNormal")
						{
							if ((round(image_index) == (image_number - 1)) and (attackable))
							{
								if (audio_is_playing(snd_Cutter)) audio_stop_sound(snd_Cutter);
								audio_play_sound(snd_Cutter,0,false);
						        var projectile = instance_create_depth(x,y - 5,depth,obj_Projectile_Cutter);
								projectile.owner = id;
								projectile.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
								projectile.dmg = 12;
								projectile.sprite_index = projectile.sprIdle;
								projectile.hsp = dir * projectile.decelMax;
								projectile.dirX = dir;
								projectile.image_xscale = projectile.dirX;
								projectile.enemy = false;
								projectile.player = player;
								attackable = false;
							}
						}
					
						if (attackNumber == "cutterChargeAttack")
						{
							if ((round(image_index) == (image_number - 1)) and (attackable))
							{
								if (audio_is_playing(snd_Cutter)) audio_stop_sound(snd_Cutter);
								audio_play_sound(snd_Cutter,0,false);
						        var projectile = instance_create_depth(x,y - 5,depth,obj_Projectile_Cutter);
								projectile.owner = id;
								projectile.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
								projectile.dmg = 20;
								projectile.sprite_index = projectile.sprIdle;
								projectile.decelMax = projectile.decelMax * 1.2;
								projectile.hsp = dir * projectile.decelMax;
								projectile.dirX = dir;
								projectile.image_xscale = projectile.dirX;
								projectile.enemy = false;
								projectile.destroyableByEnemy = false;
								projectile.destroyableByObject = false;
								projectile.destroyableByProjectile = false;
								projectile.player = player;
								projectile.image_blend = c_red;
								attackable = false;
							}
						}
					
						if (attackNumber == "cutterDash")
						{
							if (attackable)
							{
				                hsp = movespeedSlide * dir;
								run = false;
				                attack = true;
								attackable = false;
				                attackTimer = 45;
				                state = playerStates.cutterDash;
								if (audio_is_playing(snd_CutterDash)) audio_stop_sound(snd_CutterDash);
								slideSfx = audio_play_sound(snd_CutterDash,0,false);
								cutterDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CutterDashMask);
								cutterDashMaskProj.owner = id;
								cutterDashMaskProj.dmg = 18;
								cutterDashMaskProj.dmgMax = 18;
								cutterDashMaskProj.dmgMin = 16;
								cutterDashMaskProj.image_xscale = image_xscale;
								cutterDashMaskProj.image_yscale = image_yscale;
							}
						}
					
						if (attackNumber == "cutterAir")
						{
							if ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2)))
							{
								attackTimer = 0;
							}
						}
						break;
						
						case "beam":
					    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
					    {
							if ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu)) or ((dir = 1) and (((keyboard_check(keyRight))) or ((gamepad_button_check(0,gp_padr))))) or ((dir = -1) and (((keyboard_check(keyLeft))) or ((gamepad_button_check(0,gp_padl))))))
							{
								var grabEnemy = -1;
								if (place_meeting(x + (16 * dir),y,obj_Enemy)) grabEnemy = instance_place(x + (16 * dir),y,obj_Enemy);
								if ((grabEnemy != -1) and (grabEnemy.hurtable) and (!grabEnemy.hurt) and (!grabEnemy.isBoss))
								{
									if (audio_is_playing(snd_Guard)) audio_stop_sound(snd_Guard);
									audio_play_sound(snd_Guard,0,false);
									sprite_index = sprBeamAttack6;
									grabObj = instance_create_depth(x + (16 * dir),y - 8,depth - 1,obj_Projectile_GrabEnemy);
									grabObj.owner = id;
									grabObj.dirX = grabEnemy.dirX;
									grabObj.dmg = 60;
									var grabSpr = grabEnemy.sprHurt;
									if ((grabSpr = -1) or (grabSpr = "self"))
									{
										grabObj.sprite_index = grabEnemy.sprite_index;
									}
									else
									{
										grabObj.sprite_index = grabSpr;
									}
									grabObj.paletteIndex = grabEnemy.paletteIndex;
									grabEnemy.hasDeathParticles = false;
									grabEnemy.death = true;
									attack = true;
									attackNumber = "beamGrab";
									hsp = 0;
									state = playerStates.beamGrab;
								}
							}
						
							if (!attack)
							{
								if ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu)))
								{
									if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
									sndBeam = audio_play_sound(snd_Beam,0,false);
									attack = true;
									attackNumber = "beamUp";
									sprite_index = sprBeamAttack4;
								    image_index = 0;
								}
								else
								{
									if (run)
									{
										if (grounded)
										{
											attackTimer = 60;
											if (audio_is_playing(snd_BeamDash)) audio_stop_sound(snd_BeamDash);
											sndBeam = audio_play_sound(snd_BeamDash,0,false);
											attack = true;
											attackNumber = "beamDash";
											beamDashAttackTimer = 0;
											sprite_index = sprBeamAttack3;
											image_index = 0;
										}
										else
										{
											attackTimer = 45;
											if (audio_is_playing(snd_BeamAir)) audio_stop_sound(snd_BeamAir);
											sndBeam = audio_play_sound(snd_BeamAir,0,false);
											attack = true;
											attackNumber = "beamAir";
											beamAttack2FirstHit = true;
											jumpLimit = false;
											jumpLimitTimer = jumpLimitTimerMax;
											vsp = -(jumpspeed / 2);
											beamAttack2Timer = 0;
											sprite_index = sprBeamAttack2;
											image_index = 0;
										}
									}
									else
									{
										attack = true;
										attackNumber = "beamCharge";
										sprite_index = sprBeamCharge;
									    image_index = 0;
									}
								}
							}
					    }
					
						if (attackNumber == "beamCharge")
						{
							if (beamCharge == beamChargeMax - 1)
							{
								audio_play_sound(snd_Charge_Ready,0,false);
								var particle = instance_create_depth(x - (16 * dir),y - 15,depth - 1,obj_Particle);
								particle.sprite_index = spr_Particle_Flash1;
								particle.scale = 1.5;
								particle.destroyAfterAnimation = true;
							}
							beamCharge += 1;
							if ((!audio_is_playing(snd_Charge_Intro)) and (!audio_is_playing(snd_Charge_Loop)))
							{
								if (chargeSfxState == "intro")
								{
								    chargeSfx = audio_play_sound(snd_Charge_Intro,0,false);
								    chargeSfxState = "loop";
								}
								else
								{
								    chargeSfx = audio_play_sound(snd_Charge_Loop,0,false);
								}
							}
						
							if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr)))
							{
								dir = 1;
							}
							if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))
							{
								dir = -1;
							}
						
							if (beamCharge < beamChargeMax)
							{
								if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
								{
									beamCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
									sndBeam = audio_play_sound(snd_Beam,0,false);
									attack = true;
									attackNumber = "beamNormal";
									sprite_index = sprBeamAttack1;
								    image_index = 0;
								}
							}
							else
							{
								if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
								if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
								{
									beamCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									invincibleFlash = false;
									invincibleFlashTimer = -1;
									attack = true;
									attackNumber = "beamChargeAttack";
									sprite_index = sprBeamAttack5;
								    image_index = 0;
								}
							}
						}
					
						if (attackNumber == "beamNormal")
						{
							if (attackable)
							{
								attackTimer = 35;
								parBeamCycle1 = instance_create_depth(-100,-100,depth - 1,obj_Particle);
			                    parBeamCycle1.followObject = false;
			                    parBeamCycle1.followedObject = id;
			                    parBeamCycle1.sprite_index = spr_Particle_BeamCycle;
								parBeamCycle1.turnSpd = (5 * -dir);
								parBeamCycle1.turnAroundObject = true;
								parBeamCycle1.angle = 90 + (10 * dir);
			                    parBeamCycle1.orbit = 20;
								parBeamCycle1.invisTimerMax = 2;
			                    parBeamCycle1.invisTimer = parBeamCycle1.invisTimerMax;
			                    parBeamCycle1.destroyTimer = attackTimer;
								for (var i = 0; i < (5 + beamGoldenFlareUpgrade); i++)
								{
									var projBeam = instance_create_depth(-100,-100,depth + 1,obj_Projectile_Beam);
									projBeam.owner = id;
									projBeam.dmg = 12;
									switch (i)
									{
										case 0:
										projBeam.angle = 90 + (40 * -dir);
										break;
									
										case 1:
										projBeam.angle = 90 + (35 * -dir);
										break;
									
										case 2:
										projBeam.angle = 90 + (25 * -dir);
										break;
									
										case 3:
										projBeam.angle = 90 + (10 * -dir);
										break;
									
										case 4:
										projBeam.angle = 90 - (8 * -dir);
										break;
										
										case 5:
										projBeam.angle = 90 - (26 * -dir);
										break;
									}
									projBeam.centerX = (10 * dir);
									projBeam.centerY = -5;
									projBeam.orbit = 20 + (15 * i);
									projBeam.invisTimer = -1 + (2 * i);
									if (i > 0) projBeam.visible = false;
									projBeam.imageIndex = i - 1;
									if (projBeam.imageIndex < 0) projBeam.imageIndex = 0;
									if (projBeam.imageIndex > 3) projBeam.imageIndex = 3;
									projBeam.spd = (2.4 + (i * .4)) * -dir;
									projBeam.image_index = projBeam.imageIndex;
									projBeam.enemy = false;
									projBeam.destroyableByWall = false;
									projBeam.destroyableByEnemy = false;
									projBeam.destroyableByObject = false;
									projBeam.hitInvincibility = projBeam.hitInvincibilityMax;
									projBeam.pulseTimer = projBeam.pulseTimerMax;
									projBeam.invisTimerMax = -1;
									projBeam.destroyTimer = 25 + (2 * i);
									if (beamGoldenFlareUpgrade)
									{
										projBeam.character = 6;
										projBeam.sprite_index = spr_Projectile_Beam_Gold;
									}
								}
								attackable = false;
							}
							if (instance_exists(parBeamCycle1))
							{
								if (floor(image_index) == 2) parBeamCycle1.visible = false;
								if (floor(image_index) == 3)
								{
									parBeamCycle1.visible = true;
									parBeamCycle1.turnSpd = (11 * -dir);
									parBeamCycle1.orbit = 14;
								}
							}
						}
					
						if (attackNumber == "beamDash")
						{
							if (attackable)
							{
								var proj = instance_create_depth(x + (21 * dir),y - 7,depth - 1,obj_Projectile_BeamDash);
								proj.dmg = 9;
								proj.enemy = false;
								proj.dirX = dir;
								proj.owner = id;
								proj.image_xscale = proj.dirX;
								proj.hitInvincibility = 15;
							}
							attackable = false;
							if (beamDashAttackTimer == -1) beamDashAttackTimer = beamDashAttackTimerMax;
						}
					
						if (attackNumber == "beamAir")
						{
							attackable = false;
							if (beamAttack2Timer == -1) beamAttack2Timer = (beamAttack2TimerMax + irandom_range(-1,1) - beamGoldenFlareUpgrade);
							
								if (grounded)
								{
									audio_stop_sound(sndBeam);
									beamAttack2Timer = -1;
									attack = false;
									attackable = true;
									attackNumber = "none";
								}
						}
					
						if (attackNumber == "beamUp")
						{
							if (attackable)
							{
								for (var i = 0; i < (5 + beamGoldenFlareUpgrade); i++)
								{
									var projBeam = instance_create_depth(-100,-100,depth + 1,obj_Projectile_Beam);
									projBeam.owner = id;
									projBeam.dmg = 12;
									switch (i)
									{
										case 0:
										projBeam.angle = (270 + (dir * 100)) - (38 * -dir);
										break;
										
										case 1:
										projBeam.angle = (270 + (dir * 100)) - (35 * -dir);
										break;
										
										case 2:
										projBeam.angle = (270 + (dir * 100)) - (26 * -dir);
										break;
										
										case 3:
										projBeam.angle = (270 + (dir * 100)) - (14 * -dir);
										break;
										
										case 4:
										projBeam.angle = (270 + (dir * 100)) + (0 * -dir);
										break;
										
										case 5:
										projBeam.angle = (270 + (dir * 100)) + (14 * -dir);
										break;
									}
									projBeam.orbit = 38 + (15 * i);
									projBeam.invisTimer = -1 + (2 * i);
									if (i > 0) projBeam.visible = false;
									projBeam.imageIndex = i - 1;
									if (projBeam.imageIndex < 0) projBeam.imageIndex = 0;
									if (projBeam.imageIndex > 3) projBeam.imageIndex = 3;
									projBeam.spd = (2.8 + (i * .4)) * dir;
									projBeam.image_index = projBeam.imageIndex;
									projBeam.enemy = false;
									projBeam.destroyableByWall = false;
									projBeam.destroyableByEnemy = false;
									projBeam.destroyableByObject = false;
									projBeam.hasLimit = false;
									projBeam.hitInvincibility = projBeam.hitInvincibilityMax;
									projBeam.pulseTimer = projBeam.pulseTimerMax;
									projBeam.invisTimerMax = -1;
									projBeam.destroyTimer = 25 + (2 * i);
									if (beamGoldenFlareUpgrade)
									{
										projBeam.character = 6;
										projBeam.sprite_index = spr_Projectile_Beam_Gold;
									}
								}
								attackable = false;
							}
						}
						
						if (attackNumber == "beamChargeAttack")
						{
							if (attackable)
							{
								scaleExX = .2;
								scaleExY = -.2;
								hsp = 1 * -dir;
								attackTimer = 20;
								if (audio_is_playing(snd_BeamCharge)) audio_stop_sound(snd_BeamCharge);
								audio_play_sound(snd_BeamCharge,0,false);
								if (((player == 0) and (global.hatTypeBeamP1 == "marxSoul")) or ((player == 1) and (global.hatTypeBeamP2 == "marxSoul"))) audio_play_sound(snd_BeamChargeMarxAlt,0,false);
							    var projectile = instance_create_depth(x + (6 * dir),y - 2,depth,obj_Projectile_BeamCharge);
								projectile.owner = id;
								projectile.dmg = 30;
								projectile.hsp = dir * 6.5;
								projectile.dirX = dir;
								projectile.image_xscale = projectile.dirX;
								projectile.enemy = false;
								if (beamGoldenFlareUpgrade)
								{
									projectile.character = 6;
									projectile.sprite_index = spr_Projectile_Beam_Gold;
									projectile.upgradeProjTimer = projectile.upgradeProjTimerMax;
								}
								attackable = false;
							}
						}
					
						/*if (attackNumber == "beamUp")
						{
							if (attackable)
							{
								attackTimer = 24;
								for (var i = 0; i < 5; i++)
								{
									var projBeam = instance_create_depth(-100,-100,depth + 1,obj_Projectile_Beam);
									projBeam.owner = id;
									projBeam.invisTimer = -1 + (2 * i);
									if (i > 0) projBeam.visible = false;
									projBeam.imageIndex = i - 1;
									if (projBeam.imageIndex < 0) projBeam.imageIndex = 0;
									projBeam.orbit = 20 + (15 * i);
									projBeam.angle = 90 + ((40 - (5 * i)) * -dir);
									projBeam.spd = 0;
									projBeam.orbitSpd = 2;
									projBeam.image_index = projBeam.imageIndex;
									projBeam.enemy = false;
									projBeam.destroyableByWall = false;
									projBeam.destroyableByEnemy = false;
									projBeam.destroyableByObject = false;
									projBeam.hitInvincibility = projBeam.hitInvincibilityMax;
									projBeam.hasLimit = false;
									projBeam.pulseTimer = projBeam.pulseTimerMax;
									projBeam.invisTimerMax = -1;
									projBeam.destroyTimer = 4 + (2 * i);
									if (i == 4) projBeam.destroyTimer = 22;
								}
								attackable = false;
							}
						}*/
						break;
					
						case "mysticBeam":
					    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
					    {
							if ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu)) or ((dir = 1) and (((keyboard_check(keyRight))) or ((gamepad_button_check(0,gp_padr))))) or ((dir = -1) and (((keyboard_check(keyLeft))) or ((gamepad_button_check(0,gp_padl))))))
							{
								var grabEnemy = -1;
								if (place_meeting(x + (16 * dir),y,obj_Enemy)) grabEnemy = instance_place(x + (16 * dir),y,obj_Enemy);
								if ((grabEnemy != -1) and (grabEnemy.hurtable) and (!grabEnemy.hurt) and (!grabEnemy.isBoss))
								{
									if (audio_is_playing(snd_Guard)) audio_stop_sound(snd_Guard);
									audio_play_sound(snd_Guard,0,false);
									sprite_index = sprBeamAttack6;
									grabObj = instance_create_depth(x + (16 * dir),y - 8,depth - 1,obj_Projectile_GrabEnemy);
									grabObj.owner = id;
									grabObj.dirX = grabEnemy.dirX;
									grabObj.dmg = 60;
									var grabSpr = grabEnemy.sprHurt;
									if ((grabSpr = -1) or (grabSpr = "self"))
									{
										grabObj.sprite_index = grabEnemy.sprite_index;
									}
									else
									{
										grabObj.sprite_index = grabSpr;
									}
									grabObj.paletteIndex = grabEnemy.paletteIndex;
									grabEnemy.hasDeathParticles = false;
									grabEnemy.death = true;
									attack = true;
									attackNumber = "mysticBeamGrab";
									hsp = 0;
									state = playerStates.mysticBeamGrab;
								}
							}
						
							if (!attack)
							{
								if (run)
								{
									if (grounded)
									{
										attackTimer = 30;
										if (audio_is_playing(snd_MysticBeamLaser)) audio_stop_sound(snd_MysticBeamLaser);
										audio_play_sound(snd_MysticBeamLaser,0,false);
										attack = true;
										attackNumber = "mysticBeamDash";
										sprite_index = sprMysticBeamAttack1;
									    image_index = 0;
									}
									else
									{
										attackTimer = 45;
										if (audio_is_playing(snd_BeamAir)) audio_stop_sound(snd_BeamAir);
										sndMysticBeam = audio_play_sound(snd_BeamAir,0,false);
										attack = true;
										attackNumber = "mysticBeamAir";
										jumpLimit = false;
										jumpLimitTimer = jumpLimitTimerMax;
										vsp = -(jumpspeed / 2);
										mysticBeamAttack2Timer = 0;
										sprite_index = sprBeamAttack2;
									    image_index = 0;
									}
								}
								else
								{
									attack = true;
									attackNumber = "mysticBeamCharge";
									sprite_index = sprBeamCharge;
								    image_index = 0;
								}
							}
						}
					
						if (attackNumber == "mysticBeamCharge")
						{
							if (beamCharge == beamChargeMax - 1)
							{
								if (audio_is_playing(snd_Charge_Ready)) audio_stop_sound(snd_Charge_Ready);
								audio_play_sound(snd_Charge_Ready,0,false);
								var particle = instance_create_depth(x - (16 * dir),y - 15,depth - 1,obj_Particle);
								particle.sprite_index = spr_Particle_Flash1;
								particle.scale = 1.5;
								particle.destroyAfterAnimation = true;
							}
							else if (beamCharge == 0) mysticBeamChargeEx = 0;
							beamCharge += 1;
							if ((!audio_is_playing(snd_MysticCharge_Intro)) and (!audio_is_playing(snd_MysticCharge_Loop)))
							{
								if (chargeSfxState == "intro")
								{
								    chargeSfx = audio_play_sound(snd_MysticCharge_Intro,0,false);
								    chargeSfxState = "loop";
								}
								else
								{
								    chargeSfx = audio_play_sound(snd_MysticCharge_Loop,0,false);
								}
							}
							
							if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr)))
							{
								dir = 1;
							}
							if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))
							{
								dir = -1;
							}
							
							if (beamCharge < beamChargeMax)
							{
								if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
								{
									canMysticBeamShield = true;
									if (instance_exists(obj_Projectile_Beam))
									{
										with (obj_Projectile_Beam)
										{
											if ((isMystic) and (state == 2) and (owner == other.id))
											{
												if (audio_is_playing(snd_MysticBeamLaunch)) audio_stop_sound(snd_MysticBeamLaunch);
												audio_play_sound(snd_MysticBeamLaunch,0,false);
												other.canMysticBeamShield = false;
												var par = instance_create_depth(x,y,depth,obj_Particle);
												par.sprite_index = choose(spr_Particle_BeamFlareWhite,spr_Particle_BeamFlareFlux,spr_Particle_BeamFlareYellow);
												par.image_index = choose(1,2);
												par.hsp = random_range(-1,1);
												par.vsp = random_range(-1,1);
												par.dir = dirX;
												par.imageSpeed = 0;
												par.destroyTimer = irandom_range(5,15);
												if (place_meeting(x,y,obj_Wall)) instance_destroy();
												dmg = 15;
												spd = 5;
												direction = angle;
											    state = 3;
											    destroyableByWall = false;
												alphaTimer = alphaTimerMax;
											}
										}
									}
									beamCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									if (canMysticBeamShield)
									{
										if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
										sndMysticBeam = audio_play_sound(snd_MysticBeam,0,false);
										attack = true;
										attackNumber = "mysticBeamNormal";
										sprite_index = sprBeamAttack1;
										image_index = 0;
									}
									else
									{
										attackTimer = 0;
									}
								}
							}
							else
							{
								if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
								if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
								{
									beamCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									invincibleFlash = false;
									invincibleFlashTimer = -1;
									attack = true;
									attackNumber = "mysticBeamChargeAttack";
									sprite_index = sprBeamAttack5;
								    image_index = 0;
								}
							}
						}
					
						if (attackNumber == "mysticBeamNormal")
						{
							if (attackable)
							{
								attackTimer = 35;
								parBeamCycle1 = instance_create_depth(-100,-100,depth - 1,obj_Particle);
			                    parBeamCycle1.followObject = false;
			                    parBeamCycle1.followedObject = id;
			                    parBeamCycle1.sprite_index = spr_Particle_BeamCycle;
								parBeamCycle1.turnSpd = (5 * -dir);
								parBeamCycle1.turnAroundObject = true;
								parBeamCycle1.angle = 90 + (10 * dir);
			                    parBeamCycle1.orbit = 20;
								parBeamCycle1.invisTimerMax = 2;
			                    parBeamCycle1.invisTimer = parBeamCycle1.invisTimerMax;
			                    parBeamCycle1.destroyTimer = attackTimer;
								var maxBeam = 4;
								for (var i = 0; i < maxBeam; i++)
								{
									var projBeam = instance_create_depth(x,y,depth,obj_Projectile_Beam);
									projBeam.owner = id;
									if (i % 2 == 0) projBeam.image_index = 1;
									projBeam.movespeed = 4;
									projBeam.jumpspeed = 0;
								    projBeam.angle = (((360 / maxBeam) * i) * -dir);
									projBeam.spd = 5 * dir;
									projBeam.dmg = 6;
									projBeam.dir = dir;
									projBeam.orbit = 0;
									projBeam.orbitMax = 35;
									projBeam.owner = id;
									projBeam.player = player;
									projBeam.state = 2;
									projBeam.enemy = false;
									projBeam.hurtsObject = true;
									projBeam.hurtsEnemy = true;
									projBeam.hurtsPlayer = false;
									projBeam.destroyableByWall = false;
									projBeam.destroyableByEnemy = true;
									projBeam.destroyableByObject = true;
									projBeam.character = 2;
									projBeam.sprIdle = spr_Projectile_MysticBeam_Normal;
									projBeam.isMystic = true;
								}
								attackable = false;
							}
							if (instance_exists(parBeamCycle1))
							{
								if (floor(image_index) == 2) parBeamCycle1.visible = false;
								if (floor(image_index) == 3)
								{
									parBeamCycle1.visible = true;
									parBeamCycle1.turnSpd = (11 * -dir);
									parBeamCycle1.orbit = 14;
								}
							}
						}
					
						if (attackNumber == "mysticBeamDash")
						{
							if (attackable)
							{
								var par = instance_create_depth(x + (16 * dir) + hsp,y - 9,depth - 1,obj_Particle);
								par.sprite_index = spr_Particle_MysticBeamLaser;
								par.dir = dir;
								par.attachedObject = id;
								par.attachedObjectXOffset = 16 * dir;
								par.attachedObjectYOffset = -9;
								par.destroyAfterAnimation = true;
								var projectile = instance_create_depth(x + (17 * dir) + hsp,y - 9,depth + 2,obj_Projectile_MysticBeamLaser);
								projectile.dmg = .2;
								projectile.dirr = 90 + (90 * -dir);
								projectile.owner = id;
								attackable = false;
							}
						}
					
						if (attackNumber == "mysticBeamAir")
						{
							attackable = false;
							if (mysticBeamAttack2Timer == -1) mysticBeamAttack2Timer = (mysticBeamAttack2TimerMax + irandom_range(-1,1));
						
							if (grounded)
							{
								audio_stop_sound(sndMysticBeam);
								mysticBeamAttack2Timer = -1;
								attack = false;
								attackable = true;
								attackNumber = "none";
							}
						}
					
						if (attackNumber == "mysticBeamChargeAttack")
						{
							if (attackable)
							{
								scaleExX = .2;
								scaleExY = -.2;
								hsp = 1 * -dir;
								attackTimer = 210;
								if (audio_is_playing(snd_MysticBeamCharge)) audio_stop_sound(snd_MysticBeamCharge);
								audio_play_sound(snd_MysticBeamCharge,0,false);
							    mysticBeamCharge = instance_create_depth(x + (6 * dir),y - 2,depth,obj_Projectile_MysticBeamCharge);
								mysticBeamCharge.owner = id;
								if (mysticBeamVortexInAJarUpgrade)
								{
									mysticBeamCharge.character = 1;
								}
								else
								{
									mysticBeamCharge.character = 0;
								}
								mysticBeamCharge.dmg = 20 + (mysticBeamChargeEx * 5);
								mysticBeamCharge.hsp = (2 + (mysticBeamChargeEx / .5)) * dir;
								mysticBeamCharge.dirX = dir;
								mysticBeamCharge.image_xscale = mysticBeamCharge.dirX;
								mysticBeamCharge.enemy = false;
								mysticBeamCharge.player = player;
								if (mysticBeamChargeEx > 0) mysticBeamCharge.supercharged = true;
								attackable = false;
							}
						
							if (instance_exists(mysticBeamCharge))
							{
								if (mysticBeamCharge.x < x)
								{
									dir = -1;
								}
								else
								{
									dir = 1;
								}
							}
							else
							{
								attackTimer = 0;
							}
						}
					
						/*if (attackNumber == "mysticBeamUp")
						{
							if (attackable)
							{
								attackTimer = 24;
								for (var i = 0; i < 5; i++)
								{
									var projBeam = instance_create_depth(-100,-100,depth + 1,obj_Projectile_Beam);
									projBeam.owner = id;
									projBeam.invisTimer = -1 + (2 * i);
									if (i > 0) projBeam.visible = false;
									projBeam.imageIndex = i - 1;
									if (projBeam.imageIndex < 0) projBeam.imageIndex = 0;
									projBeam.orbit = 20 + (15 * i);
									projBeam.angle = 90 + ((40 - (5 * i)) * -dir);
									projBeam.spd = 0;
									projBeam.orbitSpd = 2;
									projBeam.image_index = projBeam.imageIndex;
									projBeam.enemy = false;
									projBeam.destroyableByWall = false;
									projBeam.destroyableByEnemy = false;
									projBeam.destroyableByObject = false;
									projBeam.hitInvincibility = projBeam.hitInvincibilityMax;
									projBeam.hasLimit = false;
									projBeam.pulseTimer = projBeam.pulseTimerMax;
									projBeam.invisTimerMax = -1;
									projBeam.destroyTimer = 4 + (2 * i);
									if (i == 4) projBeam.destroyTimer = 22;
								}
								attackable = false;
							}
						}*/
						break;
					
						case "stone":
					    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (attackable))
					    {
							if ((!keyboard_check(keyUp)) and (!gamepad_button_check(0,gp_padu)))
							{
								if (audio_is_playing(snd_StoneReady)) audio_stop_sound(snd_StoneReady);
								audio_play_sound(snd_StoneReady,0,false);
								hsp = 0;
								
								if (grounded)
								{
									if (run) hsp = (movespeedRun * 3) * dir;
								}
								else
								{
									vsp = -jumpspeed;
								}
								invincible = true;
					            attack = true;
					            attackNumber = "stoneNormal";
					            attackable = false;
								stoneParticleTimer = 0;
								sprite_index = sprStoneAttack1Ready;
								image_index = 0;
							}
							else
							{
								if (audio_is_playing(snd_StoneReady)) audio_stop_sound(snd_StoneReady);
								audio_play_sound(snd_StoneReady,0,false);
								stoneFistReadyTimer = stoneFistReadyTimerMax;
					            attack = true;
					            attackNumber = "stoneUp";
					            attackable = false;
								sprite_index = sprStoneAttack2Ready;
					            image_index = 0;
							}
					    }
					
						if (attackNumber == "stoneNormal")
						{
							if ((!stoneFallen) and (!stoneReady) and (place_meeting(x,y + vsp + 1,obj_Wall)) and (sign(vsp) == 1))
							{
								if (audio_is_playing(snd_StoneFallen)) audio_stop_sound(snd_StoneFallen);
								audio_play_sound(snd_StoneFallen,0,false);
								if ((sprite_index == sprStoneAttack1Rare) and (floor(image_index) == 6))
								{
									if (audio_is_playing(snd_JellyStone)) audio_stop_sound(snd_JellyStone);
									audio_play_sound(snd_JellyStone,0,false);
								}
								stoneFallen = true;
								scaleExX = .2;
								scaleExY = -.2;
								shakeY = 3;
								for (var i = 0; i < 2; i++)
								{
									var parXDir = 4;
									if (i == 1) var parXDir = -4;
									var par = instance_create_depth(x + parXDir,y + 3,depth - 1,obj_Particle);
									par.sprite_index = spr_Particle_ShrinkingStar4;
									if (i == 0)
									{
										par.hsp = 3;
									}
									else if (i == 1)
									{
										par.hsp = -3;
									}
									par.dir = sign(par.hsp);
									par.destroyAfterAnimation = true;
								}
								if (instance_exists(obj_Camera))
								{
									obj_Camera.shakeX = 2;
									obj_Camera.shakeY = 2;
								}
							}
						
							if (stoneReady)
							{
								shakeX = 2;
							}
							else if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))))
							{
								if (audio_is_playing(snd_StoneRelease)) audio_stop_sound(snd_StoneRelease);
								audio_play_sound(snd_StoneRelease,0,false);
								var stoneEnd = instance_create_depth(x,y,depth - 1,obj_Projectile_StoneStop);
								stoneEnd.dmg = 205
								stoneEnd.enemy = false;
								stoneEnd.owner = id;
								vsp = -(jumpspeed / 3);
								grav = gravNormal;
								gravLimit = gravLimitNormal;
								invincible = false;
								attackTimer = 15;
								stoneReady = true;
								stoneFallen = false;
								if (instance_exists(stoneMaskProj)) instance_destroy(stoneMaskProj);
					            attack = false;
								attackNumber = "none";
								if (stoneReleaseParticleTimer == -1) stoneReleaseParticleTimer = stoneReleaseParticleTimerMax;
							}
						}
					
						if ((!global.cutscene) and (attackNumber == "stoneUp") and (!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2)) and (stoneFistReady))
						{
							stoneFistReadyTimer = 0;
						}
						break;
					
						case "ufo":
					    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
					    {
							attackNumber = "ufoCharge";
							sprite_index = sprBeamCharge;
							image_index = 0;
					    }
					
						if (attackNumber == "ufoCharge")
						{
							if (ufoCharge == ufoChargeMax - 1)
							{
								audio_play_sound(snd_Charge_Ready,0,false);
								var particle = instance_create_depth(x,y - 4,depth - 1,obj_Particle);
								particle.sprite_index = spr_Particle_Flash1;
								particle.destroyAfterAnimation = true;
							}
							ufoCharge += 1;
							if ((!audio_is_playing(snd_Charge_Intro)) and (!audio_is_playing(snd_Charge_Loop)))
							{
								if (chargeSfxState == "intro")
								{
								    chargeSfx = audio_play_sound(snd_Charge_Intro,0,false);
								    chargeSfxState = "loop";
								}
								else
								{
								    chargeSfx = audio_play_sound(snd_Charge_Loop,0,false);
								}
							}
						
							if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr)))
							{
								dir = 1;
							}
							if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))
							{
								dir = -1;
							}
						
							if (ufoCharge < ufoChargeMax)
							{
								if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
								{
									ufoCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
									sndBeam = audio_play_sound(snd_Beam,0,false);
									attack = true;
									attackNumber = "ufoBeam";
									//sprite_index = sprBeamAttack1;
								    //image_index = 0;
								}
							}
							else
							{
								if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
								if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
								{
									ufoCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
								}
							}
						}
					
						if (attackNumber == "ufoBeam")
						{
							shakeX = 2;
							shakeY = 2;
							if (attackable)
							{
								attackTimer = 35;
								for (var i = 0; i < 4; i++)
								{
									var projBeam = instance_create_depth(-100,-100,depth,obj_Projectile_Beam);
									projBeam.visible = false;
									projBeam.owner = id;
									projBeam.angle = 90 + ((40 - (i * 10)) * -dir);
									projBeam.spd = (1.8 + (i * .4)) * -dir;
									projBeam.orbit = 25 + (i * 18);
									projBeam.enemy = false;
									projBeam.centerY = -4;
									projBeam.destroyableByWall = false;
									projBeam.destroyableByEnemy = false;
									projBeam.destroyableByObject = false;
									projBeam.hasLimit = false;
									projBeam.character = 5;
									projBeam.sprite_index = spr_Projectile_Beam_Ufo;
									projBeam.invisTimer = 2 + (2 * i);
									projBeam.invisTimerMax = 3;
									if (i % 2 == 0) projBeam.invisTimerMax = 5;
									projBeam.destroyTimer = 35;
								}
								attackable = false;
							}
						}
						break;
					
						case "mirror":
						if ((!global.cutscene) and (!hurt) and (!attack))
						{
							if ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2)))
							{
								if (((!keyboard_check(keyUp)) and (!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padu)) and (!gamepad_button_check(0,gp_padd))))
						        {
									if (!run)
									{
										if ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2)))
										{
									        attack = true;
											attackable = false;
											attackTimer = 20;
								            attackNumber = "mirrorSlash";
											sprite_index = sprMirrorAttack1;
											image_index = 0;
											if (audio_is_playing(snd_Slash)) audio_stop_sound(snd_Slash);
											audio_play_sound(snd_Slash,0,false);
											mirrorSlashProj = instance_create_depth(x,y,depth - 1,obj_Projectile_MirrorSlash);
											mirrorSlashProj.dmg = 22;
											mirrorSlashProj.enemy = false;
											mirrorSlashProj.dirX = dir;
											mirrorSlashProj.owner = id;
											mirrorSlashProj.image_xscale = mirrorSlashProj.dirX;
										}
									}
									else
									{
								        attack = true;
										attackable = false;
							            attackNumber = "mirrorDash";
							            invincible = true;
										sprite_index = sprMirrorAttack3;
							            if (audio_is_playing(snd_Mirror2)) audio_stop_sound(snd_Mirror2);
										audio_play_sound(snd_Mirror2,0,false);
										for (var i = 0; i < 2; i++)
										{
								            var projMirror = instance_create_depth(x,y,depth,obj_Projectile_MirrorPlayer);
											projMirror.owner = id;
											projMirror.dmg = 16;
								            projMirror.dirX = 1;
											projMirror.image_xscale = scale * dir;
											projMirror.destroyableByWall = false;
											projMirror.destroyableByEnemy = false;
											projMirror.destroyableByObject = false;
								            if (i == 1)
											{
												projMirror.dirX = -1;
												projMirror.image_xscale = -(scale * dir);
											}
											if (vsp != 0)
											{
												if (hsp > 0)
												{
													projMirror.jumpAngle = 45;
												}
												else if (hsp < 0)
												{
													projMirror.jumpAngle = 45 + 90;
												}
											}
											projMirror.spriteIndex = sprMirrorAttack3;
											projMirror.paletteIndex = paletteIndex;
											projMirror.hatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
											projMirror.hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
											projMirror.hatPaletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
										}
										for (var i = 0; i < 3; i++)
										{
								            var par = instance_create_depth(x,y - 7,depth + 1,obj_Particle);
								            par.direction = random_range(0,359);
								            par.sprite_index = spr_Particle_Mirror1;
								            par.spdBuiltIn = irandom_range(1,2);
											par.destroyAfterAnimation = true;
										}
							            state = playerStates.mirrorDash;
									}
						        }
						
						        if ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd)))
						        {
						            if (audio_is_playing(snd_Mirror4)) audio_stop_sound(snd_Mirror4);
									audio_play_sound(snd_Mirror4,0,false);
						            attack = true;
						            attackNumber = "mirrorDown";
						            invincible = true;
									sprite_index = sprMirrorAttack4;
						            var mirrorSpawner = instance_create_depth(x,y,depth,obj_MirrorAttackSpawner);
						            mirrorSpawner.owner = id;
						            mirrorSpawner.dir = dir;
									mirrorSpawner.spriteIndex = sprMirrorAttack4;
									mirrorSpawner.paletteIndex = paletteIndex;
									mirrorSpawner.hatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
									mirrorSpawner.hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
									mirrorSpawner.hatPaletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
									for (var i = 0; i < 3; i++)
									{
							            var par = instance_create_depth(x,y - 7,depth + 1,obj_Particle);
							            par.direction = random_range(0,359);
							            par.sprite_index = spr_Particle_Mirror1;
							            par.spdBuiltIn = irandom_range(1,2);
										par.destroyAfterAnimation = true;
									}
						            state = playerStates.mirrorDash;
						        }
						
								if ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu)))
						        {
						            if (audio_is_playing(snd_Mirror5)) audio_stop_sound(snd_Mirror5);
									audio_play_sound(snd_Mirror5,0,false);
									attack = true;
									attackable = false;
						            attackNumber = "mirrorUp";
						            invincible = true;
									sprite_index = sprMirrorAttack5;
						            var mirrorSpawner = instance_create_depth(x,y,depth,obj_MirrorAttackSpawner);
									mirrorSpawner.owner = id;
						            mirrorSpawner.dir = image_xscale;
						            mirrorSpawner.state = 1;
									mirrorSpawner.spriteIndex = sprMirrorAttack5;
									mirrorSpawner.paletteIndex = paletteIndex;
									mirrorSpawner.hatIndex = scr_Player_AbilityHat(playerAbility,playerCharacter);
									mirrorSpawner.hatShadowIndex = scr_Player_HatShadow(playerAbility,playerCharacter);
									mirrorSpawner.hatPaletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
									for (var i = 0; i < 3; i++)
									{
								        var par = instance_create_depth(x,y - 7,depth + 1,obj_Particle);
								        par.direction = random_range(0,359);
								        par.sprite_index = spr_Particle_Mirror1;
								        par.spdBuiltIn = irandom_range(1,2);
										par.destroyAfterAnimation = true;
									}
						            state = playerStates.mirrorDash;
						        }
							}
							else if ((keyboard_check(keyAttack)) or (gamepad_button_check(0,gp_face2)))
							{
								mirrorHold = true;
								attack = true;
								attackable = false;
								attackNumber = "mirrorNormal";
								sprite_index = sprMirrorAttack2;
								image_index = 0;
							}
						}
					
						if (attackNumber == "mirrorNormal")
						{
							attack = true;
							attackable = false;
							if ((mirrorHold) and (mirrorNormalAttackTimer == -1)) mirrorNormalAttackTimer = mirrorNormalAttackTimerMax;
					        if ((mirrorHold) and (!global.cutscene) and (!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2)))
					        {
								mirrorHold = false;
								mirrorFirstAttack = true;
								mirrorAttackDir = 1;
					            attackTimer = 15;
								mirrorNormalAttackTimer = -1;
								sprite_index = sprMirrorAttack2Release;
							    image_index = 0;
					        }
						}
					    break;
					
						case "ninja":
					    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
					    {
							attack = true;
							attackNumber = "ninjaCharge";
							sprite_index = sprNinjaCharge;
							image_index = 0;
					    }
					
						if (attackNumber == "ninjaCharge")
						{
							ninjaCharge += 1;
						
							if (ninjaCharge < ninjaChargeMax)
							{
								if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
								{
									ninjaCharge = 0;
									attack = true;
									attackNumber = "ninjaNormal";
									sprite_index = sprNinjaAttack1;
								    image_index = 0;
								}
							}
							else
							{
								if (!global.cutscene)
								{
									ninjaCharge = 0;
									attack = true;
									attackNumber = "ninjaSlash";
									sprite_index = sprNinjaAttack2;
								    image_index = 0;
								}
							}
						}
					
						if (attackNumber == "ninjaNormal")
						{
							if (attackable)
							{
								attackTimer = 4;
								if (audio_is_playing(snd_NinjaKnife)) audio_stop_sound(snd_NinjaKnife);
								audio_play_sound(snd_NinjaKnife,0,false);
							    var projectile = instance_create_depth(x + (8 * dir),y - 5 + (irandom_range(-3,3)),depth - 1,obj_Projectile_NinjaKunai);
								projectile.owner = id;
								projectile.dmg = 7;
								projectile.hsp = dir * 7;
								projectile.dirX = dir;
								projectile.image_xscale = projectile.dirX;
								projectile.enemy = false;
								attackable = false;
							}
						}
					
						if (attackNumber == "ninjaSlash")
						{
							if (attackable)
							{
								attackTimer = 10;
								if (audio_is_playing(snd_NinjaKnife)) audio_stop_sound(snd_NinjaKnife);
								audio_play_sound(snd_NinjaKnife,0,false);
							    var projectile = instance_create_depth(x + (14 * dir),y - 12,depth - 1,obj_Projectile_NinjaSlash);
								projectile.owner = id;
								projectile.dmg = 25;
								projectile.hsp = dir * 4;
								projectile.vsp = 2;
								projectile.dirX = dir;
								projectile.image_xscale = projectile.dirX;
								projectile.enemy = false;
								attackable = false;
							}
						}
						break;
					
						case "bomb":
					    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
					    {
							if (audio_is_playing(snd_BombReady)) audio_stop_sound(snd_BombReady);
							audio_play_sound(snd_BombReady,0,false);
							sprite_index = sprBombReady;
							image_index = 0;
				            attack = true;
							attackNumber = "bombReady";
							attackable = false;
				            attackTimer = 45;
							fallRoll = false;
							carriedItem = "bomb";
							carriedItemState = "heavy";
							carriedItemIndex = instance_create_depth(x,y - 8,depth - 1,obj_Projectile_Bomb);
							carriedItemIndex.owner = id;
							carriedItemIndex.hasRemoteDetonation = bombSmartBombUpgrade;
							carriedItemIndex.hasHoming = bombEyeBombUpgrade;
							carriedItemIndex.hasMagma = bombMagmaBombUpgrade;
							carriedItemIndex.active = false;
							carriedItemIndex.enemy = false;
							carriedItemIndex.dirX = dir;
							carriedItemIndex.objectOnHitDmg = 26;
							carriedItemIndex.destroyableByWall = false;
							carriedItemIndex.destroyableByPlayer = false;
							carriedItemIndex.destroyableByEnemy = false;
							carriedItemIndex.destroyableByObject = false;
							carriedItemIndex.destroyableByProjectile = false;
							carriedItemIndex.hurtsObject = false;
							carriedItemIndex.hurtsEnemy = false;
							carriedItemIndex.hurtsBoss = false;
							carriedItemIndex.hurtsPlayer = false;
							carriedItemIndex.hurtsProjectile = false;
							carriedItemIndex.image_xscale = carriedItemIndex.dirX;
							if (!bombSmartBombUpgrade) carriedItemIndex.selfExplodeTimer = carriedItemIndex.selfExplodeTimerMax;
							if (((player == 0) and (global.hatTypeBombP1 == "modern")) or ((player == 1) and (global.hatTypeBombP2 == "modern"))) 
							{
								carriedItemIndex.character = 1;
								carriedItemIndex.sprIdle = spr_Projectile_Bomb_Modern;
								carriedItemIndex.sprite_index = carriedItemIndex.sprIdle;
							}
					    }
						break;
					
						case "fire":
					    if ((!global.cutscene) and (!hurt))
					    {
							if (((keyboard_check(keyAttack)) or (gamepad_button_check(0,gp_face2))) and ((!attack) or (attackNumber == "fireAerial")))
							{
								if ((!grounded) and (place_meeting(x,y + 16,obj_Wall)))
								{
									hspLimit = false;
									hsp = (movespeedBurst * (1 + (fireMagicCharcoalUpgrade / 4))) * dir;
									invincible = true;
									attack = true;
									attackNumber = "fireWheel";
									if (audio_is_playing(snd_Fire2)) audio_stop_sound(snd_Fire2);
						            audio_play_sound(snd_Fire2,0,false);
									sprite_index = sprFireAttack3;
									image_index = 0;
									fireMaskProj = instance_create_depth(x,y,depth,obj_Projectile_FireMask);
									fireMaskProj.owner = id;
									fireMaskProj.sprite_index = sprFireAttack3;
									fireMaskProj.dmg = 18;
									fireMaskProj.image_xscale = image_xscale;
									fireMaskProj.image_yscale = image_yscale;
									if (fireMagicCharcoalUpgrade)
									{
										for (var i = 0; i < 4; i++)
										{
											var extra = instance_create_depth(x,y,depth + 1,obj_Projectile_FireExtra);
											extra.owner = id;
											extra.dmg = 8;
											extra.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
											switch (i)
											{
												case 0:
												extra.hsp = 2;
												extra.vsp = -3;
												break;
												
												case 1:
												extra.hsp = 3;
												extra.vsp = -4;
												break;
												
												case 2:
												extra.hsp = -2;
												extra.vsp = -3;
												break;
												
												case 3:
												extra.hsp = -3;
												extra.vsp = -4;
												break;
											}
										}
									}
							        fireReleaseTimer = 45;
							        attackTimer = 60;
									hspLimitTimer = 45;
								}
							}
							if (((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!attack))
							{
								if ((run) and (hsp != 0))
								{
									invincible = true;
									vsp = 0;
									fireDashHsp = (movespeedBurst * ((fireMagicCharcoalUpgrade / 2) + 1)) * dir;
									run = false;
					                attack = true;
									attackNumber = "fireDash";
									fireDashDir = 1;
									if ((keyboard_check(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) fireDashDir = -1;
									attackable = false;
					                fireReleaseTimer = 35;
					                attackTimer = 45;
					                state = playerStates.fireDash;
									if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
				                    audio_play_sound(snd_Fire3,0,false);
									fireDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_BurstMask);
									fireDashMaskProj.owner = id;
									fireDashMaskProj.dmgMin = 18;
									fireDashMaskProj.dmgMax = 21;
									fireDashMaskProj.image_xscale = image_xscale;
									fireDashMaskProj.image_yscale = image_yscale;
				                    var par = instance_create_depth(x + (dir * 10),y - 4,depth - 1,obj_Particle);
				                    par.dir = dir;
				                    par.sprite_index = spr_Particle_Fire2;
				                    par.scale = 1 + (fireMagicCharcoalUpgrade / 2);
									par.paletteSpriteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
									par.paletteIndex = 1;
									par.destroyAfterAnimation = true;
								}
								else
								{
									if (grounded)
									{
										attack = true;
										attackNumber = "fireNormal";
										sprite_index = sprFireAttack1;
								        image_index = 0;
									}
									else
									{
										invincible = true;
										attack = true;
										attackTimer = 300;
										attackNumber = "fireAerial";
										if (audio_is_playing(snd_Fire2)) audio_stop_sound(snd_Fire2);
					                    audio_play_sound(snd_Fire2,0,false);
										sprite_index = sprFireAttack3;
								        image_index = 0;
										fireMaskProj = instance_create_depth(x,y,depth,obj_Projectile_FireMask);
										fireMaskProj.owner = id;
										fireMaskProj.sprite_index = sprFireAttack3;
										fireMaskProj.dmg = 16;
										fireMaskProj.image_xscale = image_xscale;
										fireMaskProj.image_yscale = image_yscale;
										if (fireMagicCharcoalUpgrade)
										{
											for (var i = 0; i < 4; i++)
											{
												var extra = instance_create_depth(x,y,depth + 1,obj_Projectile_FireExtra);
												extra.owner = id;
												extra.dmg = 8;
												extra.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
												switch (i)
												{
													case 0:
													extra.hsp = 2;
													extra.vsp = -3;
													break;
												
													case 1:
													extra.hsp = 3;
													extra.vsp = -4;
													break;
												
													case 2:
													extra.hsp = -2;
													extra.vsp = -3;
													break;
												
													case 3:
													extra.hsp = -3;
													extra.vsp = -4;
													break;
												}
											}
										}
									}
								}
						    }
						}
					
						if (attackNumber == "fireNormal")
						{
							shakeX = 1;
							if (fireNormalAttackTimer == -1) fireNormalAttackTimer = fireNormalAttackTimerMax;
					        if ((!global.cutscene) and (!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2)))
					        {
					            attackTimer = 0;
					        }
						
							if (fireBackCharge < fireBackChargeMax)
							{
								if (((dir == 1) and ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))) or ((dir == -1) and ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr))))) fireBackCharge += 1;
							}
							else
							{
								fireMaskProj = instance_create_depth(x,y,depth,obj_Projectile_FireMask);
								fireMaskProj.owner = id;
								fireMaskProj.sprite_index = sprFireAttack4;
								fireMaskProj.dmg = 40;
								fireMaskProj.image_xscale = image_xscale;
								fireMaskProj.image_yscale = image_yscale;
								invincible = true;
								attackNumber = "fireBack";
								if (audio_is_playing(snd_Fire2)) audio_stop_sound(snd_Fire2);
								if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
				                audio_play_sound(snd_Fire3,0,false);
								sprite_index = sprFireAttack4;
								image_index = 0;
								fireBackCharge = 0;
							}
						}
					
						if (attackNumber == "fireBack")
						{
					        if ((!global.cutscene) and (!keyboard_check(keyAttack)) and (!gamepad_button_check_pressed(0,gp_face2)))
					        {
					            attackTimer = 0;
					        }
						}
						break;
					
						case "ice":
					    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
					    {
							if ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu)) or ((dir = 1) and (((keyboard_check(keyRight))) or ((gamepad_button_check(0,gp_padr))))) or ((dir = -1) and (((keyboard_check(keyLeft))) or ((gamepad_button_check(0,gp_padl))))))
							{
								var grabEnemy = -1;
								if (place_meeting(x + (16 * dir),y,obj_Enemy)) grabEnemy = instance_place(x + (16 * dir),y,obj_Enemy);
								if ((grabEnemy != -1) and (grabEnemy.hurtable) and (!grabEnemy.hurt) and (!grabEnemy.isBoss))
								{
									if (audio_is_playing(snd_Guard)) audio_stop_sound(snd_Guard);
									audio_play_sound(snd_Guard,0,false);
									sprite_index = sprIceGrabReady;
									image_index = 0;
									grabEnemy.hasDeathParticles = false;
									grabEnemy.death = true;
									iceGrab = false;
									invincible = true;
									attack = true;
									attackNumber = "iceGrab";
									hsp = 0;
									state = playerStates.iceGrab;
								}
							}
							else
							{
								attack = true;
								sprite_index = sprIceAttack1Ready;
							    image_index = 0;
							}
					    }
					
						if (attackNumber == "iceNormal")
						{
							if ((!iceReady) and (!iceRelease))
							{
								if (iceNormalAttackTimer == -1) iceNormalAttackTimer = iceNormalAttackTimerMax;
						        if ((!global.cutscene) and (!keyboard_check(keyAttack)) and (!gamepad_button_check_pressed(0,gp_face2)))
						        {
									iceRelease = true;
									sprite_index = sprIceAttack1Release;
									image_index = 0;
						        }
							}
						}
						break;
					
						case "spark":
					    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
					    {
							if ((keyboard_check(keyUp)) or (gamepad_button_check(0,gp_padu)))
							{
								if (audio_is_playing(snd_Spark6)) audio_stop_sound(snd_Spark6);
								audio_play_sound(snd_Spark6,0,false);
								var bolt = instance_create_depth(x,y - 4,depth + 1,obj_Projectile_SparkBolt);
								bolt.owner = id;
								attack = true;
								attackNumber = "sparkUp";
								sprite_index = sprSparkAttack3;
								image_index = 0;
								attackTimer = 30;
							}
							else if ((!place_meeting(x,y + 1,obj_Wall)) and ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padu))))
							{
								if (audio_is_playing(snd_Spark6)) audio_stop_sound(snd_Spark6);
								audio_play_sound(snd_Spark6,0,false);
								var bolt = instance_create_depth(x,y - 4,depth + 1,obj_Projectile_SparkBolt);
								bolt.owner = id;
								attack = true;
								attackNumber = "sparkDown";
								sprite_index = sprSparkAttack4;
								image_index = 0;
								attackTimer = 30;
							}
							else
							{
								if (sparkMaxCharge)
								{
									attack = true;
									attackNumber = "sparkMax";
									sprite_index = sprSparkAttack2Ready;
									image_index = 0;
									attackTimer = 60;
								}
								else if (sparkCharge > 15)
								{
									attack = true;
									attackNumber = "sparkHigh";
									sprite_index = sprSparkAttack2Ready;
									image_index = 0;
									attackTimer = 45;
								}
								else if (sparkCharge > 9)
								{
									attack = true;
									attackNumber = "sparkMid";
									sprite_index = sprSparkAttack1Ready;
									image_index = 0;
									attackTimer = 30;
								}
								else if (sparkCharge > 4)
								{
									attack = true;
									attackNumber = "sparkLow";
									sprite_index = sprSparkAttack1Ready;
									image_index = 0;
									attackTimer = 20;
								}
								else
								{
									attack = true;
									attackNumber = "sparkNone";
									sprite_index = sprSparkAttack1Ready;
									image_index = 0;
									attackTimer = 7;
								}
								sparkCharge = 0;
								sparkMaxCharge = false;
							}
					    }
					
						if ((attackNumber == "sparkUp") or (attackNumber == "sparkDown"))
						{
							hsp = 0;
							vsp = 0;
						}
						break;
					
						case "wing":
					    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
					    {
							if (run = true) and (hsp != 0)
							{
								attack = true;
								sprite_index = sprWingAttack2Ready;
						        image_index = 0;
							}
							else
							{
								attack = true;
								attackNumber = "wingNormal";
								sprite_index = sprWingAttack1;
								image_index = 0;
							}
					    }
					
						if (attackNumber == "wingNormal")
						{
							if (attackable)
							{
								attackTimer = 10;
								if (audio_is_playing(snd_WingShot)) audio_stop_sound(snd_WingShot);
								audio_play_sound(snd_WingShot,0,false);
							    var projectile = instance_create_depth(x + (10 * dir),y - 1 + (irandom_range(-3,3)),depth - 1,obj_Projectile_WingFeather);
								projectile.owner = id;
								switch (wingFeatherPos)
								{
									case 0:
									projectile.image_index = 2;
									projectile.hsp = dir * 3;
									wingFeatherPos += 1;
									break;
								
									case 1:
									projectile.image_index = 1;
									projectile.hsp = dir * 3;
									projectile.vsp = -1;
									projectile.dirY = -1;
									wingFeatherPos += 1;
									break;
								
									case 2:
									projectile.image_index = 1;
									projectile.hsp = dir * 3;
									projectile.vsp = 1;
									wingFeatherPos += 1;
									break;
								
									case 3:
									projectile.image_index = 2;
									projectile.hsp = dir * 3;
									wingFeatherPos += 1;
									break;
								
									case 4:
									projectile.image_index = 0;
									projectile.hsp = dir * 3;
									projectile.vsp = -1.5;
									projectile.dirY = -1;
									wingFeatherPos += 1;
									break;
								
									case 5:
									projectile.image_index = 0;
									projectile.hsp = dir * 3;
									projectile.vsp = 1.5;
									wingFeatherPos = 0;
									break;
								}
								projectile.dmg = 6;
								projectile.dirX = dir;
								projectile.image_xscale = projectile.scale * projectile.dirX;
								projectile.image_yscale = projectile.scale * projectile.dirY;
								projectile.enemy = false;
								attackable = false;
							}
						}
					
						if (attackNumber == "wingDash")
						{
							if (attackable)
							{
								wingDashParticleTimer = wingDashParticleTimerMax;
								run = false;
				                attack = true;
								attackable = false;
				                attackTimer = 35;
				                state = playerStates.wingDash;
								if (audio_is_playing(snd_WingDash)) audio_stop_sound(snd_WingDash);
								wingDashSfx = audio_play_sound(snd_WingDash,0,false);
								wingMaskProj = instance_create_depth(x,y,depth,obj_Projectile_WingDashMask);
								wingMaskProj.owner = id;
								wingMaskProj.dmg = 18;
								wingMaskProj.dmgMax = 18;
								wingMaskProj.dmgMin = 16;
								wingMaskProj.image_xscale = image_xscale;
								wingMaskProj.image_yscale = image_yscale;
							}
						}
						break;
					
						case "sleep":
						if (!isSleeping)
						{
							attack = true;
							attackable = false;
							attackNumber = "sleepNormal";
							isSleeping = true;
							sleepEndTimer = sleepEndTimerMax;
							sprite_index = sprSleepReady;
							image_index = 0;
							if (hurt) attackTimer = 0;
						}
						else
						{
							if ((sprite_index = sprSleep) and (floor(image_index) == 1))
							{
								if (audio_is_playing(snd_Sleep)) audio_stop_sound(snd_Sleep);
								audio_play_sound(snd_Sleep,0,false);
							}
						}
						
						if ((sprite_index = sprSleepEnd) and (sleepHatParticle) and (floor(image_index) == 1))
						{
							var par = instance_create_depth(x,y,depth + 1,obj_Particle);
							par.sprite_index = spr_Particle_SleepHat;
							par.vsp = -3;
							par.grav = .2;
							par.gravLimit = 3;
							par.hasGravity = true;
							par.destroyAfterAnimation = true;
							par.paletteSpriteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
							par.paletteIndex = 1;
							sleepHatParticle = false;
						}
						break;
					
						case "scan":
					    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (attackable))
					    {
					        attack = true;
					        attackNumber = "scanNormal";
					        attackable = false;
							sprite_index = sprScanReady;
							image_index = 0;
					    }
						break;
					
						case "freeze":
					    if (((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (attackable))
					    {
							audio_play_sound(snd_Freeze,0,false);
							invincible = true;
				            attack = true;
				            attackNumber = 7;
				            attackable = false;
							sprite_index = sprFreezeAttack1Ready;
				            image_index = 0;
							freezeMaskProj = instance_create_depth(x,y,depth - 1,obj_Projectile_FreezeMask);
							freezeMaskProj.enemy = false;
							freezeMaskProj.owner = id;
							freezeMaskProj.hitInvincibility = freezeMaskProj.hitInvincibilityMax;
							freezeMaskProj.image_xscale = image_xscale;
							freezeMaskProj.image_yscale = image_yscale;
					    }
					
						if ((attackNumber == 7) and (!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2)) and (!freezeReady))
					    {
							invincible = false;
							attackTimer = 15;
							freezeReady = true;
							if (instance_exists(freezeMaskProj)) instance_destroy(freezeMaskProj);
				            attack = false;
							attackNumber = "none";
					    }
						break;
					}
					break;
				
					case "gooey":
					if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (attackable))
					{
						if ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd)))
						{
							if (audio_is_playing(snd_StoneReady)) audio_stop_sound(snd_StoneReady);
							audio_play_sound(snd_StoneReady,0,false);
							hsp = 0;
								
							if (grounded)
							{
								if (run) hsp = (movespeedRun * 3) * dir;
							}
							else
							{
								vsp = -jumpspeed;
							}
							invincible = true;
					        attack = true;
					        attackNumber = "gooeyStoneNormal";
					        attackable = false;
							stoneParticleTimer = 0;
							sprite_index = sprStoneAttack1Ready;
							image_index = 0;
						}
						else if ((run) and (hsp != 0))
						{
							invincible = true;
							vsp = 0;
							fireDashHsp = (movespeedBurst * ((fireMagicCharcoalUpgrade / 2) + 1)) * dir;
							run = false;
					        attack = true;
							attackNumber = "gooeyFireDash";
							fireDashDir = 1;
							if ((keyboard_check(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) fireDashDir = -1;
							attackable = false;
					        fireReleaseTimer = 35;
					        attackTimer = 45;
					        state = playerStates.fireDash;
							if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
				            audio_play_sound(snd_Fire3,0,false);
							fireDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_BurstMask);
							fireDashMaskProj.owner = id;
							fireDashMaskProj.dmgMin = 18;
							fireDashMaskProj.dmgMax = 21;
							fireDashMaskProj.image_xscale = image_xscale;
							fireDashMaskProj.image_yscale = image_yscale;
				            var par = instance_create_depth(x + (dir * 10),y - 4,depth - 1,obj_Particle);
				            par.dir = dir;
				            par.sprite_index = spr_Particle_Fire5;
				            par.scale = 1 + (fireMagicCharcoalUpgrade / 2);
							par.paletteSpriteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
							par.paletteIndex = 1;
							par.destroyAfterAnimation = true;
						}
					}
					
					if (attackNumber == "gooeyStoneNormal")
					{
						if ((!stoneFallen) and (!stoneReady) and (place_meeting(x,y + vsp + 1,obj_Wall)) and (sign(vsp) == 1))
						{
							if (audio_is_playing(snd_StoneFallen)) audio_stop_sound(snd_StoneFallen);
							audio_play_sound(snd_StoneFallen,0,false);
							if ((sprite_index == sprStoneAttack1Rare) and (floor(image_index) == 6))
							{
								if (audio_is_playing(snd_JellyStone)) audio_stop_sound(snd_JellyStone);
								audio_play_sound(snd_JellyStone,0,false);
							}
							stoneFallen = true;
							scaleExX = .2;
							scaleExY = -.2;
							shakeY = 3;
							for (var i = 0; i < 2; i++)
							{
								var parXDir = 4;
								if (i == 1) var parXDir = -4;
								var par = instance_create_depth(x + parXDir,y + 3,depth - 1,obj_Particle);
								par.sprite_index = spr_Particle_ShrinkingStar4;
								if (i == 0)
								{
									par.hsp = 3;
								}
								else if (i == 1)
								{
									par.hsp = -3;
								}
								par.dir = sign(par.hsp);
								par.destroyAfterAnimation = true;
							}
							if (instance_exists(obj_Camera))
							{
								obj_Camera.shakeX = 2;
								obj_Camera.shakeY = 2;
							}
						}
						
						if (stoneReady)
						{
							shakeX = 2;
						}
						else if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))))
						{
							if (audio_is_playing(snd_StoneRelease)) audio_stop_sound(snd_StoneRelease);
							audio_play_sound(snd_StoneRelease,0,false);
							var stoneEnd = instance_create_depth(x,y,depth - 1,obj_Projectile_StoneStop);
							stoneEnd.dmg = 205
							stoneEnd.enemy = false;
							stoneEnd.owner = id;
							vsp = -(jumpspeed / 3);
							grav = gravNormal;
							gravLimit = gravLimitNormal;
							invincible = false;
							attackTimer = 15;
							stoneReady = true;
							stoneFallen = false;
							if (instance_exists(stoneMaskProj)) instance_destroy(stoneMaskProj);
					        attack = false;
							attackNumber = "none";
							if (stoneReleaseParticleTimer == -1) stoneReleaseParticleTimer = stoneReleaseParticleTimerMax;
						}
					}
					break;
				
					case "waddleDoo":
					if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
					{
						if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
						sndBeam = audio_play_sound(snd_Beam,0,false);
						attack = true;
						attackNumber = "waddleDooBeamNormal";
						sprite_index = sprBeamAttack1;
						image_index = 0;
					}
				
					if (attackNumber == "waddleDooBeamNormal")
					{
						if (attackable)
						{
							waddleDooEyeFlashTimer = waddleDooEyeFlashTimerMax;
							attackTimer = 75;
							for (var i = 0; i < 4; i++)
							{
								var projBeam = instance_create_depth(-100,-100,depth,obj_Projectile_Beam);
								projBeam.owner = id;
								projBeam.dmg = 12;
								projBeam.angle = 90 + ((40 - (i * 10)) * -dir);
								projBeam.spd = (1.2 + (i * .2)) * -dir;
								projBeam.orbit = 25 + (i * 15);
								projBeam.enemy = false;
								projBeam.centerY = -4;
								projBeam.destroyableByWall = false;
								projBeam.destroyableByEnemy = false;
								projBeam.destroyableByObject = false;
								projBeam.hasLimit = false;
								projBeam.character = 1;
								projBeam.sprite_index = spr_Projectile_Beam_Enemy;
								projBeam.particleTimer = -1;
								projBeam.destroyTimer = 60;
							}
							attackable = false;
						}
					}
					break;
				
					case "sirKibble":
					if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (attackable) and (!attack))
					{
						attack = true;
						attackNumber = "sirKibbleCutterCharge";
						sprite_index = sprCutterCharge;
						image_index = 0;
					}
				
					if (attackNumber == "sirKibbleCutterCharge")
					{
						if (cutterCharge == cutterChargeMax - 1)
						{
							audio_play_sound(snd_Charge_Ready,0,false);
							var particle = instance_create_depth(x,y - 4,depth - 1,obj_Particle);
							particle.sprite_index = spr_Particle_Flash1;
							particle.destroyAfterAnimation = true;
						}
						cutterCharge += 1;
						if ((!audio_is_playing(snd_Charge_Intro)) and (!audio_is_playing(snd_Charge_Loop)))
						{
							if (chargeSfxState == "intro")
							{
								chargeSfx = audio_play_sound(snd_Charge_Intro,0,false);
								chargeSfxState = "loop";
							}
							else
							{
								chargeSfx = audio_play_sound(snd_Charge_Loop,0,false);
							}
						}
					
						if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr)))
						{
							dir = 1;
						}
						if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl)))
						{
							dir = -1;
						}
					
						if (cutterCharge < cutterChargeMax)
						{
							if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
							{
								cutterCharge = 0;
								if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
								chargeSfxState = "intro";
								invincibleFlash = false;
								invincibleFlashTimer = -1;
								attack = true;
								attackNumber = "sirKibbleCutterNormal";
								sprite_index = sprCutterAttack1;
							    image_index = 0;
							}
						}
						else
						{
							if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
							if ((!global.cutscene) and ((!keyboard_check(keyAttack)) and (!gamepad_button_check(0,gp_face2))))
							{
								cutterCharge = 0;
								if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
								chargeSfxState = "intro";
								invincibleFlash = false;
								invincibleFlashTimer = -1;
								attack = true;
								attackNumber = "sirKibbleCutterChargeAttack";
								sprite_index = sprCutterAttack1;
								image_index = 0;
							}
						}
					}
					
					if (attackNumber == "sirKibbleCutterNormal")
					{
						if ((round(image_index) == 2) and (attackable))
						{
							if (audio_is_playing(snd_Cutter)) audio_stop_sound(snd_Cutter);
							audio_play_sound(snd_Cutter,0,false);
						    var projectile = instance_create_depth(x,y - 10,depth,obj_Projectile_Cutter);
							projectile.owner = id;
							projectile.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
							projectile.dmg = 12;
							projectile.character = 1;
							projectile.sprite_index = spr_Projectile_Cutter_Enemy;
							projectile.paletteIndex = paletteIndex;
							projectile.hsp = dir * projectile.decelMax;
							projectile.dirX = dir;
							projectile.image_xscale = projectile.dirX;
							projectile.enemy = false;
							projectile.player = player;
							attackable = false;
						}
					}
					
					if (attackNumber == "sirKibbleCutterChargeAttack")
					{
						if ((round(image_index) == 2) and (attackable))
						{
							if (audio_is_playing(snd_Cutter)) audio_stop_sound(snd_Cutter);
							audio_play_sound(snd_Cutter,0,false);
						    var projectile = instance_create_depth(x,y - 10,depth,obj_Projectile_Cutter);
							projectile.owner = id;
							projectile.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
							projectile.dmg = 20;
							projectile.character = 1;
							projectile.sprite_index = spr_Projectile_Cutter_Enemy;
							projectile.paletteIndex = paletteIndex;
							projectile.decelMax = projectile.decelMax * 1.2;
							projectile.hsp = dir * projectile.decelMax;
							projectile.dirX = dir;
							projectile.image_xscale = projectile.dirX;
							projectile.enemy = false;
							projectile.destroyableByEnemy = false;
							projectile.destroyableByObject = false;
							projectile.destroyableByProjectile = false;
							projectile.player = player;
							projectile.image_blend = c_red;
							attackable = false;
						}
					}
					break;
				}
			}
			break;
		}
		
		if (attack)
		{
			iceKick = false;
		}
		
		//Jump
		
		if ((!global.cutscene) and (canJump) and (playerAbility != "ufo") and (((!canMultiJump) and (grounded)) or ((canMultiJump) and (multiJumpCounter < multiJumpLimit))) and (!wallAbove) and ((keyboard_check_pressed(keyJump)) or (gamepad_button_check_pressed(0,gp_face1))) and (!attack))
		{
			if ((canMultiJump) and (multiJumpLimit != -1)) multiJumpCounter += 1;
			
			switch (playerCharacter)
			{
				case "gamble":
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				vsp = -jumpspeed;
				break;
				
				case "waddleDee":
				var jumpSound = choose(snd_WaddleDee1,snd_WaddleDee6,snd_WaddleDee7,snd_WaddleDee8,snd_WaddleDee9,snd_WaddleDee10,snd_WaddleDee11);
				audio_play_sound(jumpSound,0,false);
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				case "waddleDoo":
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				case "brontoBurt":
				if (audio_is_playing(snd_WingFlap)) audio_stop_sound(snd_WingFlap);
				audio_play_sound(snd_WingFlap,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				case "twizzy":
				if (audio_is_playing(snd_WingFlap)) audio_stop_sound(snd_WingFlap);
				audio_play_sound(snd_WingFlap,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				case "tookey":
				if (audio_is_playing(snd_WingFlap)) audio_stop_sound(snd_WingFlap);
				audio_play_sound(snd_WingFlap,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				case "sirKibble":
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				case "bouncy":
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
				
				default:
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				if (carriedItem == "none") fallRoll = true;
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
			}
		}
		
		//Jump Limit Flash
		
		if ((invincibleFlashTimer == -1) and (multiJumpLimit != -1) and (multiJumpCounter >= multiJumpLimit)) invincibleFlashTimer = invincibleFlashTimerMax;
		
		//Auto Jump
		
		if ((!global.cutscene) and (canAutoJump) and (grounded) and (!place_meeting(x,y - 1,obj_Wall)) and (!attack))
		{
			switch (playerCharacter)
			{
				case "bouncy":
				if ((!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padd)))
				{
					if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
					audio_play_sound(snd_Jump,0,false);
					var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
					parJump.sprite_index = spr_Particle_Jump;
					parJump.destroyAfterAnimation = true;
					parJump.spdBuiltIn = 6;
					parJump.fricSpd = .6;
					parJump.direction = 90 + (20 * dir);
					sprite_index = sprJump;
					image_index = 0;
					vsp = -jumpspeed;
				}
				break;
				
				case "gordo":
				if ((!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padd)))
				{
					if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
					audio_play_sound(snd_Jump,0,false);
					var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
					parJump.sprite_index = spr_Particle_Jump;
					parJump.destroyAfterAnimation = true;
					parJump.spdBuiltIn = 6;
					parJump.fricSpd = .6;
					parJump.direction = 90 + (20 * dir);
					sprite_index = sprJump;
					image_index = 0;
					vsp = -jumpspeed;
				}
				break;
				
				case "bloodGordo":
				if ((!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padd)))
				{
					if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
					audio_play_sound(snd_Jump,0,false);
					var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
					parJump.sprite_index = spr_Particle_Jump;
					parJump.destroyAfterAnimation = true;
					parJump.spdBuiltIn = 6;
					parJump.fricSpd = .6;
					parJump.direction = 90 + (20 * dir);
					sprite_index = sprJump;
					image_index = 0;
					vsp = -jumpspeed;
				}
				break;
				
				default:
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				if (carriedItem == "none") fallRoll = true;
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
			}
		}
		
		//Duck
		
		if ((!global.cutscene) and (canDuck) and (playerAbility != "ufo") and (grounded) and ((keyboard_check(keyDown)) or (gamepad_button_check(0,gp_padd))) and (!attack))
		{
			if (vsp == 0)
			{
				if ((mirrorShieldHp > 0) and (playerAbility == "mirror"))
				{
					if (audio_is_playing(snd_Guard)) audio_stop_sound(snd_Guard);
					audio_play_sound(snd_Guard,0,false);
					var mirrorShield = instance_create_depth(x,y,depth - 1,obj_Projectile_MirrorShield);
					mirrorShield.owner = id;
				}
				movespeed = movespeedNormal;
				run = false;
			    duck = true;
			    slide = false;
				duckSlide = false;
			    state = playerStates.slide;
			}
		}
		
		//Climb
		
		if ((!global.cutscene) and (playerAbility != "ufo") and (canClimb) and (place_meeting(x,y,obj_Ladder)))
		{
		    if ((((!place_meeting(x,y - 1,obj_Wall)) and ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu)))) or ((!place_meeting(x,y + 1,obj_Wall)) and ((keyboard_check_pressed(keyDown)) or (gamepad_button_check_pressed(0,gp_padd))))) and (!attack))
		    {
				fallRoll = false;
				if (fallHopCounter != 0) fallHopCounter = 0;
		        hsp = 0;
		        var ladder = instance_place(x,y,obj_Ladder);
		        x = ladder.x + (sprite_get_width(spr_Ladder) / 2);
		        image_index = 0;
		        state = playerStates.climb;
				
		    }
		}
		
		//Float
		
		if ((!global.cutscene) and (canFloat) and ((carriedItem == "none") and (carriedItemState != "heavy")) and (playerAbility != "ufo") and (((keyboard_check_pressed(keyJump)) or (gamepad_button_check_pressed(0,gp_face1))) and (!place_meeting(x,y,obj_AntiFloat)) and (!place_meeting(x,y + 1,obj_Wall))) and (!attack))
		{
			attackTimer = 0;
		    hurt = false;
			jumpspeed = jumpspeedFloat;
		    vsp = -jumpspeed;
		    float = false;
		    image_index = 0;
		    state = playerStates.float;
		}
		
		//Door
		
		if ((!global.cutscene) and (canEnter) and (position_meeting(x,y,obj_Door)) and ((keyboard_check_pressed(keyUp)) or (gamepad_button_check_pressed(0,gp_padu))) and (!attack))
		{
		    if ((!instance_exists(obj_Fade)) and (!hurt))
		    {
				enterDoor = true;
		    }
		}
		
		if (enterDoor)
		{
			var nearbyDoor = instance_position(x,y,obj_Door);
			if (!nearbyDoor.locked)
			{
				if (audio_is_playing(snd_Enter)) audio_stop_sound(snd_Enter);
				audio_play_sound(snd_Enter,0,false);
				var fade = instance_create_depth(x,y,-999,obj_Fade);
				fade.targetRoom = nearbyDoor.targetRoom;
				hsp = 0;
				vsp = 0;
				image_index = 0;
				state = playerStates.enter;
			}
			enterDoor = false;
		}
		
		//Animation
		
		var heavyItemCarry = false;
		if (carriedItemState == "heavy") heavyItemCarry = true;
		var heavyItemCarrySpd = heavyItemCarry / 2;
		if ((run) or ((carriedItemIndex != -1) and (carriedItemIndex.object_index == obj_Projectile_Bomb) and (carriedItemIndex.selfExplodeTimer != -1) and (carriedItemIndex.selfExplodeTimer <= 90))) heavyItemCarrySpd = heavyItemCarry / 1.5;
		
		if (fallHop)
		{
			image_speed = .75;
		}
		else
		{
			image_speed = 1 + (runImageSpeedIncrease * run) + heavyItemCarrySpd;
		}
		
		if ((!canUfoFloat) and (playerAbility != "ufo") and (!attack) and (!hurt) and (!iceKick))
		{
			if ((grounded) and (vsp == 0))
			{
				if (hsp == 0)
				{
					if (!idleAnimation)
					{
						if ((idleAnimationTimer < idleAnimationTimerMax) and ((carriedItemIndex != -1) and !((carriedItemIndex.object_index == obj_Projectile_Bomb) and (carriedItemIndex.selfExplodeTimer != -1) and (carriedItemIndex.selfExplodeTimer <= 90))))
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
					
					var idlesprite = sprIdle;
					var idleblinksprite = sprIdleBlink;
					if (carriedItem != "none")
					{
						if (carriedItemState == "light")
						{
							idlesprite = sprItemCarryLightIdle;
							idleblinksprite = sprItemCarryLightIdle;
						}
						else if (carriedItemState == "heavy")
						{
							idlesprite = sprItemCarryHeavyIdle;
							idleblinksprite = sprItemCarryHeavyIdle;
						}
					}
					if (sparkMaxCharge) idlesprite = sprSparkMaxCharge;
					
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
									idlesprite = sprIdleNormalSlopeL;
									idleblinksprite = sprIdleNormalSlopeLBlink;
									if (carriedItem != "none")
									{
										if (carriedItemState == "light")
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeL;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeLBlink;
										}
										else if (carriedItemState == "heavy")
										{
											idlesprite = sprItemCarryHeavyIdleSlopeL;
											idleblinksprite = sprItemCarryHeavyIdleSlopeL;
										}
									}
									if (sparkMaxCharge) idlesprite = sprSparkMaxChargeNormalSlopeL;
								}
								else
								{
									idlesprite = sprIdleNormalSlopeR;
									idleblinksprite = sprIdleNormalSlopeRBlink;
									if (carriedItem != "none")
									{
										if (carriedItemState == "light")
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeR;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeRBlink;
										}
										else if (carriedItemState == "heavy")
										{
											idlesprite = sprItemCarryHeavyIdleSlopeR;
											idleblinksprite = sprItemCarryHeavyIdleSlopeR;
										}
									}
									if (sparkMaxCharge) idlesprite = sprSparkMaxChargeNormalSlopeR;
								}
							}
							else
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									idlesprite = sprIdleNormalSlopeR;
									idleblinksprite = sprIdleNormalSlopeRBlink;
									if (carriedItem != "none")
									{
										if (carriedItemState == "light")
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeR;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeRBlink;
										}
										else if (carriedItemState == "heavy")
										{
											idlesprite = sprItemCarryHeavyIdleSlopeR;
											idleblinksprite = sprItemCarryHeavyIdleSlopeR;
										}
									}
									if (sparkMaxCharge) idlesprite = sprSparkMaxChargeNormalSlopeR;
								}
								else
								{
									idlesprite = sprIdleNormalSlopeL;
									idleblinksprite = sprIdleNormalSlopeLBlink;
									if (carriedItem != "none")
									{
										if (carriedItemState == "light")
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeL;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeLBlink;
										}
										else if (carriedItemState == "heavy")
										{
											idlesprite = sprItemCarryHeavyIdleSlopeL;
											idleblinksprite = sprItemCarryHeavyIdleSlopeL;
										}
									}
									if (sparkMaxCharge) idlesprite = sprSparkMaxChargeNormalSlopeL;
								}
							}
							break;
							
							case "gentle":
							if (dir == 1)
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									idlesprite = sprIdleNormalSlopeR;
									idleblinksprite = sprIdleNormalSlopeRBlink;
									if (carriedItem != "none")
									{
										if (carriedItemState == "light")
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeR;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeRBlink;
										}
										else if (carriedItemState == "heavy")
										{
											idlesprite = sprItemCarryHeavyIdleSlopeR;
											idleblinksprite = sprItemCarryHeavyIdleSlopeR;
										}
									}
									if (sparkMaxCharge) idlesprite = sprSparkMaxChargeNormalSlopeR;
								}
								else
								{
									idlesprite = sprIdleNormalSlopeL;
									idleblinksprite = sprIdleNormalSlopeLBlink;
									if (carriedItem != "none")
									{
										if (carriedItemState == "light")
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeL;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeLBlink;
										}
										else if (carriedItemState == "heavy")
										{
											idlesprite = sprItemCarryHeavyIdleSlopeL;
											idleblinksprite = sprItemCarryHeavyIdleSlopeL;
										}
									}
									if (sparkMaxCharge) idlesprite = sprSparkMaxChargeNormalSlopeL;
								}
							}
							else
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									idlesprite = sprIdleNormalSlopeL;
									idleblinksprite = sprIdleNormalSlopeLBlink;
									if (carriedItem != "none")
									{
										if (carriedItemState == "light")
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeL;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeLBlink;
										}
										else if (carriedItemState == "heavy")
										{
											idlesprite = sprItemCarryHeavyIdleSlopeL;
											idleblinksprite = sprItemCarryHeavyIdleSlopeL;
										}
									}
									if (sparkMaxCharge) idlesprite = sprSparkMaxChargeNormalSlopeL;
								}
								else
								{
									idlesprite = sprIdleNormalSlopeR;
									idleblinksprite = sprIdleNormalSlopeRBlink;
									if (carriedItem != "none")
									{
										if (carriedItemState == "light")
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeR;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeRBlink;
										}
										else if (carriedItemState == "heavy")
										{
											idlesprite = sprItemCarryHeavyIdleSlopeR;
											idleblinksprite = sprItemCarryHeavyIdleSlopeR;
										}
									}
									if (sparkMaxCharge) idlesprite = sprSparkMaxChargeNormalSlopeR;
								}
							}
							break;
							
							case "steep":
							if (dir == 1)
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									idlesprite = sprIdleSteepSlopeR;
									idleblinksprite = sprIdleSteepSlopeRBlink;
									if (carriedItem != "none")
									{
										if (carriedItemState == "light")
										{
											idlesprite = sprItemCarryLightIdleSteepSlopeR;
											idleblinksprite = sprItemCarryLightIdleSteepSlopeRBlink;
										}
										else if (carriedItemState == "heavy")
										{
											idlesprite = sprItemCarryHeavyIdleSlopeR;
											idleblinksprite = sprItemCarryHeavyIdleSlopeR;
										}
									}
									if (sparkMaxCharge) idlesprite = sprSparkMaxChargeSteepSlopeR;
								}
								else
								{
									idlesprite = sprIdleSteepSlopeL;
									idleblinksprite = sprIdleSteepSlopeLBlink;
									if (carriedItem != "none")
									{
										if (carriedItemState == "light")
										{
											idlesprite = sprItemCarryLightIdleSteepSlopeL;
											idleblinksprite = sprItemCarryLightIdleSteepSlopeLBlink;
										}
										else if (carriedItemState == "heavy")
										{
											idlesprite = sprItemCarryHeavyIdleSlopeL;
											idleblinksprite = sprItemCarryHeavyIdleSlopeL;
										}
									}
									if (sparkMaxCharge) idlesprite = sprSparkMaxChargeSteepSlopeL;
								}
							}
							else
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									idlesprite = sprIdleSteepSlopeL;
									idleblinksprite = sprIdleSteepSlopeLBlink;
									if (carriedItem != "none")
									{
										if (carriedItemState == "light")
										{
											idlesprite = sprItemCarryLightIdleSteepSlopeL;
											idleblinksprite = sprItemCarryLightIdleSteepSlopeLBlink;
										}
										else if (carriedItemState == "heavy")
										{
											idlesprite = sprItemCarryHeavyIdleSlopeL;
											idleblinksprite = sprItemCarryHeavyIdleSlopeL;
										}
									}
									if (sparkMaxCharge) idlesprite = sprSparkMaxChargeSteepSlopeL;
								}
								else
								{
									idlesprite = sprIdleSteepSlopeR;
									idleblinksprite = sprIdleSteepSlopeRBlink;
									if (carriedItem != "none")
									{
										if (carriedItemState == "light")
										{
											idlesprite = sprItemCarryLightIdleSteepSlopeR;
											idleblinksprite = sprItemCarryLightIdleSteepSlopeRBlink;
										}
										else if (carriedItemState == "heavy")
										{
											idlesprite = sprItemCarryHeavyIdleSlopeR;
											idleblinksprite = sprItemCarryHeavyIdleSlopeR;
										}
									}
									if (sparkMaxCharge) idlesprite = sprSparkMaxChargeSteepSlopeR;
								}
							}
							break;
						}
					}
					
					if ((idleAnimation) and (!sparkMaxCharge) and ((carriedItemIndex != -1) and !((carriedItemIndex.object_index == obj_Projectile_Bomb) and (carriedItemIndex.selfExplodeTimer != -1) and (carriedItemIndex.selfExplodeTimer <= 90))))
					{
						switch (playerCharacter)
						{
							case "kirby":
							sprite_index = idleblinksprite;
							break;
							
							default:
							sprite_index = idlesprite;
							break;
						}
					}
					else if ((carriedItemIndex != -1) and (carriedItemIndex.object_index == obj_Projectile_Bomb) and (carriedItemIndex.selfExplodeTimer != -1) and (carriedItemIndex.selfExplodeTimer <= 90))
					{
						sprite_index = sprItemCarryHeavyWalk;
					}
					else
					{
						sprite_index = idlesprite;
					}
				}
				else
				{
					if (idleAnimation) image_index = 0;
					idleAnimation = false;
					idleAnimationTimer = 0;
					idleAnimationTimerMax = 30;
					if (run)
					{
						if (playerAbility == "mirror")
						{
							sprite_index = sprMirrorDash;
						}
						else if (runTurn)
						{
							sprite_index = sprRunTurn;
						}
						else
						{
							
							if ((carriedItem != "none") and (carriedItemState == "heavy"))
							{
								sprite_index = sprItemCarryHeavyWalk;
							}
							else
							{
								sprite_index = sprRun;
							}
						}
					}
					else
					{
						if (carriedItem == "none")
						{
							sprite_index = sprWalk;
						}
						else
						{
							if (carriedItemState == "light")
							{
								sprite_index = sprItemCarryLightWalk;
							}
							else if (carriedItemState == "heavy")
							{
								sprite_index = sprItemCarryHeavyWalk;
							}
						}
					}
				}
				
				if (playerCharacter == "gooey")
				{
					gooeyScaleOffset += (.002 * gooeyScaleDir);
					if ((abs(gooeyScaleOffset) >= .1)) gooeyScaleDir *= -1;
					
					scaleExX = -(gooeyScaleOffset / 2);
					scaleExY = gooeyScaleOffset;
				}
			}
			else
			{
				if (idleAnimation) image_index = 0;
				idleAnimation = false;
				idleAnimationTimer = 0;
				idleAnimationTimerMax = 30;
				gooeyScaleDir = 1;
				gooeyScaleOffset = 0;
				if (fallHop)
				{
					sprite_index = sprRoll;
				}
				else
				{
				    if (vsp < 0)
					{
						if (fallHop)
						{
							sprite_index = sprRoll;
						}
						else
						{
							sprite_index = sprJump;
						}
					}
					else
					{
						if (fallRoll)
						{
							sprite_index = sprRoll;
						}
						else if (fallHop)
						{
							sprite_index = sprRoll;
						}
						else if (fallHopCounter >= fallHopCounterMax)
						{
							image_speed = .75;
							//sprite_index = sprRollDuckReady;
							sprite_index = sprRoll;
							if (image_index > 3) image_index = 3;
						}
						else
						{
							sprite_index = sprFall;
						}
					}
				}
			}
		}
		
		if ((canUfoFloat) or (playerAbility == "ufo"))
		{
			if (playerAbility == "ufo")
			{
				sprite_index = sprUfoIdle;
			}
			else
			{
				if ((hsp == 0) and (vsp == 0))
				{
					sprite_index = sprIdle;
				}
				else
				{
					sprite_index = sprWalk;
				}
			}
		}
		
		if (hurt) sprite_index = sprHurt;
		
		//Walk Duck
		
		if ((!walkDuck) and (carriedItem == "none") and (playerAbility != "ufo") and (place_meeting(x,y + (1 + vsp),obj_Wall)) and (vsp > 1) and (!attack))
		{
			var collidingWall = instance_place(x,y + (1 + vsp),obj_Wall);
			if ((!collidingWall.platform) or ((collidingWall.platform) and (((!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padd))) and !(round(bbox_bottom) > collidingWall.y + 20 + vspFinal))))
			{
				switch (playerCharacter)
				{
					case "bouncy":
					image_index = 0;
					walkDuck = true;
					walkDuckTimer = walkDuckTimerMax;
					for (var i = 0; i < 2; i++)
					{
						var parDirection = 180 * i;
						var parScaleDir = 1;
						if ((parDirection > 90) and (parDirection <= 270))
						{
							parScaleDir = -1;
						}
						var parSquish = instance_create_depth(x,y + 6,depth + 1,obj_Particle);
						parSquish.sprite_index = spr_Particle_SmallStar;
						parSquish.destroyTimer = 30;
						parSquish.spdBuiltIn = 6;
						parSquish.fricSpd = .6;
						parSquish.direction = parDirection;
						parSquish.dir = parScaleDir;
					}
					break;
				
					case "gordo":
					image_index = 0;
					walkDuck = true;
					walkDuckTimer = walkDuckTimerMax;
					imageAngle += (45 * dir);
					for (var i = 0; i < 2; i++)
					{
						var parDirection = 180 * i;
						var parScaleDir = 1;
						if ((parDirection > 90) and (parDirection <= 270))
						{
							parScaleDir = -1;
						}
						var parSquish = instance_create_depth(x,y + 6,depth + 1,obj_Particle);
						parSquish.sprite_index = spr_Particle_SmallStar;
						parSquish.destroyTimer = 30;
						parSquish.spdBuiltIn = 6;
						parSquish.fricSpd = .6;
						parSquish.direction = parDirection;
						parSquish.dir = parScaleDir;
					}
					break;
				
					case "bloodGordo":
					image_index = 0;
					walkDuck = true;
					walkDuckTimer = walkDuckTimerMax;
					imageAngle += (45 * dir);
					for (var i = 0; i < 2; i++)
					{
						var parDirection = 180 * i;
						var parScaleDir = 1;
						if ((parDirection > 90) and (parDirection <= 270))
						{
							parScaleDir = -1;
						}
						var parSquish = instance_create_depth(x,y + 6,depth + 1,obj_Particle);
						parSquish.sprite_index = spr_Particle_SmallStar;
						parSquish.destroyTimer = 30;
						parSquish.spdBuiltIn = 6;
						parSquish.fricSpd = .6;
						parSquish.direction = parDirection;
						parSquish.dir = parScaleDir;
					}
					break;
				
					default:
					sprite_index = sprDuck;
					image_index = 0;
					walkDuck = true;
					walkDuckTimer = walkDuckTimerMax;
					if (audio_is_playing(snd_Squish)) audio_stop_sound(snd_Squish);
					audio_play_sound(snd_Squish,0,false);
					var parDirection = irandom_range(0,359);
					var parScaleDir = 1;
					if ((parDirection > 90) and (parDirection <= 270))
					{
						parScaleDir = -1;
					}
					var parSquish = instance_create_depth(x,y,depth + 1,obj_Particle);
					parSquish.sprite_index = spr_Particle_ShrinkingStar2;
					parSquish.destroyAfterAnimation = true;
					parSquish.spdBuiltIn = 7;
					parSquish.fricSpd = .6;
					parSquish.direction = parDirection;
					parSquish.dir = parScaleDir;
					if (fallHopCounter >= fallHopCounterMax)
					{
						scaleExX = .25;
						scaleExY = -.25;
						sprite_index = sprRollDuck;
						walkDuckTimer = walkDuckTimerMax - 1;
						fallHop = true;
					}
					break;
				}
			}
		}
		
		//Walk Squish
		
		if ((!walkSquish) and (playerAbility != "ufo") and (place_meeting(x + hspFinal,y,obj_Wall)) and (place_meeting(x,y + 1,obj_Wall)) and (abs(hspFinal) >= (movespeed / 2)) and (!attack))
		{
			var walkSquishWall = instance_place(x + hspFinal,y,obj_Wall);
			var bottomWall = instance_place(x,y + 1,obj_Wall);
			if ((carriedItem == "none") and (!walkSquishWall.slope) and (!walkSquishWall.platform) and (!bottomWall.slope))
			{
				sprite_index = sprSquish;
				image_index = 0;
				walkSquish = true;
				walkSquishTimer = walkSquishTimerMax;
				dir = sign(hspFinal);
				if (audio_is_playing(snd_Squish)) audio_stop_sound(snd_Squish);
				audio_play_sound(snd_Squish,0,false);
				var parDirection = irandom_range(0,359);
				var parScaleDir = 1;
				if ((parDirection > 90) and (parDirection <= 270))
				{
					parScaleDir = -1;
				}
				var parSquish = instance_create_depth(x,y,depth + 1,obj_Particle);
				parSquish.sprite_index = spr_Particle_ShrinkingStar2;
				parSquish.destroyAfterAnimation = true;
				parSquish.spdBuiltIn = 7;
				parSquish.fricSpd = .6;
				parSquish.direction = parDirection;
				parSquish.dir = parScaleDir;
			}
		}
		
		if (iceKick)
		{
			sprite_index = sprIceKick;
		}
		else
		{
			if ((walkDuck) and (vsp == 0) and (!attack))
			{
				if (fallHop)
				{
					sprite_index = sprRollDuck;
				}
				else
				{
					sprite_index = sprDuck;
				}
			}
			
			if ((walkSquishTimer > 0) and (vsp = 0) and (!attack))
			{
				sprite_index = sprSquish;
			}
		}
		
		if ((cutterCatch) and (!attack)) sprite_index = sprCutterCatch;
		
		//Collision
		
		scr_Player_Collision();
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}