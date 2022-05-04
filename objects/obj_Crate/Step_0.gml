///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Crate_Normal_Idle;
		topWallSprite = spr_Crate_Normal_Top;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	if (!isTop)
	{
		//Destroy
		
		if (hp <= 0)
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
			if (hasEnemyWall)
			{
				if (instance_exists(enemyWall)) instance_destroy(enemyWall);
			}
			if (!global.gambleMaykr) global.points += points;
			
			var spawnedItem = instance_create_depth(x + (sprite_get_width(sprIdle) / 2),y + (sprite_get_height(sprite_index) / 2),depth - 1,storedItem);
			if (storedItem == obj_PointStar)
			{
				spawnedItem.character = pointStarCharacter;
				spawnedItem.target = instance_nearest(x,y,obj_Player);
				spawnedItem.followTarget = true;
			}
			instance_destroy();
		}
	}
	
	//Animation
	
	if (isTop)
	{
		sprite_index = topWallSprite;
	}
	else
	{
		sprite_index = sprIdle;
	}
}