///@description Slide State

function scr_Player_States_Slide()
{
	if (!global.pause)
	{
		//Variables
		
		var playerCharacter = global.characterP1;
		if (player == 1) playerCharacter = global.characterP2;
		
		var playerAbility = global.abilityP1;
		if (player == 1) playerAbility = global.abilityP2;
		
		//Gravity
		
		if (vsp < gravLimitNormal)
		{
			vsp += grav;
		}
		else
		{
			duckJumpCharge = 0;
			duckSlide = false;
			duck = false;
			state = playerStates.normal;
			vsp = gravLimitNormal;
		}
		
		//Grounded
		
		if ((grounded) and (jumpLimit)) vsp = 0;
		
		//Duck
		
		if (duck)
		{
			if (!global.cutscene)
			{
			    if (keyLeftHold) dir = -1;
			    if (keyRightHold) dir = 1;
			}
		    hsp = 0;
			
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
						if ((grabEnemy != -1) and (grabEnemy.hurtable) and (!grabEnemy.hurt) and (!grabEnemy.isBoss))
						{
							if (audio_is_playing(snd_Guard)) audio_stop_sound(snd_Guard);
							audio_play_sound(snd_Guard,0,false);
							sprite_index = sprBombAttack4;
							grabObj = instance_create_depth(grabEnemy.x,grabEnemy.y,grabEnemy.depth,obj_Projectile_GrabEnemy);
							grabObj.owner = id;
							grabObj.abilityType = playerAbilities.bomb;
							grabObj.dirX = grabEnemy.dirX;
							grabObj.dmg = "none";
							grabObj.active = true;
							grabObj.particleTimer = grabObj.particleTimerMax;
							if (!bombSmartBombUpgrade) grabObj.destroyTimer = 30;
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
							carriedItemState = "none";
							attackTimer = 10;
						}
						else
						{
							attack = true;
							attackNumber = playerAttacks.bombDown;
							sprite_index = sprItemCarryHeavyDuck;
							image_index = 0;
						}
					}
					
					if (attackNumber == playerAttacks.bombDown)
					{
						carriedItemIndex.active = true;
						carriedItemIndex.explodeTimer = 40;
						carriedItem = carriedItems.none;
						carriedItemIndex = -1;
						carriedItemState = "none";
						bombDownReady = false;
						canGrabTimer = 15;
						attackTimer = 20;
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
							#region Beam
							case playerAbilities.beam:
						    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
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
							break;
							#endregion
							
							#region Mystic Beam
							case playerAbilities.mysticBeam:
						    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
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
								else if (grounded)
								{
									if (audio_is_playing(snd_BeamAir)) audio_stop_sound(snd_BeamAir);
									audio_play_sound(snd_BeamAir,0,false);
									sprite_index = sprBeamAttack1;
									image_index = 0;
						            attack = true;
									attackNumber = playerAttacks.mysticBeamDown;
									attackable = false;
						            attackTimer = 30;
									for (var i = 0; i < 2; i++)
									{
										var projSpd = random_range(3,4);
										var projDir = dir;
										if (i == 1) projDir = -dir;
										var projBeam = instance_create_depth(x + (12 * projDir),y - 12,depth,obj_Projectile_Beam);
										projBeam.imageSpeed = 1;
										projBeam.owner = id;
										projBeam.abilityType = playerAbilities.mysticBeam;
										projBeam.player = player;
										projBeam.dmg = 18;
									    projBeam.dirX = projDir;
									    projBeam.dir = projDir;
										projBeam.hsp = projSpd;
									    projBeam.state = 4;
									    projBeam.hasGravity = true;
									    projBeam.enemy = false;
										projBeam.character = 2;
										projBeam.sprIdle = spr_Projectile_MysticBeam_Normal;
										projBeam.isMystic = true;
										projBeam.sprite_index = projBeam.sprIdle;
										projBeam.invisTimer = -1;
										projBeam.alphaTimer = projBeam.alphaTimerMax;
									}
								}
							}
							break;
							#endregion
							
							#region Stone
							case playerAbilities.stone:
						    if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (attackable))
						    {
								if (audio_is_playing(snd_StoneReady)) audio_stop_sound(snd_StoneReady);
								audio_play_sound(snd_StoneReady,0,false);
								state = playerStates.normal;
								hsp = 0;
								vsp = -jumpspeed / 2;
								jumpLimit = false;
								jumpLimitTimer = 15;
								invincible = true;
						        attack = true;
						        attackNumber = playerAttacks.stoneNormal;
						        attackable = false;
								stoneParticleTimer = 0;
								sprite_index = sprStoneAttack1Ready;
								image_index = 0;
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
								bombDownReady = true;
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
								if (!bombMultiBombUpgrade) carriedItemIndex.selfExplodeTimer = carriedItemIndex.selfExplodeTimerMax;
								if (((player == 0) and (global.hatTypeBombP1 == abilityHatSkins.bomb_modern)) or ((player == 1) and (global.hatTypeBombP2 == abilityHatSkins.bomb_modern))) 
								{
									carriedItemIndex.character = 1;
									carriedItemIndex.sprIdle = spr_Projectile_Bomb_Modern;
									carriedItemIndex.sprite_index = carriedItemIndex.sprIdle;
								}
							}
							break;
							#endregion
							
							#region Ice
							case playerAbilities.ice:
							if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (!attack))
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
									attackNumber = playerAttacks.iceGrab;
									hsp = 0;
									state = playerStates.iceGrab;
								}
							}
							break;
							#endregion
							
							#region Spark
							case playerAbilities.spark:
							if ((!global.cutscene) and (!hurt) and (!attack))
							{
								if (keyAttackPressed)
								{
									attack = true;
									attackable = false;
									sparkCooldown = 30;
									attackNumber = playerAttacks.sparkNormal;
									state = playerStates.normal;
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
							#endregion
						}
						break;
						#endregion
						
						#region Gooey
						case playerCharacters.gooey:
						if ((!global.cutscene) and (keyAttackPressed) and (!hurt) and (attackable))
						{
							if (audio_is_playing(snd_StoneReady)) audio_stop_sound(snd_StoneReady);
							audio_play_sound(snd_StoneReady,0,false);
							state = playerStates.normal;
							hsp = 0;
							vsp = -jumpspeed / 2;
							jumpLimit = false;
							jumpLimitTimer = 15;
							invincible = true;
						    attack = true;
						    attackNumber = playerAttacks.gooeyStoneNormal;
						    attackable = false;
							stoneParticleTimer = 0;
							sprite_index = sprStoneAttack1Ready;
							image_index = 0;
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
						#endregion
						break;
					}
				}
				break;
				#endregion
			}
			
			if (!attack)
			{
			    if (place_meeting(x,y + 1,obj_ParentWall))
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
				
					var ducksprite = sprDuck;
					var duckblinksprite = sprDuckBlink;
				
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
									ducksprite = sprDuckNormalSlopeL;
									duckblinksprite = sprDuckNormalSlopeLBlink;
								}
								else
								{
									ducksprite = sprDuckNormalSlopeR;
									duckblinksprite = sprDuckNormalSlopeRBlink;
								}
							}
							else
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									ducksprite = sprDuckNormalSlopeR;
									duckblinksprite = sprDuckNormalSlopeRBlink;
								}
								else
								{
									ducksprite = sprDuckNormalSlopeL;
									duckblinksprite = sprDuckNormalSlopeLBlink;
								}
							}
							break;
						
							case "gentle":
							if (dir == 1)
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									ducksprite = sprDuckNormalSlopeR;
									duckblinksprite = sprDuckNormalSlopeRBlink;
								}
								else
								{
									ducksprite = sprDuckNormalSlopeL;
									duckblinksprite = sprDuckNormalSlopeLBlink;
								}
							}
							else
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									ducksprite = sprDuckNormalSlopeL;
									duckblinksprite = sprDuckNormalSlopeLBlink;
								}
								else
								{
									ducksprite = sprDuckNormalSlopeR;
									duckblinksprite = sprDuckNormalSlopeRBlink;
								}
							}
							break;
						
							case "steep":
							if (dir == 1)
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									ducksprite = sprDuckSteepSlopeR;
									duckblinksprite = sprDuckSteepSlopeRBlink;
								}
								else
								{
									ducksprite = sprDuckSteepSlopeL;
									duckblinksprite = sprDuckSteepSlopeLBlink;
								}
							}
							else
							{
								if (sign(collidedWall.image_xscale) == 1)
								{
									ducksprite = sprDuckSteepSlopeL;
									duckblinksprite = sprDuckSteepSlopeLBlink;
								}
								else
								{
									ducksprite = sprDuckSteepSlopeR;
									duckblinksprite = sprDuckSteepSlopeRBlink;
								}
							}
							break;
						}
					}
					
					if (carriedItem != carriedItems.none)
					{
						if (carriedItemState == carriedItemStates.light)
						{
							ducksprite = sprItemCarryLightDuck;
							duckblinksprite = sprItemCarryLightDuck;
						}
						else if (carriedItemState == carriedItemStates.heavy)
						{
							ducksprite = sprItemCarryHeavyDuck;
							duckblinksprite = sprItemCarryHeavyDuck;
						}
					}
					
					if (idleAnimation)
					{
						switch (playerCharacter)
						{
							case playerCharacters.kirby:
							sprite_index = duckblinksprite;
							break;
						
							default:
							sprite_index = ducksprite;
							break;
						}
					}
					else
					{
						sprite_index = ducksprite;
					}
			    }
				else
				{
					if (idleAnimation) image_index = 0;
					idleAnimation = false;
					idleAnimationTimer = 0;
					idleAnimationTimerMax = 30;
					sprite_index = sprFall;
				}
			}
			
			if (canDuckHighJump)
			{
				if (duckJumpCharge < duckJumpChargeMax)
				{
					if (duckJumpCharge == duckJumpChargeMax - 1)
					{
						audio_play_sound(snd_Charge_Ready,0,false);
						var particle = instance_create_depth(x,y - 4,depth - 1,obj_Particle);
						particle.sprite_index = spr_Particle_Flash1;
						particle.destroyAfterAnimation = true;
					}
					duckJumpCharge += 1;
				}
				else
				{
					if (invincibleFlashTimer == -1) invincibleFlashTimer = invincibleFlashTimerMax;
					duckJumpCharge = duckJumpChargeMax;
				}
				scaleExX = (.15 / duckJumpChargeMax) * duckJumpCharge;
				scaleExY = (-.15 / duckJumpChargeMax) * duckJumpCharge;
			}
			
		    if ((!global.cutscene) and (carriedItemState != carriedItemStates.heavy) and (canSlide) and (!duckSlide) and (!attack) and (place_meeting(x,y + 1,obj_ParentWall)) and (keyJumpPressed))
		    {
				if (audio_is_playing(snd_Slide)) audio_stop_sound(snd_Slide);
				slideSfx = audio_play_sound(snd_Slide,0,false);
				slideMaskProj = instance_create_depth(x,y,depth,obj_Projectile_SlideMask);
				slideMaskProj.owner = id;
				slideMaskProj.dmg = dmg;
				slideMaskProj.image_xscale = image_xscale;
				slideMaskProj.image_yscale = image_yscale;
		        hsp = movespeedSlide * dir;
		        duckSlide = true;
		        duck = false;
				duckJumpCharge = 0;
		    }
			
			//Cancel Ducking
			
			if ((!global.cutscene) and (!keyDownHold) or ((canDuckHighJump) and (duckJumpCharge == duckJumpChargeMax) and (keyJumpPressed)))
			{
				if (duckJumpCharge == duckJumpChargeMax)
				{
					var playerCharacter = global.characterP1;
					if (player == 1) playerCharacter = global.characterP2;
					
					switch (playerCharacter)
					{
						case playerCharacters.waddleDee:
						var jumpSound = choose(snd_WaddleDee1,snd_WaddleDee6,snd_WaddleDee7,snd_WaddleDee8,snd_WaddleDee9,snd_WaddleDee10,snd_WaddleDee11);
						audio_play_sound(jumpSound,0,false);
						if (audio_is_playing(snd_BigJump)) audio_stop_sound(snd_BigJump);
						audio_play_sound(snd_BigJump,0,false);
						var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
						parJump.sprite_index = spr_Particle_Jump;
						parJump.destroyAfterAnimation = true;
						parJump.spdBuiltIn = 6;
						parJump.fricSpd = .6;
						parJump.direction = 90 + (20 * dir);
						sprite_index = sprJump;
						image_index = 0;
						scaleExX = -.25;
						scaleExY = .25;
						vsp = -(jumpspeed * 1.25);
						break;
						
						case playerCharacters.waddleDoo:
						if (audio_is_playing(snd_BigJump)) audio_stop_sound(snd_BigJump);
						audio_play_sound(snd_BigJump,0,false);
						var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
						parJump.sprite_index = spr_Particle_Jump;
						parJump.destroyAfterAnimation = true;
						parJump.spdBuiltIn = 6;
						parJump.fricSpd = .6;
						parJump.direction = 90 + (20 * dir);
						sprite_index = sprJump;
						image_index = 0;
						scaleExX = -.25;
						scaleExY = .25;
						vsp = -(jumpspeed * 1.25);
						break;
						
						default:
						if (audio_is_playing(snd_BigJump)) audio_stop_sound(snd_BigJump);
						audio_play_sound(snd_BigJump,0,false);
						var parJump = instance_create_depth(x - (7 * dir),y + 5,depth + 1,obj_Particle);
						parJump.sprite_index = spr_Particle_Jump;
						parJump.destroyAfterAnimation = true;
						parJump.spdBuiltIn = 6;
						parJump.fricSpd = .6;
						parJump.direction = 90 + (20 * dir);
						sprite_index = sprJump;
						image_index = 0;
						vsp = -(jumpspeed * 1.25);
						break;
					}
					if (audio_is_playing(chargeSfx)) audio_stop_sound(chargeSfx);
					chargeSfxState = "intro";
					invincibleFlash = false;
					invincibleFlashTimer = -1;
					jumpLimit = false;
					jumpLimitTimer = (jumpLimitTimerMax * 2);
				}
				duckJumpCharge = 0;
			    duckSlide = false;
			    duck = false;
			    state = playerStates.normal;
			}
		}
		
		//Slide
		
		if (duckSlide)
		{
		    if (hsp >= decelSlide) hsp -= decelSlide;
		    if (hsp <= -decelSlide) hsp += decelSlide;
			if ((hsp > -decelSlide) and (hsp < decelSlide)) hsp = 0;
			
			if (idleAnimation) image_index = 0;
			idleAnimation = false;
			idleAnimationTimer = 0;
			idleAnimationTimerMax = 30;
		    if (place_meeting(x,y + 1,obj_ParentWall))
		    {
				if (abs(hsp) > (decelSlide * 5))
				{
					sprite_index = sprSlide;
				}
				else
				{
					sprite_index = sprSlideEnd;
				}
		    }
			else
			{
				sprite_index = sprFall;
			}
		    if (hsp == 0)
		    {
				if (audio_is_playing(slideSfx)) audio_stop_sound(slideSfx);
				if (instance_exists(slideMaskProj)) instance_destroy(slideMaskProj);
				scr_Player_SpawnMirrorShield(playerAbility);
		        duck = true;
		        duckSlide = false;
		    }
		}
		
		//Animation
		
		image_speed = 1;
		
		scr_Player_Collision(playerMechs.none);
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}