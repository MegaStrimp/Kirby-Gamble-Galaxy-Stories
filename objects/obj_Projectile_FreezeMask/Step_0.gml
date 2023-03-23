///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var particle = instance_create_depth((x + irandom_range(-(sprite_get_width(sprite_index) / 2),(sprite_get_width(sprite_index) / 2))),(y + irandom_range(-(sprite_get_height(sprite_index) / 2),(sprite_get_height(sprite_index) / 2))),depth,obj_Particle);
		if (character == 0) particle.sprite_index = spr_Particle_FreezeNormal;
		if (character == 1) particle.sprite_index = spr_Particle_FreezeShadow;
		particle.destroyAfterAnimation = true;
		particle.pausable = pausable;
	    particleTimer = particleTimerMax;
	}
}