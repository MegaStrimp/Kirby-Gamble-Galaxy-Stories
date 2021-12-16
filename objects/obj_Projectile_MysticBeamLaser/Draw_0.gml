///@description Draw

if (!global.pause)
{
	//Animation
	
	animIndex += animSpd;
	if (animIndex >= sprite_get_number(sprIdle)) animIndex -= sprite_get_number(sprIdle);
	
	//Draw Laser
	
	for (var i = 0; i < maxLength; i++)
	{
		xEnd = x + lengthdir_x(i,dirr);
		yEnd = y + lengthdir_y(i,dirr);
		laserMaxLength = i;
		if (collision_point(xEnd,yEnd,obj_Wall,0,0))
		{
			var par = instance_create_depth(xEnd,yEnd,owner.depth,obj_Particle);
			par.sprite_index = spr_Particle_BigStar_Yellow;
			par.destroyTimer = 1;
			break;
		}
	}
	
	//Hurt Enemies
	
	with (obj_Enemy)
	{
		if ((collision_line(other.x,other.y - 5,other.xEnd,other.yEnd - 5,id,false,false)) or (collision_line(other.x,other.y + 5,other.xEnd,other.yEnd + 5,id,false,false)))
		{
			var projectile = instance_create_depth(x,y,depth,obj_Projectile_MysticBeamLaserShot);
			projectile.owner = other.owner;
			projectile.dmg = 1.5;
			projectile.image_xscale = projectile.dirX;
		}
	}
	
	//Destroy
	
	if (animIndex >= image_number + 1) instance_destroy();
}

for (var j = 0; j < ceil(laserMaxLength / (sprite_get_width(sprIdle))); j++)
{
	draw_sprite_ext(sprIdle,animIndex,x + (lengthdir_x(j,dirr) * (sprite_get_width(sprIdle))) + owner.hsp,y + (lengthdir_y(j,dirr) * (sprite_get_width(sprIdle))) + owner.vsp,1,1,dirr,image_blend,image_alpha);
}