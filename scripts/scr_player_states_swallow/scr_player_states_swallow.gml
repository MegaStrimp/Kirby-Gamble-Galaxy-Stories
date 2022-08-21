///@description Swallow

function scr_Player_States_Swallow()
{
	if (global.mixActive == -1)
	{
		//Ability Switch
	
		var playerAbility = global.abilityP1;
		if (player == 1) playerAbility = global.abilityP2;

		if (playerAbility == playerAbilities.none) //Normal
		{
			if (sucked > 2)
			{
				sprite_index = sprHardSwallow;
			}
			else
			{
				sprite_index = sprSwallow;
			}
			sucked = 0;
		}
		else
		{
			//Swallow Action Timer
		
			if (swallowActionTimer > 0)
			{
				swallowActionTimer -= 1;
			}
			else if (swallowActionTimer == 0)
			{
				if (swallowAction == 0)
				{
					if (sucked > 2)
					{
						sprite_index = sprHardSwallow;
					}
					else
					{
						sprite_index = sprSwallow;
					}
					image_index = 0;
					var par = instance_create_depth(x + (12 * choose(-1,1)),y - 6 + irandom_range(-3,3),depth - 1,obj_Particle);
					par.sprite_index = spr_Particle_Shine1;
					par.destroyAfterAnimation = true;
					par.pausable = false;
					swallowActionTimer = 4;
				}
				else if (swallowAction == 1)
				{
					var par = instance_create_depth(x + (12 * choose(-1,1)),y - 6 + irandom_range(-3,3),depth - 1,obj_Particle);
					par.sprite_index = spr_Particle_Shine1;
					par.destroyAfterAnimation = true;
					par.pausable = false;
					swallowActionTimer = 4;
				}
				else if (swallowAction == 2)
				{
					for (var i = 0; i < 4; i++)
					{
						var parDirection = 1;
						if (i >= 2) parDirection = 0;
					
						var parDirectionAdded = 30;
						if (i % 2 == 0) parDirectionAdded = -30;
					
						var par = instance_create_depth(x,y - 3,depth - 1,obj_Particle);
						par.sprite_index = spr_Particle_Sparkle2;
						par.spdBuiltIn = 4;
						par.fricSpd = .4;
						par.direction = (parDirection * 180) + parDirectionAdded;
						par.destroyAfterAnimation = true;
						par.pausable = false;
					}
				
					var par = instance_create_depth(x + (12 * choose(-1,1)),y - 6 + irandom_range(-3,3),depth - 1,obj_Particle);
					par.sprite_index = spr_Particle_Shine1;
					par.destroyAfterAnimation = true;
					par.pausable = false;
					swallowActionTimer = 4;
				}
				else if (swallowAction == 3)
				{
					var par = instance_create_depth(x + (12 * choose(-1,1)),y - 6 + irandom_range(-3,3),depth - 1,obj_Particle);
					par.sprite_index = spr_Particle_Shine1;
					par.destroyAfterAnimation = true;
					par.pausable = false;
					swallowActionTimer = 2;
				}
				else if (swallowAction == 4)
				{
					var par = instance_create_depth(x,y - 3,depth + 1,obj_Particle);
					par.sprite_index = spr_Particle_Aura1;
					par.destroyTimer = 2;
					par.pausable = false;
					swallowActionTimer = 4;
				}
				else if (swallowAction == 5)
				{
					var par = instance_create_depth(x,y - 3,depth - 1,obj_Particle);
					par.sprite_index = spr_Particle_Aura3;
					par.destroyAfterAnimation = true;
					par.pausable = false;
					for (var i = 0; i < 4; i++)
					{
						parDirection = (45 + (90 * i));
					
						var par = instance_create_depth(x,y - 3,depth - 1,obj_Particle);
						par.sprite_index = spr_Particle_SmallStar;
						par.spdBuiltIn = 6;
						par.fricSpd = .6;
						par.direction = parDirection;
						par.destroyTimer = 20;
						par.pausable = false;
					}
					audio_play_sound(snd_AbilitySwitch,0,false);
					image_speed = 1;
					image_index = 0;
					sprite_index = sprAbilityChange;
					swallowTimer = 60;
				}
				swallowAction += 1;
			}
		}
	
		//Swallow Timer
	
		if (swallowTimer > 0)
		{
			swallowTimer -= 1;
		}
		else if (swallowTimer == 0)
		{
			sucked = 0;
			if (((player == 0) and (global.abilityP1 == playerAbilities.wing)) or ((player == 1) and (global.abilityP2 == playerAbilities.wing))) wingFeatherPos = 0;
			swallowAction = 0;
			swallowActionTimer = -1;
			global.pause = false;
			image_index = 0;
			blackAlphaBox = false;
			state = playerStates.normal;
			swallowTimer = -1;
		}
	}
	else if (global.mixActive == player)
	{
		if (keyJumpPressed)
		{
			with (obj_Hud) mixTimer = 0;
		}
	}
}