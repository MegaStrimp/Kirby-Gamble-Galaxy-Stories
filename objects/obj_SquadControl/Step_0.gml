///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	setupTimer = -1;
}

if (!global.pause)
{
	//Progression
	
	switch (waveState[currentWave])
	{
		case "rest":
		waveProgressBar[currentWave] += 1;
		break;
		
		case "normal":
		if (spawnTimer == -1) spawnTimer = spawnTimerMax;
		
		var enemyCountTemp = 0;
		var arrayMax = array_length(waveEnemyCount[currentWave]);
		for (var i = 0; i < arrayMax; i++)
		{
			enemyCountTemp += waveEnemyCount[currentWave][i];
		}
		waveProgressBar[currentWave] = enemyCountTemp;
		break;
	}
	
	//Next Wave
	
	waveProgressBar[currentWave] = clamp(waveProgressBar[currentWave],0,waveProgressBarMax[currentWave]);
	if (waveProgressBar[currentWave] == waveProgressBarMax[currentWave])
	{
		currentWave += 1;
		
		switch (waveState[currentWave])
		{
			case "normal":
			var enemyCountTemp = 0;
			var arrayMax = array_length(waveEnemyCountMax[currentWave]);
			for (var i = 0; i < arrayMax; i++)
			{
				enemyCountTemp += waveEnemyCountMax[currentWave][i];
			}
			waveProgressBarMax[currentWave] = enemyCountTemp;
			break;
		}
	}
	
	//Spawn Timer
	
	if (spawnTimer > 0)
	{
		spawnTimer -= 1;
	}
	else if (spawnTimer == 0)
	{
		var enemy = instance_create_depth(100,100,depth,obj_WaddleDee);
		enemy.squadType = 0;
		spawnTimer = -1;
	}
}