///@description Draw

#region Draw Self
var invincibleFlashFinal = ((invincibleFlashTimer) and (global.currentTimePausable % 2 == 0))
paletteFlash = 1;
if (invincibleFlashFinal) paletteFlash = 2;
drawPaletteFlash = paletteFlash;

if ((hurt) and (invincibleFlashFinal))
{
	if (death)
	{
		drawPaletteFlash = 3;
	}
	else
	{
		drawPaletteFlash = 2;
	}
}

if (global.shaders) pal_swap_set(paletteIndex,drawPaletteFlash,false);
draw_sprite_ext(sprite_index,image_index,x + ((canShakeX) * drawShakeX),y + ((canShakeY) * drawShakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if (global.shaders) pal_swap_reset();
#endregion

#region Flux Overlay
if (isMystic)
{
	if (!global.pause) fluxOverlayAlpha -= .01;
	
	gpu_set_blendenable(false);
	gpu_set_colorwriteenable(false,false,false,true);
	draw_set_alpha(0);
	draw_rectangle(0,0,room_width,room_height,false);
	
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index,image_index,x + ((canShakeX) * drawShakeX),y + ((canShakeY) * drawShakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,fluxOverlayAlpha);
	gpu_set_blendenable(true);
	gpu_set_colorwriteenable(true,true,true,true);
	
	gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	
	draw_sprite(spr_Texture_Flux,0,x + ((canShakeX) * drawShakeX),y + ((canShakeY) * drawShakeY));
	
	gpu_set_alphatestenable(false);
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}
#endregion

#region Shake
if (!global.pause)
{
	var shakeXRange = cos(irandom_range(0, 360) / 180 * pi);
	var shakeYRange = sin(irandom_range(0, 360) / 180 * pi);
	
	drawShakeX = shakeXRange * shakeX;
	drawShakeY = shakeYRange * shakeY;
	
	shakeX = max(0,shakeX - shakeDividend);
	shakeY = max(0,shakeY - shakeDividend);
	
	if (bossHealthbarShakeTimer != -1)
	{
		bossHealthbarShakeX = shakeXRange;
		bossHealthbarShakeY = shakeYRange;
	}
}
#endregion

#region Healthbar
if (healthbarIndex == 0)
{
	var hbHp = hp;
	hbHp = max(hbHp,0);
	if (!global.pause) healthbarBackHp = lerp(healthbarBackHp,hbHp,.1);
	
	if (global.healthbarMarkedEnemy == id)
	{
		draw_sprite(spr_Healthbar_Enemy_Border,0,x,bbox_top - 16);
		draw_sprite_ext(spr_Healthbar_Enemy_InnerBack,0,x - 8,bbox_top - 18,(healthbarBackHp / hpMax),image_yscale,0,image_blend,image_alpha);
		draw_sprite_ext(spr_Healthbar_Enemy_InnerFront,0,x - 8,bbox_top - 18,(healthbarBackHp / hpMax),image_yscale,0,image_blend,image_alpha);
	}
}
#endregion

#region Debug
if (global.debugOverlay)
{
	draw_text(x,y - 12,string(hurtTimer));
	draw_text(x,y - 24,string(hurtStopTimer));
}
#endregion