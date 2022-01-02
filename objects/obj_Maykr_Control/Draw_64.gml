///@description Draw GUI

if (!active)
{
	#region Top Hud
	topHudOffset = lerp(topHudOffset,!hudVisible,.25);
	
	draw_sprite(spr_Maykr_TopHud,0,0,0 - (topHudOffset * 50));
	draw_sprite(spr_Maykr_Logo,0,329,6 - (topHudOffset * 50));
	#endregion
	
	#region Top Hud Buttons
	topHudSaveOffset = lerp(topHudSaveOffset,mouseOnTopSave,.25);
	topHudLoadOffset = lerp(topHudLoadOffset,mouseOnTopLoad,.25);
	topHudOptionsOffset = lerp(topHudOptionsOffset,mouseOnTopOptions,.25);
	topHudResetOffset = lerp(topHudResetOffset,mouseOnTopReset,.25);
	topHudPlayOffset = lerp(topHudPlayOffset,mouseOnTopPlay,.25);
	topHudBlocksOffset = lerp(topHudBlocksOffset,mouseOnTopBlocks,.25);
	topHudEnemiesOffset = lerp(topHudEnemiesOffset,mouseOnTopEnemies,.25);
	topHudItemsOffset = lerp(topHudItemsOffset,mouseOnTopItems,.25);
	topHudLeaveOffset = lerp(topHudLeaveOffset,mouseOnTopLeave,.25);
	
	draw_sprite(spr_Maykr_TopHud_Play,0,12 - (topHudOffset * 330),-24 + (topHudPlayOffset * 27));
	draw_sprite(spr_Maykr_TopHud_Blocks,0,96 - (topHudOffset * 330),-24 + (topHudBlocksOffset * 27));
	draw_sprite(spr_Maykr_TopHud_Enemies,0,172 - (topHudOffset * 330),-24 + (topHudEnemiesOffset * 27));
	draw_sprite(spr_Maykr_TopHud_Items,0,248 - (topHudOffset * 330),-24 + (topHudItemsOffset * 27));
	
	draw_sprite(spr_Maykr_TopHud_Map,0,324,49 - (topHudOffset * 80));
	
	draw_sprite(spr_Maykr_TopHud_Save,0,460 - (topHudSaveOffset * 40) + (topHudOffset * 25),49);
	draw_sprite(spr_Maykr_TopHud_Load,0,460 - (topHudLoadOffset * 40) + (topHudOffset * 25),72);
	draw_sprite(spr_Maykr_TopHud_Options,0,460 - (topHudOptionsOffset * 61) + (topHudOffset * 25),95);
	draw_sprite(spr_Maykr_TopHud_Reset,0,460 - (topHudResetOffset * 66) + (topHudOffset * 25),118);
	draw_sprite(spr_Maykr_TopHud_Leave,0,20 + (topHudLeaveOffset * 49) - (topHudOffset * 25),49);
	#endregion
	
	#region Bottom Hud
	bottomHudVisible = true;
	if ((!hudVisible) and (!bottomHudOpen) and (mouseY < 220)) bottomHudVisible = false;
	
	bottomHudOffset = lerp(bottomHudOffset,(50 * !bottomHudVisible) - (96 * bottomHudOpen),.25);
	
	draw_sprite(spr_Maykr_Hide,hudVisible,2,234 + bottomHudOffset);
	
	for (var i = 0; i < 12 + (bottomHudVisible * 36); i++)
	{
		var spr = spr_Maykr_ItemHud_Empty;
		
		switch (maykrInventory[i])
		{
			#region Blocks
			case "debugWall":
			spr = spr_Maykr_ItemHud_DebugWall;
			break;
			
			case "asteroidFieldsRedFront":
			spr = spr_Maykr_ItemHud_AsteroidFieldsRedFront;
			break;
			
			case "asteroidFieldsGreenFront":
			spr = spr_Maykr_ItemHud_AsteroidFieldsGreenFront;
			break;
			
			case "asteroidFieldsBlueFront":
			spr = spr_Maykr_ItemHud_AsteroidFieldsBlueFront;
			break;
			#endregion
			
			#region Enemies
			case "waddleDee":
			spr = spr_Maykr_ItemHud_WaddleDee;
			break;
			
			case "waddleDoo":
			spr = spr_Maykr_ItemHud_WaddleDoo;
			break;
			
			case "brontoBurt":
			spr = spr_Maykr_ItemHud_BrontoBurt;
			break;
			#endregion
			
			#region Items
			case "hi":
			break;
			#endregion
		}
		draw_sprite(spr,0,51 + (32 * (i % 12)),(366 + bottomHudOffset) - 101 + (32 * floor(i / 12)));
	}
	draw_sprite(spr_Maykr_ItemHud,0,26,366 + bottomHudOffset);
	#endregion
	
	#region Windows
	if (windowIndex != -1)
	{
		draw_set_color(c_black);
		draw_set_alpha(.5);
		draw_rectangle(0,0,480,270,false);
		draw_set_color(c_white);
		draw_set_alpha(1);
		
		switch (windowIndex)
		{
			case "clear":
			case "leave":
			textureY += .15;
			if (textureY >= 48) textureY -= 48;
			textureX += .15;
			if (textureX >= 48) textureX -= 48;
			
			gpu_set_blendenable(false)
			gpu_set_colorwriteenable(false,false,false,true);
			draw_set_alpha(0);
			draw_rectangle(0,0,room_width,room_height,false);
			
			draw_set_alpha(1);
			draw_sprite(spr_Maykr_Window_Leave_Mask,0,158,111);
			gpu_set_blendenable(true);
			gpu_set_colorwriteenable(true,true,true,true);
			
			gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
			gpu_set_alphatestenable(true);
			
			for (var i = 0; i < 6; i++)
			{
				for (var h = 0; h < 6; h++)
				{
					draw_sprite(spr_Maykr_Window_Texture,0,158 + textureX + (48 * (i - 1)),111 + textureY + (48 * (h - 1)));
				}
			}
			
			gpu_set_alphatestenable(false);
			gpu_set_alphatestenable(false);
			gpu_set_blendmode(bm_normal);
			
			draw_sprite(spr_Maykr_Window_Leave,0,157,90);
			
			draw_sprite(spr_Maykr_Window_Yes,(yesBar >= yesBarMax),180,116);
			draw_sprite_part(spr_Maykr_Window_YesBar,0,0,0,sprite_get_width(spr_Maykr_Window_YesBar) * (1 - ((yesBarMax - yesBar) / yesBarMax)),sprite_get_height(spr_Maykr_Window_YesBar),185,138);
			draw_sprite(spr_Maykr_Window_No,0,180,149);
			break;
		}
	}
	#endregion
}