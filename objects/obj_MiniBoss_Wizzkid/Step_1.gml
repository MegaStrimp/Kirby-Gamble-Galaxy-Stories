///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_Wizzkid_Normal_Idle;
		sprWalk = spr_Wizzkid_Normal_Walk;
		sprHighJump = spr_Wizzkid_Normal_HighJump;
		sprHighFall = spr_Wizzkid_Normal_HighFall;
		sprLaserReady = spr_Wizzkid_Normal_LaserReady;
		sprLaser = spr_Wizzkid_Normal_Laser;
		sprLaserRelease = spr_Wizzkid_Normal_LaserRelease;
		sprDeathAir = spr_Wizzkid_Normal_DeathAir;
		sprDeathGround = spr_Wizzkid_Normal_DeathGround;
		
		sprLaserProjStart = spr_Wizzkid_Normal_LaserProjStart;
		sprLaserProjLoop = spr_Wizzkid_Normal_LaserProjLoop;
		sprLaserProjParticle = spr_Wizzkid_Normal_LaserProjParticle;
		break;
		#endregion
	}
	walkDirX = 1;
	if ((instance_exists(obj_Player)) and (obj_Player.x < x)) walkDirX = -1;
}
#endregion

#region Event Inherited
event_inherited();
#endregion