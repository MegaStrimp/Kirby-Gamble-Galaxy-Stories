///@description Main

if (!global.pause)
{
	//Music
	
	if (musicFade < 1)
	{
		musicFade += .025;
	}
	else
	{
		musicFade = 1;
	}
	
	audio_sound_gain(mus_Skylands,(global.musicVolume * musicFade),0);
	
	//Wave Timer
	
	if (waveTimer > 0)
	{
		waveTimer -= 1;
	}
	else if (waveTimer == 0)
	{
		switch (stage)
		{
			case 0:
			switch (wave)
			{
				case 0:
				var enemy = instance_create_layer(room_width / 2,-16,"Enemies",obj_Skylands_BrontoBurt);
				enemy.vsp = 2;
				enemy.decel = .02;
				enemy.waveEnder = true;
				enemy.waveEnderTimerMax = 60;
				wave += 1;
				break;
				
				case 1:
				for (var i = 0; i < 2; i++)
				{
					var enemy = instance_create_layer(room_width / 2 - 48 + (96 * i),-16,"Enemies",obj_Skylands_BrontoBurt);
					enemy.vsp = 2;
					enemy.decel = .02;
					enemy.waveEnder = true;
					enemy.waveEnderTimerMax = 60;
				}
				wave += 1;
				break;
				
				case 2:
				enemySpawnTimer = 0;
				break;
				
				case 3:
				enemySpawnTimer = 0;
				break;
				
				case 4:
				for (var i = 0; i < 3; i++)
				{
					if (i != 2)
					{
						var enemy = instance_create_layer(room_width / 2 - 60 + (120 * i),-32,"Enemies",obj_Skylands_BrontoBurt);
						enemy.vsp = 2;
						enemy.decel = .02;
						enemy.waveEnder = true;
						enemy.waveEnderTimerMax = 60;
					}
					else
					{
						var enemy = instance_create_layer(room_width / 2,-16,"Enemies",obj_Skylands_BrontoBurt);
						enemy.vsp = 2;
						enemy.decel = .02;
						enemy.waveEnder = true;
						enemy.waveEnderTimerMax = 60;
					}
				}
				enemySpawnTimer = 60;
				break;
			}
			break;
		}
		waveTimer = -1;
	}
	
	//Enemy Spawn Timer
	
	if (enemySpawnTimer > 0)
	{
		enemySpawnTimer -= 1;
	}
	else if (enemySpawnTimer == 0)
	{
		switch (stage)
		{
			case 0:
			switch (wave)
			{
				case 2:
				if (enemyCount < 4)
				{
					var enemy = instance_create_layer(-16,0,"Enemies",obj_Skylands_BrontoBurt);
					enemy.pathFollowing = pth_Skylands_Enemy1;
					enemyCount += 1;
					enemySpawnTimer = 60;
				}
				else
				{
					enemyCount = 0;
					wave += 1;
					waveTimer = 210;
					enemySpawnTimer = -1;
				}
				break;
				
				case 3:
				if (enemyCount < 4)
				{
					var enemy = instance_create_layer(496,0,"Enemies",obj_Skylands_BrontoBurt);
					enemy.pathFollowing = pth_Skylands_Enemy2;
					enemyCount += 1;
					enemySpawnTimer = 60;
				}
				else
				{
					enemyCount = 0;
					wave += 1;
					waveTimer = 240;
					enemySpawnTimer = -1;
				}
				break;
				
				case 4:
				for (var i = 0; i < 2; i++)
				{
					var enemy = instance_create_layer(120 + (240 * i),-24,"Enemies",obj_Skylands_BrontoBurt);
					enemy.spd = .4;
					enemy.pathFollowing = pth_Skylands_Enemy3;
					if (i == 1) enemy.pathFollowing = pth_Skylands_Enemy4;
					wave += 1;
					enemySpawnTimer = -1;
				}
				break;
			}
			break;
		}
	}
}