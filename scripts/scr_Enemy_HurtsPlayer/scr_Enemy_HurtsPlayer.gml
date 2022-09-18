///@description Hurts Player

function scr_Enemy_HurtsPlayer(argument0)
{
	//Variables
	
	var dmg = argument0;
	
	//Hurt Player
	
	if ((place_meeting(x,y,obj_Player)) and (!hurt))
	{
		collidedPlayer = instance_place(x,y,obj_Player);
		if ((collidedPlayer.canGetHurt) and (!collidedPlayer.invincible) and (!collidedPlayer.hasInvinCandy))
		{
			//Variables
			
			//var playerHp = global.hpP1;
			//if (collidedPlayer.player == 1) playerHp = global.hpP2;
			
			var playerHp = global.healthP1;
			if (collidedPlayer.player == 1) playerHp = global.healthP2;
			
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
			var oldHealthP1 = global.healthP1;
			var oldHealthP2 = global.healthP2;
			if (collidedPlayer.player == 0)
			{
				//global.hpP1 -= dmg;				
				global.healthP1 -= dmg;
				if(global.healthP1 <= 0 && oldHealthP1 > global.undershotValP1){ // Undershot check, will need to add a check for if attack is a "finishing blow", in which case it will ignore undershot
					global.healthP1 = global.undershotValP1;
				}
			}
			else
			{
				//global.hpP2 -= dmg;
				global.healthP2 -= dmg;
				if(global.healthP2 <= 0 && oldHealthP2 > global.undershotValP2){
					global.healthP2 = global.undershotValP2;
				}
			}
			if ((collidedPlayer.player == 0) and (global.healthP1 <= (0.2*global.healthP1Max)))
			{
				if (audio_is_playing(snd_LowHp)) audio_stop_sound(snd_LowHp);
				if(oldHealthP1 > (0.2*global.healthP1Max)){
					audio_play_sound(snd_LowHp,0,false);
				}
				if (instance_exists(obj_Hud))
				{
					obj_Hud.flashP1Timer = obj_Hud.flashTimerMax;
					obj_Hud.flashStopP1Timer = obj_Hud.flashStopTimerMax;
				}
			}
			if ((collidedPlayer.player == 1) and (global.healthP2 <= (0.2*global.healthP2Max)))
			{
				if (audio_is_playing(snd_LowHp)) audio_stop_sound(snd_LowHp);
				if(oldHealthP2 > (0.2*global.healthP2Max)){
					audio_play_sound(snd_LowHp,0,false);
				}
				if (instance_exists(obj_Hud))
				{
					obj_Hud.flashP2Timer = obj_Hud.flashTimerMax;
					obj_Hud.flashStopP2Timer = obj_Hud.flashStopTimerMax;
				}
			}
			if ((dmg > 0) and (((collidedPlayer.player == 0) and (global.abilityP1 != playerAbilities.none) and (global.healthP1 > 0) and ((object_index == obj_Spike) or (global.healthP1 % 2 != 0))) or ((collidedPlayer.player == 1) and (global.abilityP2 != playerAbilities.none) and (global.healthP2 > 0) and ((object_index == obj_Spike) or (global.healthP2 % 2 != 0)))))
			{
			    if (instance_exists(obj_AbilityDropStar))
				{
					with (obj_AbilityDropStar)
					{
						if ((!isBubble) and (owner.player == other.collidedPlayer.player)) destroy = true;
					}
				}
				if ((collidedPlayer.state == playerStates.cutterDash) or (collidedPlayer.state == playerStates.mirrorDash) or (collidedPlayer.state == playerStates.fireDash) or (collidedPlayer.state == playerStates.wingDash) or (collidedPlayer.state == playerStates.swordDash)) collidedPlayer.state = playerStates.normal;
				var abilityDropStar = instance_create_depth(round(x),round(y - 6),depth + 1,obj_AbilityDropStar);
				abilityDropStar.owner = collidedPlayer;
				abilityDropStar.hsp = -collidedPlayer.dir * 1.5;
				abilityDropStar.vsp = -abilityDropStar.jumpspeed;
				abilityDropStar.dir = -collidedPlayer.image_xscale;
				abilityDropStar.ability = playerAbility;
				abilityDropStar.player = collidedPlayer;
				
				switch (abilityDropStar.ability)
				{
					case playerAbilities.cutter:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Cutter;
					break;
					
					case playerAbilities.beam:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Beam;
					break;
					
					case playerAbilities.mysticBeam:
					abilityDropStar.sprite_index = spr_AbilityDropStar_MysticBeam;
					break;
					
					case playerAbilities.stone:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Stone;
					break;
					
					case playerAbilities.ufo:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Ufo;
					break;
					
					case playerAbilities.mirror:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Mirror;
					break;
					
					case playerAbilities.ninja:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Ninja;
					break;
					
					case playerAbilities.bomb:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Bomb;
					break;
					
					case playerAbilities.fire:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Fire;
					break;
					
					case playerAbilities.mysticFire:
					abilityDropStar.sprite_index = spr_AbilityDropStar_MysticFire;
					break;
					
					case playerAbilities.ice:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Ice;
					break;
					
					case playerAbilities.spark:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Spark;
					break;
					
					case playerAbilities.yoyo:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Yoyo;
					break;
					
					case playerAbilities.wheel:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Wheel;
					break;
					
					case playerAbilities.artist:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Artist;
					break;
					
					case playerAbilities.fighter:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Fighter;
					break;
					
					case playerAbilities.suplex:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Suplex;
					break;
					
					case playerAbilities.wing:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Wing;
					break;
					
					case playerAbilities.jet:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Jet;
					break;
					
					case playerAbilities.sword:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Sword;
					break;
					
					case playerAbilities.parasol:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Parasol;
					break;
					
					case playerAbilities.hammer:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Hammer;
					break;
					
					case playerAbilities.bell:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Bell;
					break;
					
					case playerAbilities.water:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Water;
					break;
					
					default:
					abilityDropStar.sprite_index = spr_AbilityDropStar_Normal;
					break;
				}
				if (collidedPlayer.player == 0)
				{
					global.abilityP1 = playerAbilities.none;
				}
				else
				{
					global.abilityP2 = playerAbilities.none;
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
			
			if (!place_meeting(collidedPlayer.x,collidedPlayer.y + 1,obj_ParentWall))
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
			takendamageType = damageTypes.none;
			if (collidedPlayer.dmg >= hp)
			{
				hurtTimer = hurtStopTimerMax + 5;
				if ((hasDeathKnockback) and (takenDamageType != damageTypes.ice)) hurtStopTimer = hurtStopTimerMax;
			    shake = 1;
			    if (instance_exists(obj_Camera)) obj_Camera.shake = 3;
			}
			else
			{
				hurtTimer = hurtTimerMax;
			}
			if ((!isMiniBoss) and (!isBoss)) global.healthbarMarkedEnemy = id;
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