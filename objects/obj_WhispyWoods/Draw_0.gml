///@description Draw

#region Event Inherited
event_inherited();
#endregion

#region Draw Face
if (faceSprite != -1) draw_sprite_ext(faceSprite,faceIndex,x + (24 * dirX),y - 72,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Draw Bark
draw_sprite_ext(spr_WhispyWoods_Normal_TreeBark,0,x - (22 * dirX),y - 61,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
#endregion

#region Draw Leaves
for (var i = 0; i <= room_width; i += sprite_get_width(bg_GreenGreens_Whispy1)) draw_sprite_ext(bg_GreenGreens_Whispy1,0,0 + i,-60,1,1,0,c_white,1);
#endregion

#region Draw Gamble
if (global.progression == 0)
{
	draw_sprite_ext(sprGamble,gambleIndex,x + (160 * dirX) + irandom_range(-gambleShake,gambleShake),y - 165,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	draw_sprite_ext(sprGambleLeaf,0,x + (160 * dirX),y - 165,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
#endregion
