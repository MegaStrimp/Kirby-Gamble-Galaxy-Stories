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
			loopV = ceil(room_width / 90);
			create = false;
		}
		
		for (var v = 0; v < loopV; v++)
		{
			for (var i = 0; i < 7; i++)
			{
				var bubble = instance_create_depth(-48 + (120 * (v - 1)) + random_range(-24,24),i * 48 + random_range(-12,12),depth,obj_AquatiaBubble);
				bubble.hsp = random_range(.25,.75);
				bubble.sprIdle = choose(spr_AquatiaBubble_Big,spr_AquatiaBubble_Medium,spr_AquatiaBubble_Small);
				bubble.scale = random_range(.35,.5);
				bubble.scaleOffset = random_range(-.1,.1);
			}
		}
		spawnTimer = spawnTimerMax;
	}
}
else
{
	image_speed = 0;
}