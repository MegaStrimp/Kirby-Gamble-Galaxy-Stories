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
	else if (sprite_index == spr_Projectile_Bomb_Fetus)
	{
		parSpr = spr_Particle_Bomb3;
	}
	
	draw_sprite_ext(parSpr,explosionIndex,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
}