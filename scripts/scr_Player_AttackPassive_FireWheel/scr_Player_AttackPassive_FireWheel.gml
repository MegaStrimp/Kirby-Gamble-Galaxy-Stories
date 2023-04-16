///@description Player - Attack Passive - Fire Wheel

function scr_Player_AttackPassive_FireWheel()
{
	#region Cancel Attack
	if ((vsp > 0) and (grounded)) attackTimer = 0;
	#endregion
	
	#region Ascend
	if ((keyJumpPressed) and (grounded))
	{
		vsp = -5;
		grounded = false;
	}
	#endregion
	
	#region Fire Wheel Climb Attack
	if (place_meeting(x + (1 * dir),y,obj_ParentWall))
	{
		scr_Player_ExecuteAttack_FireWheelClimb();
	}
	#endregion
}