///@description Draw

//Draw Self

if (sprIdle != -1)
{
	draw_sprite_ext(sprIdle,index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}
else
{
	if (sprite_index != -1) draw_self();
}