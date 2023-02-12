///@description Main

switch (state)
{
	case firstTimeSetupStates.auth1:
	timer += 1;
	
	if (timer >= 20)
	{
		state = firstTimeSetupStates.auth2;
		timer = 0;
	}
	break;
	
	case firstTimeSetupStates.auth2:
	break;
	
	case firstTimeSetupStates.auth3:
	break;
}