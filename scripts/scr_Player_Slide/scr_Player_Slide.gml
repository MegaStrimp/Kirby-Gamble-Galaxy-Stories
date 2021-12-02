///@description Slide State

function scr_Player_Slide()
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
		
		//Duck
		
		if (duck)
		{
			if (!global.cutscene)
			{
			    if ((keyboard_check(keyLeft)) or (gamepad_button_check(0,gp_padl))) dir = -1;
			    if ((keyboard_check(keyRight)) or (gamepad_button_check(0,gp_padr))) dir = 1;
			}
		    hsp = 0;
			
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
							if (!bombSmartBombUpgrade) grabObj.destroyTimer = 30;
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
						else
						{
							attack = true;
							attackNumber = "bombDown";
							sprite_index = sprItemCarryHeavyDuck;
							image_index = 0;
						}
					}
					
					if (attackNumber == "bombDown")
					{
						carriedItemIndex.active = true;
						carriedItemIndex.explodeTimer = 25;
						carriedItem = "none";
						carriedItemIndex = -1;
						carriedItemState = "none";
						bombDownReady = false;
						attackTimer = 20;
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
							case "beam":
						    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
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
							break;
							
							case "mysticBeam":
						    if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
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
								bombDownReady = true;
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
								if (!bombMultiBombUpgrade) carriedItemIndex.selfExplodeTimer = carriedItemIndex.selfExplodeTimerMax;
								if (((player == 0) and (global.hatTypeBombP1 == "modern")) or ((player == 1) and (global.hatTypeBombP2 == "modern"))) 
								{
									carriedItemIndex.character = 1;
									carriedItemIndex.sprIdle = spr_Projectile_Bomb_Modern;
									carriedItemIndex.sprite_index = carriedItemIndex.sprIdle;
								}
							}
							break;
							
							case "ice":
							if ((!global.cutscene) and ((keyboard_check_pressed(keyAttack)) or (gamepad_button_check_pressed(0,gp_face2))) and (!hurt) and (!attack))
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
							break;
						}
					}
				}
				break;
			}
			
			if (!attack)
			{
			    if (place_meeting(x,y + 1,obj_Wall))
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
					
					if (carriedItem != "none")
					{
						if (carriedItemState == "light")
						{
							ducksprite = sprItemCarryLightDuck;
							duckblinksprite = sprItemCarryLightDuck;
						}
						else if (carriedItemState == "heavy")
						{
							ducksprite = sprItemCarryHeavyDuck;
							duckblinksprite = sprItemCarryHeavyDuck;
						}
					}
					
					if (idleAnimation)
					{
						switch (playerCharacter)
						{
							case "kirby":
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
			
		    if ((!global.cutscene) and (carriedItemState != "heavy") and (canSlide) and (!duckSlide) and (!attack) and (place_meeting(x,y + 1,obj_Wall)) and ((keyboard_check_pressed(keyJump)) or (gamepad_button_check_pressed(0,gp_face1))))
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
		    }
			
			//Cancel Ducking
			
			if ((!global.cutscene) and ((!keyboard_check(keyDown)) and (!gamepad_button_check(0,gp_padd))) or ((canDuckHighJump) and (duckJumpCharge == duckJumpChargeMax) and ((keyboard_check_pressed(keyJump)) or (gamepad_button_check_pressed(0,gp_face1)))))
			{
				if (duckJumpCharge == duckJumpChargeMax)
				{
					var playerCharacter = global.characterP1;
					if (player == 1) playerCharacter = global.characterP2;
					
					switch (playerCharacter)
					{
						case "waddleDee":
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
						
						case "waddleDoo":
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
		    if (place_meeting(x,y + 1,obj_Wall))
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
		        duck = true;
		        duckSlide = false;
		    }
		}
		
		//Animation
		
		image_speed = 1;
		
		scr_Player_Collision();
	}
	else
	{
		image_speed = 0;
		shake = 0;
	}
}