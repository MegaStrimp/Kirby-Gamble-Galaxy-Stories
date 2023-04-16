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