///@description Main

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Setup Timer
	
	if (setupTimer > 0)
	{
		setupTimer -= 1;
	}
	else if (setupTimer == 0)
	{
		switch (explosionIndex)
		{
			case 0:
			for (var i = 0; i < 3; i++)
			{
				var particle = instance_create_depth(x,y,depth,obj_Particle);
				particle.followObject = false;
				particle.followedObject = id;
				particle.turnAroundObject = true;
				particle.sprite_index = spr_Particle_Explosion2;
				particle.image_index = i;
				particle.imageSpeed = 0;
				particle.spd = -15;
				if (i == 0) particle.spd = -30;
				particle.orbit = 24;
				if (i == 0) particle.orbit = 6;
				particle.angle = 90;
				if (i == 2) particle.angle = 270;
				particle.visible = false;
				particle.destroyTimer = 30;
			}
			break;
			
			case 1:
			var particle = instance_create_depth(x,y,depth,obj_Particle);
			particle.sprite_index = spr_Doomsday_Normal_BombExplosion;
			particle.destroyAfterAnimation = true;
			break;
		}
		setupTimer = -1;
	}
	
	//Destroy Timer
	
	if (destroyTimer > 0)
	{
		destroyTimer -= 1;
	}
	else if (destroyTimer == 0)
	{
		instance_destroy();
	    destroyTimer = -1;
	}
	
	//Event Inherited
	
	event_inherited();
}