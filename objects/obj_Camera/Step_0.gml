///@description Main

//Inputs

scr_Player_Inputs();

if (!global.pause)
{
	//Cinematic Offset
	
	cinematicXOffset = lerp(cinematicXOffset,cinematicXOffsetTarget,cinematicOffsetSpeed);
	cinematicYOffset = lerp(cinematicYOffset,cinematicYOffsetTarget,cinematicOffsetSpeed);
	
	//Cinematic Offset Timer
	
	if (cinematicOffsetTimer > 0)
	{
		cinematicOffsetTimer -= 1;
	}
	else if (cinematicOffsetTimer == 0)
	{
		cinematicXOffsetTarget = irandom_range(-cinematicOffsetRange,cinematicOffsetRange);
		cinematicYOffsetTarget = irandom_range(-cinematicOffsetRange,cinematicOffsetRange);
	    cinematicOffsetTimer = cinematicOffsetTimerMax + irandom_range(-12,12);
	}
}

//Freeze Frame Timer

if (freezeFrameTimer > 0)
{
	freezeFrameTimer -= 1;
	global.pause = true;
}
else if (freezeFrameTimer == 0)
{
	global.pause = false;
	freezeFrameTimer = -1;
}