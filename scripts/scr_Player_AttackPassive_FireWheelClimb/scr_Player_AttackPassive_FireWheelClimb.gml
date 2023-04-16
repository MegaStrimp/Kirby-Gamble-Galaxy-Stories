///@description Player - Attack Passive - Fire Wheel Climb

function scr_Player_AttackPassive_FireWheelClimb()
{
	#region Attack Attributes
	attackTimer = clamp(attackTimer - 1,0,90);
	hsp = 0;
	#endregion
	
	#region Ascend
	if ((!place_meeting(x + (1 * dir),y,obj_ParentWall)) or (place_meeting(x,y - 1,obj_ParentWall)) or ((grounded) and (vsp >= 0)))
	{
		vsp = -5;
		grounded = false;
		attackTimer = 0;
	}
	
	if (((place_meeting(x + 1,y,obj_ParentWall)) and (keyRightHold)) or ((place_meeting(x - 1,y,obj_ParentWall)) and (keyLeftHold)))
	{
		vsp = -5;
		grounded = false;
	}
	#endregion
	
	#region Fire Aerial Attack
	if (((place_meeting(x + 1,y,obj_ParentWall)) and (!keyRightHold) and (keyLeftHold)) or ((place_meeting(x - 1,y,obj_ParentWall)) and (!keyLeftHold) and (keyRightHold)))
	{
		attackNumber = playerAttacks.fireAerial;
	}
	#endregion
}