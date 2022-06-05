///@description Main

//Setup Timer

if (setupTimer > 0)
{
	setupTimer -= 1;
}
else if (setupTimer == 0)
{
	switch (character)
	{
		//Normal
		
		case 0:
		sprIdle = spr_CuttableGrass_Normal_Idle;
		sprTop = spr_CuttableGrass_Normal_Top;
		sprBottom = spr_CuttableGrass_Normal_Bottom;
		break;
	}
	setupTimer = -1;
}

if (!global.pause)
{
	//Activate
	
	with (obj_Projectile)
	{
		if (place_meeting(x,y,other))
		{
			if ((hurtsObject) and (owner != id))
			{
				if ((!other.cut) and ((damageType == damageTypes.cutter) or (damageType == damageTypes.sword) or (damageType == damageTypes.every)))
				{
					var parDir = 1;
					if (x > other.x) parDir = -1;
					for (var i = 0; i < 7; i++)
					{
						var par = instance_create_depth(other.x + irandom_range((-sprite_get_width(other.sprIdle) / 2),(sprite_get_width(other.sprIdle) / 2)),other.y - irandom_range(0,sprite_get_height(other.sprIdle) / 1.5),depth - 1,obj_Particle);
						par.sprite_index = other.sprTop;
						par.image_index = i;
						par.hsp = (random_range(.1,.75) * parDir);
						par.vsp = -2;
						par.angleSpd = hsp * 3;
						par.stopRotationAfterCollision = true;
						par.hasGravity = true;
						par.collisionX = obj_Wall;
						par.collisionY = obj_Wall;
						par.invisTimer = 20;
						par.destroyTimer = 30;
						if (position_meeting(par.x,par.y,obj_Wall)) instance_destroy(par);
					}
					other.cut = true;
					other.spawn = true;
					if (destroyableByObject) instance_destroy();
				}
				else if ((other.destroyTimer == -1) and (damageType == damageTypes.fire))
				{
					for (var i = 0; i < 3; i++)
					{
						var par = instance_create_depth(other.x + ((i - 1) * 24) - 16,other.y - irandom_range(0,24),other.depth - 1,obj_Particle);
						par.sprite_index = spr_Projectile_Fire_Normal_Idle;
						par.image_index = choose(0,1,2);
						par.hasPalette = true;
						par.paletteSpriteIndex = paletteIndex;
						par.paletteIndex = 1;
						par.destroyAfterAnimation = true;
					}
					if (audio_is_playing(snd_Fire3)) audio_stop_sound(snd_Fire3);
					audio_play_sound(snd_Fire3,0,false);
					other.colorLerp = 0;
					other.spawn = true;
					other.destroyTimer = 30;
					if (destroyableByObject) instance_destroy();
				}
			}
		}
	}
	
	//Spawn Item
	
	if ((spawn) and (item != -1))
	{
		switch (item)
		{
			case "yellowStar":
			for (var i = 0; i < 3; i++)
			{
				var spawnedItem = instance_create_depth(x + ((i - 1) * 18),y,depth - 1,obj_PointStar);
				spawnedItem.hasGravity = true;
				spawnedItem.vsp = -2;
				spawnedItem.character = 0;
				spawnedItem.sprite_index = spr_PointStar_Yellow_Idle;
			}
			break;
			
			case "greenStar":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_PointStar);
			spawnedItem.hasGravity = true;
			spawnedItem.vsp = -2;
			spawnedItem.character = 1;
			spawnedItem.sprite_index = spr_PointStar_Green_Idle;
			break;
			
			case "greenStarEx":
			for (var i = 0; i < 3; i++)
			{
				var spawnedItem = instance_create_depth(x + ((i - 1) * 18),y,depth - 1,obj_PointStar);
				spawnedItem.hasGravity = true;
				spawnedItem.vsp = -2;
				if (i == 1)
				{
					spawnedItem.character = 1;
					spawnedItem.sprite_index = spr_PointStar_Green_Idle;
				}
				else
				{
					spawnedItem.character = 0;
					spawnedItem.sprite_index = spr_PointStar_Yellow_Idle;
				}
			}
			break;
			
			case "redStar":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_PointStar);
			spawnedItem.hasGravity = true;
			spawnedItem.vsp = -2;
			spawnedItem.character = 2;
			spawnedItem.sprite_index = spr_PointStar_Red_Idle;
			break;
			
			case "blueStar":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_PointStar);
			spawnedItem.hasGravity = true;
			spawnedItem.vsp = -2;
			spawnedItem.character = 3;
			spawnedItem.sprite_index = spr_PointStar_Blue_Idle;
			break;
			
			case "food":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_Food);
			spawnedItem.hasGravity = true;
			spawnedItem.vsp = -2;
			break;
			
			case "pepBrew":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_PepBrew);
			spawnedItem.hasGravity = true;
			spawnedItem.vsp = -2;
			break;
			
			case "maximTomato":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_MaximTomato);
			spawnedItem.hasGravity = true;
			spawnedItem.vsp = -2;
			break;
			
			case "goldenTomato":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_GoldenTomato);
			spawnedItem.hasGravity = true;
			spawnedItem.vsp = -2;
			break;
			
			case "1Up":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_1Up);
			spawnedItem.hasGravity = true;
			spawnedItem.vsp = -2;
			break;
			
			case "waddleDee":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_WaddleDee);
			spawnedItem.vsp = -2;
			spawnedItem.state = 1;
			break;
			
			case "waddleDoo":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_WaddleDoo);
			spawnedItem.vsp = -2;
			spawnedItem.state = 1;
			break;
			
			case "scarfy":
			var spawnedItem = instance_create_depth(x,y - 4,depth - 1,obj_Scarfy);
			break;
			
			case "noddy":
			var spawnedItem = instance_create_depth(x,y,depth - 1,obj_Noddy);
			spawnedItem.vsp = -2;
			spawnedItem.state = 1;
			break;
		}
		spawn = false;
	}
	else if (item == -1)
	{
		spawn = false;
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
	
	//Animation
	
	color = lerp(color,colorLerp,.1);
	
	image_blend = make_color_rgb(color,color,color);
	
	if (cut)
	{
		sprite_index = sprBottom;
	}
	else
	{
		sprite_index = sprIdle;
	}
}

//Debug Delete

if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}