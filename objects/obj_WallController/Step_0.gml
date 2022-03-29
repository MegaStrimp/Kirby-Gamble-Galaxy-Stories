///@description Main

if (!global.pause)
{
	//Wall Movement
	
	with (obj_Wall)
	{
		x += hsp;
		y += vsp;
	}
	
	with (obj_Player)
	{
		if (place_meeting(x,y + 1,obj_Wall))
		{
			var movingWall = instance_place(x,y + 1,obj_Wall);
			if (movingWall.hsp != 0) x += movingWall.hsp;
			if (movingWall.vsp != 0) y += movingWall.vsp;
		}
		if (place_meeting(x,y - 1,obj_Wall))
		{
			var movingWall = instance_place(x,y - 1,obj_Wall);
			if (movingWall.vsp != 0) y += movingWall.vsp;
		}
		if (place_meeting(x + sign(hspFinal),y,obj_Wall))
		{
			var movingWall = instance_place(x + sign(hspFinal),y,obj_Wall);
			if (movingWall.hsp != 0) x += movingWall.hsp;
		}
	}
	
	with (obj_Enemy)
	{
		if (place_meeting(x,y + 1,obj_Wall))
		{
			var movingWall = instance_place(x,y + 1,obj_Wall);
			if (movingWall.hsp != 0) x += movingWall.hsp;
			if (movingWall.vsp != 0) y += movingWall.vsp;
		}
		if (place_meeting(x,y - 1,obj_Wall))
		{
			var movingWall = instance_place(x,y - 1,obj_Wall);
			if (movingWall.vsp != 0) y += movingWall.vsp;
		}
		if (place_meeting(x + sign(hspFinal),y,obj_Wall))
		{
			var movingWall = instance_place(x + sign(hspFinal),y,obj_Wall);
			if (movingWall.hsp != 0) x += movingWall.hsp;
		}
	}
}