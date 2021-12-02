///@description Hurts Player

function scr_Enemy_HurtsPlayer()
{
	//Hurt Player
	
	if ((place_meeting(x,y,obj_Player)) and (!hurt))
	{
		collidedPlayer = instance_place(x,y,obj_Player);
		if ((collidedPlayer.canGetHurt) and (!collidedPlayer.invincible))
		{
			//Variables
			
			var playerHp = global.hpP1;
			if (collidedPlayer.player == 1) playerHp = global.hpP2;
			
			var playerCharacter = global.characterP1;
			if (collidedPlayer.player == 1) playerCharacter = global.characterP2;
			
			var playerAbility = global.abilityP1;
			if (collidedPlayer.player == 1) playerAbility = global.abilityP2;
			
			//Main
			
			if (collidedPlayer.state = playerStates.float)
			{
				
			}
			else
			{
				collidedPlayer.sprite_index = collidedPlayer.sprHurt;
				collidedPlayer.image_index = irandom_range(0,collidedPlayer.image_number);
			}
			collidedPlayer.jumpLimit = false;
			collidedPlayer.jumpLimitTimer = collidedPlayer.jumpLimitTimerMax;
			scr_Player_CancelAbility(collidedPlayer);
			if (collidedPlayer.sprite_index = collidedPlayer.sprSpit)
			{
				collidedPlayer.spit = false;
				collidedPlayer.state = playerStates.normal;
			}
			collidedPlayer.hurt = true;
			collidedPlayer.invincible = true;
			collidedPlayer.hurtTimer = collidedPlayer.hurtTimerMax;
			collidedPlayer.invincibleTimer = collidedPlayer.invincibleTimerMax;
			collidedPlayer.invincibleFlash = true;
			collidedPlayer.invincibleFlashTimer = collidedPlayer.invincibleFlashTimerMax;
			if (collidedPlayer.player == 0)
			{
				global.hpP1 -= dmg;
			}
			else
			{
				global.hpP2 -= dmg;
			}
			if ((collidedPlayer.player == 0) and (global.hpP1 == 1))
			{
				if (audio_is_playing(snd_LowHp)) audio_stop_sound(snd_LowHp);
				audio_play_sound(snd_LowHp,0,false);
				if (instance_exists(obj_Hud))
				{
					obj_Hud.flashP1Timer = obj_Hud.flashTimerMax;
					obj_Hud.flashStopP1Timer = obj_Hud.flashStopTimerMax;
				}
			}
			if ((collidedPlayer.player == 1) and (global.hpP2 == 1))
			{
				if (audio_is_playing(snd_LowHp)) audio_stop_sound(snd_LowHp);
				audio_play_sound(snd_LowHp,0,false);
				if (instance_exists(obj_Hud))
				{
					obj_Hud.flashP2Timer = obj_Hud.flashTimerMax;
					obj_Hud.flashStopP2Timer = obj_Hud.flashStopTimerMax;
				}
			}
			if ((dmg > 0) and (((collidedPlayer.player == 0) and (global.abilityP1 != "none") and (global.hpP1 > 0) and ((object_index == obj_Spike) or (global.hpP1 % 2 != 0))) or ((collidedPlayer.player == 1) and (global.abilityP2 != "none") and (global.hpP2 > 0) and ((object_index == obj_Spike) or (global.hpP2 % 2 != 0)))))
			{
			    if (instance_exists(obj_AbilityDropStar))
				{
					with (obj_AbilityDropStar)
					{
						if ((!isBubble) and (owner.player == other.player)) destroy = true;
					}
				}
				if ((collidedPlayer.state == playerStates.cutterDash) or (collidedPlayer.state == playerStates.mirrorDash) or (collidedPlayer.state == playerStates.fireDash) or (collidedPlayer.state == playerStates.wingDash)) collidedPlayer.state = playerStates.normal;
				var abilityDropStar = instance_create_depth(round(x),round(y - 6),depth + 1,obj_AbilityDropStar);
				abilityDropStar.owner = collidedPlayer;
				abilityDropStar.vsp = -abilityDropStar.jumpspeed;
				abilityDropStar.dir = -image_xscale;
				abilityDropStar.ability = playerAbility;
				abilityDropStar.player = collidedPlayer;
				
				switch (abilityDropStar.ability)
				{
					case "cutter":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Cutter;
					break;
					
					case "beam":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Beam;
					break;
					
					case "mysticBeam":
					abilityDropStar.sprite_index = spr_AbilityDropStar_MysticBeam;
					break;
					
					case "stone":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Stone;
					break;
					
					case "ufo":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Ufo;
					break;
					
					case "mirror":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Mirror;
					break;
					
					case "ninja":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Ninja;
					break;
					
					case "bomb":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Bomb;
					break;
					
					case "fire":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Fire;
					break;
					
					case "mysticFire":
					abilityDropStar.sprite_index = spr_AbilityDropStar_MysticFire;
					break;
					
					case "ice":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Ice;
					break;
					
					case "spark":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Spark;
					break;
					
					case "yoyo":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Yoyo;
					break;
					
					case "wheel":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Wheel;
					break;
					
					case "artist":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Artist;
					break;
					
					case "fighter":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Fighter;
					break;
					
					case "suplex":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Suplex;
					break;
					
					case "wing":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Wing;
					break;
					
					case "jet":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Jet;
					break;
					
					case "sword":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Sword;
					break;
					
					case "parasol":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Parasol;
					break;
					
					case "hammer":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Hammer;
					break;
					
					case "bell":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Bell;
					break;
					
					case "water":
					abilityDropStar.sprite_index = spr_AbilityDropStar_Water;
					break;
					
					default:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Normal;
					break;
				}
				if (collidedPlayer.player == 0)
				{
					global.abilityP1 = "none";
				}
				else
				{
					global.abilityP2 = "none";
				}
			}
			
			//Sound Effects
			
			if (audio_is_playing(snd_Hurt)) audio_stop_sound(snd_Hurt);
			audio_play_sound(snd_Hurt,0,false);
			
			//Change State To Normal
			
			if ((collidedPlayer.state == playerStates.inhale) or (collidedPlayer.state == playerStates.climb) or (collidedPlayer.state == playerStates.slide))
			{
				if (collidedPlayer.state == playerStates.slide)
				{
					collidedPlayer.duckSlide = false;
					collidedPlayer.duck = false;
				}
				collidedPlayer.inhaleSoundCont = false;
				if (audio_is_playing(snd_Inhale_Intro)) audio_stop_sound(snd_Inhale_Intro);
				if (audio_is_playing(snd_Inhale_Loop)) audio_stop_sound(snd_Inhale_Loop);
				collidedPlayer.state = playerStates.normal;
			}
			
			//Vertical Knockback
			
			if (!place_meeting(collidedPlayer.x,collidedPlayer.y + 1,obj_Wall))
			{
				/*if (collidedPlayer.y > (y + 4))
				{
					collidedPlayer.vsp = collidedPlayer.jumpspeed / 2;
					if (collidedPlayer.state == playerStates.float) collidedPlayer.vsp = collidedPlayer.jumpspeed * 2;
				}*/
				if (collidedPlayer.y <= bbox_top)
				{
					collidedPlayer.vsp = -collidedPlayer.jumpspeed / 2;
					if (collidedPlayer.state == playerStates.float) collidedPlayer.vsp = -collidedPlayer.jumpspeed * 2;
				}
				/*if ((collidedPlayer.y < (y + 4)) and (collidedPlayer.y > (y - 4)))
				{
					collidedPlayer.vsp = -(collidedPlayer.jumpspeed / 2);
					if (collidedPlayer.state == playerStates.float) collidedPlayer.vsp = -(collidedPlayer.jumpspeed / 2);
				}*/
			}
			
			//if (object_index != obj_Spike)
			{
				//Horizontal Knockback
			
				if (collidedPlayer.x > (x + 4))
				{
					collidedPlayer.hsp = collidedPlayer.movespeed;
					if (collidedPlayer.state == playerStates.slide) collidedPlayer.hsp = (collidedPlayer.movespeed * 2);
				}
				if (collidedPlayer.x < (x - 4))
				{
					collidedPlayer.hsp = -collidedPlayer.movespeed;
					if (collidedPlayer.state == playerStates.slide) collidedPlayer.hsp = -(collidedPlayer.movespeed * 2);
				}
			}
		}
		
		//Hurt Enemy
		
		if ((hurtable) and (!isBoss))
		{
			if (audio_is_playing(snd_EnemyHurt)) audio_stop_sound(snd_EnemyHurt);
			audio_play_sound(snd_EnemyHurt,0,false);
			takenDamageType = "none";
			if (collidedPlayer.dmg >= hp)
			{
				hurtTimer = hurtStopTimerMax + 5;
				if ((hasDeathKnockback) and (takenDamageType != "freeze")) hurtStopTimer = hurtStopTimerMax;
			    shake = 1;
			    if (instance_exists(obj_Camera)) obj_Camera.shake = 3;
			}
			else
			{
				if (!isBoss) global.healthbarMarkedEnemy = id;
				hurtTimer = hurtTimerMax;
			}
			hp -= collidedPlayer.dmg;
			shakeX = 2;
			shakeY = 2;
			direction = point_direction(x,y,x,y) + irandom_range(150,210);
			hurt = true;
			if (isMystic) fluxOverlayAlpha = .8;
			scr_HurtKnockback(self,collidedPlayer);
		}
	}
}