///@description Draw

switch (subState)
{
	#region Overworld
	case 0:
	if (!global.pause) shineScale = 1 - random_range(-.1,.1);
	#region Draw Shine
	draw_sprite_ext(sprShine,0,x,y + yy - 4,image_xscale * shineScale,image_yscale * shineScale,image_angle,image_blend,image_alpha);
	#endregion
	
	#region Draw Chest
	draw_sprite_ext(sprIdle,0,x + irandom_range(-shake,shake),y + yy,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	#endregion
	break;
	#endregion
	
	#region On Player
	case 1:
	#region Draw Effect
	draw_sprite_ext(sprEffect,image_index,x,y - 4,image_xscale,image_yscale,effectAngle,image_blend,image_alpha);
	
	textureX += .15;
	if (textureX >= 20) textureX -= 20;
	textureY += .15;
	if (textureY >= 20) textureY -= 20;
	
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0,room_width,room_height,false);
	
	draw_set_alpha(1);
	draw_sprite_ext(sprTextureMask,image_index,x,y - 4,image_xscale,image_yscale,effectAngle,image_blend,image_alpha);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	
	for (var i = 0; i < 4; i++)
	{
		for (var h = 0; h < 4; h++)
		{
			draw_sprite(sprTexture,0,x - 40 + textureX + (20 * (i - 1)),y - 40 - 4 + textureY + (20 * (h - 1)));
		}
	}
	
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
	#endregion
	
	if (!global.pause) shineScale = 1 - random_range(-.1,.1);
	#region Draw Shine
	draw_sprite_ext(sprShine,0,x,y - 4,image_xscale * shineScale,image_yscale * shineScale,image_angle,image_blend,image_alpha);
	#endregion
	
	#region Draw Chest
	draw_sprite_ext(sprIdle,0,x + irandom_range(-shake,shake),y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	#endregion
	break;
	#endregion
}