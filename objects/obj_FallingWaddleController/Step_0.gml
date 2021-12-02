///@description Main

if (!global.pause)
{
	//Spawn Timer
	
	if (spawnTimer > 0)
	{
		spawnTimer -= 1;
	}
	else if (spawnTimer == 0)
	{
		var loopV = 1;
		if (create)
		{
			loopV = ceil(room_height / 60);
			create = false;
		}
		
		for (var v = 0; v < loopV; v++)
		{
			for (var i = 0; i < ceil(room_width / 120); i++)
			{
				var fallingWaddle = instance_create_depth(i * 96 + random_range(24,-24),-48 + (120 * (v - 1)) + random_range(24,-24),depth,obj_FallingWaddle);
				fallingWaddle.vsp = random_range(.25,.75);
				fallingWaddle.sprIdle = choose(spr_FallingWaddle_Dee_Idle,spr_FallingWaddle_Doo_Idle);
				fallingWaddle.imageSpeed = fallingWaddle.vsp * random_range(1.5,2);
				var scale = random_range(.25,.75);
				fallingWaddle.image_xscale = scale * choose(1,-1);
				fallingWaddle.image_yscale = scale;
			}
		}
		spawnTimer = spawnTimerMax;
	}
}
else
{
	image_speed = 0;
}