///@description Main

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
			if (hasEnemyWall)
			{
				if (instance_exists(enemyWall)) instance_destroy(enemyWall);
			}
			
			var tileAsteroidFieldsCrack = layer_tilemap_get_id(layer_get_id("tileAsteroidFieldsCrack"));
			var tileAsteroidFieldsCrack3D1 = layer_tilemap_get_id(layer_get_id("tileAsteroidFieldsCrack3D1"));
			var tileAsteroidFieldsCrack3D2 = layer_tilemap_get_id(layer_get_id("tileAsteroidFieldsCrack3D2"));
			
			tilemap_set(tileAsteroidFieldsCrack,0,floor(x / 24),floor(y / 24));
			var topTile = tilemap_get(tileAsteroidFieldsCrack,floor(x / 24),floor(y / 24) - 1);
			var bottomTile = tilemap_get(tileAsteroidFieldsCrack,floor(x / 24),floor(y / 24) + 1);
			if (((topTile >= 1) and (topTile <= 6)) or ((topTile >= 39) and (topTile <= 44)) or ((topTile >= 115) and (topTile <= 120)))
			{
				tilemap_set(tileAsteroidFieldsCrack,0,floor(x / 24),floor(y / 24) - 1);
			}
			tilemap_set(tileAsteroidFieldsCrack3D1,0,floor(x / 24),floor(y / 24) - 1);
			tilemap_set(tileAsteroidFieldsCrack3D2,0,floor(x / 24),floor(y / 24) - 1);
					
			if ((bottomTile >= 20) and (bottomTile <= 25))
			{
				var topWallTileIndex = bottomTile - 19;
				tilemap_set(tileAsteroidFieldsCrack,topWallTileIndex,floor(x / 24),floor(y / 24));
				topWallTileIndex = bottomTile - 14;
				if (topWallTileIndex < 7) topWallTileIndex += 6;
				tilemap_set(tileAsteroidFieldsCrack3D1,topWallTileIndex,floor(x / 24),floor(y / 24));
				var has3D2 = choose(true,true,true,false,false);
				if (has3D2)
				{
					topWallTileIndex = bottomTile - 9;
					if (topWallTileIndex < 13) topWallTileIndex += 6;
					tilemap_set(tileAsteroidFieldsCrack3D2,topWallTileIndex,floor(x / 24),floor(y / 24));
				}
			}
			
			if (((bottomTile >= 77) and (bottomTile <= 82)) or ((bottomTile >= 153) and (bottomTile <= 158)))
			{
				var topWallTileIndex = bottomTile - 38;
				tilemap_set(tileAsteroidFieldsCrack,topWallTileIndex,floor(x / 24),floor(y / 24));
				topWallTileIndex = bottomTile - 33;
				if (topWallTileIndex < 26) topWallTileIndex += 6;
				tilemap_set(tileAsteroidFieldsCrack3D1,topWallTileIndex,floor(x / 24),floor(y / 24));
				topWallTileIndex = bottomTile - 28;
				if (topWallTileIndex < 32) topWallTileIndex += 6;
				tilemap_set(tileAsteroidFieldsCrack3D2,topWallTileIndex,floor(x / 24),floor(y / 24));
			}
			instance_destroy();
		}
	}
}