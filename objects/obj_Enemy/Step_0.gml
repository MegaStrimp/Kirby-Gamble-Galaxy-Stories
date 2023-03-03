///@description Main

#region Variables
if (parasol)
{
	gravLimit = gravLimitParasol;
	grav = gravParasol;
	if ((!instance_exists(parasolObject)) or (place_meeting(x,y + 1,obj_ParentWall))) parasol = false;
}
else
{
	if (hurt)
	{
		gravLimit = 5;
		grav = .2;
	}
	else
	{
		gravLimit = gravLimitNormal;
		grav = gravNormal;
	}
}

var parentPause = ((!global.pause) and !((global.cutscene) and (pausedInCutscenes)));
#endregion

if ((parentPause) and (hurtStopTimer < 1))
{
	#region Destroy Outside View
	scr_Enemy_DestroyOutsideView();
	#endregion
	
	#region Gravity
	if (hasGravity)
	{
		if (vsp < gravLimit)
		{
			vsp += grav;
		}
		else
		{
			vsp = gravLimit;
		}
	}
	
	if (gravMinLimit)
	{
		vsp = min(0,vsp);
	}
	#endregion
	
	#region Knockback
	if (knockbackX >= decel) knockbackX -= decel;
	if (knockbackX <= -decel) knockbackX += decel;
	if ((knockbackX > -decel) and (knockbackX < decel)) knockbackX = 0;
	
	if (knockbackY >= grav) knockbackY -= grav;
	if (knockbackY <= -grav) knockbackY += grav;
	if ((knockbackY > -grav) and (knockbackY < grav)) knockbackY = 0;
	#endregion
	
	//Death
	
	if ((!deathAnimationPlayed) and ((death) or ((!hasDeathAnimation) and (hp <= 0))))
	{
		deathAnimationPlayed = true;
		if (takenDamageType == damageTypes.ice)
		{
			var iceCube = instance_create_depth(x,y,depth,obj_Projectile_IceCube);
			iceCube.dmg = 36;
			iceCube.dirX = dirX;
			if (sprHurt == -1)
			{
				iceCube.sprHurt = sprite_index;
				iceCube.enemyImageIndex = image_index;
			}
			else
			{
				iceCube.sprHurt = sprHurt;
			}
		}
		else
		{
			if ((!isMiniBoss) and (hasDeathParticles) and (!fellDown))
			{
				if (audio_is_playing(snd_DeathParticles)) audio_stop_sound(snd_DeathParticles);
				audio_play_sound(snd_DeathParticles,0,false);
			}
			
			if (isMiniBoss)
			{
				if (audio_is_playing(snd_MinibossDeath)) audio_stop_sound(snd_MinibossDeath);
				audio_play_sound(snd_MinibossDeath,0,false);
				
				var parNum = irandom_range(15,20);
				for (var i = 0; i < parNum; i++)
				{
					var par = instance_create_depth(x + irandom_range((-sprite_get_width(sprite_index) / 2),(sprite_get_width(sprite_index) / 2)),y - irandom_range(0,sprite_get_height(sprite_index) / 1.5),depth - 1,obj_Particle);
					par.sprite_index = choose(spr_ColorfulStars1,spr_ColorfulStars2,spr_ColorfulStars3,spr_ColorfulStars4);
					var starColorsSelected = irandom_range(0,array_length(starColors) - 1);
					par.image_index = starColors[starColorsSelected];
					par.hsp = random_range(-4,4);
					par.vsp = random_range(-5,-3);
					par.angleSpd = par.hsp * 3;
					par.hasGravity = true;
					par.invisTimer = 100;
					par.destroyTimer = 120;
				}
				
				var deathObj = instance_create_depth(x,y - 12,depth,obj_Miniboss_Death);
				deathObj.hsp = 2 * projectileHitKnockbackDir;
				deathObj.vsp = -6;
				deathObj.ownerIndex = object_index;
				deathObj.paletteIndex = paletteIndex;
				deathObj.points = points;
				deathObj.ability = ability;
				deathObj.dirX = dirX;
			}
			else if (isBoss)
			{
				for (var i = 0; i < 3; i++)
				{
					var particle = instance_create_depth(x,y,depth,obj_Particle);
					particle.followObject = false;
					particle.followedObject = id;
					particle.turnAroundObject = true;
					particle.sprite_index = spr_Particle_Explosion2;
					particle.image_index = i;
					particle.imageSpeed = 0;
					particle.spd = -15;
					if (i == 0) particle.spd = -30;
					particle.orbit = 24;
					if (i == 0) particle.orbit = 6;
					particle.angle = 90;
					if (i == 2) particle.angle = 270;
					particle.visible = false;
					particle.destroyTimer = 30;
				}
				for (var i = 0; i < 8; i++)
				{
					var parDirection = (45 * i);
				
					var par = instance_create_depth(x,y,depth - 1,obj_Particle);
					par.sprite_index = spr_SpitStar_Small;
					par.image_index = 1;
					par.imageSpeed = 0;
					par.spdBuiltIn = 6;
					par.fricSpd = .2;
					par.direction = parDirection;
					par.destroyTimer = 45;
					var parScaleDir = 1;
					if ((par.direction > 90) and (par.direction <= 270))
					{
						var parScaleDir = -1;
					}
					par.dir = parScaleDir;
				}
				
				with (obj_Hud)
				{
					hasBossDeathOverlay = true;
					bossDeathColor = c_white;
					bossDeathColorTimer = 0;
				}
				
				with (obj_Camera)
				{
					if (audio_is_playing(snd_BossDeath1)) audio_stop_sound(snd_BossDeath1);
					audio_play_sound(snd_BossDeath1,0,false);
					bossDeath = true;
					freezeFrameTimer = 60;
				}
			}
			else
			{
				if (!fellDown)
				{
					if (hasDeathParticles)
					{
						var deathParticles = instance_create_depth(x,y,depth,obj_DeathParticles);
						deathParticles.state = choose("roundabout","doubleCross","cross","doubleHex");
					}
					if (objectOnDeath)
					{
						proj = instance_create_depth(x,y,depth,objectOnDeathObj);
						if (objectOnDeathObj == obj_Projectile_ExplosionMask)
						{
							proj.enemy = enemy;
							proj.hurtsEnemy = !enemy;
							proj.hurtsPlayer = enemy;
							if (object_index == obj_Projectile_Bomb)
							{
								if (audio_is_playing(snd_BombExplode)) audio_stop_sound(snd_BombExplode);
								audio_play_sound(snd_BombExplode,0,false);
								if (hasMagma)
								{
									for (var i = 0; i < 3; i++)
									{
										proj = instance_create_depth(x + ((i - 1) * 15),y - 4,depth,obj_Projectile_SmallFire);
										proj.owner = id;
										proj.dmg = 8;
										proj.enemy = false;
										proj.destroyableByWall = false;
										proj.destroyableByEnemy = false;
										proj.destroyableByObject = false;
									}
								}
							}
							else
							{
								if (audio_is_playing(snd_Explosion1)) audio_stop_sound(snd_Explosion1);
								audio_play_sound(snd_Explosion1,0,false);
							}
							var explosion = instance_create_depth(x,y,depth,obj_DeathParticles);
							explosion.state = "explosion1";
						}
					}
				}
			}
		}
		global.points += points;
		
		checkEnemySpawners = true;
		with (obj_Enemy) if ((id != other.id) and (spawner == other.spawner)) other.checkEnemySpawners = false;
		
		if ((hasSpawner) and (checkEnemySpawners)) spawner.spawn = true;
		
		if ((instance_exists(obj_SquadControl)) and (squadType != -1))
		{
			obj_SquadControl.waveEnemyCount[obj_SquadControl.currentWave][squadType] += 1;
		}
		
		//Familiar Ability Bubble
		
		if ((ability != playerAbilities.none) and (!isMiniBoss) and (!isBoss) and (takenIsFamiliar))
		{
			var abilityDropStar = instance_create_depth(bubbleX,bubbleY,depth,obj_AbilityDropStar);
			abilityDropStar.ability = ability;
			abilityDropStar.isBubble = true;
			abilityDropStar.jumpspeed = .25;
			abilityDropStar.scale = .1;
			abilityDropStar.image_xscale = abilityDropStar.scale;
			abilityDropStar.image_yscale = abilityDropStar.scale;
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
				
				case playerAbilities.sleep:
				abilityDropStar.sprite_index = spr_AbilityStar_Sleep;
				break;
				
				case playerAbilities.scan:
				abilityDropStar.sprite_index = spr_AbilityStar_Scan;
				break;
				
				case playerAbilities.mic:
				abilityDropStar.sprite_index = spr_AbilityStar_Mic;
				break;
				
				default:
				abilityDropStar.sprite_index = spr_AbilityStar_Normal;
				break;
			}
			while (place_meeting(abilityDropStar.x,abilityDropStar.y + 1,obj_ParentWall)) abilityDropStar.y -= 1;
		}
		
		#region Bestiary Variables
		switch (object_index)
		{
			case obj_WaddleDee:
			global.bestiaryEnemiesWaddleDeeUnlocked = true;
			break;
			
			case obj_WaddleDoo:
			global.bestiaryEnemiesWaddleDooUnlocked = true;
			break;
			
			case obj_BrontoBurt:
			global.bestiaryEnemiesBrontoBurtUnlocked = true;
			break;
			
			case obj_Twizzy:
			global.bestiaryEnemiesTwizzyUnlocked = true;
			break;
			
			case obj_Tookey:
			global.bestiaryEnemiesTookeyUnlocked = true;
			break;
			
			case obj_SirKibble:
			global.bestiaryEnemiesSirKibbleUnlocked = true;
			break;
			
			case obj_Gordo:
			global.bestiaryEnemiesGordoUnlocked = true;
			break;
			
			case obj_BloodGordo:
			global.bestiaryEnemiesBloodGordoUnlocked = true;
			break;
			
			case obj_GhostGordo:
			global.bestiaryEnemiesGhostGordoUnlocked = true;
			break;
			
			case obj_Shotzo:
			global.bestiaryEnemiesShotzoUnlocked = true;
			break;
			
			case obj_MysticDoo:
			global.bestiaryEnemiesMysticDooUnlocked = true;
			break;
			
			case obj_Bouncy:
			global.bestiaryEnemiesBouncyUnlocked = true;
			break;
			
			case obj_MrBoogie:
			global.bestiaryEnemiesMrBoogieUnlocked = true;
			break;
			
			case obj_Searches:
			global.bestiaryEnemiesSearchesUnlocked = true;
			break;
			
			case obj_HiveDrone:
			global.bestiaryEnemiesHiveDroneUnlocked = true;
			break;
			
			case obj_Wapod:
			global.bestiaryEnemiesWapodUnlocked = true;
			break;
			
			case obj_Flamebelch:
			global.bestiaryEnemiesFlamebelchUnlocked = true;
			break;
			
			case obj_Cappy:
			global.bestiaryEnemiesCappyUnlocked = true;
			break;
			
			case obj_BroomHatter:
			global.bestiaryEnemiesBroomHatterUnlocked = true;
			break;
			
			case obj_Coconut:
			global.bestiaryEnemiesCoconutUnlocked = true;
			break;
			
			case obj_Noddy:
			global.bestiaryEnemiesNoddyUnlocked = true;
			break;
			
			case obj_Blado:
			global.bestiaryEnemiesBladoUnlocked = true;
			break;
			
			case obj_Scarfy:
			global.bestiaryEnemiesScarfyUnlocked = true;
			break;
			
			case obj_Rocky:
			global.bestiaryEnemiesRockyUnlocked = true;
			break;
			
			case obj_Grizzo:
			global.bestiaryEnemiesGrizzoUnlocked = true;
			break;
			
			case obj_JungleBomb:
			global.bestiaryEnemiesJungleBombUnlocked = true;
			break;
			
			case obj_Glunk:
			global.bestiaryEnemiesGlunkUnlocked = true;
			break;
			
			case obj_Kabu:
			global.bestiaryEnemiesKabuUnlocked = true;
			break;
			
			case obj_BurningLeo:
			global.bestiaryEnemiesBurningLeoUnlocked = true;
			break;
			
			case obj_Tomatoo:
			global.bestiaryEnemiesTomatooUnlocked = true;
			break;
			
			case obj_Onion:
			global.bestiaryEnemiesOnionUnlocked = true;
			break;
			
			case obj_Anemonee:
			global.bestiaryEnemiesAnemoneeUnlocked = true;
			break;
			
			case obj_Gim:
			global.bestiaryEnemiesGimUnlocked = true;
			break;
			
			case obj_PoppyBrosJr:
			global.bestiaryEnemiesPoppyBrosJrUnlocked = true;
			break;
			
			case obj_Bobo:
			global.bestiaryEnemiesBoboUnlocked = true;
			break;
			
			case obj_Foley:
			global.bestiaryEnemiesFoleyUnlocked = true;
			break;
			
			case obj_Nidoo:
			global.bestiaryEnemiesNidooUnlocked = true;
			break;
			
			case obj_Como:
			global.bestiaryEnemiesComoUnlocked = true;
			break;
			
			case obj_Cairn:
			global.bestiaryEnemiesCairnUnlocked = true;
			break;
			
			case obj_Bomber:
			global.bestiaryEnemiesBomberUnlocked = true;
			break;
			
			case obj_Simirror:
			global.bestiaryEnemiesSimirrorUnlocked = true;
			break;
		}
		#endregion
		
		//Destroy
		
		if (!isBoss) instance_destroy();
	}
	
	#region Animation
	scaleExX = lerp(scaleExX,0,scaleExSpd);
	scaleExY = lerp(scaleExY,0,scaleExSpd);
	
	image_xscale = scale * dirX;
	image_yscale = scale * dirY;
	#endregion
	
	#region Collision
	if ((setupTimer == 0) and (groundFailsafe))
	{
		with (obj_ParentWall)
		{
			if (owner != other.id)
			{
				while (place_meeting(x,y,other))
				{
					other.y -= 1;
				}
			}
		}
	}
	
	scr_Enemy_Collision();
	#endregion
	
	#region Bumpers
	if (place_meeting(x,y,obj_Bumper) and ((hasXKnockback) or ((hasYKnockback))))
	{
		//Variables
		
		var collidedBumper = instance_place(x,y,obj_Bumper);
		collidedBumper.hit = true;
		collidedBumper.hitTimer = collidedBumper.hitTimerMax;
		
		//Sound
		
		if (audio_is_playing(snd_Bumper)) audio_stop_sound(snd_Bumper);
		audio_play_sound(snd_Bumper,0,false);
		
		//Vertical Knockback
		
		if (hasYKnockback)
		{
			if (y > ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2)) + 4))
			{
				knockbackY = collidedBumper.force;
			}
			if (y < ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2)) - 4))
			{
				knockbackY = -collidedBumper.force;
			}
			if ((y < ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2)) + 4)) and (y > ((collidedBumper.y + (sprite_get_height(collidedBumper.sprite_index) / 2)) - 4)))
			{
				knockbackY = -(collidedBumper.force / 2);
			}
		}
		
		//Horizontal Knockback
		
		if (hasXKnockback)
		{
			if (x > ((collidedBumper.x + (sprite_get_width(collidedBumper.sprite_index) / 2)) + 4))
			{
				knockbackX = collidedBumper.force;
			}
			if (x < ((collidedBumper.x + (sprite_get_width(collidedBumper.sprite_index) / 2)) - 4))
			{
				knockbackX = -collidedBumper.force;
			}
		}
	}
	#endregion
	
	#region Springs
	if (place_meeting(x,y + 1,obj_Spring))
	{
		if (sign(vsp + knockbackY) != -1)
		{
			//Variables
			
			var collidedSpring = instance_place(x,y + 1,obj_Spring);
			collidedSpring.hit = true;
			collidedSpring.hitTimer = collidedSpring.hitTimerMax;
			var finalForce = collidedSpring.force;
			var drawOffsetForce = 8;
			
			audio_play_sound(snd_BigJump,0,false);
			
			if ((collidedSpring.object_index == obj_BouncyCloud) or (collidedSpring.object_index == obj_BouncyCloudHigh))
			{
				collidedSpring.scaleExY = -.2;
				collidedSpring.yDrawOffset = drawOffsetForce;
			}
			
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
			
			//Vertical Knockback
			
			vsp = -finalForce;
		}
	}
	#endregion
	
	#region Trampolines
	if ((place_meeting(x,y - 1,obj_Trampoline)) and (hasYKnockback))
	{
		if (sign(vsp + knockbackY) == 1)
		{
			//Variables
			
			var collidedTrampoline = instance_place(x,y - 1,obj_Trampoline);
			collidedTrampoline.jumpCount += 1;
			collidedTrampoline.resetTimer = collidedTrampoline.resetTimerMax;
			collidedTrampoline.hit = true;
			collidedTrampoline.hitTimer = collidedTrampoline.hitTimerMax;
			
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
				
				if (audio_is_playing(snd_BigJump)) audio_stop_sound(snd_BigJump);
				audio_play_sound(snd_BigJump,0,false);
			}
			else
			{
				if (audio_is_playing(snd_Jump)) audio_stop_sound(snd_Jump);
				audio_play_sound(snd_Jump,0,false);
			}
			
			//Vertical Knockback
			
			knockbackY = -(collidedTrampoline.force / 3) - ((collidedTrampoline.force / collidedTrampoline.jumpCountMax) * collidedTrampoline.jumpCount);
		}
	}
	#endregion
	
	#region Hurt Timer
	if (hurtTimer > 0)
	{
		show_debug_message(1);
		hurtTimer -= 1;
	}
	else if (hurtTimer == 0)
	{
		if (hp < 1)
        {
            death = true;
        }
        else if (hp > 0)
        {
            hurt = false;
        }
		hasGravity = (backupFlags >> BFLAGS.BF_GRAV) & 1;
		hasXCollision = (backupFlags >> BFLAGS.BF_XCOLL) & 1;
		hasYCollision = (backupFlags >> BFLAGS.BF_YCOLL) & 1;
		destroyOutsideView = (backupFlags >> BFLAGS.BF_DESPAWN) & 1;
		
		shakeX = 0;
		shakeY = 0;
		hurtTimer = -1;
	}
	#endregion
	
	#region Invincible Timer
	if (invincibleTimer > 0)
	{
		invincibleTimer -= 1;
	}
	else if (invincibleTimer == 0)
	{
		invincible = false;
		invincibleTimer = -1;
	}
	#endregion
	
	#region Invincible Flash Timer
	if (invincible)
	{
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
	}
	else
	{
		invincibleFlash = false;
		invincibleFlashTimer = -1;
	}
	#endregion
	
	#region Hurt
	if (collisionHitbox == -1)
	{
		if (!hurtable)
		{
			with (obj_Projectile)
			{
				if (place_meeting(x,y,other))
				{
					if (hsp == 0)
					{
						if (x < other.x) other.projectileHitKnockbackDir = -1;
					}
					else
					{
						other.projectileHitKnockbackDir = -sign(hsp);
					}
					if ((destroyableByEnemy) and (owner != other) and (!enemy))
					{
						if (particleOnHit)
						{
							var particle = instance_create_depth(x,y,depth,obj_Particle);
							particle.sprite_index = particleOnHitSpr;
							particle.dir = dirX;
							particle.destroyAfterAnimation = true;
						}
				
						if (deathParticlesOnHit)
						{
							var particle = instance_create_depth(x,y,depth,obj_DeathParticles);
							particle.state = deathParticlesOnHitNumber;
							particle.dir = dirX;
						}
				
						if (objectOnHit)
						{
							var proj = instance_create_depth(x,y,depth,objectOnHitObj);
							if (isBoss)
							{
								proj.isBoss = isBoss;
								proj.owner = owner;
							}
							if (objectOnHitDmg != -1) proj.dmg = objectOnHitDmg;
							if (objectOnHitObj == obj_Projectile_ExplosionMask)
							{
								proj.enemy = enemy;
								proj.hurtsEnemy = !enemy;
								proj.hurtsPlayer = enemy;
								if (object_index == obj_Projectile_DoomsdayBomb)
								{
									proj.explosionIndex = 1;
									proj.showHitbox = false;
								}
								if (object_index == obj_Projectile_Bomb)
								{
									if (audio_is_playing(snd_BombExplode)) audio_stop_sound(snd_BombExplode);
									audio_play_sound(snd_BombExplode,0,false);
									if (hasMagma)
									{
										for (var i = 0; i < 3; i++)
										{
											proj = instance_create_depth(x + ((i - 1) * 15),y - 4,depth,obj_Projectile_SmallFire);
											proj.owner = id;
											proj.dmg = 8;
											proj.enemy = false;
											proj.destroyableByWall = false;
											proj.destroyableByEnemy = false;
											proj.destroyableByObject = false;
										}
									}
								}
								else
								{
									if (audio_is_playing(snd_Explosion1)) audio_stop_sound(snd_Explosion1);
									audio_play_sound(snd_Explosion1,0,false);
								}
								var explosion = instance_create_depth(x,y,depth,obj_DeathParticles);
								explosion.state = "explosion1";
							}
						}
						instance_destroy();
					}
				}
			}
		}
		else if ((!invincible) and (hp > 0))
		{
			with (obj_Projectile)
			{
				if (place_meeting(x,y,other))
				{
					scr_Enemy_Hurt(other,id);
			
					if ((destroyableByEnemy) and (owner != other) and (!enemy))
					{
						if (particleOnHit)
						{
							var particle = instance_create_depth(x,y,depth,obj_Particle);
							particle.sprite_index = particleOnHitSpr;
							particle.dir = dirX;
							particle.destroyAfterAnimation = true;
						}
				
						if (deathParticlesOnHit)
						{
							var particle = instance_create_depth(x,y,depth,obj_DeathParticles);
							particle.state = deathParticlesOnHitNumber;
							particle.dir = dirX;
						}
				
						if (objectOnHit)
						{
							var proj = instance_create_depth(x,y,depth,objectOnHitObj);
							if (isBoss)
							{
								proj.isBoss = isBoss;
								proj.owner = owner;
							}
							if (objectOnHitDmg != -1) proj.dmg = objectOnHitDmg;
							if (objectOnHitObj == obj_Projectile_ExplosionMask)
							{
								if (enemy)
								{
									proj.enemy = true;
									proj.hurtsEnemy = false;
									proj.hurtsPlayer = true;
								}
								else
								{
									proj.enemy = false;
									proj.hurtsEnemy = true;
									proj.hurtsPlayer = false;
								}
								if (object_index == obj_Projectile_DoomsdayBomb)
								{
									proj.explosionIndex = 1;
									proj.showHitbox = false;
								}
								if (object_index == obj_Projectile_Bomb)
								{
									if (audio_is_playing(snd_BombExplode)) audio_stop_sound(snd_BombExplode);
									audio_play_sound(snd_BombExplode,0,false);
									if (hasMagma)
									{
										for (var i = 0; i < 3; i++)
										{
											proj = instance_create_depth(x + ((i - 1) * 15),y - 4,depth,obj_Projectile_SmallFire);
											proj.owner = id;
											proj.dmg = 8;
											proj.enemy = false;
											proj.destroyableByWall = false;
											proj.destroyableByEnemy = false;
											proj.destroyableByObject = false;
										}
									}
								}
								else
								{
									if (audio_is_playing(snd_Explosion1)) audio_stop_sound(snd_Explosion1);
									audio_play_sound(snd_Explosion1,0,false);
								}
								var explosion = instance_create_depth(x,y,depth,obj_DeathParticles);
								explosion.state = "explosion1";
							}
						}
						instance_destroy();
					}
				}
			}
		}
		
		if (place_meeting(x,y,obj_Spike))
		{
			var collidingSpike = instance_place(x,y,obj_Spike);
			{
				hp -= collidingSpike.dmg;
				other.shakeX = 2;
				other.shakeY = 2;
				scr_HurtKnockback(self,collidingSpike);
				hurt = true;
				if (sprHurt != -1) hurtImageIndex = irandom_range(0,sprite_get_number(sprHurt) - 1);
				hurtTimer = hurtTimerMax;
				invincible = true;
				invincibleTimer = invincibleTimerMax;
				invincibleFlashTimer = invincibleFlashTimerMax;
				if (isMystic) fluxOverlayAlpha = .8;
			}
		}
	}
	#endregion
	
	#region Scan
	with (obj_Projectile)
	{
		if (place_meeting(x,y,other))
		{
			if ((damageType == damageTypes.scan) and (other.ability != playerAbilities.none) and (!other.isMiniBoss) and (!other.isBoss))
			{
				if (canScan)
				{
					if (owner.scanTimer == -1)
					{
						if (audio_is_playing(snd_ScanCapture)) audio_stop_sound(snd_ScanCapture);
						audio_play_sound(snd_ScanCapture,0,false);
						global.pause = true;
						if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
						if (instance_exists(obj_Camera)) obj_Camera.freezeFrameTimer = -1;
						canScan = false;
						particleTimer = particleTimerMax;
						owner.cAbility = other.ability;
						owner.scanTimer = owner.scanTimerMax;
						var par = instance_create_depth(other.x,other.y,other.depth - 1,obj_Particle);
						par.sprite_index = spr_Particle_Scan1;
						par.pausable = false;
						par.destroyTimer = owner.scanTimerMax;
						var par = instance_create_depth(other.x,other.y,other.depth - 1,obj_Particle);
						par.sprite_index = spr_Particle_Scan2;
						par.pausable = false;
						par.destroyTimer = owner.scanTimerMax;
						var par = instance_create_depth(other.x,other.y,other.depth - 1,obj_Particle);
						par.sprite_index = spr_Particle_Scan3;
						par.pausable = false;
						par.destroyTimer = owner.scanTimerMax;
					}
				}
			}
		}
	}
	#endregion
	
	#region Shine Effect Timer
	if (shineEffectTimer > 0)
	{
		shineEffectTimer -= 1;
	}
	else if (shineEffectTimer == 0)
	{
		var particle = instance_create_depth(x + irandom_range(-(sprite_get_width(sprite_index) / 2),(sprite_get_width(sprite_index) / 2)),y + irandom_range(-(sprite_get_height(sprite_index) / 2),(sprite_get_height(sprite_index) / 2)),depth - 1,obj_Particle);
		particle.sprite_index = spr_Particle_SmallSparkle_White;
		particle.destroyAfterAnimation = true;
		shineEffectTimer = shineEffectTimerMax;
	}
	#endregion
}

#region Set Child Pause
childPause = (((global.pause) or (hurt) or ((global.cutscene) and (pausedInCutscenes))) or (hurtStopTimer > 0));
#endregion

#region Hurt Stop Timer
if (parentPause)
{
	if (hurtStopTimer > 0)
	{
		hurtStopTimer -= 1;
	}
	else if (hurtStopTimer == 0)
	{
		show_debug_message("Counting hitstop");
		hurtStopTimer = -1;
	}
}
#endregion

#region Setup Timer
if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	if (parasol)
	{
		parasolObject = instance_create_depth(x + (parasolX * dirX),y - (sprite_get_height(sprite_index) / 2) + parasolY,depth + 1,obj_EnemyParasol);
		parasolObject.parasolX = (parasolX * dirX);
		parasolObject.parasolY = parasolY;
		parasolObject.parasolOwner = id;
		parasolObject.dirX = -dirX;
	}
	hp += floor((hp * (instance_number(obj_Player) - 1)) / 2);
	hpMax = hp;
	healthbarBackHp = hp;
	if ((isMiniBoss) or (isBoss)) healthbarBackHp = bossHbHp;
	setupTimer = -1;
}
#endregion

#region Debug Delete
if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}
#endregion