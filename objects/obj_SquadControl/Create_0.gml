///@description Initialize Variables

//Wave Array

/*
	---Enemy Numbers---
	
	0 - Waddle Dee
*/
var i = 0;
waveState[i] = "rest";
waveEnemyCountMax[i][0] = 0;
waveEnemyCountSpawned[i][0] = 0;
waveEnemyCount[i][0] = 0;
waveProgressBarMax[i] = 120;
waveProgressBar[i] = 0;
i += 1;
waveState[i] = "rest";
waveEnemyCountMax[i][0] = 0;
waveEnemyCountSpawned[i][0] = 0;
waveEnemyCount[i][0] = 0;
waveProgressBarMax[i] = 90;
waveProgressBar[i] = 0;
i += 1;
waveState[i] = "rest";
waveEnemyCountMax[i][0] = 0;
waveEnemyCountSpawned[i][0] = 0;
waveEnemyCount[i][0] = 0;
waveProgressBarMax[i] = 300;
waveProgressBar[i] = 0;
i += 1;
waveState[i] = "normal";
waveEnemyCountMax[i][0] = 20;
waveEnemyCountSpawned[i][0] = 20;
waveEnemyCount[i][0] = 0;
waveProgressBarMax[i] = 0;
waveProgressBar[i] = 0;
i += 1;
waveState[i] = "rest";
waveEnemyCountMax[i][0] = 0;
waveEnemyCountSpawned[i][0] = 0;
waveEnemyCount[i][0] = 0;
waveProgressBarMax[i] = 900;
waveProgressBar[i] = 0;

//Other Variables

currentWave = 0;

//Timers

setupTimer = 0;
spawnTimer = -1;
spawnTimerMax = 60;