///@description Main

if (!global.pause)
{
	#region Activate
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
						par.sprite_index = other.sprLeaf;
						par.image_index = i;
						par.hsp = (random_range(.1,.75) * parDir);
						par.vsp = -2;
						par.angleSpd = par.hsp * 3;
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
			}
		}
	}
	#endregion
	
	#region Spawn Waddle Dee
	if (spawn)
	{
		global.stageCollectible_GreenGreens[number] = true;
		
		/*var spawnedItem = instance_create_depth(x + ((i - 1) * 18),y,depth - 1,obj_PointStar);
		spawnedItem.hasGravity = true;
		spawnedItem.vsp = -2;
		spawnedItem.character = 0;
		spawnedItem.sprite_index = spr_PointStar_Yellow_Idle;*/
		
		instance_destroy();
		
		spawn = false;
	}
	#endregion
}

#region Debug Delete
if (global.debug)
{
	if ((position_meeting(mouse_x,mouse_y,id)) and (mouse_check_button(mb_right)))
	{
		instance_destroy();
	}
}
#endregion