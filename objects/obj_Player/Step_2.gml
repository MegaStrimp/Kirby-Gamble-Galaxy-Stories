///@description End Step

//Variables

var playerCharacter = global.characterP1;
if (player == 1) playerCharacter = global.characterP2;

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
		break;
	}
}