///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		#region Normal
		case 0:
		sprIdle = spr_SMB_BowserImpostor_Idle;
		sprFire = spr_SMB_BowserImpostor_Fire;
		sprHammerL = spr_SMB_BowserImpostor_HammerL;
		sprHammerR = spr_SMB_BowserImpostor_HammerR;
		sprDeath = spr_SMB_BowserImpostor_Death;
		break;
		#endregion
	}
	
	if (phase == 0)
	{
		global.cutscene = true;
		phaseChangeTimer = 240;
		instance_create_depth(225,148,depth,obj_Mario_Death);
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion