///@description Draw

if (!active)
{
	var x1 = camera_get_view_x(gameView) - 64;
	var y1 = camera_get_view_y(gameView) - 64;
	var x2 = camera_get_view_x(gameView) + camera_get_view_width(gameView) + 64;
	var y2 = camera_get_view_y(gameView) + camera_get_view_height(gameView) + 64;
	
	/*
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
			if ((((24 * i) > x1) and ((24 * i) < x2)) and (((24 * j) > y1) and ((24 * j) < y2))) draw_sprite(spr_Maykr_Grid,0,24 * i,24 * j);
		}
	}
	#endregion
	*/
	
	#region Selected Object Buttons
	if (selectedSpawner != -1)
	{
		if (selectedSpawnerOptionsExists) draw_sprite(spr_Maykr_SelectedSpawner_Settings,0,selectedSpawnerOptionsX,selectedSpawnerOptionsY);
		if (selectedSpawnerDirectionExists) draw_sprite(spr_Maykr_SelectedSpawner_Direction,selectedSpawnerDirection,selectedSpawnerDirectionX,selectedSpawnerDirectionY);
	}
	#endregion
	
	#region Draw Object
	if ((canBeInteracted) and (!mouseOnHud) and (!deleteMode) and (!dragMode))
	{
		var alpha = .5;
		var blend = c_white;
		if (collidingSpawner) blend = c_red;
		draw_sprite_ext(spawnedSprite,0,mouseX + spawnedXOffset,mouseY + spawnedYOffset,dirX,image_yscale,image_angle,blend,alpha);
	}
	#endregion
}