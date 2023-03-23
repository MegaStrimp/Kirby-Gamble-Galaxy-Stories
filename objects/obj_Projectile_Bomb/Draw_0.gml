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
	if (sprite_index == spr_Projectile_Bomb_Fetus)
	{
		parSpr = spr_Particle_Bomb3;
	}
	
	draw_sprite_ext(parSpr,explosionIndex,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
	
	/*
	//ALRIGHT MOTHER FUCKERS HERE'S A ROTATION MATRIX
	var theta = -(image_angle + 180);
	if (dirX < 0) theta += 90;
	
	var cost = dcos(theta);
	var sint = dsin(theta);
	//16 is the x offset and 20 is the y offset of the initial rotation, so the difference x is 8 and diff y is 12
	var matchX = (8 * cost) - (12 * sint);
	var matchY = (8 * sint) + (12 * cost);
	draw_sprite_ext(parSpr,explosionIndex,x + matchX, y + matchY,image_xscale,image_yscale,0,image_blend,image_alpha);
	*/
}