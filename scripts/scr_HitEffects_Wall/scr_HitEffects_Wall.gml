// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_HitEffects_Wall(argument0,argument1,argument2)
{
	#region Arguments
	var targetObject = argument0;
	var targetProjectile = argument1;
	var type = argument2;
	#endregion
	
	with (targetObject)
	{
		switch (type)
		{
			case wallHitEffects.none:
			break;
			
			case wallHitEffects.starBlock:
			case wallHitEffects.starBlock_Free:
			if (((!isTop) and (hp <= 0)) or (type == wallHitEffects.starBlock_Free))
			{
				if (audio_is_playing(snd_BreakingWall)) audio_stop_sound(snd_BreakingWall);
				audio_play_sound(snd_BreakingWall,0,false);
				
				for (var i = 0; i < 2; i++)
				{
					var particle = instance_create_depth(x + (sprite_get_width(sprite_index) / 2),y + (sprite_get_height(sprite_index) / 2),depth,obj_Particle);
					particle.sprite_index = spr_Particle_Aura2;
					if (i == 0) particle.sprite_index = spr_Particle_Explosion1;
					particle.imageSpeed = 1;
					particle.destroyAfterAnimation = true;
				}
				
				for (var i = 0; i < 3; i++)
				{
					var particle = instance_create_depth(x + (sprite_get_width(sprite_index) / 2),y + (sprite_get_height(sprite_index) / 2),depth,obj_Particle);
					particle.sprite_index = spr_Particle_ShrinkingStar1;
					particle.imageSpeed = 1;
					particle.destroyAfterAnimation = true;
					particle.spdBuiltIn = 6;
					particle.fricSpd = .6;
					switch (i)
					{
						case 0:
						particle.direction = 90;
						break;
						
						case 1:
						particle.direction = 215;
						break;
						
						case 2:
						particle.direction = 325;
						break;
					}
				}
			}
			break;
			
			case wallHitEffects.crate:
			case wallHitEffects.crate_Free:
			if ((type == wallHitEffects.crate_Free) or ((!isTop) and (hp <= 0)))
			{
				scr_HitEffects_Wall(targetObject,-1,wallHitEffects.starBlock_Free);
				
				for (var i = 0; i < 6; i++)
				{
					var parDir = choose(-1,1);
					var particle = instance_create_depth(x + irandom_range(0,sprite_get_width(sprIdle)),y + irandom_range(0,sprite_get_height(sprIdle) / 1.5),depth - 1,obj_Particle);
					particle.sprite_index = spr_Particle_WoodenCrate;
					particle.image_index = i;
					particle.imageSpeed = 0;
					particle.hsp = (random_range(.1,.75) * parDir);
					particle.vsp = -2;
					particle.angleSpd = hsp * 3;
					particle.stopRotationAfterCollision = true;
					particle.hasGravity = true;
					particle.collisionX = obj_Wall;
					particle.collisionY = obj_Wall;
					particle.invisTimer = 20;
					particle.destroyTimer = 30;
				}
			}
			break;
			
			case wallHitEffects.metalBlock:
			case wallHitEffects.metalBlock_Free:
			if ((type == wallHitEffects.metalBlock_Free) or ((wallStrength > targetProjectile.wallStrength) and (hitEffectTimer == -1)))
			{
				if (audio_is_playing(snd_Charge_Ready)) audio_stop_sound(snd_Charge_Ready);
				audio_play_sound(snd_Charge_Ready,0,false);
				
				var particle = instance_create_depth(x + (irandom_range(0,sprite_get_width(sprite_index))),y + (irandom_range(0,sprite_get_height(sprite_index))),depth - 1,obj_Particle);
				particle.sprite_index = spr_Particle_Shine3;
				particle.destroyAfterAnimation = true;
				
				if (type != wallHitEffects.metalBlock_Free) hitEffectTimer = 20;
			}
			else if (wallStrength <= targetProjectile.wallStrength)
			{
				scr_HitEffects_Wall(targetObject,targetProjectile,wallHitEffects.starBlock_Free);
			}
			break;
		}
	}
}