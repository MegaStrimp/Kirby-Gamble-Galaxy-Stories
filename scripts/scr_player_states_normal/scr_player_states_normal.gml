///@description Normal State

function scr_Player_States_Normal()
{
	if (!global.pause)
	{
		#region Variables
		var playerAbility = global.abilityP1;
		var playerCharacter = global.characterP1;
		var playerSprayPaint = global.sprayPaintP1;
		
		switch (player)
		{
			case 1:
			playerAbility = global.abilityP2;
			playerCharacter = global.characterP2;
			playerSprayPaint = global.sprayPaintP2;
			break;
			
			case 2:
			playerAbility = global.abilityP3;
			playerCharacter = global.characterP3;
			playerSprayPaint = global.sprayPaintP3;
			break;
			
			case 3:
			playerAbility = global.abilityP4;
			playerCharacter = global.characterP4;
			playerSprayPaint = global.sprayPaintP4;
			break;
		}
		
		var attackDisableMovement = false;
		if (
		(attack)
		and ((attackNumber != playerAttacks.beamAir)
		and (attackNumber != playerAttacks.ufoBeam)
		and (attackNumber != playerAttacks.ufoCharge)
		and (attackNumber != playerAttacks.ufoLaser)
		and (attackNumber != playerAttacks.cutterAir)
		and (attackNumber != playerAttacks.fireAerial)
		and !((attackNumber == playerAttacks.sparkNormal) and (!grounded))
		and (attackNumber != playerAttacks.swordAir)
		and (attackNumber != playerAttacks.swordAirDash))
		) attackDisableMovement = true;
		
		var attackDisableAnimation = true;
		if (
		(attackNumber == playerAttacks.slideJump)
		) attackDisableAnimation = false;
		
		var attackDisableDir = false;
		if (
		(attackNumber == playerAttacks.beamAir)
		or (attackNumber == playerAttacks.ufoBeam)
		or (attackNumber == playerAttacks.cutterAir)
		or (attackNumber == playerAttacks.fireAerial)
		or ((attackNumber == playerAttacks.fireWheel) and (!grounded))
		or (attackNumber == playerAttacks.fireNormal)
		or (attackNumber == playerAttacks.sparkNormal)
		) attackDisableDir = true;
		
		var attackHasGravLerp = false;
		if (
		(attackNumber == playerAttacks.beamNormal)
		or (attackNumber == playerAttacks.beamUp)
		or (attackNumber == playerAttacks.sparkUp)
		or (attackNumber == playerAttacks.sparkDown)
		) attackHasGravLerp = true;
		
		var canDashAttack = false;
		if ((keyLeftHold) or (keyRightHold)) canDashAttack = true;
		
		didJump = false;
		#endregion
		
		#region Disable Fall Hop
		if (wallAbove) fallHop = false;
		#endregion
		
		#region Disable Slide Jump
		if (((grounded) or (hurt)) and (attackNumber == playerAttacks.slideJump))
		{
			hspLimit = false;
			hspLimitTimer = 0;
			jumpLimit = false;
			jumpLimitTimer = 0;
			attackTimer = 0;
		}
		#endregion
		
		#region Run
		if ((canRun) and (playerAbility != playerAbilities.ufo) and (playerAbility != playerAbilities.sleep))
		{
			if (runDoubleTap > -1) runDoubleTap -= 1;
			if ((!global.cutscene) and (!runTurn))
			{
				if ((keyLeftPressed) or (keyRightPressed))
				{
				    if ((runDoubleTap > 0) and (!isRunning))
				    {
						if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
						audio_play_sound(snd_DashBegin,0,false);
						
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
						
						if (playerAbility == playerAbilities.mirror)
						{
							mirrorDashParticleTimer = 0;
						}
						else
						{
							runParticleTimer = 0;
						}
						
						runBuffer = 0;
						isRunning = true;
				    }
					
				    runDoubleTap = 20;
			    }
				
				/*if (abs(gamepad_axis_value(global.playerGamepad[player],gp_axislh)) == 1)
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
						if (playerAbility == playerAbilities.mirror)
						{
							mirrorDashParticleTimer = 0;
						}
						else
						{
							runParticleTimer = 0;
						}
						runBuffer = 0;
						isRunning = true;
					}
				}*/
			}
		}
		
		if (isRunning)
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
		#endregion
		
		#region Movement
		var invinCandyMult = 1;
		var beamAirMult = 1;
		var sparkNormalMult = 1;
		
		if (hasInvinCandy) invinCandyMult = 1.5;
		if (attackNumber == playerAttacks.beamAir) beamAirMult = .75;
		if (attackNumber == playerAttacks.sparkNormal) sparkNormalMult = .75;
		
		var movespeedFinal = movespeed * invinCandyMult * beamAirMult * sparkNormalMult;
		
		if ((!hurt) and (walkSquishTimer == -1))
		{
			if ((!global.cutscene) and (canWalk) and (!runTurn))
			{
				if (keyRightHold)
				{
					if (!attackDisableMovement)
					{
						hsp += accel * (speedMultFinal * speedMultFinal);
						if ((!runTurn) and (!attackDisableDir)) dir = 1;
						if ((canRunTurn) and (carriedItem == carriedItems.none) and (grounded) and (isRunning) and (playerAbility != playerAbilities.mirror) and /*(hsp != 0) and */(sign(hsp) != dir))
						{
							if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
							audio_play_sound(snd_DashBegin,0,false);
							if ((!attackDisableDir)) dir = -1;
							runParticleNum = 0;
							runParticleTimer = 0;
							runTurnCancelTimer = runTurnCancelTimerMax;
							runTurn = true;
							hsp = max(1 * speedMultFinal,abs(hsp)) * dir;
						}
					}
				}
				if (keyLeftHold)
				{
					if (!attackDisableMovement)
					{
						hsp -= accel * (speedMultFinal * speedMultFinal);
						if ((!runTurn) and (!attackDisableDir)) dir = -1;
						if ((canRunTurn) and (carriedItem == carriedItems.none) and (grounded) and (isRunning) and (playerAbility != playerAbilities.mirror) and /*(hsp != 0) and */(sign(hsp) != dir))
						{
							if (audio_is_playing(snd_DashBegin)) audio_stop_sound(snd_DashBegin);
							audio_play_sound(snd_DashBegin,0,false);
							if ((!attackDisableDir)) dir = 1;
							runParticleNum = 0;
							runParticleTimer = 0;
							runTurnCancelTimer = runTurnCancelTimerMax;
							runTurn = true;
							hsp = max(1 * speedMultFinal,abs(hsp)) * dir;
						}
					}
				}
			}
			
			if ((canUfoFloat) or (playerAbility == playerAbilities.ufo))
			{
				if (!global.cutscene)
				{
					/*var gamepadValX = gamepad_axis_value(global.playerGamepad[player],gp_axislh);
					var gamepadValY = gamepad_axis_value(global.playerGamepad[player],gp_axislv);
					var gamepadAngle = point_direction(0,0,gamepadValX,gamepadValY);
					
					if (global.playerGamepad[player] == -1)
					{*/
						if (keyUpHold)
						{
							if (!attackDisableMovement)
							{
								vsp -= accel * (speedMultFinal * speedMultFinal);
								grounded = false;
							}
						}
						if (keyDownHold)
						{
							if (!attackDisableMovement) vsp += accel * (speedMultFinal * speedMultFinal);
						}
					/*}
					else
					{
						var ufoDeadzone = .3;
						if (abs(gamepadValX) >= ufoDeadzone) hsp = lengthdir_x(ufoFloatSpd * speedMultFinal,gamepadAngle) * abs(gamepadValX);
						if (abs(gamepadValY) >= ufoDeadzone) vsp = lengthdir_y(ufoFloatSpd * speedMultFinal,gamepadAngle) * abs(gamepadValY);
					}*/
				}
				
				if ((((keyDownHold) and (keyUpHold)) or ((!keyDownHold) and (!keyUpHold))) or (attackDisableMovement) or (global.cutscene))
				{
					vsp = scr_Friction(vsp,decel * (speedMultFinal * speedMultFinal));
				}
				
				hsp = clamp(hsp, -ufoFloatSpd * speedMultFinal, ufoFloatSpd * speedMultFinal);
				vsp = clamp(vsp, -ufoFloatSpd * speedMultFinal, ufoFloatSpd * speedMultFinal);
			}
			else
			{
				if (hspLimit) hsp = clamp(hsp, -movespeedFinal * speedMultFinal, movespeedFinal * speedMultFinal);
			}
			
			if ((((keyLeftHold) and (keyRightHold)) or ((!keyLeftHold) and (!keyRightHold))) or (attackDisableMovement) or (runTurn) or (global.cutscene))
			{
				var ultiDecel = decel;
				if (runTurn) ultiDecel = decel * 3;
				if (attackNumber == playerAttacks.fireWheel) ultiDecel = decelSlide;
				if (attackNumber == playerAttacks.beamDash) ultiDecel = decel - .02;
				if (attackNumber == playerAttacks.beamAir) ultiDecel = decel - .05;
				ultiDecel = ultiDecel * (speedMultFinal * speedMultFinal);
				if (hsp >= ultiDecel) hsp -= ultiDecel;
				if (hsp <= -ultiDecel) hsp += ultiDecel;
				if ((hsp > -ultiDecel) and (hsp < ultiDecel)) hsp = 0;
			}
			
		}
		
		var blockGap = false;
		if ((isRunning) and (hsp != 0) and (vsp == 0) and (!grounded) and (!place_meeting(x + hsp,y,obj_ParentWall)) and (place_meeting(x + (hsp + (2 * sign(hsp))),y + 1,obj_ParentWall))) blockGap = true;
		if ((hasGravity) and (!attackHasGravLerp) and (!blockGap) and (playerAbility != playerAbilities.ufo))
		{
			var gravOffset = 0;
			if (attackNumber == playerAttacks.beamAir) gravOffset = .05;
			if (vsp < gravLimit * speedMultFinal)
			{
				vsp += ((grav - gravOffset) * (speedMultFinal * speedMultFinal));
			}
			else
			{
				vsp = ((gravLimit - (gravOffset * 5)) * speedMultFinal);
				if (((playerCharacter == playerCharacters.kirby) or (playerCharacter == playerCharacters.gooey)) and (fallHopCounter < fallHopCounterMax)) fallHopCounter += 1;
			}
		}
		
		if (attackHasGravLerp)
		{
			var attackHasGravLerpValue = .1;
			if (
			(attackNumber == playerAttacks.sparkUp)
			or (attackNumber == playerAttacks.sparkDown) 
			) attackHasGravLerpValue = .2;
			
			attackHasGravLerpValue = min(attackHasGravLerpValue * speedMultFinal,1)
			vsp = lerp(vsp,0,attackHasGravLerpValue);
		}
		
		if ((!global.cutscene) and (!canUfoFloat) and (playerAbility != playerAbilities.ufo) and (vsp < 0) and (!keyJumpHold))
		{
			var jumpLimitValue = -jumpspeed / 4 + (vspCollision / 2);
			switch (playerCharacter)
			{
				case playerCharacters.bouncy:
				jumpLimitValue = -jumpspeed / 2 + (vspCollision / 2);
				break;
			}
		    if ((hasJumpLimit) and (jumpLimit)) vsp = max(vsp,jumpLimitValue * speedMultFinal);
		}
		#endregion
		
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
			#region Fast Fall
			if ((!canUfoFloat) and (playerAbility != playerAbilities.ufo) and (keyDownPressed) and (downInputBufferTimer > 0))
			{
				vsp = gravLimit * speedMultFinal;
			}
			#endregion
			
			#region Gamble Float Setup
			if (playerCharacter == playerCharacters.gamble)
			{
				canUfoFloat = true; 
				canJump = false;
			}
			#endregion
		}
		#endregion
		
		#region Attacks
		switch (carriedItem)
		{
			#region Bomb
			case carriedItems.bomb:
			if (!global.cutscene)
			{
				if ((!hurt) and (!attack) and (keyAttackPressed))
				{
					grabEnemy = -1;
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
						grabObj.active = false;
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
						invincible = true;
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
						if (isRunning)
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
						if (bombLightShellsUpgrade)
						{
							var bombCount = irandom_range(1,2);
							for (var i = 0; i < bombCount; i++)
							{
								var bomb = instance_create_depth(carriedItemIndex.x,carriedItemIndex.y,depth - 1,obj_Projectile_Bomb);
								bomb.owner = id;
								bomb.abilityType = playerAbilities.bomb;
								bomb.player = player;
								bomb.hasRemoteDetonation = bombStickyBombUpgrade;
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
							scr_Player_ExecuteAttack_Inhale();
					    }
						break;
						#endregion
						
						#region Cutter
						case playerAbilities.cutter:
						grabEnemy = -1;
						if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
						{
							if (place_meeting(x + (24 * dir),y,obj_Enemy)) grabEnemy = instance_place(x + (24 * dir),y,obj_Enemy);
							if (((grabEnemy != -1) and (finalCutterState == 0)) or ((comboBuffer <= 0) and (finalCutterReadInput)))
							{
								if ((comboBuffer <= 0) && (finalCutterReadInput || finalCutterState == 0))
								{
									scr_Player_ExecuteAttack_FinalCutter();
								}
							}
						}
						
					    if ((!global.cutscene) and (keyAttackHold) and (!hurt) and (!attack) and (cutterAirThrown))
						{
							scr_Player_ExecuteAttack_CutterAir();
						}
						
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							if ((isRunning) and (canDashAttack) and (grounded) and (hsp != 0))
							{
								scr_Player_ExecuteAttack_CutterDash();
							}
							else if (keyDownHold)
							{
								scr_Player_ExecuteAttack_CutterDrop();
							}
							else if ((keyUpHold && downInputBufferTimer > 0) and (cutterPropellerWingUpgrade))
							{
								if ((comboBuffer <= 0) && (finalCutterReadInput || finalCutterState == 0) && state == playerStates.normal && keyUpHold)
								{
									finalCutterState = 2;
									scr_Player_ExecuteAttack_FinalCutter();
								}
							}
							else
							{
								if (grounded)
								{
									scr_Player_ExecuteAttack_CutterCharge();
								}
								else
								{
									if (!cutterAirThrown)
									{
										scr_Player_ExecuteAttack_CutterNormal();
									}
								}
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
								grabEnemy = -1;
								if (place_meeting(x + (16 * dir),y,obj_Enemy)) grabEnemy = instance_place(x + (16 * dir),y,obj_Enemy);
								if ((grabEnemy != -1) and (grabEnemy.hurtable) and (!grabEnemy.hurt) and (!grabEnemy.isMiniBoss) and (!grabEnemy.isBoss))
								{
									scr_Player_ExecuteAttack_BeamGrab(grabEnemy);
								}
							}
							
							if (!attack)
							{
								if (keyUpHold)
								{
									var hasMarxSoulHat = false;
									if (((player == 0) and (global.hatTypeBeamP1 == abilityHatSkins.beam_marxSoul))
									or ((player == 1) and (global.hatTypeBeamP2 == abilityHatSkins.beam_marxSoul))
									or ((player == 2) and (global.hatTypeBeamP3 == abilityHatSkins.beam_marxSoul))
									or ((player == 3) and (global.hatTypeBeamP4 == abilityHatSkins.beam_marxSoul))) hasMarxSoulHat = true;
									scr_Player_ExecuteAttack_BeamUp(beamGoldenFlareUpgrade,hasMarxSoulHat);
								}
								else
								{
									if ((isRunning) and (canDashAttack))
									{
										if (grounded)
										{
											scr_Player_ExecuteAttack_BeamDash();
										}
										else
										{
											scr_Player_ExecuteAttack_BeamAir();
										}
									}
									else
									{
										if (grounded)
										{
											scr_Player_ExecuteAttack_BeamCharge();
										}
										else
										{
											var hasMarxSoulHat = false;
											if (((player == 0) and (global.hatTypeBeamP1 == abilityHatSkins.beam_marxSoul))
											or ((player == 1) and (global.hatTypeBeamP2 == abilityHatSkins.beam_marxSoul))
											or ((player == 2) and (global.hatTypeBeamP3 == abilityHatSkins.beam_marxSoul))
											or ((player == 3) and (global.hatTypeBeamP4 == abilityHatSkins.beam_marxSoul))) hasMarxSoulHat = true;
											scr_Player_ExecuteAttack_BeamNormal(beamGoldenFlareUpgrade,hasMarxSoulHat);
										}
									}
								}
							}
					    }
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
								grabEnemy = -1;
								if (place_meeting(x + (16 * dir),y,obj_Enemy)) grabEnemy = instance_place(x + (16 * dir),y,obj_Enemy);
								if ((grabEnemy != -1) and (grabEnemy.hurtable) and (!grabEnemy.hurt) and (!grabEnemy.isMiniBoss) and (!grabEnemy.isBoss))
								{
									scr_Player_ExecuteAttack_MysticBeamGrab(grabEnemy);
								}
							}
							
							if (!attack)
							{
								if (isRunning)
								{
									if (grounded)
									{
										scr_Player_ExecuteAttack_MysticBeamDash();
									}
									else
									{
										scr_Player_ExecuteAttack_MysticBeamAir();
									}
								}
								else
								{
									if (keyUpHold)
									{
										scr_Player_ExecuteAttack_MysticBeamUp();
									}
									else
									{
										if (vsp == 0)
										{
											scr_Player_ExecuteAttack_MysticBeamCharge();
										}
										else
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
													proj.dmg = kirby_MysticBeamBarrierBreak_Damage;
													scr_Attack_SetKnockback(proj,kirby_MysticBeamBarrierBreak_Strength,kirby_MysticBeamBarrierBreak_HitStopAffectSource,kirby_MysticBeamBarrierBreak_HitStopAffectPlayer,kirby_MysticBeamBarrierBreak_HitStopAffectTarget,kirby_MysticBeamBarrierBreak_HitStopLength,kirby_MysticBeamBarrierBreak_HitStopShakeStrength);
													proj.destroyableByEnemy = false;
													proj.destroyableByObject = false;
													proj.destroyableByWall = false;
													var particle = instance_create_depth(other.x,other.y,depth,obj_Particle);
													particle.sprite_index = spr_Projectile_BarrierBreak_Normal_Tail;
													particle.image_angle = angle + 45;
													particle.destroyAfterAnimation = true;
													instance_destroy();
												}
											}
											
											if (canMysticBeamShield)
											{
												scr_Player_ExecuteAttack_MysticBeamNormal();
											}
											else
											{
												scr_Player_ExecuteAttack_MysticBeamBarrierBreak();
											}
										}
									}
								}
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
								scr_Player_ExecuteAttack_StoneNormal();
							}
							else
							{
								scr_Player_ExecuteAttack_StoneUp();
							}
						}
						break;
						#endregion
						
						#region Ufo
						case playerAbilities.ufo:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							//scr_Player_ExecuteAttack_UfoCharge();
							scr_Player_ExecuteAttack_UfoBeam();
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
									if (!isRunning)
									{
										if (keyAttackPressed)
										{
											scr_Player_ExecuteAttack_MirrorSlash();
										}
									}
									else
									{
										scr_Player_ExecuteAttack_MirrorDash(playerCharacter,playerAbility);
									}
						        }
								
						        if (keyDownHold)
						        {
									scr_Player_ExecuteAttack_MirrorDown(playerCharacter,playerAbility);
						        }
								
								if (keyUpHold)
						        {
									scr_Player_ExecuteAttack_MirrorUp(playerCharacter,playerAbility);
						        }
							}
							else if (keyAttackHold)
							{
								scr_Player_ExecuteAttack_MirrorNormal();
							}
						}
					    break;
						#endregion
						
						#region Ninja
						case playerAbilities.ninja:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							if ((isRunning) and (canDashAttack) and (vsp == 0) and (hsp != 0))
							{
								scr_Player_ExecuteAttack_NinjaDash();
							}
							else if (keyDownHold)
							{
								scr_Player_ExecuteAttack_NinjaDrop();
							}
							else
							{
								scr_Player_ExecuteAttack_NinjaHoldCharge();
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
							attackable = false;
							attackNumber = playerAttacks.bombReady;
				            attackTimer = 45;
							fallRoll = false;
							
							carriedItem = carriedItems.bomb;
							carriedItemState = carriedItemStates.heavy;
							carriedItemIndex = instance_create_depth(x,y - 8,depth - 1,obj_Projectile_Bomb);
							carriedItemIndex.owner = id;
							carriedItemIndex.abilityType = playerAbilities.bomb;
							carriedItemIndex.player = player;
							carriedItemIndex.hasRemoteDetonation = bombStickyBombUpgrade;
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
							if (!bombStickyBombUpgrade) carriedItemIndex.selfExplodeTimer = carriedItemIndex.selfExplodeTimerMax;
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
								if ((place_meeting(x + 1,y,obj_ParentWall) and (!instance_place(x + 1,y,obj_ParentWall).slope) and keyRightHold || place_meeting(x - 1,y,obj_ParentWall)  and (!instance_place(x - 1,y,obj_ParentWall).slope) and keyLeftHold) and attackTimer > 0)
								{
									scr_Player_ExecuteAttack_FireWheelClimb();
								}
								
								if ((!grounded) and (place_meeting(x,y + 16,obj_ParentWall) and attackTimer > 0))
								{
									if (fireLandWheel)
									{
										scr_Player_ExecuteAttack_FireWheel(fireMagicCharcoalUpgrade);
									}
									else
									{
										attackTimer = 0;
									}
								}
							}
							
							if ((keyAttackPressed) and (!attack))
							{
								if ((isRunning) and (canDashAttack) and (hsp != 0) and !((keyDownHold) and !(grounded)))
								{
									scr_Player_ExecuteAttack_FireDash(fireMagicCharcoalUpgrade);
								}
								else
								{
									if (keyDownHold)
									{
										scr_Player_ExecuteAttack_FireAerial(fireMagicCharcoalUpgrade);
									}
									else
									{
										scr_Player_ExecuteAttack_FireNormal();
									}
								}
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
								grabEnemy = -1;
								if (place_meeting(x + (16 * dir),y,obj_Enemy)) grabEnemy = instance_place(x + (16 * dir),y,obj_Enemy);
								if ((grabEnemy != -1) and (grabEnemy.hurtable) and (!grabEnemy.hurt) and (!grabEnemy.isMiniBoss) and (!grabEnemy.isBoss))
								{
									scr_Player_ExecuteAttack_IceGrab(grabEnemy);
								}
							}
							else
							{
								scr_Player_ExecuteAttack_IceNormal();
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
								scr_Player_ExecuteAttack_SparkUp();
							}
							else if ((!grounded) and (keyDownHold))
							{
								scr_Player_ExecuteAttack_SparkDown();
							}
							else
							{
								scr_Player_ExecuteAttack_SparkHoldCharge();
							}
					    }
						break;
						#endregion
						
						#region Yoyo
						case playerAbilities.yoyo:
					    if ((!global.cutscene) and (!hurt) and (!attack))
					    {
							if (keyAttackPressed)
							{
								if ((isRunning) and (canDashAttack) and (hsp != 0))
								{
									scr_Player_ExecuteAttack_YoyoDash();
							    }
						    }
					    }
						break;
						#endregion
						
						#region Wheel
						case playerAbilities.wheel:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							scr_Player_ExecuteAttack_WheelNormal();
					    }
						break;
						#endregion
						
						#region Wing
						case playerAbilities.wing:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
					    {
							if ((isRunning) and (hsp != 0))
							{
								scr_Player_ExecuteAttack_WingDash();
							}
							else
							{
								scr_Player_ExecuteAttack_WingNormal(playerAbility,playerCharacter);
							}
					    }
						break;
						#endregion
						
						#region Sword
						case playerAbilities.sword:
						//AKA: -S- fucks around and finds out
						///////////////////////attackTimer Specifics
						///Stop an attack if attacktimer reaches 0
							
						if (!(global.cutscene) and (keyAttackPressed))
						{
							if (!grounded)
							{ //All of the aerial shit
									
								{ //this is where the Falling part of the Rising Slash will go
									
								}
								if ((isRunning) and (canDashAttack) and (!hurt) and (!attack))
								{ //Speen
										sprite_index = sprSwordAttackAirDash;
										image_index = 0;
										
										attack = true;
										attackable = false;
										attackNumber = playerAttacks.swordAirDash;
										attackTimer = 2000;
										
										if (audio_is_playing(snd_NinjaSlash)) audio_stop_sound(snd_NinjaSlash);
										audio_play_sound(snd_NinjaSlash,0,false);
										
										var projectile = instance_create_depth(x + (14 * dir),y - 12,depth - 1,obj_Projectile_SwordMask);
										projectile.owner = id;
										projectile.abilityType = playerAbilities.sword;
										projectile.destroyTimerMax = 2000;
										projectile.dmg = kirby_SwordAirDash_Damage;
										scr_Attack_SetKnockback(projectile,kirby_SwordAirDash_Strength,kirby_SwordAirDash_HitStopAffectSource,kirby_SwordAirDash_HitStopAffectPlayer,kirby_SwordAirDash_HitStopAffectTarget,kirby_SwordAirDash_HitStopLength,kirby_SwordAirDash_HitStopShakeStrength);
										projectile.dirX = dir;
										projectile.image_xscale = projectile.dirX;
										projectile.enemy = false;
										projectile.deleteTimer = 2000;
										projectile.groundedDestroy = true;
										projectile.sprite_index = projectile.sprSpin;
									
								///////////////////////The regular Aerial Attack
								}
								else if ((!isRunning) and (!hurt) and (!attack))
								{
									attack = true;
									attackable = false;
									attackNumber = playerAttacks.swordAir;
									attackTimer = 2;
									
									sprite_index = sprSwordAttackAir;
									image_index = 0;
								}
							}
							else
							{
								//all of the grounded shit
								///i like the part when Kirby says Dash attack and Dash Attacks all over the enemies
								if ((isRunning) and (!hurt) and (!attack))
								{
									attack = true;
									attackNumber = playerAttacks.swordDash;
									state = playerStates.swordDash;
									attackTimer = 80;
									hspLimit = false;
									hspLimitTimer = 60;
								
									sprite_index = sprSwordAttackDash;
								    image_index = 0;
									
									if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
						            slideSfx = audio_play_sound(snd_Fire3,0,false);
									
									var projectile = instance_create_depth(x + (14 * dir),y - 12,depth - 1,obj_Projectile_SwordMask);
									projectile.owner = id;
									projectile.abilityType = playerAbilities.sword;
									projectile.destroyTimerMax = 20;
									projectile.dmg = kirby_SwordDash_DamageMin;
									scr_Attack_SetKnockback(projectile,kirby_SwordDash_Strength,kirby_SwordDash_HitStopAffectSource,kirby_SwordDash_HitStopAffectPlayer,kirby_SwordDash_HitStopAffectTarget,kirby_SwordDash_HitStopLength,kirby_SwordDash_HitStopShakeStrength);
									projectile.dirX = dir;
									projectile.image_xscale = projectile.dirX;
									projectile.enemy = false;
									projectile.deleteTimer = 0;
									projectile.sprite_index = projectile.sprDash;
								}
								else if ((!isRunning) and (!hurt) and (!attack))
								{
									///////////////////////Main Slash Activation
									attack = true;
									attackable = false;
									attackNumber = playerAttacks.swordNormal;
									attackTimer = 2;
									
									sprite_index = sprSwordAttack1;
									image_index = 0;
									///////////////////////////////////ComboJump 
								}
								else if ((!isRunning) and (!hurt) and (attack) and (attackNumber=playerAttacks.swordNormal))
								{ //Combo 1
									attack = true;
									attackable = false;
									attackTimer = 60;
									attackNumber = playerAttacks.swordCombo;
									vsp = -3
									grounded = false;
									
									if (audio_is_playing(snd_NinjaSlash)) audio_stop_sound(snd_NinjaSlash);
									audio_play_sound(snd_NinjaSlash,0,false);
									
									var projectile = instance_create_depth(x + (14 * dir),y - 12,depth - 1,obj_Projectile_SwordMask);
									projectile.owner = id;
									projectile.abilityType = playerAbilities.sword;
									projectile.destroyTimerMax = 20;
									projectile.dmg = kirby_SwordCombo_Damage;
									scr_Attack_SetKnockback(projectile,kirby_SwordCombo_Strength,kirby_SwordCombo_HitStopAffectSource,kirby_SwordCombo_HitStopAffectPlayer,kirby_SwordCombo_HitStopAffectTarget,kirby_SwordCombo_HitStopLength,kirby_SwordCombo_HitStopShakeStrength);
									projectile.dirX = dir;
									projectile.image_xscale = projectile.dirX;
									projectile.enemy = false;
									projectile.deleteTimer = 20;
									projectile.sprite_index = projectile.sprCombo;
									
									sprite_index = sprSwordAttackCombo
									image_index = 0;
									///////////////////////////////////Barrage 
								}
								else if ((!isRunning) and (!hurt)  and (attackNumber == playerAttacks.swordCombo))
								{
									attack = true;
									attackable = false;
									attackTimer = 60;
									attackNumber = playerAttacks.swordBarrage;
								}
							}
						}
						//////////////////////Main Slash Attack
						if ((attackNumber == playerAttacks.swordNormal) and (attackTimer == 0) and (attackable))
						{
							sprite_index = sprSwordAttack1;
							image_index = 0;
							
							if (audio_is_playing(snd_NinjaSlash)) audio_stop_sound(snd_NinjaSlash);
							audio_play_sound(snd_NinjaSlash,0,false);
							
							var projectile = instance_create_depth(x + (14 * dir),y - 12,depth - 1,obj_Projectile_SwordMask);
							projectile.owner = id;
							projectile.abilityType = playerAbilities.sword;
							projectile.destroyTimerMax =20
							projectile.dmg = kirby_SwordNormal_Damage;
							scr_Attack_SetKnockback(projectile,kirby_SwordNormal_Strength,kirby_SwordNormal_HitStopAffectSource,kirby_SwordNormal_HitStopAffectPlayer,kirby_SwordNormal_HitStopAffectTarget,kirby_SwordNormal_HitStopLength,kirby_SwordNormal_HitStopShakeStrength);
							projectile.dirX = dir;
							projectile.image_xscale = projectile.dirX;
							projectile.enemy = false;
							projectile.deleteTimer =20
							projectile.sprite = attackNumber;
							
							attack = true;
							attackable = false;
							attackTimer = 30;
						}
						/////////////////////Aerial Attack's things
						if attackNumber=playerAttacks.swordAir && attackTimer==0 && attackable
						{
							sprite_index=sprSwordAttackAir
							attackTimer =2000;
							if (audio_is_playing(snd_NinjaSlash)) audio_stop_sound(snd_NinjaSlash);
							audio_play_sound(snd_NinjaSlash,0,false);
							var projectile = instance_create_depth(x + (14 * dir),y - 12,depth - 1,obj_Projectile_SwordMask);
							projectile.owner = id;
							projectile.abilityType = playerAbilities.sword;
							projectile.destroyTimerMax =2000
							projectile.dmg = kirby_SwordAir_Damage;
							scr_Attack_SetKnockback(projectile,kirby_SwordAir_Strength,kirby_SwordAir_HitStopAffectSource,kirby_SwordAir_HitStopAffectPlayer,kirby_SwordAir_HitStopAffectTarget,kirby_SwordAir_HitStopLength,kirby_SwordAir_HitStopShakeStrength);
							projectile.dirX = dir;
							projectile.image_xscale = projectile.dirX;
							projectile.enemy = false;
							projectile.deleteTimer =2000
							projectile.groundedDestroy=true;
							projectile.sprite_index=projectile.sprAir;
							attackable = false;
							attack=true;
						}
						
						if attackNumber == playerAttacks.swordAir && grounded
						{
							attackTimer=0 attackNumber=playerAbilities.none
						}
						else if attackNumber==playerAttacks.swordAir
						{
							sprite_index = sprSwordAttackAir;
						}
						
						if attackNumber == playerAttacks.swordNormal && attackTimer>0
						{
							hsp *= .9;
						}
						
						if attackNumber == playerAttacks.swordCombo && !grounded
						{
							hsp *= .9;
							if (vsp > 0) sprite_index = sprSwordAttackBarrageAir;
						}
							
						if (attackNumber == playerAttacks.swordBarrage)
						{
							hsp *= 0.9;
							if ((attackTimer div 10) and (attackTimer<=50))
							{
								sprite_index = sprSwordAttackBarrage
									
								if (audio_is_playing(snd_Spark1)) audio_stop_sound(snd_Spark1);
								audio_play_sound(snd_Spark1,0,false);
									
								var projectile = instance_create_depth(x,y-8,depth - 1,obj_Projectile_PlasmaWisp);
								projectile.owner = id;
								projectile.abilityType = playerAbilities.sword;
								projectile.sprite_index = spr_Projectile_Spark_Normal_None;
								projectile.mask_index = projectile.sprite_index;
								projectile.hurtsPlayer=0
								projectile.enemy = false;
								projectile.dirX = dir;
								projectile.image_xscale = dir;
								projectile.image_yscale=0.2
								projectile.hspeed = dir * 6;
								projectile.vspeed = -0.5+random(1);
								projectile.destroyTimer =20;
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
								if ((isRunning) and (canDashAttack) and (hsp != 0))
								{
									scr_Player_ExecuteAttack_ParasolDash();
							    }
						    }
					    }
						break;
						#endregion
						
						#region Sleep
						case playerAbilities.sleep:
						if (!isSleeping)
						{
							scr_Player_ExecuteAttack_SleepNormal();
						}
						break;
						#endregion
						
						#region Scan
						case playerAbilities.scan:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (attackable))
					    {
							scr_Player_ExecuteAttack_ScanNormal();
					    }
						break;
						#endregion
						
						#region Mic
						case playerAbilities.mic:
					    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (attackable))
					    {
							var micCountPointer = global.micCountP1;
							switch (player)
							{
								case 0:
								global.micCountP1 += 1;
								break;
								
								case 1:
								micCountPointer = global.micCountP2;
								global.micCountP2 += 1;
								break;
								
								case 2:
								micCountPointer = global.micCountP3;
								global.micCountP3 += 1;
								break;
								
								case 3:
								micCountPointer = global.micCountP4;
								global.micCountP4 += 1;
								break;
							}
							scr_Player_ExecuteAttack_MicNormal(micCountPointer);
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
							if (keyAttackPressed && attackable && !attack)
							{
								if (isRunning && !grounded)
								{
									attackNumber = playerAttacks.jetDash;
								}
								else
								{
									attackNumber = playerAttacks.jetCharge;
									attack = true;
								    attackable = false;
									// need to set the state as well to jetCharge
									sprite_index = sprSleepReady;
									image_index = 0;
								}
							}
							
							if(attackNumber == playerAttacks.jetCharge)
							{
							//attackTimer = 99;
								//if(keyAttackReleased){
								//	attackNumber = playerAttacks.jetDash;
								//}
								image_index = 0;
								if (jetCharge == jetChargeMax - 1)
								{
									if (audio_is_playing(snd_Charge_Ready)) audio_stop_sound(snd_Charge_Ready);
									audio_play_sound(snd_Charge_Ready,0,false);
									var particle = instance_create_depth(x,y - 15,depth - 1,obj_Particle);
									particle.sprite_index = spr_Particle_Flash1;
									particle.scale = 1.5;
									particle.destroyAfterAnimation = true;
								}
								jetCharge += 1;
								if (jetCharge >= 6)
								{
									//if (jetCharge == 6)
									{
										sprite_index = sprCutterChargeReady; // change this later
										image_index = 0;
									}
									if ((!audio_is_playing(snd_Charge_Intro)) and (!audio_is_playing(snd_Charge_Loop)))
									{
										if (chargeSfxState == 0)
										{
										    chargeSfx = audio_play_sound(snd_Charge_Intro,0,false);
										    chargeSfxState = 1;
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

								if (jetCharge < jetChargeMax)
								{
									if ((!global.cutscene) and (keyAttackReleased))
									{
										jetCharge = 0;
										if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
										chargeSfxState = 0;
										invincibleFlash = false;
										invincibleFlashTimer = -1;
										attack = true;
										attackNumber = playerAttacks.jetDash;
										//sprite_index = sprCutterAttack1;
									    image_index = 0;
									}
								}
								else
								{
									if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
									if ((!global.cutscene) and (keyAttackReleased))
									{
										jetCharge = 0;
										if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
										chargeSfxState = 0;
										invincibleFlash = false;
										invincibleFlashTimer = -1;
										attack = true;
										attackNumber = playerAttacks.jetDash;
										//sprite_index = sprCutterAttack1;
									    image_index = 0;
									}
								}
							}
							if(attackNumber = playerAttacks.jetDash){
								invincible = true;
								vsp = 0;
								
								fireDashHsp = (movespeedJetAirDashBoostSmall) * dir;
								if(jetDashAir <= 0){
									fireDashHsp = fireDashHsp*0.75;
								}
								
								//isRunning = false;
					            attack = true;
								attackNumber = playerAttacks.jetDash;
								fireDashDir = 0;
								if (keyUpHold and jetDashAir > 1)
								{
									fireDashDir = -1;
									jetDashAir--;
								}
								else if (keyDownHold or jetDashAir <= 0)
								{
									fireDashDir = 1;
									jetDashAir--;
								}
								else
								{
									jetDashAir--;
								}
					            attackTimer = 25;
								if(jetDashAir == 1){
									attackTimer = 20;
								//}else if(jetDashAir <= 0){
								//	attackTimer = 16;
								}
								attackable = false;
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
								if (isRunning) hsp = (movespeedRun * 3) * dir;
							}
							else
							{
								vsp = -jumpspeed / 2;
								grounded = false;
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
						else if ((isRunning) and (canDashAttack) and (hsp != 0))
						{
							invincible = true;
							vsp = 0;
							fireDashHsp = (movespeedBurst * ((fireMagicCharcoalUpgrade / 2) + 1)) * dir;
							isRunning = false;
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
							fireDashMaskProj.dmgMin = gooey_FireDash_DamageMin;
							fireDashMaskProj.dmgMax = gooey_FireDash_DamageMax;
							scr_Attack_SetKnockback(fireDashMaskProj,gooey_FireDash_Strength,gooey_FireDash_HitStopAffectSource,gooey_FireDash_HitStopAffectPlayer,gooey_FireDash_HitStopAffectTarget,gooey_FireDash_HitStopLength,gooey_FireDash_HitStopShakeStrength);
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
							var jellyStone = false;
							//STRIMPTODO Add Jelly Marx stone sprites
							//if ((sprite_index == spr_Kirby_Normal_StoneVariant_P1_JellyMarx) or (sprite_index == spr_Kirby_Normal_StoneVariant_P2_JellyMarx) or (sprite_index == spr_Kirby_Normal_StoneVariant_P3_JellyMarx) or (sprite_index == spr_Kirby_Normal_StoneVariant_P4_JellyMarx)) jellyStone = true;
							if (jellyStone)
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
							stoneEnd.dmg = gooey_StoneNormalEnd_Damage;
							scr_Attack_SetKnockback(stoneEnd,gooey_StoneNormalEnd_Strength,gooey_StoneNormalEnd_HitStopAffectSource,gooey_StoneNormalEnd_HitStopAffectPlayer,gooey_StoneNormalEnd_HitStopAffectTarget,gooey_StoneNormalEnd_HitStopLength,gooey_StoneNormalEnd_HitStopShakeStrength);
							stoneEnd.enemy = false;
							vsp = -(jumpspeed / 3);
							grounded = false;
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
								projBeam.pulseTarget = 1;
								projBeam.imageIndex = projBeam.image_index;
								projBeam.particleTimer = -1;
								projBeam.destroyTimer = 60;
								projBeam.pulseTimerMax = 2;
								projBeam.pulseTimer = projBeam.pulseTimerMax;
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
								if (chargeSfxState == 0)
								{
									chargeSfx = audio_play_sound(snd_Charge_Intro,0,false);
									chargeSfxState = 1;
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
								chargeSfxState = 0;
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
								chargeSfxState = 0;
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
							projectile.destroyableByEnemy = false;
							projectile.destroyableByObject = false;
							projectile.player = player;
							attackable = false;
						}
					}
					
					if (attackNumber == "sirKibbleCutterChargeAttack")
					{
						if ((round(image_index) == 2) and (attackable))
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
					break;
					#endregion
				}
			}
			break;
			#endregion
		}
		
		#region Check If Attacking
		if (attack)
		{
			iceKick = false;
		}
		#endregion
		
		#region Attack Passive
		switch (attackNumber)
		{
			case playerAttacks.cutterCharge:
			scr_Player_AttackPassive_CutterCharge();
			break;
			
			case playerAttacks.cutterNormal:
			scr_Player_AttackPassive_CutterNormal(playerCharacter,playerAbility,cutterSpectralCutterUpgrade);
			break;
			
			case playerAttacks.cutterChargeAttack:
			scr_Player_AttackPassive_CutterChargeAttack(playerCharacter,playerAbility,cutterSpectralCutterUpgrade);
			break;
			
			case playerAttacks.cutterAir:
			scr_Player_AttackPassive_CutterAir();
			break;
			
			case playerAttacks.beamCharge:
			scr_Player_AttackPassive_BeamCharge();
			break;
			
			case playerAttacks.beamNormal:
			scr_Player_AttackPassive_BeamNormal();
			break;
			
			case playerAttacks.beamDash:
			scr_Player_AttackPassive_BeamDash();
			break;
			
			case playerAttacks.beamAir:
			scr_Player_AttackPassive_BeamAir();
			break;
			
			case playerAttacks.mysticBeamCharge:
			scr_Player_AttackPassive_MysticBeamCharge();
			break;
			
			case playerAttacks.mysticBeamNormal:
			scr_Player_AttackPassive_MysticBeamNormal();
			break;
			
			case playerAttacks.mysticBeamChargeAttack:
			scr_Player_AttackPassive_MysticBeamChargeAttack();
			break;
			
			case playerAttacks.mysticBeamAir:
			scr_Player_AttackPassive_MysticBeamAir();
			break;
			
			case playerAttacks.stoneNormal:
			scr_Player_AttackPassive_StoneNormal();
			break;
			
			case playerAttacks.stoneUp:
			scr_Player_AttackPassive_StoneUp();
			break;
			
			case playerAttacks.ufoCharge:
			scr_Player_AttackPassive_UfoCharge();
			break;
			
			case playerAttacks.ufoBeam:
			scr_Player_AttackPassive_UfoBeam();
			break;
			
			case playerAttacks.mirrorNormal:
			scr_Player_AttackPassive_MirrorNormal();
			break;
			
			case playerAttacks.ninjaHoldCharge:
			scr_Player_AttackPassive_NinjaHoldCharge();
			break;
			
			case playerAttacks.fireNormal:
			scr_Player_AttackPassive_FireNormal();
			break;
			
			case playerAttacks.fireBack:
			scr_Player_AttackPassive_FireBack();
			break;
			
			case playerAttacks.fireWheel:
			scr_Player_AttackPassive_FireWheel();
			break;
			
			case playerAttacks.fireWheelClimb:
			scr_Player_AttackPassive_FireWheelClimb();
			break;
			
			case playerAttacks.iceNormal:
			scr_Player_AttackPassive_IceNormal();
			break;
			
			case playerAttacks.sparkHoldCharge:
			scr_Player_AttackPassive_SparkHoldCharge();
			break;
			
			case playerAttacks.sparkNormal:
			scr_Player_AttackPassive_SparkNormal();
			break;
			
			case playerAttacks.wingDash:
			scr_Player_AttackPassive_WingDash();
			break;
			
			case playerAttacks.sleepNormal:
			scr_Player_AttackPassive_SleepNormal();
			break;
		}
		#endregion
		#endregion
		
		#region Jump
		if ((keyJumpPressed) and (!keyDownHold))
		{
			jumpInputBuffer = jumpInputBufferMax;
		}
		
		if ((!global.cutscene) and (canJump) and (playerAbility != playerAbilities.ufo) and (((!canMultiJump) and (jumpCoyoteTimeBuffer > 0)) or ((canMultiJump) and (multiJumpCounter < multiJumpLimit))) and (!wallAbove) and (jumpInputBuffer > 0) and (!attack))
		{
			scr_Player_ExecuteJump();
			hasJumped = 0;
			grounded = false;
			jumpInputBuffer = 0;
		}
		#endregion
		
		#region Jump Limit Flash		
		if ((invincibleFlashTimer == -1) and (multiJumpLimit != -1) and (multiJumpCounter >= multiJumpLimit)) invincibleFlashTimer = invincibleFlashTimerMax;
		#endregion
		
		#region Auto Jump
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
					grounded = false;
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
				grounded = false;
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
				grounded = false;
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
				if ((canFallRoll) and (carriedItem == carriedItems.none) and (playerAbility != playerAbilities.sword) and (playerAbility != playerAbilities.parasol) and (playerAbility != playerAbilities.hammer)) fallRoll = true;
				sprite_index = sprJump;
				image_index = 0;
				vsp = -jumpspeed;
				grounded = false;
				break;
			}
		}
		#endregion
		
		#region Duck
		if ((!global.cutscene) and (canDuck) and (playerAbility != playerAbilities.ufo) and (grounded) and (keyDownHold) and (!attack))
		{
			if (vsp == 0)
			{
				scr_Player_ExecuteDuck(playerAbility);
			}
		}
		#endregion
		
		#region Climb
		if ((!global.cutscene) and (playerAbility != playerAbilities.ufo) and (canClimb) and (place_meeting(x,y,obj_Ladder)))
		{
		    if ((((!place_meeting(x,y - 1,obj_ParentWall)) and (keyUpHold) and vsp > -1) or ((!grounded) and (keyDownHold))) and (!attack))
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
		#endregion
		
		#region Float
		if ((!global.cutscene) and (canFloat) and ((carriedItem == carriedItems.none) and (carriedItemState != carriedItemStates.heavy)) and ((keyJumpPressed) and (!place_meeting(x,y - jumpInputBufferMax,obj_Wall)) and (!place_meeting(x,y,obj_AntiFloat)) and (jumpCoyoteTimeBuffer == 0)) and (!attack))
		{
			switch (playerCharacter)
			{
				#region Kirby
				case playerCharacters.kirby:
				switch(playerAbility)
				{
					#region Jet
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
					#endregion
					
					#region Ufo
					case playerAbilities.ufo:
					break;
					#endregion
					
					#region Default
					default:
					attackTimer = 0;
					isRunning = false;
					hurt = false;
					jumpspeed = jumpspeedFloat;
					vsp = -jumpspeed;
					float = false;
					grounded = false;
					image_index = 0;
					state = playerStates.float;
					break;
					#endregion
				}
				break;
				#endregion
				
				#region Gooey
				case playerCharacters.gooey:
				attackTimer = 0;
				hurt = false;
				jumpspeed = jumpspeedFloat;
				vsp = -jumpspeed;
				float = true;
				grounded = false;
				image_index = 0;
				state = playerStates.float;
				break;
				#endregion
				
				#region Default
				default:
				attackTimer = 0;
				hurt = false;
				jumpspeed = jumpspeedFloat;
				vsp = -jumpspeed;
				float = false;
				grounded = false;
				image_index = 0;
				state = playerStates.float;
				break;
				#endregion
			}
		}
		#endregion
		
		#region Enter Door
		if ((!global.cutscene) and (canEnter) and (position_meeting(x,y,obj_Door)) and (keyUpHold) and (!attack))
		{
		    if ((!instance_exists(obj_Fade)) and (!hurt))
		    {
				enteredDoor = instance_place(x,y,obj_Door);
		    }
		}
		
		if (enteredDoor != -1)
		{
			var nearbyDoor = enteredDoor;
			switch (nearbyDoor.state)
			{
				case "goToRoom":
				if (!nearbyDoor.locked)
				{
					if (audio_is_playing(snd_Enter)) audio_stop_sound(snd_Enter);
					audio_play_sound(snd_Enter,0,false);
					var fade = instance_create_depth(x,y,-999,obj_Fade);
					fade.targetRoom = nearbyDoor.targetRoom;
					if (nearbyDoor.changeStageTo != -1) global.currentStage = nearbyDoor.changeStageTo;
					if (nearbyDoor.targetRoomGlobal != -1) global.roomNext = nearbyDoor.targetRoomGlobal;
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
			enteredDoor = -1;
		}
		#endregion
		
		#region Grab Item
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
		#endregion
		
		#region Animation
		var heavyItemCarry = false;
		if (carriedItemState == carriedItemStates.heavy) heavyItemCarry = true;
		var heavyItemCarrySpd = heavyItemCarry / 2;
		if ((isRunning) or ((carriedItemIndex != -1) and (carriedItemIndex.object_index == obj_Projectile_Bomb) and (carriedItemIndex.selfExplodeTimer != -1) and (carriedItemIndex.selfExplodeTimer <= 90))) heavyItemCarrySpd = heavyItemCarry / 1.5;
		
		if (fallHop)
		{
			image_speed = .75 * speedMultFinal;
		}
		else
		{
			image_speed = (1 + (runImageSpeedIncrease * isRunning) + heavyItemCarrySpd) * speedMultFinal;
		}
		
		if ((!canUfoFloat) and (playerAbility != playerAbilities.ufo) and !((attack) and (attackDisableAnimation)) and (!hurt) and (!iceKick))
		{
			if ((grounded) and (vsp == 0))
			{
				if (hsp == 0)
				{
					if (hasIdleAnimation)
					{
						if (!idleAnimation)
						{
							if ((idleAnimationTimer < idleAnimationTimerMax) and !((carriedItemIndex.object_index == obj_Projectile_Bomb) and (carriedItemIndex.selfExplodeTimer <= 90)))
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
					
					var idlesprite = sprIdle;
					var idleblinksprite = sprIdleBlink;
					if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
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
					
					if (playerCharacter == playerCharacters.kirby)
					{
						switch (groundedSlopeType)
						{
							case slopeTypes.normal:
							if (dir == 1)
							{
								if (groundedWallDir == 1)
								{
									idlesprite = sprIdleNormalSlopeL;
									idleblinksprite = sprIdleNormalSlopeLBlink;
									if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
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
									if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
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
								if (groundedWallDir == 1)
								{
									idlesprite = sprIdleNormalSlopeR;
									idleblinksprite = sprIdleNormalSlopeRBlink;
									if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
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
									if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
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
							
							case slopeTypes.gentle:
							if (dir == 1)
							{
								if (groundedWallDir == 1)
								{
									idlesprite = sprIdleNormalSlopeR;
									idleblinksprite = sprIdleNormalSlopeRBlink;
									if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
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
									if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
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
								if (groundedWallDir == 1)
								{
									idlesprite = sprIdleNormalSlopeL;
									idleblinksprite = sprIdleNormalSlopeLBlink;
									if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
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
									if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
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
							
							case slopeTypes.steep:
							if (dir == 1)
							{
								if (groundedWallDir == 1)
								{
									idlesprite = sprIdleSteepSlopeR;
									idleblinksprite = sprIdleSteepSlopeRBlink;
									if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
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
									if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
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
								if (groundedWallDir == 1)
								{
									idlesprite = sprIdleSteepSlopeL;
									idleblinksprite = sprIdleSteepSlopeLBlink;
									if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
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
									if ((carriedItem != carriedItems.none) or (playerAbility == playerAbilities.sword) or (playerAbility == playerAbilities.parasol) or (playerAbility == playerAbilities.hammer))
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
					
					if ((hasIdleAnimation) and (idleAnimation) and (!sparkMaxCharge) and (!((carriedItemIndex.object_index == obj_Projectile_Bomb) and (carriedItemIndex.selfExplodeTimer <= 90))))
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
					else if ((carriedItemIndex != -1) and (carriedItemIndex.object_index == obj_Projectile_Bomb) and (carriedItemIndex.selfExplodeTimer <= 90))
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
					if (hasIdleAnimation)
					{
						if (idleAnimation) image_index = 0;
						idleAnimation = false;
						idleAnimationTimer = 0;
						idleAnimationTimerMax = 30;
					}
					
					if (isRunning)
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
						if ((carriedItem == carriedItems.none) and (playerAbility != playerAbilities.sword) and (playerAbility != playerAbilities.parasol) and (playerAbility != playerAbilities.hammer))
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
					else if (vsp >= 0)
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
				if !((attack) and (attackDisableAnimation))
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
		
		if ((hurt) and (playerAbility != playerAbilities.ufo)) sprite_index = sprHurt;
		#endregion
		
		#region Walk Duck
		if ((!walkDuck) and (carriedItem == carriedItems.none) and (playerAbility != playerAbilities.ufo) and (place_meeting(x,y + (1 + vsp),obj_ParentWall)) and (vsp > 1) and (!attack))
		{
			var collidingWall = instance_place(x,y + (1 + vsp),obj_ParentWall);
			if ((!collidingWall.platform) or ((collidingWall.platform) and ((!keyDownHold) and !(round(bbox_bottom) > collidingWall.y + collidingWall.vsp + 20 + vspFinal))))
			{
				switch (playerCharacter)
				{
					#region Bouncy
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
					#endregion
					
					#region Gordo
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
					#endregion
					
					#region Blood Gordo
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
					#endregion
					
					#region Default
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
					#endregion
				}
			}
		}
		#endregion
		
		#region Walk Squish
		if ((!walkSquish) and (playerAbility != playerAbilities.ufo) and (place_meeting(x + hspFinal,y,obj_ParentWall)) and (grounded) and (abs(hspFinal) >= (movespeedFinal / 2)) and (!attack))
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
				if ((parDirection > 90) and (parDirection <= 270)) parScaleDir = -1;
				var parSquish = instance_create_depth(x,y,depth + 1,obj_Particle);
				parSquish.sprite_index = spr_Particle_ShrinkingStar2;
				parSquish.destroyAfterAnimation = true;
				parSquish.spdBuiltIn = 7;
				parSquish.fricSpd = .6;
				parSquish.direction = parDirection;
				parSquish.dir = parScaleDir;
			}
		}
		#endregion
		
		#region High Priority Animation
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
		#endregion
		
		#region Collision
		scr_Player_Collision(playerMechs.none);
		#endregion
	}
	else
	{
		#region Paused
		image_speed = 0;
		shake = 0;
		#endregion
	}
	
	#region Mic Animation
	if (attackNumber == playerAttacks.micNormal) image_speed = 1 * speedMultFinal;
	#endregion
}