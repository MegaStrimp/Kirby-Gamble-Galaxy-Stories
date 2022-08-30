///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (damageType)
	{
		//Normal
		
		case damageTypes.none:
		sprIdle = spr_AbilityBlock_Normal_Idle;
		topWallSprite = spr_AbilityBlock_Normal_Top;
		break;
		
		//Cutter
		
		case damageTypes.cutter:
		sprIdle = spr_AbilityBlock_Cutter_Idle;
		topWallSprite = spr_AbilityBlock_Cutter_Top;
		break;
		
		//Beam
		
		case damageTypes.beam:
		sprIdle = spr_AbilityBlock_Beam_Idle;
		topWallSprite = spr_AbilityBlock_Beam_Top;
		break;
		
		//Stone
		
		case damageTypes.stone:
		sprIdle = spr_AbilityBlock_Stone_Idle;
		topWallSprite = spr_AbilityBlock_Stone_Top;
		break;
		
		//Ufo
		
		case damageTypes.ufo:
		sprIdle = spr_AbilityBlock_Ufo_Idle;
		topWallSprite = spr_AbilityBlock_Ufo_Top;
		break;
		
		//Mirror
		
		case damageTypes.mirror:
		sprIdle = spr_AbilityBlock_Mirror_Idle;
		topWallSprite = spr_AbilityBlock_Mirror_Top;
		break;
		
		//Ninja
		
		case damageTypes.ninja:
		sprIdle = spr_AbilityBlock_Ninja_Idle;
		topWallSprite = spr_AbilityBlock_Ninja_Top;
		break;
		
		//Bomb
		
		case damageTypes.bomb:
		sprIdle = spr_AbilityBlock_Bomb_Idle;
		topWallSprite = spr_AbilityBlock_Bomb_Top;
		break;
		
		//Fire
		
		case damageTypes.fire:
		sprIdle = spr_AbilityBlock_Fire_Idle;
		topWallSprite = spr_AbilityBlock_Fire_Top;
		break;
		
		//Ice
		
		case damageTypes.ice:
		sprIdle = spr_AbilityBlock_Ice_Idle;
		topWallSprite = spr_AbilityBlock_Ice_Top;
		break;
		
		//Spark
		
		case damageTypes.spark:
		sprIdle = spr_AbilityBlock_Spark_Idle;
		topWallSprite = spr_AbilityBlock_Spark_Top;
		break;
		
		//Yoyo
		
		case damageTypes.yoyo:
		sprIdle = spr_AbilityBlock_Yoyo_Idle;
		topWallSprite = spr_AbilityBlock_Yoyo_Top;
		break;
		
		//Wheel
		
		case damageTypes.wheel:
		sprIdle = spr_AbilityBlock_Wheel_Idle;
		topWallSprite = spr_AbilityBlock_Wheel_Top;
		break;
		
		//Artist
		
		case damageTypes.artist:
		sprIdle = spr_AbilityBlock_Artist_Idle;
		topWallSprite = spr_AbilityBlock_Artist_Top;
		break;
		
		//Fighter
		
		case damageTypes.fighter:
		sprIdle = spr_AbilityBlock_Fighter_Idle;
		topWallSprite = spr_AbilityBlock_Fighter_Top;
		break;
		
		//Suplex
		
		case damageTypes.suplex:
		sprIdle = spr_AbilityBlock_Suplex_Idle;
		topWallSprite = spr_AbilityBlock_Suplex_Top;
		break;
		
		//Wing
		
		case damageTypes.wing:
		sprIdle = spr_AbilityBlock_Wing_Idle;
		topWallSprite = spr_AbilityBlock_Wing_Top;
		break;
		
		//Jet
		
		case damageTypes.jet:
		sprIdle = spr_AbilityBlock_Jet_Idle;
		topWallSprite = spr_AbilityBlock_Jet_Top;
		break;
		
		//Sword
		
		case damageTypes.sword:
		sprIdle = spr_AbilityBlock_Sword_Idle;
		topWallSprite = spr_AbilityBlock_Sword_Top;
		break;
		
		//Parasol
		
		case damageTypes.parasol:
		sprIdle = spr_AbilityBlock_Parasol_Idle;
		topWallSprite = spr_AbilityBlock_Parasol_Top;
		break;
		
		//Hammer
		
		case damageTypes.hammer:
		sprIdle = spr_AbilityBlock_Hammer_Idle;
		topWallSprite = spr_AbilityBlock_Hammer_Top;
		break;
		
		//Bell
		
		case damageTypes.bell:
		sprIdle = spr_AbilityBlock_Bell_Idle;
		topWallSprite = spr_AbilityBlock_Bell_Top;
		break;
		
		//Water
		
		case damageTypes.water:
		sprIdle = spr_AbilityBlock_Water_Idle;
		topWallSprite = spr_AbilityBlock_Water_Top;
		break;
	}
}

//Event Inherited

event_inherited();

if (!global.pause)
{
	//Destroy
	
	if (!isTop)
	{
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
			if (hasEnemyWall)
			{
				if (instance_exists(enemyWall)) instance_destroy(enemyWall);
			}
			global.points += points;
			var star = instance_create_depth(x + (sprite_get_width(sprite_index) / 2),y + (sprite_get_height(sprite_index) / 2),depth - 1,obj_PointStar);
			star.target = instance_nearest(x,y,obj_Player);
			star.followTarget = true;
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