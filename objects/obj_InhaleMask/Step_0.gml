///@description Main

if (!global.pause)
{
	//Particles
	
	if (timer == 0)
	{
		if (parCount == 0)
		{
			timer = timerMax;
			var posX = irandom_range(x + ((sprite_get_width(sprite_index) / 2) * image_xscale),x + (sprite_get_width(sprite_index) * image_xscale));
			var posY = irandom_range(y - ((sprite_get_height(sprite_index) / 2) * image_yscale),y + ((sprite_get_height(sprite_index) / 2) * image_yscale));
			var inhalePar = instance_create_depth(posX,posY,depth - 1,obj_Particle);
			inhalePar.spdMax = random_range(1,2);
			inhalePar.dir = sign(image_xscale);
			inhalePar.followedObject = owner;
			inhalePar.inhaleParticle = true;
			inhalePar.sprite_index = spr_Particle_InhaleBig;
			inhalePar.followedObjectX = 4;
			inhalePar.followedObjectY = -3;
			inhalePar.invisTimer = 4;
			parCount = irandom_range(8,12);
		}
		else
		{
			var posX = irandom_range(x + ((sprite_get_width(sprite_index) / 2) * image_xscale),x + (sprite_get_width(sprite_index) * image_xscale));
			var posY = irandom_range(y - ((sprite_get_height(sprite_index) / 2) * image_yscale),y + ((sprite_get_height(sprite_index) / 2) * image_yscale));
			var inhalePar = instance_create_depth(posX,posY,depth - 1,obj_Particle);
			inhalePar.spdMax = irandom_range(4,6);
			inhalePar.dir = -sign(image_xscale);
			inhalePar.followedObject = owner;
			inhalePar.inhaleParticle = true;
			inhalePar.sprite_index = spr_Particle_InhaleSmall;
			inhalePar.followedObjectX = 4;
			inhalePar.followedObjectY = -3;
			inhalePar.invisTimer = 2;
			parCount -= 1;
		}
	}
	else
	{
		timer -= 1;
	}
}

//Destroy

if (instance_exists(owner))
{
	if (owner.state != playerStates.inhale) instance_destroy();
}
else
{
	instance_destroy();
}