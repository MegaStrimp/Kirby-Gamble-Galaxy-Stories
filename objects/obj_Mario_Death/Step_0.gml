///@description Main

//Gravity
	
if (state == 2)
{
	if (vsp < gravLimit)
	{
		vsp += grav;
	}
	else
	{
		vsp = gravLimit;
	}
}

y += vsp;

#region State Timer
if (stateTimer > 0)
{
	stateTimer -= 1;
}
else if (stateTimer == 0)
{
	switch (state)
	{
		case 0:
		state += 1;
		audio_play_sound(snd_MarioDeath,0,false);
		stateTimer = 36;
		break;
		
		case 1:
		state += 1;
		vsp = -5;
		break;
	}
}
#endregion