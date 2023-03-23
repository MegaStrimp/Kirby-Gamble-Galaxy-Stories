///@description Main

#region Event Inherited
event_inherited();
#endregion

if (!isPaused)
{
	//Movement
	
	hsp = movespeed;
	vsp = -jumpspeed;
	
	//Position
	
	x += hsp;
	y += vsp;
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var particle = instance_create_depth(x,y,depth - 1,obj_Particle);
		particle.sprite_index = spr_Particle_Fire3;
		particle.hsp = (2 * -dirX);
		particle.vsp = -2;
		particle.destroyAfterAnimation = true;
		particle.paletteSpriteIndex = paletteIndex;
		particle.paletteIndex = 1;
		particleTimer = particleTimerMax;
	}
	
	//Animation
	
	image_speed = 1;
	
	sprite_index = sprIdle;
}
else
{
	image_speed = 0;
}