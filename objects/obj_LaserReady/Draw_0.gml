///@description Draw

//Destroy

if (!instance_exists(owner)) instance_destroy();

//Variables

width = lerp(width,4,.05);
alpha = lerp(alpha,.8,.05);

//Attack Timer

if (attackTimer > 0)
{
	attackTimer -= 1;
}
else if (attackTimer == 0)
{
	if (instance_exists(obj_Player))
	{
		var maxLength = 900;
		var xEnd = 0;
		var yEnd = 0;
		for (var i = 0; i < maxLength; i++)
		{
			xEnd = x + lengthdir_x(i,dirr);
			yEnd = y + lengthdir_y(i,dirr);
		}
		var laser = instance_create_depth(x,y,depth,obj_Projectile_Laser);
		laser.owner = owner;
		laser.dirr = dirr;
		laser.maxLength = maxLength;
		laser.targetX = xEnd;
		laser.targetY = yEnd;
	}
	instance_destroy();
	attackTimer = -1;
}

//Draw Line

draw_set_color(c_white);
draw_set_alpha(alpha);
draw_line_width(owner.x,owner.y,targetX,targetY,width);
draw_set_alpha(1);