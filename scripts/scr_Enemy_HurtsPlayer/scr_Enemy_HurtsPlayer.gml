///@description Hurts Player

function scr_Enemy_HurtsPlayer(argument0)
{
	//Variables
	
	var dmg = argument0;
	
	//Hurt Player
	
	var stopWhenHurt = true;
	if ((object_get_parent(object_index) == obj_Enemy) and ((isMiniBoss) or (isBoss))) stopWhenHurt = false;
	
	if ((place_meeting(x,y,obj_Player)) and (((stopWhenHurt) and (!hurt)) or (!stopWhenHurt)) and (!global.cutscene))
	{
		collidedPlayer = instance_place(x,y,obj_Player);
		if ((collidedPlayer.canGetHurt) and (!collidedPlayer.invincible) and (!collidedPlayer.hasInvinCandy) and !((object_get_parent(object_index) == obj_Projectile) and (!isDirectHit) and (collidedPlayer.attackNumber == playerAttacks.slideJump)))
		{
			//Variables
			
			switch (collidedPlayer.player)
			{
				case 0:
				var playerHp = global.healthP1;
				var playerHpMax = global.healthP1Max;
				var playerAbility = global.abilityP1;
				var playerCharacter = global.characterP1;
				break;
				
				case 1:
				var playerHp = global.healthP2;
				var playerHpMax = global.healthP2Max;
				var playerAbility = global.abilityP2;
				var playerCharacter = global.characterP2;
				break;
				
				case 2:
				var playerHp = global.healthP3;
				var playerHpMax = global.healthP3Max;
				var playerAbility = global.abilityP3;
				var playerCharacter = global.characterP3;
				break;
				
				case 3:
				var playerHp = global.healthP4;
				var playerHpMax = global.healthP4Max;
				var playerAbility = global.abilityP4;
				var playerCharacter = global.characterP4;
				break;
			}
			
			//Main
			
			if (collidedPlayer.state != playerStates.float)
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
			var oldHealthP3 = global.healthP3;
			var oldHealthP4 = global.healthP4;
			
			var finalResistance = 1;
			if (playerHp < playerHpMax / 2) finalResistance -= .2;
			if (playerHp < playerHpMax / 3) finalResistance -= .1;
			
			switch (collidedPlayer.player)
			{
				case 0:
				global.healP1Mod = global.healthP1;			
				global.healthP1 -= floor(dmg * finalResistance);
				if (global.healthP1 <= 0 && oldHealthP1 > global.undershotValP1){ // Undershot check, will need to add a check for if attack is a "finishing blow", in which case it will ignore undershot
					global.healthP1 = global.undershotValP1;
				}
				
				if (global.healthP1 <= (.2 * global.healthP1Max))
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
				
				with (obj_Hud) shakeP1Timer = shakeTimerMax;
				break;
				
				case 1:
				global.healP2Mod = global.healthP2;			
				global.healthP2 -= floor(dmg * finalResistance);
				if (global.healthP2 <= 0 && oldHealthP2 > global.undershotValP2){ // Undershot check, will need to add a check for if attack is a "finishing blow", in which case it will ignore undershot
					global.healthP2 = global.undershotValP2;
				}
				
				if (global.healthP2 <= (.2 * global.healthP2Max))
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
				
				with (obj_Hud) shakeP2Timer = shakeTimerMax;
				break;
				
				case 2:
				global.healP3Mod = global.healthP3;			
				global.healthP3 -= floor(dmg * finalResistance);
				if (global.healthP3 <= 0 && oldHealthP3 > global.undershotValP3){ // Undershot check, will need to add a check for if attack is a "finishing blow", in which case it will ignore undershot
					global.healthP3 = global.undershotValP3;
				}
				
				if (global.healthP3 <= (.2 * global.healthP3Max))
				{
					if (audio_is_playing(snd_LowHp)) audio_stop_sound(snd_LowHp);
					if(oldHealthP3 > (0.2*global.healthP3Max)){
						audio_play_sound(snd_LowHp,0,false);
					}
					if (instance_exists(obj_Hud))
					{
						obj_Hud.flashP3Timer = obj_Hud.flashTimerMax;
						obj_Hud.flashStopP3Timer = obj_Hud.flashStopTimerMax;
					}
				}
				
				with (obj_Hud) shakeP3Timer = shakeTimerMax;
				break;
				
				case 3:
				global.healP4Mod = global.healthP4;
				global.healthP4 -= floor(dmg * finalResistance);
				if (global.healthP4 <= 0 && oldHealthP4 > global.undershotValP4){ // Undershot check, will need to add a check for if attack is a "finishing blow", in which case it will ignore undershot
					global.healthP4 = global.undershotValP4;
				}
				
				if (global.healthP4 <= (.2 * global.healthP4Max))
				{
					if (audio_is_playing(snd_LowHp)) audio_stop_sound(snd_LowHp);
					if(oldHealthP4 > (0.2*global.healthP4Max)){
						audio_play_sound(snd_LowHp,0,false);
					}
					if (instance_exists(obj_Hud))
					{
						obj_Hud.flashP4Timer = obj_Hud.flashTimerMax;
						obj_Hud.flashStopP4Timer = obj_Hud.flashStopTimerMax;
					}
				}
				
				with (obj_Hud) shakeP4Timer = shakeTimerMax;
				break;
			}
			
			if ((dmg > 0) and
			(((collidedPlayer.player == 0) and (global.abilityP1 != playerAbilities.none) and (global.healthP1 > 0) and ((object_index == obj_Spike) or (global.healthP1 % 2 != 0)))
			or ((collidedPlayer.player == 1) and (global.abilityP2 != playerAbilities.none) and (global.healthP2 > 0) and ((object_index == obj_Spike) or (global.healthP2 % 2 != 0)))
			or ((collidedPlayer.player == 2) and (global.abilityP3 != playerAbilities.none) and (global.healthP3 > 0) and ((object_index == obj_Spike) or (global.healthP3 % 2 != 0)))
			or ((collidedPlayer.player == 3) and (global.abilityP4 != playerAbilities.none) and (global.healthP4 > 0) and ((object_index == obj_Spike) or (global.healthP4 % 2 != 0)))))
			{
			    if (instance_exists(obj_AbilityDropStar))
				{
					with (obj_AbilityDropStar)
					{
						if ((!isBubble) and (owner.player == other.collidedPlayer.player)) destroy = true;
					}
				}
				if ((collidedPlayer.state == playerStates.cutterDash) or (collidedPlayer.state == playerStates.mirrorDash) or (collidedPlayer.state == playerStates.fireDash) or (collidedPlayer.state == playerStates.wingDash) or (collidedPlayer.state == playerStates.swordDash)) collidedPlayer.state = playerStates.normal;
				var abilityDropStar = instance_create_depth(round(collidedPlayer.x),round(collidedPlayer.y - 6),depth + 1,obj_AbilityDropStar);
				abilityDropStar.owner = collidedPlayer;
				abilityDropStar.hsp = -collidedPlayer.dir * 1.5;
				abilityDropStar.vsp = -abilityDropStar.jumpspeed;
				abilityDropStar.dir = -collidedPlayer.image_xscale;
				abilityDropStar.ability = playerAbility;
				abilityDropStar.player = collidedPlayer;
				
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
				switch (collidedPlayer.player)
				{
					case 0:
					global.abilityP1 = playerAbilities.none;
					abilityDropStar.micCount = global.micCountP1;
					global.micCountP1 = 0;
					break;
					
					case 1:
					global.abilityP2 = playerAbilities.none;
					abilityDropStar.micCount = global.micCountP2;
					global.micCountP2 = 0;
					break;
					
					case 2:
					global.abilityP3 = playerAbilities.none;
					abilityDropStar.micCount = global.micCountP3;
					global.micCountP3 = 0;
					break;
					
					case 3:
					global.abilityP4 = playerAbilities.none;
					abilityDropStar.micCount = global.micCountP4;
					global.micCountP4 = 0;
					break;
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
		
		if ((hurtable) and (!isBoss) and (!invincible) and (collidedPlayer.attackNumber != playerAttacks.stoneNormal))
		{
			if (audio_is_playing(snd_EnemyHurt)) audio_stop_sound(snd_EnemyHurt);
			audio_play_sound(snd_EnemyHurt,0,false);
			takenDamageType = damageTypes.none;
			var hitDmg = basePlayerContact_Damage;
			if (collidedPlayer.hasInvinCandy) hitDmg = basePlayerInvinCandyContact_Damage;
			if (hitDmg >= (hp + 50))
			{
				hurtTimer = hurtStopTimerMax + 5;
				if ((hasDeathKnockback) and (takenDamageType != damageTypes.ice)) hurtStopTimer = hurtStopTimerMax;
			    shake = 1;
				with (obj_Camera)
				{
					shakeX = 3;
					shakeY = 3;
				}
			}
			else
			{
				hurtTimer = hurtTimerMax;
			}
			if ((global.enemyHealthbars) and (!isMiniBoss) and (!isBoss)) global.healthbarMarkedEnemy = id;
			
			hp -= hitDmg;
			bossHealthbarShakeTimer = bossHealthbarShakeTimerMax;
			invincible = true;
			invincibleTimer = invincibleTimerMax;
			invincibleFlashTimer = invincibleFlashTimerMax;
			if (global.hitNumbers)
			{
				var hitNumber = instance_create_depth(collidedPlayer.x,collidedPlayer.y,-900,obj_HitNumbers);
				hitNumber.number = hitDmg;
				hitNumber.hsp = random_range(-1,1);
				hitNumber.vsp = -2;
			}
			shakeX = 2;
			shakeY = 2;
			direction = point_direction(x,y,x,y) + irandom_range(150,210);
			hurt = true;
			if (isMystic) fluxOverlayAlpha = .8;
			scr_HurtKnockback(self,collidedPlayer);
		}
	}
}