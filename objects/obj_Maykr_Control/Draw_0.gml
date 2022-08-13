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
	
	#region Draw Selected Spawner Attributes
	#endregion
	
	#region Windows
	switch (windowIndex)
	{
		case maykrWindows.canvasSetup:
		var x1 = 10;
		var y1 = 10;
		var x2 = room_width - 10;
		var y2 = room_height - 10;
		
		var spriteWidth = sprite_get_width(spr_Maykr_Window_Border);
		var spriteHeight = sprite_get_height(spr_Maykr_Window_Border);
		
		windowWidth = lerp(windowWidth,x2,.2);
		windowHeight = lerp(windowHeight,y2,.2);
		if ((!windowActive) and (windowWidth > (x2 * .85))) windowActive = true;
		windowContentAlpha = lerp(windowContentAlpha,windowActive,.2);
		
		var windowXScale = ((windowWidth - x1) / spriteWidth);
		var windowYScale = ((windowHeight - y1) / spriteHeight);
		
		textureY += .15;
		if (textureY >= 48) textureY -= 48;
		textureX += .15;
		if (textureX >= 48) textureX -= 48;
		
		gpu_set_blendenable(false)
		gpu_set_colorwriteenable(false,false,false,true);
		draw_set_alpha(0);
		draw_rectangle(0,0,room_width,room_height,false);
		
		draw_set_alpha(1);
		draw_sprite_ext(spr_Maykr_Window_Border,1,x1,y1,windowXScale,windowYScale,image_angle,image_blend,image_alpha);
		gpu_set_blendenable(true);
		gpu_set_colorwriteenable(true,true,true,true);
		
		gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
		gpu_set_alphatestenable(true);
		
		for (var i = 0; i < floor((x2 - x1) / 48) + 2; i++)
		{
			for (var h = 0; h < floor((y2 - y1) / 48) + 2; h++)
			{
				draw_sprite(spr_Maykr_Window_Texture,0,x1 + textureX + (48 * (i - 1)),y1 + textureY + (48 * (h - 1)));
			}
		}
		
		gpu_set_alphatestenable(false);
		gpu_set_blendmode(bm_normal);
		
		draw_sprite_ext(spr_Maykr_Window_Border,0,x1,y1,windowXScale,windowYScale,image_angle,image_blend,image_alpha);
		
		draw_set_alpha(windowContentAlpha);
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_font(global.fontMaykrRed);
		draw_text(((x2 - x1) / 2),y1 + 3,"create canvas");
		draw_set_halign(fa_left);
		draw_set_alpha(1);
		break;
	}
	#endregion
}