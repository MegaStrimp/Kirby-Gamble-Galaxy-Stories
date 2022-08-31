///@description Main

//Characters

if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprStart = spr_Wizzkid_Normal_LaserProjStart;
		sprLoop = spr_Wizzkid_Normal_LaserProjLoop;
		sprParticle = spr_Wizzkid_Normal_LaserProjParticle;
		break;
	}
	sprite_index = sprStart;
	image_xscale = (laserWidth / (sprite_get_width(sprStart))) * dirX;
}

if (((pausable) and (!global.pause)) or (!pausable))
{
	//Event Inherited
	
	event_inherited();
	
	//Particle Timer
	
	if (particleTimer > 0)
	{
		particleTimer -= 1;
	}
	else if (particleTimer == 0)
	{
		var iMax = irandom_range(1,3);
		
		var parXEnd = irandom_range(x,camera_get_view_x(gameView) + camera_get_view_width(gameView));
		if (dirX == -1) parXEnd = irandom_range(camera_get_view_x(gameView),x);
		
		for (var i = 0; i < iMax; i++)
		{
			var par = instance_create_depth(x + irandom_range(x,30),y + irandom_range(-16,16),depth - 1,obj_Particle);
			par.sprite_index = sprParticle;
			par.hsp = random_range(2,5) * dirX;
			par.destroyAfterAnimation = true;
		}
		particleTimer = particleTimerMax;
	}
	
	//Animation
	
	imageIndex += sprite_get_speed(spr_Wizzkid_Normal_LaserProjStart) / 60;
	if (imageIndex >= 7) imageIndex -= 7;
}
else
{
	image_speed = 0;
}