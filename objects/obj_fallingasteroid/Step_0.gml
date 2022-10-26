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
		sprFire = spr_FallingAsteroid_AsteroidFields_Fire;
		sprDebris = spr_FallingAsteroid_Normal_Debris;
		break;
		
		case 1:
		sprIdle = spr_FallingAsteroid_AsteroidFields_Idle;
		sprFire = spr_FallingAsteroid_AsteroidFields_Fire;
		sprDebris = spr_FallingAsteroid_AsteroidFields_Debris;
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
	
	#region Image Angle
	image_angle += 2;
	#endregion
	
	#region Destroy
	if ((place_meeting(x,y,obj_Wall)) or (place_meeting(x,y,obj_Player)) or (place_meeting(x,y,obj_Enemy)))
	{
		if (!scr_OutsideView())
		{
			if (audio_is_playing(snd_MeteorExplosion)) audio_stop_sound(snd_MeteorExplosion);
			audio_play_sound(snd_MeteorExplosion,0,false);
		}
		
		var proj = instance_create_depth(x,y,depth,obj_Projectile_ExplosionMask);
		proj.dmg = 1;
		proj.enemy = true;
		proj.hurtsEnemy = false;
		proj.hurtsPlayer = true;
		
		var proj = instance_create_depth(x,y,depth,obj_Projectile_ExplosionMask);
		proj.dmg = dmg;
		proj.enemy = false;
		proj.hurtsEnemy = true;
		proj.hurtsPlayer = false;
		
		var par = instance_create_depth(x,y,depth,obj_Particle);
		par.sprite_index = spr_Particle_FallingAsteroidDestroy;
		par.destroyAfterAnimation = true;
		
		with (obj_FragileWall) if (distance_to_object(other) <= 12) hp = 0;
		
		for (var i = 0; i < 6; i++)
		{
			var par = instance_create_depth(x + irandom_range(-24,24),y - irandom_range(-24,24),depth - 1,obj_Particle);
			par.sprite_index = sprDebris;
			par.image_index = irandom_range(0,sprite_get_number(sprDebris));
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
	
	if (y >= room_height + 100) instance_destroy();
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