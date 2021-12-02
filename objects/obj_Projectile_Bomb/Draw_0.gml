///@description Draw

//Event Inherited

event_inherited();

//Draw Particle

if (hasParticle)
{
	var parSpr = spr_Particle_Bomb1;
	if (sprite_index == sprBig)
	{
		parSpr = spr_Particle_Bomb2;
	}
	
	draw_sprite_ext(parSpr,explosionIndex,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}