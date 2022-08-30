///@description Draw GUI

#region Button Offsets
topHudSaveOffset = lerp(topHudSaveOffset,mouseOnTopSave,.25);
topHudLoadOffset = lerp(topHudLoadOffset,mouseOnTopLoad,.25);
topHudOptionsOffset = lerp(topHudOptionsOffset,mouseOnTopOptions,.25);
topHudResetOffset = lerp(topHudResetOffset,mouseOnTopReset,.25);
topHudPlayOffset = lerp(topHudPlayOffset,mouseOnTopPlay,.25);
topHudEditOffset = lerp(topHudEditOffset,mouseOnTopEdit,.25);
topHudBlocksOffset = lerp(topHudBlocksOffset,mouseOnTopBlocks,.25);
topHudEnemiesOffset = lerp(topHudEnemiesOffset,mouseOnTopEnemies,.25);
topHudItemsOffset = lerp(topHudItemsOffset,mouseOnTopItems,.25);
topHudLeaveOffset = lerp(topHudLeaveOffset,mouseOnTopLeave,.25);
#endregion

if (!active)
{
	#region Delete Mode
	if (deleteMode)
	{
		draw_set_alpha(.25);
		draw_set_color(c_red);
		draw_rectangle(0,0,480,270,false);
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_set_font(global.fontMaykrRed);
		draw_text(10,10,"erase mode");
	}
	#endregion
	
	#region Drag Mode
	if (dragMode)
	{
		draw_set_alpha(.25);
		draw_set_color(c_yellow);
		draw_rectangle(0,0,480,270,false);
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_set_font(global.fontMaykrRed);
		draw_text(10,10,"move screen mode");
	}
	#endregion
	
	#region Top Hud
	topHudOffset = lerp(topHudOffset,!hudVisible,.25);
	
	draw_sprite(spr_Maykr_TopHud,0,0,0 - (topHudOffset * 50));
	draw_sprite(spr_Maykr_Logo,0,329,6 - (topHudOffset * 50));
	#endregion
	
	#region Top Hud Buttons
	draw_sprite(spr_Maykr_TopHud_Play,0,12 - (topHudOffset * 330),-24 + (topHudPlayOffset * 27));
	draw_sprite(spr_Maykr_TopHud_Tiles,0,96 - (topHudOffset * 330),-24 + (topHudBlocksOffset * 27));
	draw_sprite(spr_Maykr_TopHud_Enemies,0,172 - (topHudOffset * 330),-24 + (topHudEnemiesOffset * 27));
	draw_sprite(spr_Maykr_TopHud_Items,0,248 - (topHudOffset * 330),-24 + (topHudItemsOffset * 27));
	
	draw_sprite(spr_Maykr_TopHud_Map,0,324,49 - (topHudOffset * 100));
	draw_sprite(spr_Maykr_TopHud_Delete,0,393,49 - ((topHudOffset * 100) * (!deleteMode)));
	draw_sprite(spr_Maykr_TopHud_ZoomIn,0,324,72 - (topHudOffset * 100));
	draw_sprite(spr_Maykr_TopHud_ZoomOut,0,347,72 - (topHudOffset * 100));
	draw_sprite(spr_Maykr_TopHud_ZoomReset,0,370,72 - (topHudOffset * 100));
	draw_sprite(spr_Maykr_TopHud_Drag,0,393,72 - ((topHudOffset * 100) * (!dragMode)));
	
	draw_sprite(spr_Maykr_TopHud_Save,0,460 - (topHudSaveOffset * 40) + (topHudOffset * 25),49);
	draw_sprite(spr_Maykr_TopHud_Load,0,460 - (topHudLoadOffset * 40) + (topHudOffset * 25),72);
	draw_sprite(spr_Maykr_TopHud_Options,0,460 - (topHudOptionsOffset * 61) + (topHudOffset * 25),95);
	draw_sprite(spr_Maykr_TopHud_Reset,0,460 - (topHudResetOffset * 66) + (topHudOffset * 25),118);
	draw_sprite(spr_Maykr_TopHud_Leave,0,20 + (topHudLeaveOffset * 49) - (topHudOffset * 25),49);
	#endregion
	
	#region Bottom Hud
	bottomHudVisible = true;
	if ((!hudVisible) and (!bottomHudOpen) and (((mouseY < camera_get_view_y(gameView) + 220) and (!deleteMode) and (!dragMode)) or (deleteMode) or (dragMode))) bottomHudVisible = false;
	
	bottomHudOffset = lerp(bottomHudOffset,(50 * !bottomHudVisible) - (96 * bottomHudOpen),.25);
	
	draw_sprite(spr_Maykr_Hide,hudVisible,2,234 + bottomHudOffset);
	
	for (var i = 0; i < 12 + (bottomHudVisible * 36); i++)
	{
		var spr = maykrSpr[i + inventoryIndex];
		var sprXOffset = maykrSprXOffset[i + inventoryIndex];
		var sprYOffset = maykrSprYOffset[i + inventoryIndex];
		sprXOffset = 0;
		sprYOffset = 0;
		
		draw_sprite(spr_Maykr_ItemHud_Empty,0,51 + (32 * (i % 12)),(366 + bottomHudOffset) - 127 + (32 * floor(i / 12)));
		
		if (spr != -1) draw_sprite_part(spr,0,0,0,24,24,(51 + (32 * (i % 12))) + sprXOffset + 1,((366 + bottomHudOffset) - 127 + (32 * floor(i / 12))) + sprYOffset + 1);
	}
	draw_sprite(spr_Maykr_ItemHud,0,26,366 + bottomHudOffset);
	#endregion
}
else
{
	draw_sprite(spr_Maykr_TopHud_Edit,0,12 - (topHudOffset * 330),-24 + (topHudEditOffset * 27));
}

#region Windows
if (windowIndex != -1)
{
	draw_set_color(c_black);
	draw_set_alpha(.5);
	draw_rectangle(0,0,480,270,false);
	draw_set_color(c_white);
	draw_set_alpha(1);
}

switch (windowIndex)
{
	case maykrWindows.levelSettings:
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
	gpu_set_blendmode(bm_normal);
	
	draw_sprite(spr_Maykr_Window_Leave,0,157,90);
	
	draw_sprite(spr_Maykr_Window_Yes,(yesBar >= yesBarMax),180,116);
	draw_sprite_part(spr_Maykr_Window_YesBar,0,0,0,sprite_get_width(spr_Maykr_Window_YesBar) * (1 - ((yesBarMax - yesBar) / yesBarMax)),sprite_get_height(spr_Maykr_Window_YesBar),185,138);
	draw_sprite(spr_Maykr_Window_No,0,180,149);
	break;
}
#endregion
