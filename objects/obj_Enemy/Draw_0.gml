///@description Draw

//Draw Self

paletteFlash = 1;
if (invincibleFlash) paletteFlash = 2;

//drawShakeX = irandom_range(-shakeX,shakeX);
//drawShakeY = irandom_range(-shakeY,shakeY);
drawShakeX = cos(irandom_range(0, 360) / 180 * pi) * shakeX;
drawShakeY = sin(irandom_range(0, 360) / 180 * pi) * shakeX;
// trying something new here

drawPaletteFlash = paletteFlash;
if ((hurt) and (invincibleFlash))
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
if (sprite_exists(sprite_index)) draw_sprite_ext(sprite_index,image_index,x + ((canShakeX) * drawShakeX),y + ((canShakeY) * drawShakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,image_alpha);
if (global.shaders) pal_swap_reset();

//Flux Overlay

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

//Shake

if (shakeX > 0)
{
	shakeX -= shakeDividend;
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

//Healthbar

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

//Debug
/*
draw_text(x,y - 12,string(abs(hsp - (movespeed * walkDirX))));