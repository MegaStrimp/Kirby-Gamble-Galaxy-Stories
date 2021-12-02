///@description Animation End

//Yawn

if (sprite_index == sprSleep) yawned = false;

//Sleep Stop and Ready

if (sprite_index == sprIdle)
{
	if (blinkCounter >= blinkCounterMax)
	{
		if (sleepReady)
		{
			sleep = true;
			sleepReady = false;
			sleepStopTimer = sleepStopTimerMax;
		}
		if (sleepStop) sleepStop = false;
		blinkCounter = 0;
	}
	else
	{
		blinkCounter += 1;
	}
}