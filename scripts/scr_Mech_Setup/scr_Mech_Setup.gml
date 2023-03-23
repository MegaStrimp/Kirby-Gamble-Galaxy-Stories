///@description Mech - Setup

function scr_Mech_Setup(argument0,argument1,argument2,argument3,argument4,argument5)
{
	owner = argument0;
	warpStarSprIdle = argument1;
	warpStarSprAura = argument2;
	warpStarSprTrail = argument3;
	warpStarTargetRoom = argument4;
	warpStarState = argument5;
	
	with (owner)
	{
		warpStarSprIdle = warpStarSprIdle;
		warpStarSprAura = warpStarSprAura;
		warpStarSprTrail = warpStarSprTrail;
		warpStarTargetRoom = warpStarTargetRoom;
		warpStarState = warpStarState;
		
		state = playerStates.warpStar;
	}
}