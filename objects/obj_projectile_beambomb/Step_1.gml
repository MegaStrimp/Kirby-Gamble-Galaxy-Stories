///@description Begin Step

#region Setup Timer
if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprVortexReady = spr_Projectile_BeamBomb_Normal_VortexReady;
		sprVortex = spr_Projectile_BeamBomb_Normal_Vortex;
		sprExplosion = spr_Projectile_BeamBomb_Normal_Explosion;
		sprSonar = spr_Projectile_BeamBomb_Normal_Sonar;
		break;
	}
}
#endregion

#region Event Inherited
event_inherited();
#endregion