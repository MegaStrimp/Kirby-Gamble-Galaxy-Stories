///@description Draw

spd += .01;
dirr += spd;

//Animation

animIndex += animSpd;
if (animIndex >= sprite_get_number(sprIdle)) animIndex -= sprite_get_number(sprIdle);

//Draw Laser

for (var i = 0; i < maxLength; i++)
{
	var xEnd = x + lengthdir_x(i,dirr);
	var yEnd = y + lengthdir_y(i,dirr);
	laserMaxLength = i;
	if ((collision_point(xEnd,yEnd,obj_ParentWall,0,0)))
	{
		var par = instance_create_depth(xEnd,yEnd,owner.depth,obj_Particle);
		par.sprite_index = spr_Particle_Aura1;
		par.destroyTimer = 1;
		break;
	}
}

for (var j = 0; j < ceil(laserMaxLength / (sprite_get_width(sprIdle))); j++)
{
	draw_sprite_ext(spr_Laser,animIndex,x + (lengthdir_x(j,dirr) * (sprite_get_width(sprIdle))),y + (lengthdir_y(j,dirr) * (sprite_get_width(sprIdle))),1,1,dirr,image_blend,image_alpha);
}