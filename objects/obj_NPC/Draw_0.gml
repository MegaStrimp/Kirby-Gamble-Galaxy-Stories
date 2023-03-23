///@description Draw

#region Variables
if ((!global.pause) and ((!global.cutscene) or ((global.cutscene) and (global.currentNPC = id))))
{
	drawShakeX = irandom_range(-shakeX,shakeX);
	drawShakeY = irandom_range(-shakeY,shakeY);
}
#endregion

#region Draw Notif
if (!global.cutscene)
{
	var sprNotifFinal = sprNotif;
	if (closeToPlayer) sprNotifFinal = spr_Door_Symbol_DpadUp;
	draw_sprite_ext(sprNotifFinal,notifIndex,x,bbox_top - 12,1,1,image_angle,image_blend,image_alpha);
}
#endregion

#region Draw Self
if ((global.shaders) and (paletteIndex != -1)) pal_swap_set(paletteIndex,flashIndex,false);
draw_sprite_ext(sprite_index,image_index,x + drawShakeX,y + drawShakeY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
if ((global.shaders) and (paletteIndex != -1)) pal_swap_reset();
#endregion

#region Shake
if (shakeX > 0)
{
	shakeX -= (sign(shakeX)) / 10;
}
else
{
	shakeX = 0;
}

if (shakeY > 0)
{
	shakeY -= (sign(shakeY)) / 10;
}
else
{
	shakeY = 0;
}
#endregion