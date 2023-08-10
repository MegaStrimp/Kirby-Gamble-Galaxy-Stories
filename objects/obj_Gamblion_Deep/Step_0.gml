///@description Main

if (!global.pause)
{
	#region Particle Timer
	if (particleTimer != -1)
	{
		particleTimer = max(particleTimer - speedMultFinal,0);
		if (particleTimer == 0)
		{
			var par = instance_create_depth(irandom_range(0,480),irandom_range(0,270),depth - 1,obj_Gamblion_EternityParticle);
			particleTimer = irandom_range(60,120);
		}
	}
	#endregion
}