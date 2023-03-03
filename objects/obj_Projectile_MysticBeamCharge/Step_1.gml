///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_Projectile_BeamCharge_Flux;
		particleTimerMax = 2;
		break;
		
		//Vortex
		
		case 1:
		sprIdle = spr_Projectile_BeamCharge_Vortex_Idle;
		particleTimerMax = 4;
		break;
	}
	dmgTemp = floor(dmg / 3);
	if (supercharged)
	{
		particleTimer = particleTimerMax;
		destroyableByWall = false;
	}
	scaleEx = scale * (1.25 + (.25 * supercharged));
	scale = 0;
}
#endregion

#region Event Inherited
event_inherited();
#endregion