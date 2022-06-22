///@description Draw

if (!active)
{
	#region View Grid
	for (var i = 0; i < floor(room_width / 480) + 1; i++)
	{
		for (var j = 0; j < floor(room_height / 270) + 1; j++)
		{
			draw_sprite(spr_Maykr_ViewGrid,0,480 * i,270 * j);
		}
	}
	#endregion
	
	#region Snap Grid
	for (var i = 0; i < floor(room_width / 24) + 1; i++)
	{
		for (var j = 0; j < floor(room_height / 24) + 1; j++)
		{
			draw_sprite(spr_Maykr_Grid,0,24 * i,24 * j);
		}
	}
	#endregion
	
	#region Draw Object
	if (canBeInteracted)
	{
		var alpha = .5;
		var blend = c_white;
		if (collidingSpawner) blend = c_red;
		draw_sprite_ext(spawnedSprite,0,mouseX + spawnedXOffset,mouseY + spawnedYOffset,dirX,image_yscale,image_angle,blend,alpha);
	}
	#endregion
}