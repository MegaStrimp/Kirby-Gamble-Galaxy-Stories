///@description Main

#region Create Stars
if (starTrigger)
{
	var roomWidth = floor(room_width / 24) + 1;
	var roomHeight = floor(room_height / 24) + 1;
	for (var i = 0; i < roomWidth; i++)
	{
		for (var h = 0; h < roomHeight; h++)
		{
			var rng = irandom_range(0,99);
			var chosenTile = 0;
			for (var j = 9; j > 0; j--)
			{
				if (rng < weight * j)
				{
					chosenTile = j;
				}
			}
			tilemap_set(layer_tilemap_get_id("tileAsteroidFieldsStars"),chosenTile,i,h);
		}
	}
	starTrigger = false;
}
#endregion

if (!global.pause)
{
	#region Meteor Timer
	if (meteorTimer > 0)
	{
		meteorTimer -= 1;
	}
	else if (meteorTimer == 0)
	{
		var meteor = instance_create_depth(irandom_range(0,room_width),0,depth,obj_AsteroidFields_Meteor);
		//meteor.sprite_index = choose(spr_Background_AsteroidFields9,spr_Background_AsteroidFields10);
		meteor.sprite_index = spr_Background_AsteroidFields11;
		meteor.spd = irandom_range(2,5);
		var a = random_range(.25,1.5);
		meteor.image_xscale = a;
		meteor.image_yscale = a;
		meteorTimer = meteorTimerMax;
	}
	#endregion
	
	#region Bolt Timer
	if (boltTimer > 0)
	{
		boltTimer -= 1;
	}
	else if (boltTimer == 0)
	{
		var x1 = camera_get_view_x(gameView) - 64;
		var y1 = camera_get_view_y(gameView) - 64;
		var x2 = camera_get_view_x(gameView) + camera_get_view_width(gameView) + 64;
		var y2 = camera_get_view_y(gameView) + camera_get_view_height(gameView) + 64;
		var bolt = instance_create_depth(irandom_range(x1,x2),irandom_range(y1,y2),depth,obj_AsteroidFields_Flash);
		bolt.sprite_index = spr_Background_AsteroidFields4;
		var a = random_range(.25,1.5);
		bolt.image_xscale = a;
		bolt.image_yscale = a;
		boltTimer = boltTimerMax;
	}
	#endregion
	
	#region Flash Timer
	if (flashTimer > 0)
	{
		flashTimer -= 1;
	}
	else if (flashTimer == 0)
	{
		var x1 = camera_get_view_x(gameView) - 64;
		var y1 = camera_get_view_y(gameView) - 64;
		var x2 = camera_get_view_x(gameView) + camera_get_view_width(gameView) + 64;
		var y2 = camera_get_view_y(gameView) + camera_get_view_height(gameView) + 64;
		var flash = instance_create_depth(irandom_range(x1,x2),irandom_range(y1,y2),depth,obj_AsteroidFields_Flash);
		flash.sprite_index = spr_Background_AsteroidFields5;
		var a = random_range(.25,1.5);
		flash.image_xscale = a;
		flash.image_yscale = a;
		flashTimer = flashTimerMax;
	}
	#endregion
}