///@description End Step

#region Pointers
var playerCharacter = global.characterP1;

switch (player)
{
	case 1:
	playerCharacter = global.characterP2;
	break;
	
	case 2:
	playerCharacter = global.characterP3;
	break;
	
	case 3:
	playerCharacter = global.characterP4;
	break;
}
#endregion

#region Variables
if (grounded) and (hasJumped == 1) hasJumped = -1;
if (hasJumped == 0) hasJumped = 1;
#endregion

#region Warp Star
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
#endregion

#region Inside Mech
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
#endregion