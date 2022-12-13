///@description Main

if (!global.pause)
{
	//Move to Player

	if (instance_exists(owner))
	{
		var sprHeight = sprite_get_height(sprite_index);
		if (sprHeight > 18)
		{
			var targetScale = 18 / sprHeight;
			image_xscale = lerp(image_xscale,targetScale,.05);
			image_yscale = lerp(image_yscale,targetScale,.05);
		}
		if (state == 0)
		{
			if (spd < spdMax)
			{
				spd += accel;
			}
			else
			{
				spd = spdMax;
			}
	
			if (owner.x < x - spd) or (owner.x > x + spd)
			{
			    if (owner.x + spd > x)
			    {
			        hsp = spd;
			    }
			    else if (owner.x + spd < x)
			    {
			        hsp = -spd;
			    }
			}
			else
			{
			    hsp = 0;
			}
	
			if (owner.y + - 3 < y - spd) or (owner.y + - 3 > y + spd)
			{
			    if (owner.y - 3 + spd > y)
			    {
			        vsp = spd;
			    }
			    else if (owner.y + - 3 + spd < y)
			    {
			        vsp = -spd;
			    }
			}
			else
			{
			    vsp = 0;
			}
	
			x += (hsp + owner.hsp);
			y += (vsp + owner.vsp);
		}
		else if (state == 1)
		{
			if (dir == 1) x = (owner.bbox_right + (owner.image_number - 2) - (round(owner.image_index)));
			if (dir == -1) x = (owner.bbox_left - (owner.image_number - 2) + (round(owner.image_index)));
			y = owner.y;
		}
	
		if (((state == 0) and (place_meeting(x + (4 * dir),y,owner))) or ((state == 1) and (round(owner.image_index) == (owner.image_number - 1))))
		{
			if (instance_number(obj_EatMe) == 1)
			{
				for (var i = 0; i < 2; i++)
				{
					var parDir = 1;
					if (i == 1) parDir = -1;
					var parCarryStart = instance_create_depth(owner.x + (14 * parDir),owner.y + 16,owner.depth - 1,obj_Particle);
					parCarryStart.sprite_index = spr_Particle_CarryStart;
					parCarryStart.hsp = 1.25 * parDir;
					parCarryStart.vsp = -.5;
					parCarryStart.imageSpeed = 1;
					parCarryStart.destroyAfterAnimation = true;
					parCarryStart.dir = parDir;
				}
				owner.sprite_index = owner.sprInhaleEnd;
				owner.image_index = 0;
				owner.inhaleEnd = true;
			    owner.swallow = false;
				owner.carry = true;
				if (instance_exists(obj_InhaleMask)) instance_destroy(obj_InhaleMask);
				if (owner.inhaleSoundCont) owner.inhaleSoundCont = false;
				if (audio_is_playing(snd_Inhale_Intro)) audio_stop_sound(snd_Inhale_Intro);
				if (audio_is_playing(snd_Inhale_Loop)) audio_stop_sound(snd_Inhale_Loop);
				owner.state = playerStates.carry;
				owner.swallow = false;
				if (owner.sucked == 0)
				{
					if (inhaleType != 0)
					{
						owner.carry = false;
					    owner.state = playerStates.normal;
					}
				}
			}
			global.points += points;
			if ((instance_exists(obj_SquadControl)) and (squadType != -1))
			{
				obj_SquadControl.waveEnemyCount[obj_SquadControl.currentWave][squadType] += 1;
			}
			
			if (owner.cAbility == playerAbilities.mix)
			{
				ds_list_add(owner.mixAbilities,ability);
			}
			
			if (ability != playerAbilities.none)
			{
				if ((owner.cAbility != playerAbilities.none) and (owner.ateAbilityStar == -1) and (owner.cAbility != ability))
				{
					if (owner.mixAbilities == -1) owner.mixAbilities = ds_list_create();
					ds_list_add(owner.mixAbilities,owner.cAbility);
					ds_list_add(owner.mixAbilities,ability);
					owner.cAbility = playerAbilities.mix;
				}
				else
				{
					owner.cAbility = ability;
				}
			}
			if (inhaleType == 0)
			{
				owner.sucked += 1;
			}
			else if (inhaleType == 1)
			{
				if (audio_is_playing(snd_FoodItem)) audio_stop_sound(snd_FoodItem);
				audio_play_sound(snd_FoodItem,0,false);
				if (cannedFood)
				{
					var rng = irandom_range(0,99);
					if (rng == 0)
					{
						if (audio_is_playing(snd_CannedFood)) audio_stop_sound(snd_CannedFood);
						audio_play_sound(snd_CannedFood,0,false);
					}
				}
				
				if (amongUs)
				{
					if (audio_is_playing(snd_AmongUs)) audio_stop_sound(snd_AmongUs);
					audio_play_sound(snd_AmongUs,0,false);
				}
				
				if (fishTaco)
				{
					if (audio_is_playing(snd_FishTaco)) audio_stop_sound(snd_FishTaco);
					audio_play_sound(snd_FishTaco,0,false);
				}
				
				if (owner.player == 0)
				{
					global.healthP1 += round(global.healthP1Max*0.1);
				}
				else
				{
					global.healthP2 += round(global.healthP2Max*0.1);
				}
			}
			else if (inhaleType == 2)
			{
				if (audio_is_playing(snd_FoodItem)) audio_stop_sound(snd_FoodItem);
				audio_play_sound(snd_FoodItem,0,false);
				
				if (owner.player == 0)
				{
					global.healthP1 += round(global.healthP1Max*0.5);
				}
				else
				{
					global.healthP2 += round(global.healthP2Max*0.5);
				}
			}
			else if (inhaleType == 3)
			{
				audio_play_sound(snd_Select,0,false);
				if (owner.player == 0)
				{
					global.healthP1 += global.healthP1Max;
				}
				else
				{
					global.healthP1 += global.healthP1Max;
				}
			}
			else if (inhaleType == 4)
			{
				audio_play_sound(snd_1Up,0,false);
				global.playerLives += 1;
			}
			else if (inhaleType == 5)
			{
				if (owner.player == 0)
				{
					global.invinCandyTimerP1 = global.invinCandyTimerP1Max;
				}
				else
				{
					global.invinCandyTimerP2 = global.invinCandyTimerP2Max;
				}
			}
			else if (inhaleType == 6)
			{
				if (owner.player == 0)
				{
					global.mintLeafTimerP1 = global.mintLeafTimerP1Max;
				}
				else
				{
					global.mintLeafTimerP2 = global.mintLeafTimerP2Max;
				}
			}
		    instance_destroy();
		}
	}
	
	//Animation
	
	image_speed = 1;
	
	image_angle += rotateSpd;
}
else
{
	image_speed = 0;
	hsp = 0;
	vsp = 0;
}