///@description Draw

//Event Inherited

event_inherited();

//Draw Hat
if (global.shaders) pal_swap_set(paletteIndex,drawPaletteFlash,false);
if (sprite_index == sprIdle)
{
	if (!global.pause) hatIndex += sprite_get_speed(sprIdleHat) / 60;
	if (hatIndex >= 3) hatIndex -= 3;
	draw_sprite_ext(sprIdleHat,hatIndex,x + drawShakeX,y - 29 + drawShakeY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
else if (sprite_index == sprAttack)
{
	if (!global.pause) hatIndex += sprite_get_speed(sprAttackHat) / 60;
	if (hatIndex >= 2) hatIndex -= 2;
	draw_sprite_ext(sprAttackHat,hatIndex,x + drawShakeX,y - 29 + drawShakeY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
if (global.shaders) pal_swap_reset();

//Debug
/*
draw_text(x,y - 12,string(hsp));