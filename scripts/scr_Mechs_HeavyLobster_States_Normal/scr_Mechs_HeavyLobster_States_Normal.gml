///@description Mechs - Heavy Lobster - States - Normal

function scr_Mechs_HeavyLobster_States_Normal()
{
	#region Movement
	if ((!attack) and (active))
	{
		if (keyRightHold)
		{
			footTurnRecoil = true;
			dirX = 1;
			walkDirX = 1;
			hsp = movespeed * walkDirX;
		}
		if (keyLeftHold)
		{
			footTurnRecoil = true;
			dirX = -1;
			walkDirX = -1;
			hsp = movespeed * walkDirX;
		}
	}
	
	if ((attack) or (!active) or (((!keyRightHold) and (!keyLeftHold)) or ((keyRightHold) and (keyLeftHold))))
	{
		hsp = 0;
	}
	#endregion
	
	#region Jump
	if ((active) and (grounded) and (!wallAbove) and (keyJumpPressed))
	{
		footFrontVsp = -1.5;
		footBackJumpTimer = footBackJumpTimerMax;
		vsp -= jumpspeed;
	}
	
	footFrontXOffset = x + (-10 * dirX);
	footBackXOffset = x + (-8 * dirX);
	#endregion
	
	#region Duck
	if ((grounded) and (keyDownPressed))
	{
		hsp = 0;
		footFrontWalking = true;
		footBackWalking = true;
		state = heavyLobsterStates.duck;
	}
	#endregion
}