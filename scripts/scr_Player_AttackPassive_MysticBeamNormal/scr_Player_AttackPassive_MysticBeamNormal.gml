///@description Player - Attack Passive - Mystic Beam Normal

function scr_Player_AttackPassive_MysticBeamNormal()
{
	#region Cycle Projectile
	if (instance_exists(parBeamCycle1))
	{
		if (floor(image_index) == 2) parBeamCycle1.visible = false;
		if (floor(image_index) == 3)
		{
			parBeamCycle1.visible = true;
			parBeamCycle1.turnSpd = (11 * -dir);
			parBeamCycle1.orbit = 14;
		}
	}
	#endregion
}