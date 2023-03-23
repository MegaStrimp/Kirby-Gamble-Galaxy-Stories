///@description Mechs - Heavy Lobster - States - Duck

function scr_Mechs_HeavyLobster_States_Duck()
{
	#region Back To Normal
	if (keyDownReleased)
	{
		footTurnRecoil = false;
		footFrontWalking = false;
		footBackWalking = false;
		state = heavyLobsterStates.normal;
	}
	#endregion
}