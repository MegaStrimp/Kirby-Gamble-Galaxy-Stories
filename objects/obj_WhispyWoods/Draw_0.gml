///@description Draw

//Event Inherited

event_inherited();

//Draw Face

if (!hurt)
{
	draw_sprite_ext(faceSprite,faceIndex,x + (7 * dirX),y - 49,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
else
{
	draw_sprite_ext(spr_WhispyWoods_Normal_Hurt,0,x + (7 * dirX),y - 49,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
draw_sprite_ext(sprGamble,gambleIndex,x + (60 * dirX) + irandom_range(-gambleShake,gambleShake),y - 117,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
draw_sprite_ext(sprGambleLeaf,0,x + (60 * dirX),y - 117,image_xscale,image_yscale,image_angle,image_blend,image_alpha);