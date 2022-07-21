///@description Main

#region Setup Timer
if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		case 0:
		sprIdle = spr_FallingAsteroid_Normal_Idle;
		sprDebris = spr_FallingAsteroid_Normal_Debris;
		break;
	}
	setupTimer = -1;
}
#endregion

if (!global.pause)
{
	#region Movement
	x += lengthdir_x(spd,angle);
	y += lengthdir_y(spd,angle);
	#endregion
	
	#region Destroy
	if (place_meeting(x,y,obj_Wall))
	{
		for (var i = 0; i < 4; i++)
		{
			var par = instance_create_depth(x + irandom_range(-24,24),y - irandom_range(-24,24),depth - 1,obj_Particle);
			par.sprite_index = sprDebris;
			par.image_index = i;
			par.hsp = (random_range(.1,.75) * choose(-1,1));
			par.vsp = -2;
			par.angleSpd = random_range(.5,1.5) * 3;
			par.stopRotationAfterCollision = true;
			par.hasGravity = true;
			par.collisionX = obj_Wall;
			par.collisionY = obj_Wall;
			par.invisTimer = 20;
			par.destroyTimer = 30;
			if (position_meeting(par.x,par.y,obj_Wall)) instance_destroy(par);
		}
		instance_destroy();
	}
	#endregion
	
	#region Animation
	image_speed = 1;
	sprite_index = sprIdle;
	#endregion
}
else
{
	image_speed = 0;
}