///@description End Step

//Variables

switch (player)
{
	case 0:
	var playerCharacter = global.characterP1;
	break;
	
	case 1:
	var playerCharacter = global.characterP2;
	break;
	
	case 2:
	var playerCharacter = global.characterP3;
	break;
	
	case 3:
	var playerCharacter = global.characterP4;
	break;
}

//Warp Star

if ((state = playerStates.warpStar) and (instance_exists(warpStarIndex)))
{
	switch (playerCharacter)
	{
		default:
		if (player == 0)
		{
			x = warpStarIndex.x + 1;
			y = warpStarIndex.y - 2;
		}
		else
		{
			x = warpStarIndex.x - 1;
			y = warpStarIndex.y - 2;
		}
		image_angle = warpStarIndex.image_angle;
		break;
	}
}

//Inside Mech

if ((state = playerStates.insideMech) and (instance_exists(mechIndex)))
{
	switch (playerCharacter)
	{
		default:
		x = mechIndex.x + 16 * mechIndex.dirX;
		y = mechIndex.y - 36;
		image_angle = mechIndex.image_angle;
		break;
	}
}