///@description Draw

//Event Inherited

event_inherited();

if (global.shaders) pal_swap_set(paletteIndex,drawPaletteFlash,false);
//Draw Hat

if (sprite_index == sprIdle)
{
	if (!global.pause) hatIndex += sprite_get_speed(sprIdleHat) / 60;
	if (hatIndex >= 3) hatIndex -= 3;
	draw_sprite_ext(sprIdleHat,image_index,x + drawShakeX,y - 29 + drawShakeY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
else if (sprite_index == sprAttack)
{
	if (!global.pause) hatIndex += sprite_get_speed(sprAttackHat) / 60;
	if (hatIndex >= 2) hatIndex -= 2;
	draw_sprite_ext(sprAttackHat,hatIndex,x + drawShakeX,y - 29 + drawShakeY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}

//Draw Hand

if ((attack) and (attackNumber == "bombThrow"))
{
	draw_sprite_ext(sprHand,handIndex,x + handX,y + handY,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
if (global.shaders) pal_swap_reset();

//Debug
/*
draw_text(x,y - 12,string(hsp));