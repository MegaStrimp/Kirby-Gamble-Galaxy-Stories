///@description Execute Duck
///@param {real} playerAbility Ability to check.

function scr_Player_ExecuteDuck(argument0)
{
	#region Arguments
	var playerAbility = argument0;
	#endregion
	
	#region Spawn Mirror Shield
	scr_Player_SpawnMirrorShield(playerAbility);
	#endregion
	
	#region Move Attributes
	state = playerStates.slide;
	movespeed = movespeedNormal;
	isRunning = false;
	duck = true;
	slide = false;
	duckSlide = false;
	#endregion
}