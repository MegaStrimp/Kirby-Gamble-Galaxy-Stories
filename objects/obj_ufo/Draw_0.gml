///@description Draw

//Draw Beam and Item

if (state == 1)
{
	draw_sprite_ext(sprBeam,0,x + ((canShakeX) * drawShakeX),y + 6 + ((canShakeY) * drawShakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,random_range(.8,1));
	draw_sprite_ext(object_get_sprite(carriedItem),0,x + ((canShakeX) * drawShakeX),y + carriedItemYOffset + ((canShakeY) * drawShakeY),image_xscale * (1 + scaleExX),image_yscale * (1 + scaleExY),imageAngle,image_blend,1);
}

//Event Inherited

event_inherited();