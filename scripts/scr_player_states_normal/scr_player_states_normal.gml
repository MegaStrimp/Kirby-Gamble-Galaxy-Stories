///@description Normal State

function scr_Player_States_Normal()
{
	if (!global.pause)
	{
		#region Variables
		var playerCharacter = global.characterP1;
		if (player == 1) playerCharacter = global.characterP2;
		
		var playerAbility = global.abilityP1;
		if (player == 1) playerAbility = global.abilityP2;
		
		var playerSprayPaint = global.sprayPaintP1;
		if (player == 1) playerSprayPaint = global.sprayPaintP2;
		
		var grounded = false;
		if (place_meeting(x,y + 1,obj_ParentWall))
		{
			var collidingWall = instance_place(x,y + 1,obj_ParentWall);
			if ((!collidingWall.platform) or ((collidingWall.platform) and (((!keyDownHold) or (downHeld < 3)) and !(round(bbox_bottom) > collidingWall.y - collidingWall.vsp + 20 + vspFinal) and (!place_meeting(x,y + vspFinal,obj_Wall))))) grounded = true;
		}
		else if (place_meeting(x,y + 1,obj_Spring))
		{
			//var collidingSpring = instance_place(x,y + 1,obj_Spring);
			grounded = true;
		}
		
		var wallAbove = false;
		if (place_meeting(x,y - 1,obj_Wall))
		{
			var collidingWall = instance_place(x,y - 1,obj_Wall);
			if ((!collidingWall.platform)/* or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + collidingWall.vsp + 20 + vspFinal)))*/) wallAbove = true;
		}
		
		var attackDisableMovement = false;
		if ((attack) and ((attackNumber != playerAttacks.ufoBeam) and (attackNumber != playerAttacks.ufoCharge) and (attackNumber != playerAttacks.ufoLaser) and (attackNumber != playerAttacks.cutterAir) and (attackNumber != playerAttacks.fireAerial))) attackDisableMovement = true;
		
		var attackDisableDir = false;
		if ((attackNumber == playerAttacks.ufoBeam) or (attackNumber == playerAttacks.cutterAir) or (attackNumber == playerAttacks.fireAerial) or (attackNumber == playerAttacks.fireWheel && !grounded) or (attackNumber == playerAttacks.fireNormal)) attackDisableDir = true;
		
		didJump = false;
		#endregion
		
		#region Disable Fall Hop
		if (wallAbove) fallHop = false;
		#endregion
		
		#region Run
		if ((canRun) and (playerAbility != playerAbilities.ufo))
		{
			if (runDoubleTap > -1) runDoubleTap -= 1;
			if ((!global.cutscene) and (!runTurn) and ((keyLeftPressed) or (keyRightPressed)))
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
						if (playerAbility == playerAbilities.mirror)
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
		    if ((runCancelTimer == -1) and (grounded) and (((!keyLeftHold) and (!keyRightHold)) or ((keyLeftHold) and (keyRightHold))) or (global.cutscene)) runCancelTimer = 15;
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
		#endregion
		
		//Movement
		
		if ((!hurt) and (walkSquishTimer == -1))
		{
			if ((!global.cutscene) and (canWalk) and (!runTurn))
			{
				if (keyRightHold)
				{
					if (!attackDisableMovement)
					{
						hsp += accel;
						if ((!runTurn) and (!attackDisableDir)) dir = 1;
						if ((canRunTurn) and (carriedItem == carriedItems.none) and (grounded) and (run) and (playerAbility != playerAbilities.mirror) and (sign(hsp) != 0) and (sign(hsp) != sign(dir)))
						{
							if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
							audio_play_sound(snd_DashBegin,0,false);
							if ((!runTurn) and (!attackDisableDir)) dir = -1;
							runParticleNum = 0;
							runParticleTimer = 0;
							runTurn = true;
						}
					}
				}
				if (keyLeftHold)
				{
					if (!attackDisableMovement)
					{
						hsp -= accel;
						if ((!runTurn) and (!attackDisableDir)) dir = -1;
						if ((canRunTurn) and (carriedItem == carriedItems.none) and (grounded) and (run) and (playerAbility != playerAbilities.mirror) and (sign(hsp) != 0) and (sign(hsp) != sign(dir)))
						{
							if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
							audio_play_sound(snd_DashBegin,0,false);
							if ((!runTurn) and (!attackDisableDir)) dir = 1;
							runParticleNum = 0;
							runParticleTimer = 0;
							runTurn = true;
						}
					}
				}
			}
			
			if ((canUfoFloat) or (playerAbility == playerAbilities.ufo))
			{
				if (!global.cutscene)
				{
					if (keyUpHold)
					{
						if (!attackDisableMovement) vsp -= accel;
					}
					if (keyDownHold)
					{
						if (!attackDisableMovement) vsp += accel;
					}
				}
				
				if ((((keyDownHold) and (keyUpHold)) or ((!keyDownHold) and (!keyUpHold))) or (attackDisableMovement) or (global.cutscene))
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
			
			if ((((keyLeftHold) and (keyRightHold)) or ((!keyLeftHold) and (!keyRightHold))) or (attackDisableMovement) or (runTurn) or (global.cutscene))
			{
				var ultiDecel = decel;
				if (runTurn) ultiDecel = decel * 2;
				if (attackNumber == playerAttacks.fireWheel) ultiDecel = decelSlide;
				if (attackNumber == playerAttacks.beamAir) ultiDecel = decel - .05;
				if (hsp >= ultiDecel) hsp -= ultiDecel;
				if (hsp <= -ultiDecel) hsp += ultiDecel;
				if ((hsp > -ultiDecel) and (hsp < ultiDecel)) hsp = 0;
			}
			
		}
		
		var blockGap = false;
		if ((run) and (hsp != 0) and (vsp == 0) and (!place_meeting(x,y + 1,obj_ParentWall)) and (!place_meeting(x + hsp,y,obj_ParentWall)) and (place_meeting(x + (hsp + (2 * sign(hsp))),y + 1,obj_ParentWall))) blockGap = true;
		if ((hasGravity) and (!blockGap) and (playerAbility != playerAbilities.ufo))
		{
			var gravOffset = 0;
			if (attackNumber == playerAttacks.beamAir) gravOffset = .05;
			if (vsp < gravLimit)
			{
				vsp += grav - gravOffset;
			}
			else
			{
				vsp = gravLimit - (gravOffset * 5);
				if (((playerCharacter == playerCharacters.kirby) or (playerCharacter == playerCharacters.gooey)) and (fallHopCounter < fallHopCounterMax)) fallHopCounter += 1;
			}
		}
		
		if ((!global.cutscene) and (!canUfoFloat) and (playerAbility != playerAbilities.ufo) and (vsp < 0) and (!keyJumpHold))
		{
			var jumpLimitValue = -jumpspeed / 4;
			switch (playerCharacter)
			{
				case playerCharacters.bouncy:
				jumpLimitValue = -jumpspeed / 2;
				break;
			}
		    if ((hasJumpLimit) and (jumpLimit)) vsp = max(vsp,jumpLimitValue);
		}
		
		#region Grounded
		if (grounded)
		{
			if (((!canUfoFloat) and (playerAbility != playerAbilities.ufo)))
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
				if ((attackNumber == playerAttacks.cutterAir) or (attackNumber == playerAttacks.fireAerial)) attackTimer = 0;
			}
			if (playerCharacter == playerCharacters.gamble)
			{
				canUfoFloat = false;
				canJump = true;
			}
		}
		else
		{
			if (playerCharacter == playerCharacters.gamble)
			{
				canUfoFloat = true; 
				canJump = false;
			}
		}
		#endregion
		
		//Abilities
		
		switch (carriedItem)
		{
			#region Bomb
			case carriedItems.bomb:
			if (!global.cutscene)
			{
				if ((!hurt) and (!attack) and (keyAttackPressed))
				{
					var grabEnemy = -1;
					if (place_meeting(x + (16 * dir),y,obj_Enemy)) grabEnemy = instance_place(x + (16 * dir),y,obj_Enemy);
					if ((grabEnemy != -1) and (grabEnemy.hurtable) and (!grabEnemy.hurt) and (!grabEnemy.isMiniBoss) and (!grabEnemy.isBoss))
					{
						if (audio_is_playing(snd_Guard)) audio_stop_sound(snd_Guard);
						audio_play_sound(snd_Guard,0,false);
						sprite_index = sprBombAttack4;
						grabObj = instance_create_depth(grabEnemy.x,grabEnemy.y,grabEnemy.depth,obj_Projectile_GrabEnemy);
						grabObj.owner = id;
						grabObj.abilityType = playerAbilities.bomb;
						grabObj.dirX = grabEnemy.dirX;
						grabObj.dmg = -1;
						grabObj.active = true;
						grabObj.particleTimer = grabObj.particleTimerMax;
						grabObj.destroyTimer = 30;
						var grabSpr = grabEnemy.sprHurt;
						if ((grabSpr = -1) or (grabSpr = -1))
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
						attackNumber = playerAttacks.bombGrab;
						carriedItemIndex.owner = carriedItemIndex;
						carriedItemIndex.xOffset = 0;
						carriedItemIndex.yOffset = 0;
						carriedItemIndex.hasGravity = false;
						carriedItemIndex.x = grabObj.x;
						carriedItemIndex.y = grabObj.y - sprite_get_height(grabObj.sprite_index) + 6;
						carriedItemIndex.explodeTimer = 30;
						carriedItem = carriedItems.none;
						carriedItemIndex = -1;
						carriedItemState = carriedItemStates.none;
						attackTimer = 10;
					}
					
					if (!attack)
					{
						if (run)
						{
							attack = true;
							attackNumber = playerAttacks.bombDash;
							sprite_index = sprBombAttack3Ready;
							image_index = 0;
						}
						else
						{
							attack = true;
							attackNumber = playerAttacks.bombNormal;
							sprite_index = sprBombAttack1;
							image_index = 0;
						}
					}
				}
				
				if (attackNumber == playerAttacks.bombNormal)
				{
					if ((keyAttackReleased) or (hurt))
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
								bomb.abilityType = playerAbilities.bomb;
								bomb.player = player;
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
						carriedItem = carriedItems.none;
						carriedItemIndex = -1;
						carriedItemState = carriedItemStates.none;
						bombDir = 0;
						canGrabTimer = 15;
						attackTimer = 20;
					}
					else
					{
						if (bombDir < bombDirMax) bombDir += (2 * (1 + keyUpHold));
						bombDir = min(bombDir,bombDirMax);
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
				
				if (attackNumber == playerAttacks.bombDash)
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
					carriedItem = carriedItems.none;
					carriedItemIndex = -1;
					carriedItemState = carriedItemStates.none;
					bombDir = 0;
					canGrabTimer = 15;
					attackTimer = 60;
				}
			}
			break;
			#endregion
			
			#region Key
			case carriedItems.key:
			if (!global.cutscene)
			{
				if ((!hurt) and (!attack) and (keyAttackPressed))
				{
					if (!attack)
					{
						attack = true;
						attackNumber = playerAttacks.keyNormal;
						sprite_index = sprItemCarryHeavyIdle;
					}
				}
				else if (hurt)
				{
					carriedItemIndex.active = true;
					carriedItem = carriedItems.none;
					carriedItemIndex = -1;
					carriedItemState = carriedItemStates.none;
				}
				
				if (attackNumber == playerAttacks.keyNormal)
				{
					if ((!keyAttackHold) or (hurt))
					{
						if (audio_is_playing(snd_BombThrow)) audio_stop_sound(snd_BombThrow);
						audio_play_sound(snd_BombThrow,0,false);
						var bdir = (270 + (90 * dir)) + (bombDir * dir);
						if (bdir >= 360) bdir -= 360;
						if (bdir < 0) bdir += 360;
						carriedItemIndex.active = true;
						carriedItemIndex.hsp = lengthdir_x(4,bdir);
						carriedItemIndex.vsp = lengthdir_y(4,bdir);
						carriedItem = carriedItems.none;
						carriedItemIndex = -1;
						carriedItemState = carriedItemStates.none;
						bombDir = 0;
						canGrabTimer = 15;
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
			}
			break;
			#endregion
			
			#region Default
			default:
			if (canAttack)
			{
				switch (playerCharacter)
				{
					#region Kirby
					case playerCharacters.kirby:
					switch (playerAbility)
					{
						#region None
						case playerAbilities.none:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt))
					    {
							if (!hurt)
							{
							    var inhaleMask = instance_create_depth(x + (3 * dir),y - 2,depth - 1,obj_InhaleMask);
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
						#endregion
						
						#region Cutter
						case playerAbilities.cutter:
					    if ((!global.cutscene) and (keyAttackHold) and (!hurt) and (!attack) and (cutterAirThrown))
						{
							if (audio_is_playing(snd_Slash)) audio_stop_sound(snd_Slash);
							audio_play_sound(snd_Slash,0,false);
							var cutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CutterDropMask);
							cutterMaskProj.owner = id;
							cutterMaskProj.abilityType = playerAbilities.cutter;
							cutterMaskProj.dmg = 22;
							cutterMaskProj.image_xscale = image_xscale;
							cutterMaskProj.image_yscale = image_yscale;
							invincible = true;
							attack = true;
							attackNumber = playerAttacks.cutterAir;
							sprite_index = sprCutterAttack3;
							image_index = 0;
						}
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							if ((run) and (vsp == 0) and (hsp != 0))
							{
								attack = true;
								attackNumber = playerAttacks.cutterDash;
								sprite_index = sprCutterAttack2;
						        image_index = 0;
				                cutterCatch = false;
								hspLimit = false;
								hsp = movespeedRun * 1.3;
							}
							else if (keyDownHold)
							{
								if (audio_is_playing(snd_Slash)) audio_stop_sound(snd_Slash);
								audio_play_sound(snd_Slash,0,false);
								var cutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CutterDropMask);
								cutterMaskProj.owner = id;
								cutterMaskProj.abilityType = playerAbilities.cutter;
								cutterMaskProj.dmg = 22;
								cutterMaskProj.image_xscale = image_xscale;
								cutterMaskProj.image_yscale = image_yscale;
								invincible = true;
								attack = true;
								attackNumber = playerAttacks.cutterDrop;
								sprite_index = sprCutterAttack3;
								image_index = 0;
				                state = playerStates.cutterDrop;
							}
							else if (keyUpHold)
							{
								if ((comboBuffer <= 0) && (finalCutterReadInput || finalCutterState == 0) && state == playerStates.normal && keyUpHold){
									if (audio_is_playing(snd_Slash)) audio_stop_sound(snd_Slash);
									audio_play_sound(snd_Slash,0,false);
									//if (vsp == 0)
									//{
									//	attack = true;
									//	attackNumber = playerAttacks.cutterCharge;
									//}
									//else
									//{
									//	if (!cutterAirThrown)
									//	{
									//		cutterAirThrown = true;
									//		attack = true;
									//		attackNumber = playerAttacks.cutterNormal;
									//		sprite_index = sprCutterAttack1;
									//	    image_index = 0;
									//	}
									//}
									//cleavingCutterMaskProj = noone;
									//nonstopCutterMaskProj = noone;
									//finalCutterMaskProj = noone;
									attack = true;
									
									//Motion Input - Instant Final Cutter
									if(downInputBufferTimer > 0){
										downInputBufferTimer = 0;
										finalCutterState = 2;
									}
									
									attackNumber = playerAttacks.finalCutter;
									cutterCatch = false;
								}
							}else{
								if (vsp == 0)
								{
									attack = true;
									attackNumber = playerAttacks.cutterCharge;
								}
								else
								{
									if (!cutterAirThrown)
									{
										cutterAirThrown = true;
										attack = true;
										attackNumber = playerAttacks.cutterNormal;
										sprite_index = sprCutterAttack1;
									    image_index = 0;
									}
								}
								cleavingCutterMaskProj = noone;
								nonstopCutterMaskProj = noone;
								finalCutterMaskProj = noone;
							}
					    }
						
						if(attackNumber == playerAttacks.finalCutter){
							if(attackable){
								attackable = false;
								//if(finalCutterState == 0 || finalCutterReadInput){
									finalCutterState++;
									//finalCutterState = 3;
									finalCutterReadInput = false;
								//}
									switch(finalCutterState){
										case 1: 
											var cleavingCutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CleavingCutterMask);
											cleavingCutterMaskProj.owner = id;
											cleavingCutterMaskProj.abilityType = playerAbilities.cutter;
											cleavingCutterMaskProj.dmg = 6;
											break;
										case 2: 
											var nonstopCutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_NonstopCutterMask);
											nonstopCutterMaskProj.owner = id;
											nonstopCutterMaskProj.abilityType = playerAbilities.cutter;
											nonstopCutterMaskProj.dmg = 6;
											break;
										case 3: 
											if(attackTimer > (5940-15)){
												// rising slash
												var finalCutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_FinalCutterRisingSlashMask);
												finalCutterMaskProj.owner = id;
												finalCutterMaskProj.abilityType = playerAbilities.cutter;
												finalCutterMaskProj.dmg = 8; // make sure to create two additional hitboxes, one for the falling slash and one for the shockwave, both dealing 32 damage.		
											}else if (attackTimer > 5){
												// falling slash
												var finalCutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_FinalCutterRisingSlashMask);
												finalCutterMaskProj.owner = id;
												finalCutterMaskProj.abilityType = playerAbilities.cutter;
												finalCutterMaskProj.dmg = 32; // make sure to create two additional hitboxes, one for the falling slash and one for the shockwave, both dealing 32 damage.		
											}
											//if(grounded && vsp > 0){
											//	// cutter wave
											//}
											break;
										default:
											break;
									}
									switch(finalCutterState){
										case 1:
											sprite_index = sprCutterAttack4;
											image_index = 0;
											attackTimer = 6;
											finalCutterBuffer = 30;
											break;
										case 2:
											sprite_index = sprCutterAttack5;
											image_index = 0;
											attackTimer = 6;
											finalCutterBuffer = 25;
											break;
										case 3:
											sprite_index = sprCutterAttack6;
											image_index = 0;
											attackTimer = 5940;
											finalCutterBuffer = 0;
											invincible = true;
											break;
										default:
											break;
									}
								//hsp = 5*dir;
								state = playerStates.finalCutter;
							}
						}
					
						if (attackNumber == playerAttacks.cutterCharge)
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
							if (cutterCharge >= 6)
							{
								if (cutterCharge == 6)
								{
									sprite_index = sprCutterCharge;
									image_index = 0;
								}
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
							}
						
							if (keyRightHold)
							{
								dir = 1;
							}
							if (keyLeftHold)
							{
								dir = -1;
							}
						
							if (cutterCharge < cutterChargeMax)
							{
								if ((!global.cutscene) and (keyAttackReleased))
								{
									cutterCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									invincibleFlash = false;
									invincibleFlashTimer = -1;
									attack = true;
									attackNumber = playerAttacks.cutterNormal;
									sprite_index = sprCutterAttack1;
								    image_index = 0;
								}
							}
							else
							{
								if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
								if ((!global.cutscene) and (keyAttackReleased))
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
					
						if (attackNumber == playerAttacks.cutterNormal)
						{
							if ((round(image_index) == (image_number - 1)) and (attackable))
							{
								if (audio_is_playing(snd_Cutter)) audio_stop_sound(snd_Cutter);
								audio_play_sound(snd_Cutter,0,false);
						        var projectile = instance_create_depth(x,y - 5,depth,obj_Projectile_Cutter);
								projectile.owner = id;
								projectile.abilityType = playerAbilities.cutter;
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
								if (audio_is_playing(snd_CutterCharge)) audio_stop_sound(snd_CutterCharge);
								audio_play_sound(snd_CutterCharge,0,false);
						        var projectile = instance_create_depth(x,y - 8,depth,obj_Projectile_Cutter);
								projectile.owner = id;
								projectile.abilityType = playerAbilities.cutter;
								projectile.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
								projectile.dmg = 20;
								projectile.sprite_index = projectile.sprCharge;
								projectile.decelMax = projectile.decelMax * 1.2;
								projectile.hsp = dir * projectile.decelMax;
								projectile.dirX = dir;
								projectile.image_xscale = projectile.dirX;
								projectile.enemy = false;
								projectile.destroyableByEnemy = false;
								projectile.destroyableByObject = false;
								projectile.destroyableByProjectile = false;
								projectile.player = player;
								projectile.angleSpd = -30;
								projectile.charge = true;
								attackable = false;
							}
						}
					
						if (attackNumber == playerAttacks.cutterDash)
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
								cutterDashMaskProj.abilityType = playerAbilities.cutter;
								cutterDashMaskProj.dmg = 18;
								cutterDashMaskProj.dmgMax = 18;
								cutterDashMaskProj.dmgMin = 16;
								cutterDashMaskProj.image_xscale = image_xscale;
								cutterDashMaskProj.image_yscale = image_yscale;
							}
						}
					
						if (attackNumber == playerAttacks.cutterAir)
						{
							if (keyAttackReleased)
							{
								attackTimer = 0;
							}
						}
						break;
						#endregion
						
						#region Beam
						case playerAbilities.beam:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							if ((keyUpHold) or ((dir = 1) and (keyRightHold)) or ((dir = -1) and (keyLeftHold)))
							{
								var grabEnemy = -1;
								if (place_meeting(x + (16 * dir),y,obj_Enemy)) grabEnemy = instance_place(x + (16 * dir),y,obj_Enemy);
								if ((grabEnemy != -1) and (grabEnemy.hurtable) and (!grabEnemy.hurt) and (!grabEnemy.isMiniBoss) and (!grabEnemy.isBoss))
								{
									if (audio_is_playing(snd_Guard)) audio_stop_sound(snd_Guard);
									audio_play_sound(snd_Guard,0,false);
									sprite_index = sprBeamAttack6;
									grabObj = instance_create_depth(x + (16 * dir),y - 8,depth - 1,obj_Projectile_GrabEnemy);
									grabObj.owner = id;
									grabObj.abilityType = playerAbilities.beam;
									grabObj.dirX = grabEnemy.dirX;
									grabObj.dmg = 60;
									var grabSpr = grabEnemy.sprHurt;
									if ((grabSpr = -1) or (grabSpr = -1))
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
									attackNumber = playerAttacks.beamGrab;
									hsp = 0;
									state = playerStates.beamGrab;
								}
							}
						
							if (!attack)
							{
								if (keyUpHold)
								{
									if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
									sndBeam = audio_play_sound(snd_Beam,0,false);
									attack = true;
									attackNumber = playerAttacks.beamUp;
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
											attackNumber = playerAttacks.beamDash;
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
											attackNumber = playerAttacks.beamAir;
											hsp = 2 * dir;
											gravLimit = gravLimitBeamAir;
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
										if (vsp == 0)
										{
											attack = true;
											attackNumber = playerAttacks.beamCharge;
										}
										else
										{
											scr_Player_ExecuteAttack(playerAttacks.beamNormal);
										}
									}
								}
							}
					    }
					
						if (attackNumber == playerAttacks.beamCharge)
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
							if (beamCharge >= 6)
							{
								if (beamCharge == 6)
								{
									sprite_index = sprBeamCharge;
									image_index = 0;
								}
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
							}
						
							if (keyRightHold)
							{
								dir = 1;
							}
							if (keyLeftHold)
							{
								dir = -1;
							}
						
							if (beamCharge < beamChargeMax)
							{
								if ((!global.cutscene) and (keyAttackReleased))
								{
									beamCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									scr_Player_ExecuteAttack(playerAttacks.beamNormal);
								}
							}
							else
							{
								if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
								if ((!global.cutscene) and (keyAttackReleased))
								{
									beamCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									invincibleFlash = false;
									invincibleFlashTimer = -1;
									attack = true;
									attackNumber = playerAttacks.beamChargeAttack;
									sprite_index = sprBeamAttack5;
								    image_index = 0;
								}
							}
						}
					
						if (attackNumber == playerAttacks.beamNormal)
						{
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
					
						if (attackNumber == playerAttacks.beamDash)
						{
							if (attackable)
							{
								var proj = instance_create_depth(x + (21 * dir),y - 7,depth - 1,obj_Projectile_BeamDash);
								proj.owner = id;
								proj.abilityType = playerAbilities.beam;
								proj.dmg = 9;
								proj.enemy = false;
								proj.dirX = dir;
								proj.player = player;
								proj.image_xscale = proj.dirX;
								proj.hitInvincibility = 15;
							}
							attackable = false;
							if (beamDashAttackTimer == -1) beamDashAttackTimer = beamDashAttackTimerMax;
						}
					
						if (attackNumber == playerAttacks.beamAir)
						{
							attackable = false;
							if (beamAttack2Timer == -1) beamAttack2Timer = (beamAttack2TimerMax + irandom_range(-1,1) - beamGoldenFlareUpgrade);
							
							if (grounded) attackTimer = 0;
						}
					
						if (attackNumber == playerAttacks.beamUp)
						{
							if (attackable)
							{
								for (var i = 0; i < (5 + beamGoldenFlareUpgrade); i++)
								{
									var projBeam = instance_create_depth(-100,-100,depth + 1,obj_Projectile_Beam);
									projBeam.owner = id;
									projBeam.abilityType = playerAbilities.beam;
									projBeam.player = player;
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
						
						if (attackNumber == playerAttacks.beamChargeAttack)
						{
							if (attackable)
							{
								scaleExX = .2;
								scaleExY = -.2;
								hsp = 1 * -dir;
								attackTimer = 20;
								if (audio_is_playing(snd_BeamCharge)) audio_stop_sound(snd_BeamCharge);
								audio_play_sound(snd_BeamCharge,0,false);
								if (((player == 0) and (global.hatTypeBeamP1 == abilityHatSkins.beam_marxSoul)) or ((player == 1) and (global.hatTypeBeamP2 == abilityHatSkins.beam_marxSoul))) audio_play_sound(snd_BeamChargeMarxAlt,0,false);
							    var projectile = instance_create_depth(x + (6 * dir),y - 2,depth,obj_Projectile_BeamCharge);
								projectile.owner = id;
								projectile.abilityType = playerAbilities.beam;
								projectile.player = player;
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
					
						/*if (attackNumber == playerAttacks.beamUp)
						{
							if (attackable)
							{
								attackTimer = 24;
								for (var i = 0; i < 5; i++)
								{
									var projBeam = instance_create_depth(-100,-100,depth + 1,obj_Projectile_Beam);
									projBeam.owner = id;
									projBeam.abilityType = playerAbilities.beam;
									projBeam.player = player;
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
						#endregion
						
						#region Mystic Beam
						case playerAbilities.mysticBeam:
						if ((!canMysticBeamShield) and (!attack))
						{
							mysticBeamProjCount = 0;
							if (instance_exists(obj_Projectile_Beam))
							{
								with (obj_Projectile_Beam)
								{
									if ((isMystic) and (state == 2) and (owner == other.id))
									{
										other.mysticBeamProjCount += 1;
									}
								}
							}
							if (mysticBeamProjCount == 0) canMysticBeamShield = true;
						}
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							if ((keyUpHold) or ((dir = 1) and (keyRightHold)) or ((dir = -1) and (keyLeftHold)))
							{
								var grabEnemy = -1;
								if (place_meeting(x + (16 * dir),y,obj_Enemy)) grabEnemy = instance_place(x + (16 * dir),y,obj_Enemy);
								if ((grabEnemy != -1) and (grabEnemy.hurtable) and (!grabEnemy.hurt) and (!grabEnemy.isMiniBoss) and (!grabEnemy.isBoss))
								{
									if (audio_is_playing(snd_Guard)) audio_stop_sound(snd_Guard);
									audio_play_sound(snd_Guard,0,false);
									sprite_index = sprBeamAttack6;
									grabObj = instance_create_depth(x + (16 * dir),y - 8,depth - 1,obj_Projectile_GrabEnemy);
									grabObj.owner = id;
									grabObj.abilityType = playerAbilities.mysticBeam;
									grabObj.dirX = grabEnemy.dirX;
									grabObj.dmg = 60;
									var grabSpr = grabEnemy.sprHurt;
									if ((grabSpr = -1) or (grabSpr = -1))
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
									attackNumber = playerAttacks.mysticBeamGrab;
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
										attackTimer = 20;
										if (audio_is_playing(snd_BeamBombRelease)) audio_stop_sound(snd_BeamBombRelease);
										audio_play_sound(snd_BeamBombRelease,0,false);
										attack = true;
										attackNumber = playerAttacks.mysticBeamDash;
										sprite_index = sprMysticBeamAttack1;
									    image_index = 0;
									}
									else
									{
										attackTimer = 45;
										if (audio_is_playing(snd_BeamAir)) audio_stop_sound(snd_BeamAir);
										sndMysticBeam = audio_play_sound(snd_BeamAir,0,false);
										attack = true;
										attackNumber = playerAttacks.mysticBeamAir;
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
									if (keyUpHold)
									{
										attackTimer = 45;
										attack = true;
										attackNumber = playerAttacks.mysticBeamUp;
										mysticBeamUpAttackTimer = 0;
										sprite_index = sprBeamAttack4;
									    image_index = 0;
									}
									else
									{
										if (vsp == 0)
										{
											attack = true;
											attackNumber = playerAttacks.mysticBeamCharge;
											sprite_index = sprBeamCharge;
											image_index = 0;
										}
										else
										{
											if (instance_exists(obj_Projectile_Beam))
											{
												with (obj_Projectile_Beam)
												{
													if ((isMystic) and (state == 2) and (owner == other.id))
													{
														if (audio_is_playing(snd_MysticBeamLaunch)) audio_stop_sound(snd_MysticBeamLaunch);
														audio_play_sound(snd_MysticBeamLaunch,0,false);
														var proj = instance_create_depth(x,y,depth,obj_Projectile_BarrierBreak);
														proj.image_angle = angle_difference(angle - 45,image_angle);
														proj.owner = id;
														proj.abilityType = playerAbilities.mysticBeam;
														proj.dmg = 24;
														proj.destroyableByEnemy = false;
														proj.destroyableByObject = false;
														proj.destroyableByWall = false;
														var particle = instance_create_depth(other.x,other.y,depth,obj_Particle);
														particle.sprite_index = spr_Projectile_BarrierBreak_Normal_Tail;
														particle.image_angle = angle + 45;
														particle.destroyAfterAnimation = true;
														instance_destroy();
														/*var particle = instance_create_depth(x,y,depth,obj_Particle);
														particle.sprite_index = spr_Particle_Flash1;
														particle.scale = 1.5;
														particle.destroyAfterAnimation = true;*/
														/*if (audio_is_playing(snd_MysticBeamLaunch)) audio_stop_sound(snd_MysticBeamLaunch);
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
														if (place_meeting(x,y,obj_ParentWall)) instance_destroy();
														dmg = 15;
														spd = 5;
														direction = angle;
														state = 3;
														destroyableByWall = false;
														alphaTimer = alphaTimerMax;*/
													}
												}
											}
											/*beamCharge = 0;
											if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
											chargeSfxState = "intro";
											if (canMysticBeamShield)
											{
												if (audio_is_playing(snd_MysticBeam)) audio_stop_sound(snd_MysticBeam);
												sndMysticBeam = audio_play_sound(snd_MysticBeam,0,false);
												attack = true;
												attackNumber = playerAttacks.mysticBeamNormal;
												sprite_index = sprBeamAttack1;
												image_index = 0;
											}
											else
											{
												attackTimer = 0;
											}*/
											if (canMysticBeamShield)
											{
												if (audio_is_playing(snd_MysticBeam)) audio_stop_sound(snd_MysticBeam);
												sndMysticBeam = audio_play_sound(snd_MysticBeam,0,false);
												attack = true;
												attackNumber = playerAttacks.mysticBeamNormal;
												sprite_index = sprBeamAttack1;
												image_index = 0;
											}
											else
											{
												attack = true;
												attackNumber = playerAttacks.mysticBeamBarrierBreak;
												sprite_index = sprMysticBeamAttack2;
												image_index = 0;
												attackTimer = 30;
												canMysticBeamShield = true;
											}
										}
									}
								}
							}
						}
					
						if (attackNumber == playerAttacks.mysticBeamCharge)
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
							
							if (keyRightHold)
							{
								dir = 1;
							}
							if (keyLeftHold)
							{
								dir = -1;
							}
							
							if (beamCharge < beamChargeMax)
							{
								if ((!global.cutscene) and (keyAttackReleased))
								{
									if (instance_exists(obj_Projectile_Beam))
									{
										with (obj_Projectile_Beam)
										{
											if ((isMystic) and (state == 2) and (owner == other.id))
											{
												if (audio_is_playing(snd_MysticBeamLaunch)) audio_stop_sound(snd_MysticBeamLaunch);
												audio_play_sound(snd_MysticBeamLaunch,0,false);
												var proj = instance_create_depth(x,y,depth,obj_Projectile_BarrierBreak);
												proj.image_angle = angle_difference(angle - 45,image_angle);
												proj.owner = id;
												proj.abilityType = playerAbilities.mysticBeam;
												proj.dmg = 24;
												proj.destroyableByEnemy = false;
												proj.destroyableByObject = false;
												proj.destroyableByWall = false;
												var particle = instance_create_depth(other.x,other.y,depth,obj_Particle);
												particle.sprite_index = spr_Projectile_BarrierBreak_Normal_Tail;
												particle.image_angle = angle + 45;
												particle.destroyAfterAnimation = true;
												instance_destroy();
												/*if (audio_is_playing(snd_MysticBeamLaunch)) audio_stop_sound(snd_MysticBeamLaunch);
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
												if (place_meeting(x,y,obj_ParentWall)) instance_destroy();
												dmg = 15;
												spd = 5;
												direction = angle;
											    state = 3;
											    destroyableByWall = false;
												alphaTimer = alphaTimerMax;*/
											}
										}
									}
									
									beamCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									if (canMysticBeamShield)
									{
										if (audio_is_playing(snd_MysticBeam)) audio_stop_sound(snd_MysticBeam);
										sndMysticBeam = audio_play_sound(snd_MysticBeam,0,false);
										attack = true;
										attackNumber = playerAttacks.mysticBeamNormal;
										sprite_index = sprBeamAttack1;
										image_index = 0;
									}
									else
									{
										attack = true;
										attackNumber = playerAttacks.mysticBeamBarrierBreak;
										sprite_index = sprMysticBeamAttack2;
										image_index = 0;
										attackTimer = 30;
										canMysticBeamShield = true;
									}
								}
							}
							else
							{
								if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
								if ((!global.cutscene) and (keyAttackReleased))
								{
									beamCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									invincibleFlash = false;
									invincibleFlashTimer = -1;
									attack = true;
									attackNumber = playerAttacks.mysticBeamChargeAttack;
									sprite_index = sprBeamAttack5;
								    image_index = 0;
								}
							}
						}
					
						if (attackNumber == playerAttacks.mysticBeamNormal)
						{
							if (attackable)
							{
								attackTimer = 35;
								parBeamCycle1 = instance_create_depth(-100,-100,depth - 1,obj_Particle);
			                    parBeamCycle1.followObject = false;
			                    parBeamCycle1.followedObject = id;
			                    parBeamCycle1.sprite_index = spr_Particle_MysticBeamCycle;
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
									projBeam.abilityType = playerAbilities.mysticBeam;
									projBeam.player = player;
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
								canMysticBeamShield = false;
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
					
						if (attackNumber == playerAttacks.mysticBeamDash)
						{
							if (attackable)
							{
								run = false;
								var par = instance_create_depth(x + (16 * dir) + hsp,y - 9,depth - 1,obj_Particle);
								par.sprite_index = spr_Particle_MysticBeamLaser;
								par.dir = dir;
								par.attachedObject = id;
								par.attachedObjectXOffset = 16 * dir;
								par.attachedObjectYOffset = -9;
								par.destroyAfterAnimation = true;
								beamBombProj = instance_create_depth(x + (17 * dir) + hsp,y - 9,depth + 1,obj_Projectile_BeamBomb);
								beamBombProj.owner = id;
								beamBombProj.abilityType = playerAbilities.mysticBeam;
								beamBombProj.dmg = 42;
								beamBombProj.hsp = 2 * dir;
								beamBombProj.dirX = dir;
								beamBombProj.destroyableByWall = false;
								beamBombProj.destroyableByEnemy = false;
								beamBombProj.destroyableByObject = false;
								attackable = false;
							}
						}
					
						if (attackNumber == playerAttacks.mysticBeamAir)
						{
							attackable = false;
							if (mysticBeamAttack2Timer == -1) mysticBeamAttack2Timer = (mysticBeamAttack2TimerMax + irandom_range(-1,1));
						
							if (grounded)
							{
								audio_stop_sound(sndMysticBeam);
								mysticBeamAttack2Timer = -1;
								attack = false;
								attackable = true;
								attackNumber = playerAttacks.none;
							}
						}
					
						if (attackNumber == playerAttacks.mysticBeamChargeAttack)
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
								mysticBeamCharge.abilityType = playerAbilities.mysticBeam;
								mysticBeamCharge.player = player;
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
						break;
						#endregion
						
						#region Stone
						case playerAbilities.stone:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (attackable))
					    {
							if (!keyUpHold)
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
									vsp = -jumpspeed / 2;
									jumpLimit = false;
									jumpLimitTimer = 15;
								}
								invincible = true;
					            attack = true;
					            attackNumber = playerAttacks.stoneNormal;
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
					            attackNumber = playerAttacks.stoneUp;
					            attackable = false;
								sprite_index = sprStoneAttack2Ready;
					            image_index = 0;
							}
					    }
					
						if (attackNumber == playerAttacks.stoneNormal)
						{
							if ((!stoneFallen) and (!stoneReady) and (place_meeting(x,y + vsp + 1,obj_ParentWall)) and (sign(vsp) == 1))
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
									var par = instance_create_depth(x + parXDir,y + 3,depth - 1,obj_RecoilStar);
									par.owner = id;
									par.abilityType = playerAbilities.stone;
									if (i == 0)
									{
										par.hsp = 3;
									}
									else if (i == 1)
									{
										par.hsp = -3;
									}
									par.dir = sign(par.hsp);
									par.hurtsObject = true;
									par.hurtsEnemy = true;
									par.canBeInhaled = false;
									par.destroyTimer = 15;
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
							else if ((!global.cutscene) and (keyAttackPressed))
							{
								if (audio_is_playing(snd_StoneRelease)) audio_stop_sound(snd_StoneRelease);
								audio_play_sound(snd_StoneRelease,0,false);
								var stoneEnd = instance_create_depth(x,y,depth - 1,obj_Projectile_StoneStop);
								stoneEnd.owner = id;
								stoneEnd.abilityType = playerAbilities.stone;
								stoneEnd.dmg = 205
								stoneEnd.enemy = false;
								vsp = -(jumpspeed / 3);
								grav = gravNormal;
								gravLimit = gravLimitNormal;
								invincible = false;
								attackTimer = 15;
								stoneReady = true;
								stoneFallen = false;
								if (instance_exists(stoneMaskProj)) instance_destroy(stoneMaskProj);
					            attack = false;
								attackNumber = playerAttacks.none;
								if (stoneReleaseParticleTimer == -1) stoneReleaseParticleTimer = stoneReleaseParticleTimerMax;
							}
						}
						
						if ((!global.cutscene) and (attackNumber == playerAttacks.stoneUp) and (keyAttackReleased) and (stoneFistReady))
						{
							stoneFistReadyTimer = 0;
						}
						break;
						#endregion
						
						#region Ufo
						case playerAbilities.ufo:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							attack = true;
							attackNumber = playerAttacks.ufoBeam;
							sprite_index = sprUfoAttack1;
							image_index = 0;
							//attackNumber = playerAttacks.ufoCharge;
					    }
						
						if (attackNumber == playerAttacks.ufoCharge)
						{
							if (ufoCharge == ufoChargeMax - 1)
							{
								audio_play_sound(snd_Charge_Ready,0,false);
								var particle = instance_create_depth(x - (16 * dir),y - 15,depth - 1,obj_Particle);
								particle.sprite_index = spr_Particle_Flash1;
								particle.scale = 1.5;
								particle.destroyAfterAnimation = true;
							}
							ufoCharge += 1;
							if (ufoCharge >= 6)
							{
								if (ufoCharge == 6)
								{
									sprite_index = sprUfoCharge;
									image_index = 0;
								}
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
							}
						
							if (keyRightHold)
							{
								dir = 1;
							}
							if (keyLeftHold)
							{
								dir = -1;
							}
						
							if (ufoCharge < ufoChargeMax)
							{
								if ((!global.cutscene) and (keyAttackReleased))
								{
									ufoCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									attack = true;
									attackNumber = playerAttacks.ufoBeam;
									sprite_index = sprUfoAttack1;
								    image_index = 0;
								}
							}
							else
							{
								if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
								if ((!global.cutscene) and (keyAttackReleased))
								{
									ufoCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
								}
							}
						}
						
						if (attackNumber == playerAttacks.ufoBeam)
						{
							if ((attackable) and (image_index > 3))
							{
								if (audio_is_playing(snd_Beam)) audio_stop_sound(snd_Beam);
								sndBeam = audio_play_sound(snd_Beam,0,false);
								attackTimer = 35;
								for (var i = 0; i < 5; i++)
								{
									var projBeam = instance_create_depth(-100,-100,depth + 1,obj_Projectile_Beam);
									projBeam.owner = id;
									projBeam.abilityType = playerAbilities.ufo;
									projBeam.player = player;
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
									projBeam.centerX = 0;
									projBeam.centerY = 0;
									projBeam.orbit = 25 + (15 * i);
									projBeam.invisTimer = -1 + (2 * i);
									if (i > 0) projBeam.visible = false;
									projBeam.imageIndex = i - 1;
									if (projBeam.imageIndex < 0) projBeam.imageIndex = 0;
									if (projBeam.imageIndex > 3) projBeam.imageIndex = 3;
									projBeam.spd = (3.5 + (i * .4)) * -dir;
									projBeam.image_index = projBeam.imageIndex;
									projBeam.enemy = false;
									projBeam.destroyableByWall = false;
									projBeam.destroyableByEnemy = false;
									projBeam.destroyableByObject = false;
									projBeam.isUfo = true;
									projBeam.hitInvincibility = projBeam.hitInvincibilityMax;
									projBeam.pulseTimer = projBeam.pulseTimerMax;
									projBeam.invisTimerMax = -1;
									projBeam.destroyTimer = 25 + (2 * i);
								}
								attackable = false;
							}
						}
						break;
						#endregion
						
						#region Mirror
						case playerAbilities.mirror:
						if ((!global.cutscene) and (!hurt) and (!attack))
						{
							if (keyAttackPressed)
							{
								if ((!keyUpHold) and (!keyDownHold))
						        {
									if (!run)
									{
										if (keyAttackPressed)
										{
									        attack = true;
											attackable = false;
											attackTimer = 20;
								            attackNumber = playerAttacks.mirrorSlash;
											sprite_index = sprMirrorAttack1;
											image_index = 0;
											if (audio_is_playing(snd_Slash)) audio_stop_sound(snd_Slash);
											audio_play_sound(snd_Slash,0,false);
											mirrorSlashProj = instance_create_depth(x,y,depth - 1,obj_Projectile_MirrorSlash);
											mirrorSlashProj.owner = id;
											mirrorSlashProj.abilityType = playerAbilities.mirror;
											mirrorSlashProj.dmg = 22;
											mirrorSlashProj.enemy = false;
											mirrorSlashProj.dirX = dir;
											mirrorSlashProj.image_xscale = mirrorSlashProj.dirX;
										}
									}
									else
									{
								        attack = true;
										attackable = false;
							            attackNumber = playerAttacks.mirrorDash;
							            invincible = true;
										sprite_index = sprMirrorAttack3;
							            if (audio_is_playing(snd_Mirror2)) audio_stop_sound(snd_Mirror2);
										audio_play_sound(snd_Mirror2,0,false);
										for (var i = 0; i < 2; i++)
										{
								            var projMirror = instance_create_depth(x,y,depth,obj_Projectile_MirrorPlayer);
											projMirror.owner = id;
											projMirror.abilityType = playerAbilities.mirror;
											projMirror.player = player;
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
						
						        if (keyDownHold)
						        {
						            if (audio_is_playing(snd_Mirror4)) audio_stop_sound(snd_Mirror4);
									audio_play_sound(snd_Mirror4,0,false);
						            attack = true;
						            attackNumber = playerAttacks.mirrorDown;
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
						
								if (keyUpHold)
						        {
						            if (audio_is_playing(snd_Mirror5)) audio_stop_sound(snd_Mirror5);
									audio_play_sound(snd_Mirror5,0,false);
									attack = true;
									attackable = false;
						            attackNumber = playerAttacks.mirrorUp;
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
							else if (keyAttackHold)
							{
								mirrorHold = true;
								attack = true;
								attackable = false;
								attackNumber = playerAttacks.mirrorNormal;
								sprite_index = sprMirrorAttack2;
								image_index = 0;
							}
						}
					
						if (attackNumber == playerAttacks.mirrorNormal)
						{
							attack = true;
							attackable = false;
							if ((mirrorHold) and (mirrorNormalAttackTimer == -1)) mirrorNormalAttackTimer = mirrorNormalAttackTimerMax;
					        if ((mirrorHold) and (!global.cutscene) and (keyAttackReleased))
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
						#endregion
						
						#region Ninja
						case playerAbilities.ninja:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							attack = true;
							attackNumber = playerAttacks.ninjaHoldCharge;
							sprite_index = sprNinjaCharge;
							image_index = 0;
					    }
					
						if (attackNumber == playerAttacks.ninjaHoldCharge)
						{
							ninjaHoldCharge += 1;
						
							if (ninjaHoldCharge < ninjaHoldChargeMax)
							{
								if ((!global.cutscene) and (keyAttackReleased))
								{
									ninjaHoldCharge = 0;
									attack = true;
									attackNumber = playerAttacks.ninjaNormal;
									sprite_index = sprNinjaAttack1;
								    image_index = 0;
								}
							}
							else
							{
								if (!global.cutscene)
								{
									ninjaHoldCharge = 0;
									attack = true;
									attackNumber = playerAttacks.ninjaSlash;
									sprite_index = sprNinjaAttack2;
								    image_index = 0;
								}
							}
						}
					
						if (attackNumber == playerAttacks.ninjaNormal)
						{
							if (attackable)
							{
								attackTimer = 4;
								if (audio_is_playing(snd_NinjaKnife)) audio_stop_sound(snd_NinjaKnife);
								audio_play_sound(snd_NinjaKnife,0,false);
							    var projectile = instance_create_depth(x + (8 * dir),y - 5 + (irandom_range(-3,3)),depth - 1,obj_Projectile_NinjaKunai);
								projectile.owner = id;
								projectile.abilityType = playerAbilities.ninja;
								projectile.dmg = 7;
								projectile.hsp = dir * 7;
								projectile.dirX = dir;
								projectile.image_xscale = projectile.dirX;
								projectile.enemy = false;
								attackable = false;
							}
						}
					
						if (attackNumber == playerAttacks.ninjaSlash)
						{
							if (attackable)
							{
								attackTimer = 10;
								if (audio_is_playing(snd_NinjaSlash)) audio_stop_sound(snd_NinjaSlash);
								audio_play_sound(snd_NinjaSlash,0,false);
							    var projectile = instance_create_depth(x + (14 * dir),y - 12,depth - 1,obj_Projectile_NinjaSlash);
								projectile.owner = id;
								projectile.abilityType = playerAbilities.ninja;
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
						#endregion
						
						#region Bomb
						case playerAbilities.bomb:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							if (audio_is_playing(snd_BombReady)) audio_stop_sound(snd_BombReady);
							audio_play_sound(snd_BombReady,0,false);
							sprite_index = sprBombReady;
							image_index = 0;
				            attack = true;
							attackNumber = playerAttacks.bombReady;
							attackable = false;
				            attackTimer = 45;
							fallRoll = false;
							carriedItem = carriedItems.bomb;
							carriedItemState = carriedItemStates.heavy;
							carriedItemIndex = instance_create_depth(x,y - 8,depth - 1,obj_Projectile_Bomb);
							carriedItemIndex.owner = id;
							carriedItemIndex.abilityType = playerAbilities.bomb;
							carriedItemIndex.player = player;
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
							if (((player == 0) and (global.hatTypeBombP1 == abilityHatSkins.bomb_modern)) or ((player == 1) and (global.hatTypeBombP2 == abilityHatSkins.bomb_modern))) 
							{
								carriedItemIndex.character = 1;
								carriedItemIndex.sprIdle = spr_Projectile_Bomb_Modern;
								carriedItemIndex.sprite_index = carriedItemIndex.sprIdle;
							}
					    }
						break;
						#endregion
						
						#region Fire
						case playerAbilities.fire:
					    if ((!global.cutscene) and (!hurt))
					    {
							if ((keyAttackHold) and ((!attack) or (attackNumber == playerAttacks.fireAerial)))
							{
								if((place_meeting(x + 1,y,obj_ParentWall) && keyRightHold || place_meeting(x - 1,y,obj_ParentWall) && keyLeftHold) and attackTimer > 0){
									attackNumber = playerAttacks.fireWheelClimb;
									//y -= 5;
									vsp = -5;
								}
								if ((!grounded) and (place_meeting(x,y + 16,obj_ParentWall) and attackTimer > 0))
								{
									if(fireLandWheel = true){
										hspLimit = false;
										hsp = (movespeedBurst * (1 + (fireMagicCharcoalUpgrade / 4))) * dir;
										invincible = true;
										attack = true;
										attackNumber = playerAttacks.fireWheel;
										fireLandWheel = false;
										if (audio_is_playing(snd_Fire2)) audio_stop_sound(snd_Fire2);
								        audio_play_sound(snd_Fire2,0,false);
										sprite_index = sprFireAttack3;
										image_index = 0;
										fireMaskProj = instance_create_depth(x,y,depth,obj_Projectile_FireMask);
										fireMaskProj.owner = id;
										fireMaskProj.abilityType = playerAbilities.fire;
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
												extra.abilityType = playerAbilities.fire;
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
									}else{
										attackTimer = 0;
									}
								}
							}
							if ((keyAttackPressed) and (!attack))
							{
								if ((run) and (hsp != 0) and (!(keyDownHold && !grounded)))
								{
									invincible = true;
									vsp = 0;
									fireDashHsp = (movespeedBurst * ((fireMagicCharcoalUpgrade / 2) + 1)) * dir;
									//run = false;
					                attack = true;
									attackNumber = playerAttacks.fireDash;
									fireDashDir = 1;
									if (keyUpHold and fireDashUp > 0){
										fireDashDir = -1;
										fireDashUp--;
									}
									attackable = false;
					                fireReleaseTimer = 35;
					                attackTimer = 45;
					                state = playerStates.fireDash;
									if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
				                    audio_play_sound(snd_Fire3,0,false);
									fireDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_BurstMask);
									fireDashMaskProj.owner = id;
									fireDashMaskProj.abilityType = playerAbilities.fire;
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
									if (keyDownHold)
									{
										invincible = true;
										attack = true;
										attackTimer = 80;
										attackNumber = playerAttacks.fireAerial;
										fireLandWheel = true;
										if (audio_is_playing(snd_Fire2)) audio_stop_sound(snd_Fire2);
					                    audio_play_sound(snd_Fire2,0,false);
										sprite_index = sprFireAttack3;
								        image_index = 0;
										fireMaskProj = instance_create_depth(x,y,depth,obj_Projectile_FireMask);
										fireMaskProj.owner = id;
										fireMaskProj.abilityType = playerAbilities.fire;
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
												extra.abilityType = playerAbilities.fire;
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
									else
									{
										attack = true;
										attackNumber = playerAttacks.fireNormal;
										sprite_index = sprFireAttack1;
								        image_index = 0;
									}									
								}
						    }
						}
					
						if (attackNumber == playerAttacks.fireNormal)
						{
							shakeX = 1;
							if (fireNormalAttackTimer == -1) fireNormalAttackTimer = fireNormalAttackTimerMax;
					        if ((!global.cutscene) and (keyAttackReleased))
					        {
					            attackTimer = 0;
					        }
						
							if (fireBackCharge < fireBackChargeMax)
							{
								if (((dir == 1) and (keyLeftHold)) or ((dir == -1) and (keyRightHold))) fireBackCharge += 1;
							}
							else
							{
								fireMaskProj = instance_create_depth(x,y,depth,obj_Projectile_FireMask);
								fireMaskProj.owner = id;
								fireMaskProj.abilityType = playerAbilities.fire;
								fireMaskProj.sprite_index = sprFireAttack4;
								fireMaskProj.dmg = 40;
								fireMaskProj.image_xscale = image_xscale;
								fireMaskProj.image_yscale = image_yscale;
								invincible = true;
								attackNumber = playerAttacks.fireBack;
								if (audio_is_playing(snd_Fire2)) audio_stop_sound(snd_Fire2);
								if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
				                audio_play_sound(snd_Fire3,0,false);
								sprite_index = sprFireAttack4;
								image_index = 0;
								fireBackCharge = 0;
							}
						}
					
						if (attackNumber == playerAttacks.fireBack)
						{
					        if ((!global.cutscene) and (keyAttackReleased))
					        {
					            attackTimer = 0;
					        }
						}
						
						if(attackNumber == playerAttacks.fireWheel){
							if(keyJumpPressed && grounded){
								vsp = -5;
							}
							if(vsp > 0 && grounded){
								attackTimer = 0;
							}
							if(place_meeting(x + (1 * dir),y,obj_ParentWall)){
								attackNumber = playerAttacks.fireWheelClimb;
								//y -= 5;
								vsp = -5;
							}
						}
						if(attackNumber == playerAttacks.fireWheelClimb){
							attackTimer = clamp(attackTimer-1,0,90);
							hsp = 0;
							if(!place_meeting(x + (1 * dir),y,obj_ParentWall) || place_meeting(x,y-1,obj_ParentWall) || grounded && vsp >= 0){
								vsp = -5;
								attackTimer = 0;
							}
							if(place_meeting(x + 1,y,obj_ParentWall) && keyRightHold || place_meeting(x - 1,y,obj_ParentWall) && keyLeftHold){
								vsp = -5;
							}
							if(place_meeting(x + 1,y,obj_ParentWall) && !keyRightHold && keyLeftHold || place_meeting(x - 1,y,obj_ParentWall) && !keyLeftHold && keyRightHold){
								attackNumber = playerAttacks.fireAerial;
							}
						}
						break;
						#endregion
						
						#region Ice
						case playerAbilities.ice:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							if ((keyUpHold) or ((dir = 1) and (keyRightHold)) or ((dir = -1) and (keyLeftHold)))
							{
								var grabEnemy = -1;
								if (place_meeting(x + (16 * dir),y,obj_Enemy)) grabEnemy = instance_place(x + (16 * dir),y,obj_Enemy);
								if ((grabEnemy != -1) and (grabEnemy.hurtable) and (!grabEnemy.hurt) and (!grabEnemy.isMiniBoss) and (!grabEnemy.isBoss))
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
									attackNumber = playerAttacks.iceGrab;
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
					
						if (attackNumber == playerAttacks.iceNormal)
						{
							if ((!iceReady) and (!iceRelease))
							{
								if (iceNormalAttackTimer == -1) iceNormalAttackTimer = iceNormalAttackTimerMax;
						        if ((!global.cutscene) and (keyAttackReleased))
						        {
									iceRelease = true;
									sprite_index = sprIceAttack1Release;
									image_index = 0;
						        }
							}
						}
						break;
						#endregion
						
						#region Spark
						case playerAbilities.spark:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							if (keyUpHold)
							{
								if (audio_is_playing(snd_Spark6)) audio_stop_sound(snd_Spark6);
								audio_play_sound(snd_Spark6,0,false);
								var bolt = instance_create_depth(x,y - 4,depth + 1,obj_Projectile_SparkBolt);
								bolt.owner = id;
								bolt.abilityType = playerAbilities.spark;
								attack = true;
								attackNumber = playerAttacks.sparkUp;
								sprite_index = sprSparkAttack3;
								image_index = 0;
								attackTimer = 30;
							}
							else if ((!place_meeting(x,y + 1,obj_ParentWall)) and (keyDownHold))
							{
								if (audio_is_playing(snd_Spark6)) audio_stop_sound(snd_Spark6);
								audio_play_sound(snd_Spark6,0,false);
								var bolt = instance_create_depth(x,y - 4,depth + 1,obj_Projectile_SparkBolt);
								bolt.owner = id;
								bolt.abilityType = playerAbilities.spark;
								attack = true;
								attackNumber = playerAttacks.sparkDown;
								sprite_index = sprSparkAttack4;
								image_index = 0;
								attackTimer = 30;
							}
							else
							{
								attack = true;
								attackNumber = playerAttacks.sparkHoldCharge;
								sprite_index = sprSparkMaxCharge;
								image_index = 0;
							}
					    }
						
						if (attackNumber == playerAttacks.sparkHoldCharge)
						{
							sparkHoldCharge += 1;
						
							if (sparkHoldCharge < sparkHoldChargeMax)
							{
								if ((!global.cutscene) and (keyAttackReleased))
								{
									sparkHoldCharge = 0;
									if (sparkMaxCharge)
									{
										attack = true;
										attackNumber = playerAttacks.sparkMax;
										sprite_index = sprSparkAttack2Ready;
										image_index = 0;
										attackTimer = 60;
									}
									else if (sparkCharge > 15)
									{
										attack = true;
										attackNumber = playerAttacks.sparkHigh;
										sprite_index = sprSparkAttack2Ready;
										image_index = 0;
										attackTimer = 45;
									}
									else if (sparkCharge > 9)
									{
										attack = true;
										attackNumber = playerAttacks.sparkMid;
										sprite_index = sprSparkAttack1Ready;
										image_index = 0;
										attackTimer = 30;
									}
									else if (sparkCharge > 4)
									{
										attack = true;
										attackNumber = playerAttacks.sparkLow;
										sprite_index = sprSparkAttack1Ready;
										image_index = 0;
										attackTimer = 20;
									}
									else
									{
										attack = true;
										attackNumber = playerAttacks.sparkNone;
										sprite_index = sprSparkAttack1Ready;
										image_index = 0;
										attackTimer = 7;
									}
									sparkCharge = 0;
									sparkMaxCharge = false;
								}
							}
							else
							{
								if (!global.cutscene)
								{
									sparkHoldCharge = 0;
									attack = true;
									attackable = false;
									sparkCooldown = 30;
									attackNumber = playerAttacks.sparkNormal;
									sprite_index = sprSparkAttack4;
									image_index = 0;
									sparkProj = instance_create_depth(x,y,depth + 1,obj_Projectile_SparkNormal);
									sparkProj.owner = id;
									sparkProj.abilityType = playerAbilities.spark;
									sparkProj.dmg = 22;
									sparkProj.enemy = false;
									sparkProj.dirX = dir;
								}
							}
						}
						
						if (attackNumber == playerAttacks.sparkNormal)
						{
							if (sparkCooldown > 0) sparkCooldown -= 1;
							if (sparkCooldown <= 0)
							{
								if (keyAttackReleased) attackTimer = 0;
							}
						}
						break;
						
						if ((attackNumber == playerAttacks.sparkUp) or (attackNumber == playerAttacks.sparkDown))
						{
							hsp = 0;
							vsp = 0;
						}
						break;
						#endregion
						
						#region Yoyo
						case playerAbilities.yoyo:
					    if ((!global.cutscene) and (!hurt) and (!attack))
					    {
							if (keyAttackPressed)
							{
								if ((run) and (hsp != 0))
								{
									invincible = true;
									vsp = 0;
									run = false;
					                attack = true;
									attackNumber = playerAttacks.yoyoDash;
									attackable = false;
					                attackTimer = 45;
					                state = playerStates.yoyoDash;
									if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
				                    yoyoDashSfx = audio_play_sound(snd_Fire3,0,false);
									yoyoDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_YoyoDashMask);
									yoyoDashMaskProj.owner = id;
									yoyoDashMaskProj.abilityType = playerAbilities.yoyo;
									yoyoDashMaskProj.dmgMin = 18;
									yoyoDashMaskProj.dmgMax = 21;
									yoyoDashMaskProj.image_xscale = image_xscale;
									yoyoDashMaskProj.image_yscale = image_yscale;
							    }
						    }
					    }
						break;
						#endregion
						
						#region Wheel
						case playerAbilities.wheel:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							attack = true;
							attackNumber = playerAttacks.wheelNormal;
							sprite_index = sprWingAttack1;
							image_index = 0;
							wheelDir = dir;
							hsp = 0;
							wheelReadyTimer = 15;
							state = playerStates.wheelNormal;
					    }
						break;
						#endregion
						
						#region Wing
						case playerAbilities.wing:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
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
								attackNumber = playerAttacks.wingNormal;
								sprite_index = sprWingAttack1;
								image_index = 0;
							}
					    }
					
						if (attackNumber == playerAttacks.wingNormal)
						{
							if (attackable)
							{
								attackTimer = 10;
								if (audio_is_playing(snd_WingShot)) audio_stop_sound(snd_WingShot);
								audio_play_sound(snd_WingShot,0,false);
							    var projectile = instance_create_depth(x + (10 * dir),y - 1 + (irandom_range(-3,3)),depth - 1,obj_Projectile_WingFeather);
								projectile.owner = id;
								projectile.abilityType = playerAbilities.wing;
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
					
						if (attackNumber == playerAttacks.wingDash)
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
								wingMaskProj.abilityType = playerAbilities.wing;
								wingMaskProj.dmg = 18;
								wingMaskProj.dmgMax = 18;
								wingMaskProj.dmgMin = 16;
								wingMaskProj.image_xscale = image_xscale;
								wingMaskProj.image_yscale = image_yscale;
							}
						}
						break;
						#endregion
						
						#region Sword
						case playerAbilities.sword:
					    if ((!global.cutscene) and (keyAttackHold) and (!hurt) and (!attack) and (cutterAirThrown))
						{
							var cutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CutterDropMask);
							cutterMaskProj.owner = id;
							cutterMaskProj.abilityType = playerAbilities.sword;
							cutterMaskProj.dmg = 22;
							cutterMaskProj.image_xscale = image_xscale;
							cutterMaskProj.image_yscale = image_yscale;
							invincible = true;
							attack = true;
							attackNumber = playerAttacks.cutterAir;
							sprite_index = sprCutterAttack3;
							image_index = 0;
						}
						
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							if ((run) and (vsp == 0) and (hsp != 0))
							{
								attack = true;
								attackNumber = playerAttacks.swordDash;
								sprite_index = sprSwordAttack2;
						        image_index = 0;
				                cutterCatch = false;
							}
							else if (keyDownHold)
							{
								var cutterMaskProj = instance_create_depth(x,y,depth,obj_Projectile_CutterDropMask);
								cutterMaskProj.owner = id;
								cutterMaskProj.abilityType = playerAbilities.sword;
								cutterMaskProj.dmg = 22;
								cutterMaskProj.image_xscale = image_xscale;
								cutterMaskProj.image_yscale = image_yscale;
								invincible = true;
								attack = true;
								attackNumber = playerAttacks.cutterDrop;
								sprite_index = sprCutterAttack3;
								image_index = 0;
				                state = playerStates.cutterDrop;
							}
							else
							{
								if ((!cutterAirThrown) or (vsp == 0))
								{
									if (vsp != 0) cutterAirThrown = true;
									attack = true;
									attackNumber = playerAttacks.cutterCharge;
									sprite_index = sprCutterAttack1;
									image_index = 0;
								}
							}
					    }
					
						if (attackNumber == playerAttacks.cutterCharge)
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
							if (cutterCharge >= 6)
							{
								if (cutterCharge == 6)
								{
									sprite_index = sprCutterCharge;
									image_index = 0;
								}
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
							}
						
							if (keyRightHold)
							{
								dir = 1;
							}
							if (keyLeftHold)
							{
								dir = -1;
							}
						
							if (cutterCharge < cutterChargeMax)
							{
								if ((!global.cutscene) and (keyAttackReleased))
								{
									cutterCharge = 0;
									if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
									chargeSfxState = "intro";
									invincibleFlash = false;
									invincibleFlashTimer = -1;
									attack = true;
									attackNumber = playerAttacks.swordNormal;
									attackTimer = 45;
									sprite_index = sprSwordAttack1;
								    image_index = 0;
								}
							}
							else
							{
								if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
								if ((!global.cutscene) and (keyAttackReleased))
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
					
						if (attackNumber == playerAttacks.swordNormal)
						{
							if ((round(image_index) == (image_number - 1)) and (attackable))
							{
								//if (audio_is_playing(snd_Cutter)) audio_stop_sound(snd_Cutter);
								//audio_play_sound(snd_Cutter,0,false);
						        var projectile = instance_create_depth(x,y - 5,depth,obj_Projectile_SwordMask);
								projectile.owner = id;
								projectile.abilityType = playerAbilities.sword;
								projectile.dmg = 12;
								projectile.sprite_index = projectile.sprIdle;
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
						        var projectile = instance_create_depth(x,y - 8,depth,obj_Projectile_Cutter);
								projectile.owner = id;
								projectile.abilityType = playerAbilities.sword;
								projectile.paletteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
								projectile.dmg = 20;
								projectile.sprite_index = projectile.sprCharge;
								projectile.decelMax = projectile.decelMax * 1.2;
								projectile.hsp = dir * projectile.decelMax;
								projectile.dirX = dir;
								projectile.image_xscale = projectile.dirX;
								projectile.enemy = false;
								projectile.destroyableByWall = false;
								projectile.destroyableByEnemy = false;
								projectile.destroyableByObject = false;
								projectile.destroyableByProjectile = false;
								projectile.player = player;
								projectile.angleSpd = -15;
								projectile.charge = true;
								attackable = false;
							}
						}
					
						if (attackNumber == playerAttacks.swordDash)
						{
							if (attackable)
							{
				                hsp = (movespeedSlide * 1.25) * dir;
								run = false;
				                attack = true;
								attackable = false;
				                attackTimer = 45;
				                state = playerStates.swordDash;
								if (audio_is_playing(snd_CutterDash)) audio_stop_sound(snd_CutterDash);
								slideSfx = audio_play_sound(snd_CutterDash,0,false);
								swordDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_SwordDashMask);
								swordDashMaskProj.owner = id;
								swordDashMaskProj.abilityType = playerAbilities.sword;
								swordDashMaskProj.dmg = 18;
								swordDashMaskProj.dmgMax = 18;
								swordDashMaskProj.dmgMin = 16;
								swordDashMaskProj.image_xscale = image_xscale;
								swordDashMaskProj.image_yscale = image_yscale;
							}
						}
					
						if (attackNumber == playerAttacks.cutterAir)
						{
							if (keyAttackReleased)
							{
								attackTimer = 0;
							}
						}
						break;
						#endregion
						
						#region Parasol
						case playerAbilities.parasol:
					    if ((!global.cutscene) and (!hurt) and (!attack))
					    {
							if (keyAttackPressed)
							{
								if ((run) and (hsp != 0))
								{
									invincible = true;
									vsp = 0;
									run = false;
					                attack = true;
									attackNumber = playerAttacks.parasolDash;
									attackable = false;
					                attackTimer = 45;
					                state = playerStates.parasolDash;
									if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
				                    parasolDashSfx = audio_play_sound(snd_Fire3,0,false);
									parasolDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_ParasolDashMask);
									parasolDashMaskProj.owner = id;
									parasolDashMaskProj.abilityType = playerAbilities.parasol;
									parasolDashMaskProj.dmgMin = 18;
									parasolDashMaskProj.dmgMax = 21;
									parasolDashMaskProj.image_xscale = image_xscale;
									parasolDashMaskProj.image_yscale = image_yscale;
							    }
						    }
					    }
						break;
						#endregion
						
						#region Sleep
						case playerAbilities.sleep:
						if (!isSleeping)
						{
							attack = true;
							attackable = false;
							attackNumber = playerAttacks.sleepNormal;
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
						#endregion
						
						#region Scan
						case playerAbilities.scan:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (attackable))
					    {
					        attack = true;
					        attackNumber = playerAttacks.scanNormal;
					        attackable = false;
							sprite_index = sprScanReady;
							image_index = 0;
					    }
						break;
						#endregion
						
						#region Jet
						case playerAbilities.jet:
						//canFloat = false;
						if((!global.cutscene) and (!hurt)){
							//if(state == playerStates.float){
							//	if(jetCharge >= 120){
							//		// rocket jump
							//	}else{
							//		state = playerStates.jetHover;
							//	}
							//}
							//if(state == playerStates.jetHover){
							//	// accelerate upward, and release a hitbox below Kirby
							//	vsp = clamp(vsp-jetHoverAccel,-jetHoverMax,2);
							//	if(!keyJumpHold){
							//		state = playerStates.normal;
							//	}
							//}
							if(keyAttackPressed && attackable && !attack){
								if(run && !grounded){
									attackNumber = playerAttacks.jetDash;
								}else{
									attackNumber = playerAttacks.jetCharge;
								    attackable = false;
									// need to set the state as well to jetCharge
									sprite_index = sprSleepReady;
									image_index = 0;
								}
							}
							if(attackNumber == playerAttacks.jetCharge){
								attackTimer = 99;
								if(keyAttackReleased){
									attackNumber = playerAttacks.jetDash;
								}
							}
							if(attackNumber = playerAttacks.jetDash){
								invincible = true;
								vsp = 0;
								
								fireDashHsp = (movespeedJetAirDashBoostSmall) * dir;
								if(jetDashAir <= 0){
									fireDashHsp = fireDashHsp*0.75;
								}
								
								//run = false;
					            attack = true;
								attackNumber = playerAttacks.jetDash;
								fireDashDir = 0;
								if (keyUpHold and jetDashAir > 1){
									fireDashDir = -1;
									jetDashAir--;
								}else if (keyDownHold or jetDashAir <= 0){
									fireDashDir = 1;
									jetDashAir--;
								}else{
									jetDashAir--;
								}
					            attackTimer = 25;
								if(jetDashAir == 1){
									attackTimer = 20;
								//}else if(jetDashAir <= 0){
								//	attackTimer = 16;
								}
								attackable = false;
					            fireReleaseTimer = 35;
					            state = playerStates.jetDash;
								if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
				                audio_play_sound(snd_Fire3,0,false);
								fireDashMaskProj = instance_create_depth(x,y,depth,obj_Projectile_BurstMask);
								fireDashMaskProj.owner = id;
								fireDashMaskProj.abilityType = playerAbilities.jet;
								fireDashMaskProj.dmgMin = 18;
								fireDashMaskProj.dmgMax = 21;
								fireDashMaskProj.image_xscale = image_xscale;
								fireDashMaskProj.image_yscale = image_yscale;
				                var par = instance_create_depth(x + (dir * 10),y - 4,depth - 1,obj_Particle);
				                par.dir = dir;
				                par.sprite_index = spr_Particle_Fire2;
				                par.scale = 1;
								par.paletteSpriteIndex = scr_Player_HatPalette(playerAbility,playerCharacter);
								par.paletteIndex = 1;
								par.destroyAfterAnimation = true;
							}
						}	
						break;
						#endregion
					
						/*case "freeze":
					    if ((keyAttackPressed) and (!hurt) and (attackable))
					    {
							audio_play_sound(snd_Freeze,0,false);
							invincible = true;
				            attack = true;
				            attackNumber = 7;
				            attackable = false;
							sprite_index = sprFreezeAttack1Ready;
				            image_index = 0;
							freezeMaskProj = instance_create_depth(x,y,depth - 1,obj_Projectile_FreezeMask);
							freezeMaskProj.owner = id;
							freezeMaskProj.abilityType = playerAbilities.ice;
							freezeMaskProj.enemy = false;
							freezeMaskProj.hitInvincibility = freezeMaskProj.hitInvincibilityMax;
							freezeMaskProj.image_xscale = image_xscale;
							freezeMaskProj.image_yscale = image_yscale;
					    }
					
						if ((attackNumber == 7) and (keyAttackReleased) and (!freezeReady))
					    {
							invincible = false;
							attackTimer = 15;
							freezeReady = true;
							if (instance_exists(freezeMaskProj)) instance_destroy(freezeMaskProj);
				            attack = false;
							attackNumber = playerAttacks.none;
					    }
						break;*/
					}
					break;
					#endregion
					
					#region Gooey
					case playerCharacters.gooey:
					if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (attackable))
					{
						if (keyDownHold)
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
								vsp = -jumpspeed / 2;
								jumpLimit = false;
								jumpLimitTimer = 15;
							}
							invincible = true;
					        attack = true;
					        attackNumber = playerAttacks.gooeyStoneNormal;
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
							attackNumber = playerAttacks.gooeyFireDash;
							fireDashDir = 1;
							if (keyUpHold) fireDashDir = -1;
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
							par.paletteSpriteIndex = playerSprayPaint;
							par.paletteIndex = 1;
							par.destroyAfterAnimation = true;
						}
					}
					
					if (attackNumber == playerAttacks.gooeyStoneNormal)
					{
						if ((!stoneFallen) and (!stoneReady) and (place_meeting(x,y + vsp + 1,obj_ParentWall)) and (sign(vsp) == 1))
						{
							if (audio_is_playing(snd_StoneFallen)) audio_stop_sound(snd_StoneFallen);
							audio_play_sound(snd_StoneFallen,0,false);
							if ((sprite_index == sprStoneAttack1Rare) and (floor(image_index) == 2))
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
								var par = instance_create_depth(x + parXDir,y + 3,depth - 1,obj_RecoilStar);
								if (i == 0)
								{
									par.hsp = 3;
								}
								else if (i == 1)
								{
									par.hsp = -3;
								}
								par.dir = sign(par.hsp);
								par.hurtsObject = true;
								par.hurtsEnemy = true;
								par.canBeInhaled = false;
								par.destroyTimer = 15;
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
						else if ((!global.cutscene) and (keyAttackPressed))
						{
							if (audio_is_playing(snd_StoneRelease)) audio_stop_sound(snd_StoneRelease);
							audio_play_sound(snd_StoneRelease,0,false);
							var stoneEnd = instance_create_depth(x,y,depth - 1,obj_Projectile_StoneStop);
							stoneEnd.owner = id;
							stoneEnd.dmg = 20;
							stoneEnd.enemy = false;
							vsp = -(jumpspeed / 3);
							grav = gravNormal;
							gravLimit = gravLimitNormal;
							invincible = false;
							attackTimer = 15;
							stoneReady = true;
							stoneFallen = false;
							if (instance_exists(stoneMaskProj)) instance_destroy(stoneMaskProj);
					        attack = false;
							attackNumber = playerAttacks.none;
							if (stoneReleaseParticleTimer == -1) stoneReleaseParticleTimer = stoneReleaseParticleTimerMax;
						}
					}
					break;
					#endregion
					
					#region Waddle Doo
					case playerCharacters.waddleDoo:
					if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					{
						if (audio_is_playing(snd_EnemyBeam)) audio_stop_sound(snd_EnemyBeam);
						sndBeam = audio_play_sound(snd_EnemyBeam,0,false);
						attack = true;
						attackNumber = "waddleDooBeamNormal";
						sprite_index = sprBeamAttack1;
						image_index = 0;
					}
				
					if (attackNumber == "waddleDooBeamNormal")
					{
						if (attackable)
						{
							attackTimer = 75;
							for (var i = 0; i < 4; i++)
							{
								var projBeam = instance_create_depth(-100,-100,depth,obj_Projectile_Beam);
								projBeam.owner = id;
								projBeam.player = player;
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
					#endregion
					
					#region Sir Kibble
					case playerCharacters.sirKibble:
					if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (attackable) and (!attack))
					{
						if (vsp == 0)
						{
							attack = true;
							attackNumber = "sirKibbleCutterCharge";
						}
						else
						{
							if (!cutterAirThrown)
							{
								cutterAirThrown = true;
								attack = true;
								attackNumber = "sirKibbleCutterNormal";
								sprite_index = sprCutterAttack1;
								image_index = 0;
							}
						}
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
						image_index = 0;
						cutterCharge += 1;
						if (cutterCharge >= 6)
						{
							if (cutterCharge == 6)
							{
								sprite_index = sprCutterAttack1;
								image_index = 0;
							}
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
						}
						
						if (keyRightHold)
						{
							dir = 1;
						}
						if (keyLeftHold)
						{
							dir = -1;
						}
						
						if (cutterCharge < cutterChargeMax)
						{
							if ((!global.cutscene) and (keyAttackReleased))
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
							if ((!global.cutscene) and (keyAttackReleased))
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
					#endregion
				}
			}
			break;
			#endregion
		}
		
		if (attack)
		{
			iceKick = false;
		}
		
		//Jump
		
		if ((!global.cutscene) and (canJump) and (playerAbility != playerAbilities.ufo) and (((!canMultiJump) and (grounded)) or ((canMultiJump) and (multiJumpCounter < multiJumpLimit))) and (!wallAbove) and (keyJumpPressed) and (!attack))
		{
			if ((canMultiJump) and (multiJumpLimit != -1)) multiJumpCounter += 1;
			
			switch (playerCharacter)
			{
				case playerCharacters.gamble:
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
				
				case playerCharacters.waddleDee:
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
				
				case playerCharacters.waddleDoo:
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
				
				case playerCharacters.brontoBurt:
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
				
				case playerCharacters.twizzy:
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
				
				case playerCharacters.tookey:
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
				
				case playerCharacters.sirKibble:
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
				
				case playerCharacters.bouncy:
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
				if (carriedItem == carriedItems.none) fallRoll = true;
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				didJump = true;
				break;
			}
		}
		
		//Jump Limit Flash
		
		if ((invincibleFlashTimer == -1) and (multiJumpLimit != -1) and (multiJumpCounter >= multiJumpLimit)) invincibleFlashTimer = invincibleFlashTimerMax;
		
		//Auto Jump
		
		if ((!global.cutscene) and (canAutoJump) and (grounded) and (!place_meeting(x,y - 1,obj_ParentWall)) and (!attack))
		{
			switch (playerCharacter)
			{
				case playerCharacters.bouncy:
				if (!keyDownHold)
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
				
				case playerCharacters.gordo:
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
				
				case playerCharacters.bloodGordo:
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
				
				default:
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
				var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
				parJump.sprite_index = spr_Particle_Jump;
				parJump.destroyAfterAnimation = true;
				parJump.spdBuiltIn = 6;
				parJump.fricSpd = .6;
				parJump.direction = 90 + (20 * dir);
				if (carriedItem == carriedItems.none) fallRoll = true;
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				break;
			}
		}
		
		//Duck
		
		if ((!global.cutscene) and (canDuck) and (playerAbility != playerAbilities.ufo) and (grounded) and (keyDownHold) and (!attack))
		{
			if (vsp == 0)
			{
				scr_Player_SpawnMirrorShield(playerAbility);
				movespeed = movespeedNormal;
				run = false;
			    duck = true;
			    slide = false;
				duckSlide = false;
			    state = playerStates.slide;
			}
		}
		
		//Climb
		
		if ((!global.cutscene) and (playerAbility != playerAbilities.ufo) and (canClimb) and (place_meeting(x,y,obj_Ladder)))
		{
		    if ((((!place_meeting(x,y - 1,obj_ParentWall)) and (keyUpHold) and vsp > -1) or ((!place_meeting(x,y + 1,obj_ParentWall)) and (keyDownHold))) and (!attack))
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
		
		if ((!global.cutscene) and (canFloat) and ((carriedItem == carriedItems.none) and (carriedItemState != carriedItemStates.heavy)) and ((keyJumpPressed) and (!place_meeting(x,y,obj_AntiFloat)) and (!grounded)) and (!attack))
		{
			switch (playerCharacter)
			{
				case playerCharacters.kirby:
				switch(playerAbility){
					case playerAbilities.jet:
					attackTimer = 0;
					hurt = false;
					//jumpspeed = jumpspeedFloat;
					// accelerate upward, and release a hitbox below Kirby
					vsp = clamp(vsp-jetHoverAccel,-jetHoverMax,5);
					//if(!keyJumpHold){
					//	state = playerStates.normal;
					//}
					//float = true;
					image_index = 0;
					state = playerStates.jetHover;
					//add code that makes the player use jet jump instead if jetCHarge >= 120
					break;
					
					default:
					attackTimer = 0;
					hurt = false;
					jumpspeed = jumpspeedFloat;
					vsp = -jumpspeed;
					float = true;
					image_index = 0;
					state = playerStates.float;
					break;
				}
				break;
					
				case playerCharacters.gooey:
				attackTimer = 0;
				hurt = false;
				jumpspeed = jumpspeedFloat;
				vsp = -jumpspeed;
				float = true;
				image_index = 0;
				state = playerStates.float;
				break;
					
				default:
				attackTimer = 0;
				hurt = false;
				jumpspeed = jumpspeedFloat;
				vsp = -jumpspeed;
				float = false;
				image_index = 0;
				state = playerStates.float;
				break;
			}
		}
		
		//Door
		
		if ((!global.cutscene) and (canEnter) and (position_meeting(x,y,obj_Door)) and (keyUpHold) and (!attack))
		{
		    if ((!instance_exists(obj_Fade)) and (!hurt))
		    {
				enterDoor = true;
		    }
		}
		
		if (enterDoor)
		{
			var nearbyDoor = instance_position(x,y,obj_Door);
			switch (nearbyDoor.state)
			{
				case "goToRoom":
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
				break;
				
				case "openShop":
				{
					instance_create_depth(0,0,-999,obj_Shop_Control);
				}
				break;
			}
			enterDoor = false;
		}
		
		//Grab Item
		
		if (canGrab)
		{
			if (place_meeting(x,y,obj_Key))
			{
				var touchedKey = instance_place(x,y,obj_Key);
				carriedItem = carriedItems.key;
				if (touchedKey.isKeyChestKey) carriedItem = carriedItems.keyChestKey;
				carriedItemState = carriedItemStates.heavy;
				carriedItemIndex = instance_place(x,y,obj_Key);
				carriedItemIndex.active = false;
				carriedItemIndex.owner = id;
				canGrab = false;
			}
		}
		
		//Animation
		
		var heavyItemCarry = false;
		if (carriedItemState == carriedItemStates.heavy) heavyItemCarry = true;
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
		
		if ((!canUfoFloat) and (playerAbility != playerAbilities.ufo) and (!attack) and (!hurt) and (!iceKick))
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
					if (carriedItem != carriedItems.none)
					{
						if (carriedItemState == carriedItemStates.light)
						{
							idlesprite = sprItemCarryLightIdle;
							idleblinksprite = sprItemCarryLightIdle;
						}
						else if (carriedItemState == carriedItemStates.heavy)
						{
							idlesprite = sprItemCarryHeavyIdle;
							idleblinksprite = sprItemCarryHeavyIdle;
						}
					}
					if (sparkMaxCharge) idlesprite = sprSparkMaxCharge;
					
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
									idlesprite = sprIdleNormalSlopeL;
									idleblinksprite = sprIdleNormalSlopeLBlink;
									if (carriedItem != carriedItems.none)
									{
										if (carriedItemState == carriedItemStates.light)
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeL;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeLBlink;
										}
										else if (carriedItemState == carriedItemStates.heavy)
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
									if (carriedItem != carriedItems.none)
									{
										if (carriedItemState == carriedItemStates.light)
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeR;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeRBlink;
										}
										else if (carriedItemState == carriedItemStates.heavy)
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
									if (carriedItem != carriedItems.none)
									{
										if (carriedItemState == carriedItemStates.light)
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeR;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeRBlink;
										}
										else if (carriedItemState == carriedItemStates.heavy)
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
									if (carriedItem != carriedItems.none)
									{
										if (carriedItemState == carriedItemStates.light)
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeL;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeLBlink;
										}
										else if (carriedItemState == carriedItemStates.heavy)
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
									if (carriedItem != carriedItems.none)
									{
										if (carriedItemState == carriedItemStates.light)
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeR;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeRBlink;
										}
										else if (carriedItemState == carriedItemStates.heavy)
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
									if (carriedItem != carriedItems.none)
									{
										if (carriedItemState == carriedItemStates.light)
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeL;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeLBlink;
										}
										else if (carriedItemState == carriedItemStates.heavy)
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
									if (carriedItem != carriedItems.none)
									{
										if (carriedItemState == carriedItemStates.light)
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeL;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeLBlink;
										}
										else if (carriedItemState == carriedItemStates.heavy)
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
									if (carriedItem != carriedItems.none)
									{
										if (carriedItemState == carriedItemStates.light)
										{
											idlesprite = sprItemCarryLightIdleNormalSlopeR;
											idleblinksprite = sprItemCarryLightIdleNormalSlopeRBlink;
										}
										else if (carriedItemState == carriedItemStates.heavy)
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
									if (carriedItem != carriedItems.none)
									{
										if (carriedItemState == carriedItemStates.light)
										{
											idlesprite = sprItemCarryLightIdleSteepSlopeR;
											idleblinksprite = sprItemCarryLightIdleSteepSlopeRBlink;
										}
										else if (carriedItemState == carriedItemStates.heavy)
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
									if (carriedItem != carriedItems.none)
									{
										if (carriedItemState == carriedItemStates.light)
										{
											idlesprite = sprItemCarryLightIdleSteepSlopeL;
											idleblinksprite = sprItemCarryLightIdleSteepSlopeLBlink;
										}
										else if (carriedItemState == carriedItemStates.heavy)
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
									if (carriedItem != carriedItems.none)
									{
										if (carriedItemState == carriedItemStates.light)
										{
											idlesprite = sprItemCarryLightIdleSteepSlopeL;
											idleblinksprite = sprItemCarryLightIdleSteepSlopeLBlink;
										}
										else if (carriedItemState == carriedItemStates.heavy)
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
									if (carriedItem != carriedItems.none)
									{
										if (carriedItemState == carriedItemStates.light)
										{
											idlesprite = sprItemCarryLightIdleSteepSlopeR;
											idleblinksprite = sprItemCarryLightIdleSteepSlopeRBlink;
										}
										else if (carriedItemState == carriedItemStates.heavy)
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
							case playerCharacters.kirby:
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
						if (playerAbility == playerAbilities.mirror)
						{
							sprite_index = sprMirrorDash;
						}
						else if (runTurn)
						{
							sprite_index = sprRunTurn;
						}
						else
						{
							
							if ((carriedItem != carriedItems.none) and (carriedItemState == carriedItemStates.heavy))
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
						if (carriedItem == carriedItems.none)
						{
							sprite_index = sprWalk;
						}
						else
						{
							if (carriedItemState == carriedItemStates.light)
							{
								sprite_index = sprItemCarryLightWalk;
							}
							else if (carriedItemState == carriedItemStates.heavy)
							{
								sprite_index = sprItemCarryHeavyWalk;
							}
						}
					}
				}
				
				if (playerCharacter == playerCharacters.gooey)
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
				    if ((vsp < 0) and (!grounded))
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
		
		if ((canUfoFloat) or (playerAbility == playerAbilities.ufo))
		{
			if (playerAbility == playerAbilities.ufo)
			{
				if (!attack)
				{
					if ((vsp > 0) or (hsp != 0))
					{
						sprite_index = sprUfoDown;
					}
					else if (vsp < 0)
					{
						sprite_index = sprUfoUp;
					}
					else
					{
						sprite_index = sprUfoIdle;
					}
				}
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
		
		if ((!walkDuck) and (carriedItem == carriedItems.none) and (playerAbility != playerAbilities.ufo) and (place_meeting(x,y + (1 + vsp),obj_ParentWall)) and (vsp > 1) and (!attack))
		{
			var collidingWall = instance_place(x,y + (1 + vsp),obj_ParentWall);
			if ((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + collidingWall.vsp + 20 + vspFinal))))
			{
				switch (playerCharacter)
				{
					case playerCharacters.bouncy:
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
				
					case playerCharacters.gordo:
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
				
					case playerCharacters.bloodGordo:
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
					var squishSound = snd_SquishLow;
					sprite_index = sprDuck;
					image_index = 0;
					walkDuck = true;
					walkDuckTimer = walkDuckTimerMax;
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
						squishSound = snd_SquishLow;
						scaleExX = .25;
						scaleExY = -.25;
						sprite_index = sprRollDuck;
						walkDuckTimer = walkDuckTimerMax - 1;
						fallHop = true;
					}
					if (audio_is_playing(squishSound)) audio_stop_sound(squishSound);
					audio_play_sound(squishSound,0,false);
					break;
				}
			}
		}
		
		//Walk Squish
		
		if ((!walkSquish) and (playerAbility != playerAbilities.ufo) and (place_meeting(x + hspFinal,y,obj_ParentWall)) and (place_meeting(x,y + 1,obj_ParentWall)) and (abs(hspFinal) >= (movespeed / 2)) and (!attack))
		{
			var walkSquishWall = instance_place(x + hspFinal,y,obj_ParentWall);
			var bottomWall = instance_place(x,y + 1,obj_ParentWall);
			if ((carriedItem == carriedItems.none) and (!walkSquishWall.slope) and (!walkSquishWall.platform) and (!bottomWall.slope))
			{
				sprite_index = sprSquish;
				image_index = 0;
				walkSquish = true;
				walkSquishTimer = walkSquishTimerMax;
				dir = sign(hspFinal);
				if (audio_is_playing(snd_SquishLow)) audio_stop_sound(snd_SquishLow);
				audio_play_sound(snd_SquishLow,0,false);
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
			
			if ((walkSquishTimer > 0) and (vsp == 0) and (!attack))
			{
				sprite_index = sprSquish;
			}
		}
		
		if ((cutterCatch) and (!attack)) sprite_index = sprCutterCatch;
		
		#region Collision
		scr_Player_Collision(playerMechs.none);
		#endregion
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}